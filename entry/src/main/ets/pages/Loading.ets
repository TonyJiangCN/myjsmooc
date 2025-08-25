import CommonConstants from '../common/constants/CommonConstants'

@Entry
@Component
struct Loading {
  // 用户名
  @State userName: string = '';
  // 进度条初始值
  @State progValue: number = 50;
  // 进度条颜色值
  @State progColorValue: number = 50;
  // 定时器
  private timer: number = 0;

  // 在生命周期函数中获取参数
  aboutToAppear() {
    // 通过键名提取具体参数
    const params = this.getUIContext()
      .getRouter()
      .getParams() as Record<string, string>;
    this.userName = params['userNameParam'] || '';
    if (this.progValue <= 150 && this.progColorValue <= 150) {
      this.timer = setInterval(() => {
        this.progValue += 50
        this.progColorValue += 50
      }, 1000)
    }
    setTimeout(() => {
      clearInterval(this.timer)
      // 实现路由跳转到首页
      this.getUIContext()
        .getRouter()
        .pushUrl({ url: 'pages/MainPage' })
    }, 3000)
  }

  build() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceEvenly, alignItems: ItemAlign.Center }) {
      Text(`[${this.userName}]您好，系统正在登录...`)
        .fontSize(20)
      Progress({ value: this.progValue, total: 150, type: ProgressType.ScaleRing })
        .color(Color.Grey)
        .value(this.progColorValue)
        .width(150)
        .style({ strokeWidth: 20, scaleCount: 30, scaleWidth: 5 })
    }
    .width(CommonConstants.FULL_WIDTH)
    .height(CommonConstants.FULL_HEIGHT)
  }
}