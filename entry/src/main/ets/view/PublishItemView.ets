import PublishItem from '../common/bean/PublishItemBean'

@Component
export default struct PublishItemView {
  @Prop publishItem: PublishItem;

  // private publishItem: PublishItem = {
  //   itemId: 1,
  //   userId: '1',
  //   nickName: 'Tony老师',
  //   userImage: $r('app.media.avatar1'),
  //   roleName: '讲师',
  //   publishContent: '白日依山尽，黄河入海流！',
  //   videoResource: $rawfile('video1.mp4'),
  //   publishDate: '2023-3-3',
  //   tags: '#打卡#心得',
  //   favoriteCount: 22,
  //   commentCount: 11,
  //   loveCount: 33,
  //   previewImage: $r('app.media.videoprivew1')
  // }; //发布项信息

  build() {
    Column({ space: 4 }) {
      Row() {
        Image(this.publishItem.userImage)
          .width(50)
          .height(50)
          .borderRadius(25)
        Column() {
          Row() {
            Text(this.publishItem.nickName)
              .fontSize(16)
              .fontWeight(FontWeight.Bold)
            Text(this.publishItem.roleName)
              .fontSize(12)
              .backgroundColor('#c83182')
              .fontColor(Color.White)
              .padding({
                left: 5,
                right: 5,
                top: 2,
                bottom: 2
              })
              .borderRadius(5)
          }

          Text(this.publishItem.publishDate)
            .fontSize(12)
        }
        .width('100%')
        .alignItems(HorizontalAlign.Start)
        .margin({ left: 4 })
      }

      Row() {
        Text(this.publishItem.publishContent)
      }
      .margin({
        top: 5,
        bottom: 8,
        left: 2,
        right: 2
      })

      Row() {
        Video({
          src: this.publishItem.videoResource,
          previewUri: this.publishItem.previewImage
        })
          .controls(true)
          .autoPlay(false)
          .loop(true)
          .objectFit(ImageFit.Fill)
          .width('100%')
          .height(200)
          .borderRadius(5)
      }
      .margin({ bottom: 8 })

      Row() {
        Text(this.publishItem.tags)
          .fontSize(12)
          .fontColor(Color.White)
          .padding({
            top: 4,
            bottom: 4,
            left: 8,
            right: 8
          })
      }
      .backgroundColor(Color.Gray)
      .borderRadius(4)

      Row() {
        Row() {
          Image($r('app.media.star'))
            .width(22)
            .height(22)
            .margin({ right: 2 })
          Text(`${this.publishItem.favoriteCount}`)
        }

        Row() {
          Image($r('app.media.comment_one'))
            .width(22)
            .height(22)
            .margin({ right: 2 })
          Text(`${this.publishItem.commentCount}`)
        }

        Row() {
          Image($r('app.media.like'))
            .width(22)
            .height(22)
            .margin({ right: 2 })
          Text(`${this.publishItem.loveCount}`)
        }
      }
      .width('100%')
      .margin({ bottom: 8 })
      .justifyContent(FlexAlign.SpaceAround)
    }
    .width('95%')
    .alignItems(HorizontalAlign.Start)
  }
}