@Component
export default struct SquareText {
  // 标题
  @Prop title: string = '';
  // 文本颜色
  @Prop textColor: string = '';

  build() {
    Text(this.title)
      .backgroundColor('#ffa2afbc')
      .fontColor(this.textColor)
      .borderRadius(5)
      .margin(4)
      .padding(6)
      .textAlign(TextAlign.Center)
      .textOverflow({ overflow: TextOverflow.Ellipsis })
      .maxLines(2)
  }
}