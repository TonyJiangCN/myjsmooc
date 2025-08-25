import HomeContent from './HomeContent'
import ITContent from './ITContent'

@Component
export default struct HomeView {
  build() {
    Tabs() {
      // 推荐课程页面
      TabContent() {
        //Text('推荐')
        HomeContent()
      }
      .tabBar('推荐')

      // IT互联网分类
      TabContent() {
        //Text('IT·互联网')
        ITContent()
      }
      .tabBar('IT·互联网')

      TabContent() {
        Text('设计·创造')
      }
      .tabBar('设计·创造')

      TabContent() {
        Text('考试·考证')
      }
      .tabBar('考试·考证')
    }
  }
}