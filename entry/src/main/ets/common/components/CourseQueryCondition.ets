import { CourseFilterDialog } from './CourseFilterDialog'

@Component
export default struct CourseQueryCondition {
  @Link selectIndex: number
  // 价格是否降序
  @Link order_desc: boolean
  // 筛选条件的定制对话框控制器
  private dialogController: CustomDialogController = new CustomDialogController({
    builder: CourseFilterDialog(),
    customStyle: true,
    alignment: DialogAlignment.Bottom
  })

  build() {
    Row({ space: 2 }) {
      Text('综合')
        .width(50)
        .fontColor(this.selectIndex === 1 ? Color.Blue : Color.Black)
        .onClick(() => {
          this.selectIndex = 1
        })
      Text('人气')
        .width(50)
        .fontColor(this.selectIndex === 2 ? Color.Blue : Color.Black)
        .onClick(() => {
          this.selectIndex = 2
        })
      Text('好评率')
        .width(50)
        .fontColor(this.selectIndex === 3 ? Color.Blue : Color.Black)
        .onClick(() => {
          this.selectIndex = 3
        })
      RowSplit() {
        Row() {
          Text('价格')
            .fontColor(this.selectIndex === 4 ? Color.Blue : Color.Black)
            .onClick(() => {
              this.selectIndex = 4
              this.order_desc = !this.order_desc
            })
          Image(this.order_desc ? $r('app.media.sort_down') : $r('app.media.sort_up'))
            .width(15)
            .margin({ right: 4 })
        }

        Row() {
          Text('筛选')
            .margin({ left: 4 })
            .onClick(() => {
              this.selectIndex = 5
              this.dialogController.open()
            })
          Image($r('app.media.filter'))
            .width(15)
        }
      }
      .height(20)
      .resizeable(false)
    }
    .justifyContent(FlexAlign.SpaceBetween)
    .width('90%')
  }
}