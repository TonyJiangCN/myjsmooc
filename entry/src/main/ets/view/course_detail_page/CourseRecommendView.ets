import CourseBean from '../../common/bean/CourseBean'
import MainViewModel from '../../viewmodel/MainViewModel'
import ShowCourseListView from './ShowCourseListView'

@Component
export default struct CourseRecommendView {
  build() {
    Scroll() {
      Column() {
        // 展示推荐课程列表
        ShowCourseListView({ courseListArray: MainViewModel.getRecommendCourseList() });
        Column() {
          Text('--没有更多内容了--')
            .fontSize(12)
        }
        .margin({ top: 10 })
        .width('100%')
        .height('50%')
      }
      .width('95%')
      .justifyContent(FlexAlign.Start)
    }
    .width('100%')
  }
}
