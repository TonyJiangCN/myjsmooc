@Component
export default struct PutDownRefreshView {
  @Link refreshText: string;

  build() {
    Row() {
      Image($r('app.media.refreshing'))
        .width(32)
        .height(32)
      Text(this.refreshText)
        .fontSize(16)
    }
    .justifyContent(FlexAlign.Center)
    .width('95%')
    .height('20%')
  }
}