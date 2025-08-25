import CapsuleText from './CapsuleText';

@Component
export default struct HotSearchView {
  // 热门搜索关键字列表
  @Prop hotSearchArray: Array<string>;

  build() {
    Column() {
      // 热门搜索标题
      Row() {
        Text('热门搜索')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .width('100%')
      }
      .margin({ left: 10, top: 12, bottom: 12 })
      .justifyContent(FlexAlign.Start)

      // 热门搜索列表
      Flex({ justifyContent: FlexAlign.Start, wrap: FlexWrap.Wrap }) {
        if (this.hotSearchArray.length > 0) {
          ForEach(this.hotSearchArray, (item: string) => {
            CapsuleText({ title: item })
          }, (item: string) => JSON.stringify(item))
        }
      }
      .margin({ left: 10, right: 10 })
    }
    .width('100%')
  }
}

