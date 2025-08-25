import CourseBean from '../bean/CourseBean'

@Component
export default struct CourseCell {
  // 课程信息封装
  @Prop course: CourseBean

  build() {
    Row({ space: 4 }) {
      Image(this.course.img)
        .width(150)
        .height(95)
        .borderRadius(8)
      Column() {
        Text(this.course.title)
          .fontSize(15)
          .fontWeight(FontWeight.Bold)
        Text(this.course.desc)
          .fontSize(13)
        Text(`￥${this.course.price}元`)
          .fontSize(15)
          .fontColor(Color.Red)
        Row() {
          Image($r('app.media.fire'))
            .width(16)
          Text(`最近在学：${this.course.students}`)
            .fontSize(15)
            .fontColor(Color.Blue)
        }
      }
      .alignItems(HorizontalAlign.Start)
    }
    .margin(8)
  }
}
