import CourseTypeBean from '../common/bean/CourseTypeBean'
import SubCatCourseList from '../view/SubCatCourseList'
import MainViewModel from '../viewmodel/MainViewModel'

@Entry
@Component
struct MoreITCoursePage {
  // 二级分类选中索引
  @State selectIndex: number = 0

  build() {
    Column() {
      //页面标题栏
      this.pageHeader()
      //二级分类页签
      Tabs() {
        ForEach(MainViewModel.getSubType4Cat(), (item: CourseTypeBean) => {
          TabContent() {
            SubCatCourseList({ subCatId: item.typeId })
          }
          .tabBar(this.customTabBar(item.type, item.typeId))
        }, (item: CourseTypeBean) => JSON.stringify(item))
      }
      // 设置为可滚动，否则会挤在一起
      .barMode(BarMode.Scrollable)
      .onChange((index: number) => {
        this.selectIndex = index
      })
    }
    .backgroundColor($r('sys.color.comp_background_focus'))
    .width('100%')
    .height('100%')
  }

  @Builder
  pageHeader() {
    Row() {
      Image($r('app.media.left'))
        .width(24)
        .onClick(() => {
          this.getUIContext()
            .getRouter()
            .back()
        })
      Text('IT互联网')
        .fontSize(18)
        .fontWeight(FontWeight.Bold)
      Image($r('app.media.search'))
        .width(24)
        .onClick(() => {
          this.getUIContext()
            .getRouter()
            .pushUrl({ url: 'pages/SearchCoursePage' })
        })
    }
    .margin(8)
    .justifyContent(FlexAlign.SpaceBetween)
    .width('95%')
  }

  @Builder
  customTabBar(title: string, index: number) {
    Column() {
      Text(title)
        .fontSize(16)
        .fontColor(this.selectIndex === index ? Color.Blue : Color.Black)
      if (this.selectIndex === index) {
        Image($r('app.media.minus'))
          .width(20)
          .height(10)
      }
    }
    .height(80)
    .width(80)
    .margin({ left: 10 })
  }
}