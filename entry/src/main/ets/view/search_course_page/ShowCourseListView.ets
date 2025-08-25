import CourseBean from '../../common/bean/CourseBean'
import CourseCell from '../../common/components/CourseCell';

@Component
export default struct ShowCourseListView {
  // 课程列表
  private courseListArray: Array<CourseBean> = [];

  build() {
    Row() {
      List() {
        ForEach(this.courseListArray, (item: CourseBean) => {
          ListItem() {
            CourseCell({ course: item })
          }
        }, (item: CourseBean) => JSON.stringify(item))
      }
      .backgroundColor(Color.White)
      .borderRadius(12)
      .divider({ strokeWidth: 1 })
      .width('90%')
    }
    .justifyContent(FlexAlign.Center)
    .width('100%')
  }
}