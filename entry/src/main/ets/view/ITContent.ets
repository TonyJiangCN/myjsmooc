import CampBean from '../common/bean/CampBean'
import CourseBean from '../common/bean/CourseBean'
import CourseTypeBean from '../common/bean/CourseTypeBean'
import CourseCell from '../common/components/CourseCell'
import CourseQueryCondition from '../common/components/CourseQueryCondition'
import TrainCampCell from '../common/components/TrainCampCell'
import Const from '../common/constants/CommonConstants'
import MainViewModel from '../viewmodel/MainViewModel'

import router from '@ohos.router'


@Component
export default struct HomeITContent {
  // 默认综合查询
  @State conditionSelect: number = 1
  // 价格降序
  @State priceOrderDesc: boolean = false
  // 当前选择的课程分类id
  @State courseTypeSelect: number = 0

  build() {
    Scroll() {
      //Text('IT·互联网分类')
      Column({ space: 10 }) {
        // 速成训练营标题
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

        // 训练营列表展示
        List() {
          ForEach(MainViewModel.getITCampList(), (item: CampBean) => {
            ListItem() {
              TrainCampCell({ campItem: item })
            }
          }, (item: CampBean) => JSON.stringify(item))
        }
        .listDirection(Axis.Horizontal)
        .backgroundColor(Color.White)
        .borderRadius(12)
        .width('90%')

        //推荐课程标题
        Row() {
          Text('推荐课程')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
          Row() {
            Text('查看更多')
              .fontSize(14)
              .onClick(() => {
                router.pushUrl({
                  url: 'pages/MoreITCoursePage'
                })
              })
            Image($r('app.media.right'))
              .height(16)
          }
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .width('90%')

        // 课程查询条件控制栏
        CourseQueryCondition({ selectIndex: $conditionSelect, order_desc: $priceOrderDesc })
        // 展示IT互联网课程二级分类
        List() {
          ForEach(MainViewModel.getCourseType4ITContent(), (item: CourseTypeBean) => {
            ListItem() {
              Text(item.type)
                .width(80)
                .backgroundColor('#ffa2afbc')
                .fontColor(this.courseTypeSelect === item.typeId ? Color.Blue : Color.Black)
                .borderRadius(5)
                .margin(4)
                .padding(4)
                .textAlign(TextAlign.Center)
                .onClick(() => {
                  this.courseTypeSelect = item.typeId
                })
            }
          }, (item: CourseTypeBean) => JSON.stringify(item))
        }
        .listDirection(Axis.Horizontal)
        .width('90%')

        // 使用List循环展示IT分类下的课程数据，此处未实现根据条件查找功能，仅做数据模拟展示
        List() {
          ForEach(MainViewModel.getITCourseList(), (item: CourseBean) => {
            ListItem() {
              CourseCell({ course: item })
            }
            .onClick(() => { //跳转到课程详情页面
              router.pushUrl({
                url: 'pages/CourseDetailPage'
              })
            })
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
}