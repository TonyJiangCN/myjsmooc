import SectionBean from '../../common/bean/SectionBean';
import ChapterBean from '../../common/bean/ChapterBean'
import ChapterListModel from '../../viewmodel/ChapterListModel'

@Component
export default struct CourseChaptersList {
  // 是否显示节标题
  @State sectionShow: Array<boolean> = [];

  build() {
    Scroll() {
      Column() {
        // 章信息
        List() {
          ForEach(ChapterListModel.getChapterList(), (item: ChapterBean) => {
            ListItem() {
              Column() {
                Row() {
                  // 章标题展示
                  this.chapterCell(item)
                  // 默认不显示节信息
                }

                if (this.sectionShow[item.chapterId]) {
                  // 此处控制节标题是否显示和隐藏
                  Column() {
                    // 节信息
                    List() {
                      ForEach(item.sectionList, (sectionItem: SectionBean) => {
                        ListItem() {
                          // 展示节信息
                          this.sectionCell(sectionItem)
                        }
                      }, (sectionItem: SectionBean) => JSON.stringify(sectionItem))
                    }
                  }
                }
              }
            }
          }, (item: ChapterBean) => JSON.stringify(item))
        }

        Column() {
          Text('--没有更多内容了--')
            .fontSize(12)
        }
        .margin({ top: 10 })
        .width('100%')
        .height('50%')
      }
      .justifyContent(FlexAlign.Start)
      .width('95%')
    }
    .width('100%')
  }

  // 章标题展示
  @Builder
  chapterCell(chapter: ChapterBean) {
    Row() {
      Text(`${chapter.chapterId}·${chapter.title}`)
      Image(this.sectionShow[chapter.chapterId] ? $r('app.media.up') : $r('app.media.down'))
        .width(24)
        .onClick(() => {
          this.sectionShow[chapter.chapterId] = !this.sectionShow[chapter.chapterId]
        })
    }
    .width('100%')
    .backgroundColor('#abcdef')
    .padding({
      left: 10,
      right: 10,
      top: 6,
      bottom: 6
    })
    .margin({ bottom: 4 })
    .borderRadius(8)
    .justifyContent(FlexAlign.SpaceBetween)
  }

  @Builder
  sectionCell(sectionItem: SectionBean) {
    Row() {
      Row({ space: 4 }) {
        Image($r('app.media.play'))
          .width(22)
        Column() {
          Text(`${sectionItem.sectionId}-${sectionItem.sectionName}`)
            .fontSize(16)
          Text(`时长：${sectionItem.timeCount}分钟`)
            .fontSize(12)
        }
        .alignItems(HorizontalAlign.Start)
      }

      Image($r('app.media.lock'))
        .width(22)
    }
    .margin({ top: 6, bottom: 6 })
    .justifyContent(FlexAlign.SpaceBetween)
    .width('100%')
  }

  aboutToAppear() {
    // 初始化节列表显示状态，默认为隐藏
    for (let i = 1; i <= ChapterListModel.getChapterList()
      .length; i++) {
      this.sectionShow[i] = false;
    }
  }
}