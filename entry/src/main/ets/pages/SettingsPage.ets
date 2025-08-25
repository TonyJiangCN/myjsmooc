import preferences from '@ohos.data.preferences';
import common from '@ohos.app.ability.common';

// app preferences name
const JINSHU_STORE: string = 'jinshuAppStore';
const IS_WIFIDOWNLOAD: string = 'isWIFIDownload';
const IS_PLAYATBACKGROUND: string = 'isPlayAtBackGround';
const VIDEO_RESOLUTION: string = 'videoResolution';

@Entry
@Component
struct SettingsPage {
  // 是否仅在WIFI下下载视频
  @State isWIFIDownload: boolean = true
  // 是否后台播放
  @State isPlayAtBackGround: boolean = false;
  // 视频清晰度：1 流畅 2： 高清 3： 超清
  @State videoResolution: number = 1
  // 取得上下文
  context: common.UIAbilityContext = getContext(this) as common.UIAbilityContext;

  build() {
    Column() {
      // 标题部分
      Row() {
        Image($r('app.media.left'))
          .width(24)
          .height(24)
          .onClick(() => {
            this.getUIContext()
              .getRouter()
              .back()
          })
        Text('设置')
          .fontSize(20)
          .fontWeight(FontWeight.Bold)
          .width('90%')
          .textAlign(TextAlign.Center)
      }
      .width('100%')
      .margin({
        top: 12,
        bottom: 12,
        left: 10,
        right: 10
      })

      // 设置菜单
      Column() {
        Row() {
          Text('仅WIFI下载')
            .fontSize(15)
            .margin({ left: 8 })
          Toggle({ type: ToggleType.Switch, isOn: this.isWIFIDownload })
            .onChange((value) => {
              this.isWIFIDownload = value;
            })
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)

        Divider()
          .strokeWidth(1)
        Row() {
          Text('开启后台播放')
            .fontSize(15)
            .margin({ left: 8 })
          Toggle({ type: ToggleType.Switch, isOn: this.isPlayAtBackGround })
            .onChange((value) => {
              this.isPlayAtBackGround = value
            })
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)

        Divider()
          .strokeWidth(1)
        Row() {
          Text('视频缓存清晰度')
            .fontSize(15)
            .margin({ left: 8 })
          Row() {
            Radio({ value: '1', group: 'cacheVideoResolution' })
              .checked(this.videoResolution === 1 ? true : false)
              .onChange((value) => {
                if (value) {
                  this.videoResolution = 1
                }
              })
            Text('流畅')
            Radio({ value: '2', group: 'cacheVideoResolution' })
              .checked(this.videoResolution === 2 ? true : false)
              .onChange((value) => {
                if (value) {
                  this.videoResolution = 2
                }
              })
            Text('高清')
            Radio({ value: '3', group: 'cacheVideoResolution' })
              .checked(this.videoResolution === 3 ? true : false)
              .onChange((value) => {
                if (value) {
                  this.videoResolution = 3
                }
              })
            Text('超清')
          }
          .margin({ right: 8 })
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)

        Divider()
          .strokeWidth(1)
        Row() {
          Text('清除缓存')
            .fontSize(15)
            .margin({ left: 8 })
          Text('129M')
            .margin({ right: 8 })
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)

        Divider()
          .strokeWidth(1)
        Row() {
          Text('注销账号')
            .fontSize(15)
            .margin({ left: 8 })
          Image($r('app.media.right'))
            .width(24)
            .height(24)
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)

        Divider()
          .strokeWidth(1)
        Row() {
          Text('关于')
            .fontSize(15)
            .margin({ left: 8 })
          Image($r('app.media.right'))
            .width(24)
            .height(24)
        }
        .width('100%')
        .height(50)
        .justifyContent(FlexAlign.SpaceBetween)
      }
      .width('100%')
      .backgroundColor(Color.White)
      .margin({ top: 10 })

      // 退出登录
      Row() {
        Text('退出登录')
          .fontColor(Color.Red)
      }
      .margin({ top: 25 })
      .width('100%')
      .height(50)
      .justifyContent(FlexAlign.Center)
      .backgroundColor(Color.White)
    }
    .width('100%')
    .height('100%')
    .backgroundColor($r('sys.color.comp_background_focus'))
  }

  aboutToAppear() {
    let data_preferences = preferences.getPreferences(this.context, JINSHU_STORE)
    data_preferences.then((res) => {
      res.get(IS_WIFIDOWNLOAD, true)
        .then((data) => {
          this.isWIFIDownload = data as boolean;
        })
      res.get(IS_PLAYATBACKGROUND, false)
        .then((data) => {
          this.isPlayAtBackGround = data as boolean
        })
      res.get(VIDEO_RESOLUTION, 1)
        .then((data) => {
          this.videoResolution = data as number
        })
    })
  }

  aboutToDisappear() {
    let data_preferences = preferences.getPreferences(this.context, JINSHU_STORE)
    data_preferences.then((res) => {
      res.put(IS_WIFIDOWNLOAD, this.isWIFIDownload)
        .then(() => {
          console.log('isWIFIDownload save ok')
        })
      res.put(IS_PLAYATBACKGROUND, this.isPlayAtBackGround)
        .then(() => {
          console.log('isPlayAtBackGround save ok')
        })
      res.put(VIDEO_RESOLUTION, this.videoResolution)
        .then(() => {
          console.log('videoResolution save ok')
        })
      res.flush();
    })
      .catch((err: string) => {
        console.log('preferences save error:' + err)
      })
  }
}