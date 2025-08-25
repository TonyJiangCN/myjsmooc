import CourseCell from '../common/components/CourseCell';
import CourseListDataSource from '../viewmodel/CourseListDataSource'
import CourseItem from '../viewmodel/CourseListInitData';

@Component
export default struct CourseListByType {
  private courseListData: CourseListDataSource = new CourseListDataSource();
  private startTouchOffsetY: number = 0;
  private endTouchOffsetY: number = 0;

  build() {
    Row() {
      List() {
        LazyForEach(this.courseListData, (item: CourseItem) => {
          ListItem() {
            CourseCell({ course: item })
          }
          .onTouch((event: TouchEvent) => {
            switch (event.type) {
              case TouchType.Down:
                this.startTouchOffsetY = event.touches[0].y;
                break;
              case TouchType.Up:
                this.startTouchOffsetY = event.touches[0].y;
                break;
              case TouchType.Move:
                if (this.startTouchOffsetY - this.endTouchOffsetY > 0) {
                  this.courseListData.pushData();
                }
                break;
            }
          })
        })
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