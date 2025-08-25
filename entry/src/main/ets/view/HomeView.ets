import Home from './Home'
import HomeITContent from './HomeITContent'
@Component

export default  struct HomeView{

  build(){
    Tabs(){
      TabContent(){
        //Text('推荐')
        Home()// 推荐课程页面
      }.tabBar('推荐')
      TabContent(){
        //Text('IT·互联网')
        HomeITContent() //IT互联网分类挂载到此处
      }.tabBar('IT·互联网')
      TabContent(){
        Text('设计·创造')
      }.tabBar('设计·创造')
      TabContent(){
        Text('考试·考证')
      }.tabBar('考试·考证')

    }
  }
}