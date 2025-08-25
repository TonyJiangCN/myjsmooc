import CampBean from '../bean/CampBean'

@Component
export default struct TrainCampCell {
  @Prop campItem: CampBean;

  build() {
    Column({ space: 2 }) {
      Image(this.campItem.img)
        .width(150)
        .height(95)
        .borderRadius(8)
        .margin(2)
      Text(this.campItem.title)
        .fontSize(15)
        .fontWeight(FontWeight.Bold)
        .width('100%')
      Row({ space: 2 }) {
        Text(`${this.campItem.days}天营`)
          .fontSize(15)
          .width('30%')
          .backgroundColor(Color.Orange)
          .fontColor(Color.White)
          .borderRadius({ topLeft: 5, bottomLeft: 5 })
          .padding({ left: 4 })
        Text(`${this.campItem.startDate}开始`)
          .fontSize(15)
          .width('70%')
          .backgroundColor(Color.Pink)
          .borderRadius({ topRight: 5, bottomRight: 5 })
      }
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Text(`￥${this.campItem.price}元`)
          .fontSize(15)
          .fontColor(Color.Red)
        Text(`${this.campItem.orgName}`)
          .fontSize(12)
      }
      .width('100%')
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .padding(5)
    .width(170)
  }
}