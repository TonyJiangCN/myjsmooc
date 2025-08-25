@CustomDialog
export struct CourseFilterDialog {
  // 选中的价格索引
  @State selectIndex: number = 1;
  // 最低价
  @State minPrice: number = 0;
  // 最高价
  @State maxPrice: number = 0;
  private controller: CustomDialogController;
  private confirm: () => void = () => {
  };

  build() {
    Column({ space: 4 }) {
      Image($r('app.media.expand_down_one'))
        .width(24)
        .height(24)
        .onClick(() => {
          this.controller.close()
        })
      Text('价格区间')
        .width('90%')
        .fontWeight(FontWeight.Bold)
      Row() {
        Text('50以下')
          .textPriceStyle()
          .fontColor(this.selectIndex === 1 ? Color.Blue : Color.Black)
          .onClick(() => {
            this.selectIndex = 1
          })
        Text('50-100')
          .textPriceStyle()
          .fontColor(this.selectIndex === 2 ? Color.Blue : Color.Black)
          .onClick(() => {
            this.selectIndex = 2
          })
        Text('100-500')
          .textPriceStyle()
          .fontColor(this.selectIndex === 3 ? Color.Blue : Color.Black)
          .onClick(() => {
            this.selectIndex = 3
          })
      }
      .width('90%')
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Text('500-1000')
          .textPriceStyle()
          .fontColor(this.selectIndex === 4 ? Color.Blue : Color.Black)
          .onClick(() => {
            this.selectIndex = 4
          })
        Text('1000以上')
          .textPriceStyle()
          .fontColor(this.selectIndex === 5 ? Color.Blue : Color.Black)
          .onClick(() => {
            this.selectIndex = 5
          })
      }
      .width('90%')
      .justifyContent(FlexAlign.Start)

      Row() {
        TextInput({ placeholder: '最低价' })
          .width('40%')
        Text('--')
          .width('10%')
        TextInput({ placeholder: '最高价' })
          .width('40%')
      }
      .width('90%')
      .justifyContent(FlexAlign.SpaceBetween)

      Button('确定')
        .width('150')
        .margin({ top: 10 })
        .onClick(() => {
          this.controller.close()
        })
    }
    .width('100%')
    .height('40%')
    .borderRadius({ topLeft: 24, topRight: 24 })
    .backgroundColor(Color.White)
    .align(Alignment.BottomEnd)
  }
}

@Extend(Text)
function textPriceStyle() {
  .width(80)
  .backgroundColor('#ffe6eaee')
  .borderRadius(5)
  .margin(4)
  .padding(4)
  .textAlign(TextAlign.Center)
}