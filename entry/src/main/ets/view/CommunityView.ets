import CommunityTypeBean from '../common/bean/CommunityTypeBean'
import PublishItemBean from '../common/bean/PublishItemBean';
import MainViewModel from '../viewmodel/MainViewModel'
import PublishItemView from './PublishItemView';
import SquareText from './SquareText';

@Component
export default struct CommunityView {
  // 当前选中的一级分类id
  @State selectTypeIndex: number = 0;
  // 当前选中的标签索引
  @State selectTagIndex: number = 0;

  build() {
    Column() {
      //顶部标题栏
      this.headTitle()
      //一级标题
      Tabs() {
        ForEach(MainViewModel.getCommunityTypeList(), (typeItem: CommunityTypeBean) => {
          TabContent() {
            Column() {
              //展示二级标签
              List() {
                ForEach(typeItem.tags, (tag: string, index: number) => {
                  ListItem() {
                    if (this.selectTagIndex === index) {
                      SquareText({ title: tag, textColor: '#ff0000' })
                    }
                    else {
                      SquareText({ title: tag, textColor: '#000000' })
                    }
                  }
                  .onClick(() => {
                    this.selectTagIndex = index;
                  })
                }, (tag: string) => tag)
              }
              .width('100%')
              .listDirection(Axis.Horizontal)

              //发布项目列表展示
              List() {
                ForEach(MainViewModel.getPublishList(), (item: PublishItemBean) => {
                  ListItem() {
                    PublishItemView({ publishItem: item })
                  }
                }, (item: PublishItemBean) => JSON.stringify(item))
              }
              .width('100%')
              .listDirection(Axis.Vertical)
            }
            .height('100%')
          } //.tabBar(typeItem.type)
          .tabBar(this.customTabBar(typeItem.type, typeItem.typeId))
        }, (typeItem: CommunityTypeBean) => JSON.stringify(typeItem))
      }
      .barMode(BarMode.Scrollable)
      .onChange((index: number) => {
        // 触发选中分类id的修改
        this.selectTypeIndex = index;
        // 将选中的标签索引置0
        this.selectTagIndex = 0;
      })
    }
    .width('100%')
    .height('100%')
  }

  @Builder
  headTitle() {
    Flex({ justifyContent: FlexAlign.SpaceBetween }) {
      Image($r('app.media.remind'))
        .width(28)
        .height(28)
      Text('发现')
        .fontSize(22)
        .fontWeight(FontWeight.Bold)
      Image($r('app.media.avatar5'))
        .width(38)
        .height(38)
        .borderRadius(19)
    }
    .margin(8)
    .height(50)
  }

  @Builder
  customTabBar(title: string, index: number) {
    Column() {
      Text(title)
        .fontSize(16)
        .fontColor(this.selectTypeIndex === index ? Color.Blue : Color.Black)
      if (this.selectTypeIndex === index) {
        Image($r('app.media.minus'))
          .width(20)
          .height(10)
      }
    }
    .height(80)
    .width(50)
    .margin({ left: 10 })
  }
}