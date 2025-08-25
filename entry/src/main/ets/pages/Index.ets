import CommonConstants from '../common/constants/CommonConstants'
import Logger from '../common/utils/Logger'

@Entry
@Component
struct Index {
  @State userName: string = '' //用户名使用手机号
  @State password: string = '' //密码
  @State isSelect: boolean = false //隐私协议是否勾选
  private userNameCheckReg = /^1[3|4|5|6|7|8|9][0-9]{9}/ //手机号校验规则

  build() {
    Flex({ direction: FlexDirection.Column, justifyContent: FlexAlign.SpaceAround, alignItems: ItemAlign.Center }) {
      Text($r('app.string.App_title'))
        .fontSize($r('app.float.login_title_font_size'))
        .fontWeight(CommonConstants.FONT_BOLDER)
      if (!this.userNameCheckReg.test(this.userName) && this.userName != '') {
        Text($r('app.string.user_name_error_message'))
          .fontSize($r('app.float.login_error_message_font_size'))
          .fontWeight(CommonConstants.FONT_BOLDER)
          .fontColor(Color.Red)
          .width(CommonConstants.CONTENT_SIZE)
      }
      Column() {
        TextInput({ placeholder: $r('app.string.Login_UserName') })
          .height($r('app.float.login_input_height'))
          .margin({ top: $r('app.float.login_input_margin_top') })
          .onChange((value) => {
            this.userName = value;
          })
        TextInput({ placeholder: $r('app.string.Login_Password') })
          .type(InputType.Password)
          .height($r('app.float.login_input_height'))
          .margin({ top: $r('app.float.login_input_margin_top') })
          .onChange((value) => {
            this.password = value;
          })
      }
      .width(CommonConstants.CONTENT_SIZE)

      Button($r('app.string.Login'))
        .width(CommonConstants.HALF_SIZE)
        .opacity($r('app.float.login_button_opacity'))
        .onClick(() => {
          if (!this.isSelect) {
            this.getUIContext()
              .showAlertDialog({
                title: '提示:',
                message: '请先同意隐私协议！',
                confirm: {
                  value: '关闭',
                  action: () => {
                    console.info('confirm!!!')
                  }
                }
              })
          }
          else if (this.password === '88888888') {
            Logger.error('Login:', `${this.userName}登录成功>>>>>`)
            console.info('login ok!')
            this.getUIContext()
              .getRouter()
              .pushUrl({
                url: 'pages/Loading',
                params: {
                  userNameParam: this.userName
                }
              })
          }
          else {
            Logger.error('Login:', `${this.userName}登录失败<<<<<<`)
            this.getUIContext()
              .showAlertDialog({
                title: '提示:',
                message: '用户名或密码错误！',
                confirm: {
                  value: '关闭',
                  action: () => {
                    console.info('confirm!!!')
                  }
                }
              })
          }
        })
      Row() {
        Checkbox()
          .select(this.isSelect)
          .backgroundColor($r('app.color.login_select_background_color'))
          .onChange((value) => {
            this.isSelect = value;
          })
        Text($r('app.string.Login_check_License'))
          .fontColor($r('app.color.login_check_license_font_color'))
      }
    }
    .width(CommonConstants.FULL_WIDTH)
    .height(CommonConstants.FULL_HEIGHT)
    .backgroundImage($r('app.media.peak'))
    .backgroundImageSize(ImageSize.Cover)
  }
}