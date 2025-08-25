import CampBean from '../common/bean/CampBean';
import CourseBean from '../common/bean/CourseBean';
import HomeItemBean from '../common/bean/HomeItemBean';
import Const from '../common/constants/CommonConstants'
import MainViewModel from '../viewmodel/MainViewModel';

@Component
export default struct Home {
  private swiperController: SwiperController = new SwiperController();

  build() {
    Scroll() {
      Column({ space: 10 }) {
        //Text('首页').fontSize(20).fontWeight(FontWeight.Bold)
        Swiper(this.swiperController) {
          // Image($r('app.media.swiper1')).width('90%').height('150').borderRadius(10)
          // Image($r('app.media.swiper2')).width('90%').height('150').borderRadius(10)
          // Image($r('app.media.swiper3')).width('90%').height('150').borderRadius(10)
          // Image($r('app.media.swiper4')).width('90%').height('150').borderRadius(10)
          // Image($r('app.media.swiper5')).width('90%').height('150').borderRadius(10)
          // Image($r('app.media.swiper6')).width('90%').height('150').borderRadius(10)
          ForEach(MainViewModel.getHomeSwiperImage(), (img: Resource) => {
            Image(img)
              .width('90%')
              .height('150')
              .borderRadius(10)
          }, (img: Resource) => JSON.stringify(img))
        }
        .autoPlay(true)

        //常用功能列表布局
        Grid() {
          ForEach(MainViewModel.getHomeItemBeanList(), (item: HomeItemBean) => {
            GridItem() {
              Column() {
                Image(item.icon)
                  .width(40)
                  .height(40)
                Text(item.title)
                  .fontSize(14)
                  .margin({ top: 3 })
              }
            }
          }, (item: HomeItemBean) => JSON.stringify(item))
        }
        .columnsTemplate('1fr 1fr 1fr 1fr 1fr')
        .rowsTemplate('1fr 1fr')
        .columnsGap(3)
        .rowsGap(2)
        .height(150)
        .width('90%')
        .backgroundColor(Color.White)
        .borderRadius(15)

        //速成训练营标题
        Row() {
          Text('速成训练营')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Row() {
            Text('查看更多')
              .fontSize(14)
            Image($r('app.media.right'))
              .height(16)
          }
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('90%')

        //训练营列表展示
        List() {
          ForEach(MainViewModel.getCampList(), (item: CampBean) => {
            ListItem() {
              this.trainCampCell(item)
            }
          }, (item: CampBean) => JSON.stringify(item))
        }
        .listDirection(Axis.Horizontal)
        .backgroundColor(Color.White)
        .borderRadius(12)
        .width('90%')

        //热门课程
        Row() {
          Text('热门课程')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Row() {
            Text('查看更多')
              .fontSize(14)
            Image($r('app.media.right'))
              .height(16)
          }
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('90%')

        //循环渲染热门课程信息
        List() {
          ForEach(MainViewModel.getHotCourseList(), (item: CourseBean) => {
            this.hotCourseCell(item)
          }, (item: CourseBean) => JSON.stringify(item))
        }
        .backgroundColor(Color.White)
        .borderRadius(12)
        .divider({ strokeWidth: 1 })
        .width('90%')
      }
    }
    .width(Const.FULL_WIDTH)
  }

  // 封装训练营cell
  @Builder
  trainCampCell(item: CampBean) {
    Column({ space: 2 }) {
      Image(item.img)
        .width(150)
        .height(95)
        .borderRadius(8)
        .margin(2)
      Text(item.title)
        .fontSize(15)
        .fontWeight(FontWeight.Bold)
        .width('100%')
      Row({ space: 2 }) {
        Text(`${item.days}天营`)
          .fontSize(15)
          .width('30%')
          .backgroundColor(Color.Orange)
          .fontColor(Color.White)
          .borderRadius({ topLeft: 5, bottomLeft: 5 })
          .padding({ left: 4 })
        Text(`${item.startDate}开始`)
          .fontSize(15)
          .width('70%')
          .backgroundColor(Color.Pink)
          .borderRadius({ topRight: 5, bottomRight: 5 })
      }
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Text(`￥${item.price}元`)
          .fontSize(15)
          .fontColor(Color.Red)
        Text(`${item.orgName}`)
          .fontSize(12)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .padding(5)
    .width(170)
  }

  // 封装热门课程Cell
  @Builder
  hotCourseCell(item: CourseBean) {
    Row({ space: 4 }) {
      Image(item.img)
        .width(150)
        .height(95)
        .borderRadius(8)
      Column() {
        Text(item.title)
          .fontSize(15)
          .fontWeight(FontWeight.Bold)
        Text(item.desc)
          .fontSize(13)
        Text(`￥${item.price}元`)
          .fontSize(15)
          .fontColor(Color.Red)
        Row() {
          Image($r('app.media.fire'))
            .width(16)
          Text(`最近在学：${item.students}`)
            .fontSize(15)
            .fontColor(Color.Blue)
        }
      }
      .alignItems(HorizontalAlign.Start)
    }
    .margin(8)
  }
}