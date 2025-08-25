import CommentBean from '../../common/bean/CommentBean'
import CommentListModel from '../../viewmodel/CommentListModel'

@Component
export default struct CommentList {
  build() {
    Scroll() {
      Column() {
        //Text('评价列表')
        Row() {
          Text('全部评价')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
        }
        .width('100%')
        .margin({ top: 8, bottom: 8 })

        //评价概况
        this.ratingAll()

        //评价列表
        List() {
          ForEach(CommentListModel.getCommentList(), (comment: CommentBean) => {
            ListItem() {
              this.commentCell(comment)
            }
          }, (comment: CommentBean) => JSON.stringify(comment))
        }
        .margin({ top: 10 })

        Column() {
          Text('--没有更多内容了--')
            .fontSize(12)
        }
        .margin({ top: 10 })
        .width('100%')
        .height('50%')
      }
      .width('95%')
      .justifyContent(FlexAlign.Start)
    }
    .width('100%')
  }

  //评价概况
  @Builder
  ratingAll() {
    Row() {
      Row({ space: 6 }) {
        Text('4.8')
          .fontSize(60)
          .fontWeight(FontWeight.Bold)
          .alignSelf(ItemAlign.Baseline)
        Text('星')
          .fontSize(16)
          .fontWeight(FontWeight.Bold)
          .alignSelf(ItemAlign.Baseline)
        Column() {
          Rating({ rating: 5, indicator: true })
            .stars(5)
          Rating({ rating: 4, indicator: true })
            .stars(4)
          Rating({ rating: 3, indicator: true })
            .stars(3)
          Rating({ rating: 2, indicator: true })
            .stars(2)
          Rating({ rating: 1, indicator: true })
            .stars(1)
        }
        .height(60)
        .justifyContent(FlexAlign.SpaceEvenly)
        .alignItems(HorizontalAlign.End)

        Column() {
          Progress({ value: 100, type: ProgressType.Linear })
            .width(100)
          Progress({ value: 80, type: ProgressType.Linear })
            .width(100)
          Progress({ value: 60, type: ProgressType.Linear })
            .width(100)
          Progress({ value: 10, type: ProgressType.Linear })
            .width(100)
          Progress({ value: 1, type: ProgressType.Linear })
            .width(100)
        }
        .height(60)
        .justifyContent(FlexAlign.SpaceEvenly)
        .alignItems(HorizontalAlign.End)
      }
    }
    .height(60)
    .width('100%')
  }

  //展示评价
  @Builder
  commentCell(comment: CommentBean) {
    Row() {
      Column() {
        //头像
        Image(comment.userImage)
          .width(50)
          .height(50)
          .borderRadius(25)
      }
      .margin({ right: 6 })
      .width('20%')

      Column() {
        Row() {
          Text(comment.nick)
            .fontSize(16)
            .fontWeight(FontWeight.Medium)
          Rating({ rating: comment.stars, indicator: true })
            .stars(5)
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ right: 10 })
        .width('100%')

        Row() {
          Text(`学习${comment.studyTime}分钟时评价`)
            .fontSize(12)
          Text(`${comment.commentDate}`)
            .fontSize(12)
        }
        .justifyContent(FlexAlign.SpaceBetween)
        .padding({ right: 10 })
        .width('100%')

        Text(comment.comment)
          .fontSize(14)
      }
      .alignItems(HorizontalAlign.Start)
      .width('80%')
    }
    .width('100%')
    .margin({ top: 4, bottom: 4 })
  }
}