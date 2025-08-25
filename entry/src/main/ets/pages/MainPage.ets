import CommonConstants from '../common/constants/CommonConstants'
import CommunityView from '../view/CommunityView';
import HomeView from '../view/HomeView';
import MineView from '../view/MineView';

@Entry
@Component
struct MainPage {
  @State index: number = 0
  // 定义控制器用于切换tab
  private tabsController: TabsController = new TabsController();

  build() {
    Tabs({ barPosition: BarPosition.End, controller: this.tabsController }) {
      // 首页页面
      TabContent() {
        //Text('首页').fontSize(30)
        //Home()//主页功能
        HomeView()
      } //.tabBar('首页')
      .backgroundColor($r('sys.color.comp_background_focus'))
      .tabBar(this.baseTab('首页', 0, $r('app.media.home1'), $r('app.media.home')))

      // 课程页面
      TabContent() {
        Text('课程')
          .fontSize(30)
      } //.tabBar('课程')
      .backgroundColor($r('sys.color.comp_background_focus'))
      .tabBar(this.baseTab('课程', 1, $r('app.media.course1'), $r('app.media.course')))

      // 社区页面
      TabContent() {
        //Text('社区').fontSize(30)
        CommunityView()
      } //.tabBar('社区')
      .backgroundColor($r('sys.color.comp_background_focus'))
      .tabBar(this.baseTab('社区', 2, $r('app.media.shequ1'), $r("app.media.shequ")))

      // 个人中心页面
      TabContent() {
        //Text('我的').fontSize(30)
        MineView()
      } //.tabBar('我的')
      .backgroundColor($r('sys.color.comp_background_focus'))
      .tabBar(this.baseTab('我的', 3, $r('app.media.user1'), $r('app.media.user')))
    }
    .width(CommonConstants.FULL_WIDTH)
    .height(CommonConstants.FULL_HEIGHT)
    .barHeight(60)
    .onChange((index: number) => {
      this.index = index
    })
  }

  @Builder
  baseTab(title: string, targetIndex: number, selectImg: Resource, normalImg: Resource) {
    Column() {
      Image(this.index === targetIndex ? selectImg : normalImg)
        .width(28)
        .height(28)
      Text(title)
        .margin({ top: 4 })
        .fontSize(12)
        .fontColor(this.index === targetIndex ? '#ff161b39' : '#ff8f8484')
    }
    .margin({ top: 8 })
    .height(58)
    .width(CommonConstants.FULL_HEIGHT)
    .onClick(() => {
      this.index = targetIndex
      this.tabsController.changeIndex(this.index)
    })
  }
}