import CommentList from '../view/course_detail_page/CommentList'
import CourseChaptersList from '../view/course_detail_page/CourseChaptersList'
import CourseIntroduceView from '../view/course_detail_page/CourseIntroduceView'
import CourseRecommendView from '../view/course_detail_page/CourseRecommendView'

@Entry
@Component
struct CourseDetailPage {
  // 课程详情页签选中索引
  @State selectIndex: number = 0

  build() {
    Column() {
      //返回和分享部分
      Flex({ justifyContent: FlexAlign.SpaceBetween }) {
        Image($r('app.media.left'))
          .width(32)
          .height(32)
          .onClick(() => {
            //点击返回列表页面
            this.getUIContext()
              .getRouter()
              .back()
          })
          .margin({ left: 8 })
        Image($r('app.media.share'))
          .width(24)
          .height(24)
          .onClick(() => {
            console.log('课程分享功能待实现')
          })
          .margin({ right: 10 })
      }
      .width('100%')
      .margin({ top: 10, bottom: 8 })

      // 课程概要信息
      this.courseBasicInfo()

      // 课程详情部分
      Tabs() {
        TabContent() {
          // 调用课程介绍组件
          CourseIntroduceView()
        }
        .tabBar(this.customTabBar('介绍', 0))

        TabContent() {
          // 课程章节列表
          CourseChaptersList()
        }
        .tabBar(this.customTabBar('目录', 1))

        TabContent() {
          // 课程评价列表
          CommentList()
        }
        .tabBar(this.customTabBar('评价（99+）', 2))

        TabContent() {
          // 课程推荐列表
          CourseRecommendView()
        }
        .tabBar(this.customTabBar('推荐', 3))
      }
      .margin({ top: 10 })
      .padding({ top: 10 })
      .backgroundColor(Color.White)
      .borderRadius(12)
      .width('95%')
      .onChange((index: number) => {
        this.selectIndex = index
      })
    }
    .width('100%')
    .backgroundColor($r('sys.color.comp_background_focus'))
  }

  @Builder
  courseBasicInfo() {
    Column() {
      Image($r('app.media.course07'))
        .width('95%')
        .height('150')
        .margin({ left: 10, right: 10 })
        .borderRadius({ topLeft: 12, topRight: 12 })
      Row() {
        Row() {
          Text('系列精选')
            .textAlign(TextAlign.Start)
            .backgroundColor(Color.Orange)
            .padding({
              left: 10,
              right: 4,
              top: 6,
              bottom: 6
            })
            .borderRadius({ topLeft: 8, bottomLeft: 8 })
          Text('名师课堂')
            .textAlign(TextAlign.Start)
            .backgroundColor(Color.Pink)
            .padding({
              left: 4,
              right: 10,
              top: 6,
              bottom: 6
            })
            .borderRadius({ topRight: 8, bottomRight: 8 })
        }

        Text('1233人报名')
          .textAlign(TextAlign.End)
          .fontColor(Color.Red)
      }
      .justifyContent(FlexAlign.SpaceBetween)
      .margin({ top: 8 })
      .width('95%')

      Row() {
        Text('Java从入门到放弃,7天速成！')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
      }
      .margin({ top: 8 })
      .width('95%')

      Row() {
        Text('就业服务，订单班，课程回放，7天畅学卡')
          .width('100%')
          .textAlign(TextAlign.Center)
          .fontSize(14)
          .fontColor(Color.Brown)
          .padding({
            left: 10,
            right: 10,
            top: 8,
            bottom: 8
          })
          .backgroundColor('#abcdef')
          .borderRadius(8)
      }
      .margin({ top: 8 })
      .width('95%')
    }
    .width('100%')
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
    .width(100)
    .margin({ left: 10 })
  }
}