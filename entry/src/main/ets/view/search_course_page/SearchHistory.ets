@Component
export default struct SearchHistory {
  // 搜索历史数组
  @Link searchHistoryArray: Array<string>;

  build() {
    Column() {
      // 标题部分
      Row() {
        Text('搜索历史')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .margin({ left: 10, top: 8, bottom: 8 })
        Image($r('app.media.delete'))
          .width(24)
          .height(24)
          .margin({ right: 10 })
          .onClick(() => {
            // 清空搜索历史
            this.searchHistoryArray.splice(0, this.searchHistoryArray.length)
          })
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)

      // 搜索历史列表
      Flex({ justifyContent: FlexAlign.Start, wrap: FlexWrap.Wrap }) {
        if (this.searchHistoryArray.length > 0) {
          ForEach(this.searchHistoryArray, (item: string) => {
            Text(`${item}`)
              .fontSize(12)
              .borderStyle(BorderStyle.Solid)
              .borderWidth(1)
              .borderRadius(18)
              .borderColor('#E4E5E6')
              .backgroundColor('#E4E5E6')
              .margin({ top: 10, right: 12 })
              .padding({
                top: 6,
                bottom: 6,
                left: 8,
                right: 8
              })
              .textOverflow({ overflow: TextOverflow.Ellipsis })
              .maxLines(2)
          }, (item: string) => JSON.stringify(item))
        }
      }
      .margin({ left: 10, right: 10 })
    }
  }
}
