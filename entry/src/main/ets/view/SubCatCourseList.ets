import CourseListByType from './CourseListByType'
import PutDownRefreshView from './PutDownRefreshView';

@Component
export default struct SubCatCourseList {
  // 二级分类id
  @Prop subCatId: number;
  // 记录当前偏移位置Y方向
  private currentOffsetY: number = 0;
  // 计时器
  private timer: number = 0;
  @State refreshStatus: boolean = false;
  @State refreshText: string = '正在刷新...';

  build() {
    Scroll() {
      Column() {
        if (this.refreshStatus) {
          PutDownRefreshView({ refreshText: $refreshText })
        }
        // 按分类展示课程列表，支持懒加载，但未实现分类功能
        CourseListByType()
        Text('--我是有底线的--')
      }
      .width('100%')
    }
    .scrollBar(BarState.Off)
    .edgeEffect(EdgeEffect.Spring)
    .width('100%')
    .height('100%')
    .onTouch((event) => {
      // 在此处触发刷新
      this.putDownRefresh(event);
    })
  }

  putDownRefresh(event: TouchEvent) {
    switch (event.type) {
      case TouchType.Down:
        this.currentOffsetY = event.touches[0].y;
        break;
      case TouchType.Move:
        // 偏移量大于100时触发
        this.refreshStatus = event.touches[0].y - this.currentOffsetY > 100;
        break;
      case TouchType.Cancel:
        break;
      case TouchType.Up:
        // 仅模拟效果，未请求数据
        // 刷新效果展示维持1.5秒
        this.timer = setTimeout(() => {
          this.refreshStatus = false;
        }, 1500);
        break;
    }
  }

  aboutToAppear() {
    // 销毁计时器
    clearTimeout(this.timer);
  }
}