@Component
export default struct CourseIntroduceView {
  build() {
    Scroll() {
      Column() {
        // 获得技能介绍
        Text('您将获得')
          .fontSize(18)
          .fontWeight(FontWeight.Bold)
          .width('100%')
        Row() {
          Checkbox()
            .select(true)
            .enabled(false)
          Text('Java技能提升')
        }

        Row() {
          Checkbox()
            .select(true)
            .enabled(false)
          Text('开发调试技巧')
        }

        Row() {
          Checkbox()
            .select(true)
            .enabled(false)
          Text('大型企业级实战项目')
        }

        // 品质服务
        Column({ space: 6 }) {
          Text('品质服务')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          Row() {
            Image($r('app.media.classroom'))
              .width(24)
              .height(24)
            Text('面试辅导')
          }

          Row() {
            Image($r('app.media.edit_one'))
              .width(24)
              .height(24)
            Text('简历修改')
          }

          Row() {
            Image($r('app.media.diamonds'))
              .width(24)
              .height(24)
            Text('一对一服务')
          }
        }
        .margin({ top: 10, bottom: 10 })
        .alignItems(HorizontalAlign.Start)

        // 讲师介绍
        Column({ space: 6 }) {
          Text('讲师介绍')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          Column() {
            Row() {
              Image($r('app.media.teacher1'))
                .width(60)
                .height(60)
                .borderRadius(30)
                .margin(4)
              Column() {
                Text('托尼')
                  .fontSize(16)
                  .fontWeight(FontWeight.Bold)
                Text('中山大学本硕连读，10年编程经验')
                  .fontSize(14)
              }
              .alignItems(HorizontalAlign.Start)
            }
            .width('100%')
            .margin({ bottom: 8 })

            Divider()
              .strokeWidth(1)
              .color('#abcdef')
              .margin({ top: 2, bottom: 8 })
            Row() {
              Text('中山大学软件工程博士，曾就职全球500强大厂，系统架构经验丰富，教学幽默风趣。')
                .fontSize(12)
            }
          }
          .width('100%')
          .borderWidth(1)
          .borderRadius(12)
          .borderColor('#abcdef')
          .padding({
            top: 10,
            bottom: 10,
            left: 8,
            right: 8
          })
        }

        // 课程介绍图片部分
        Column() {
          Text('课程详情')
            .fontSize(18)
            .fontWeight(FontWeight.Bold)
            .width('100%')
          Image($r('app.media.hadoop'))
            .width('100%')
          Image($r('app.media.hadoop1'))
            .width('100%')
          Image($r('app.media.hadoop2'))
            .width('100%')
          Image($r('app.media.hadoop3'))
            .width('100%')
        }
        .margin({ top: 8, bottom: 8 })

        Column() {
          Text('--没有更多内容了--')
            .fontSize(12)
        }
        .margin({ top: 10 })
        .width('100%')
        .height('50%')
      }
      .alignItems(HorizontalAlign.Start)
      .width('95%')
    }
    .width('100%')
  }
}