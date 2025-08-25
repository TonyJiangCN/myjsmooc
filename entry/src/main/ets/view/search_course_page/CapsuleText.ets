@Component
export default struct CapsuleText {
  @Prop title: string = '';

  build() {
    Text(`${this.title}`)
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
  }
}