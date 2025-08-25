import CourseBean from '../common/bean/CourseBean'
import MainViewModel from '../viewmodel/MainViewModel'

@Component
export default struct MineView {
  build() {
    Scroll() {
      Column() {
        //Text('个人中心')
        // 消息及二维码扫码
        Row() {
          Badge({
            value: '',
            style: { badgeSize: 10, badgeColor: '#FA2A2D' }
          }) {
            Image($r('app.media.message_one'))
              .width(32)
              .height(32)
          }

          Image($r('app.media.scan_code'))
            .width(32)
            .height(32)
            .margin({ left: 8 })
        }
        .margin({ top: 8, bottom: 8 })
        .width('100%')
        .justifyContent(FlexAlign.End)

        // 头像及横向菜单
        this.myAvatar()
        // 最近看过（课程）
        Column() {
          Row() {
            Text('最近看过')
              .fontSize(14)
            Image($r('app.media.right'))
              .width(24)
              .height(24)
          }
          .width('95%')
          .margin({ top: 8, left: 8, right: 8 })
          .justifyContent(FlexAlign.SpaceBetween)

          List() {
            ForEach(MainViewModel.getMyRecentCourse(), (courseItem: CourseBean) => {
              ListItem() {
                Column() {
                  Image(courseItem.img)
                    .width(150)
                    .height(100)
                    .borderRadius(4)
                    .margin({ bottom: 10 })
                  Text(courseItem.title)
                    .fontSize(15)
                    .fontWeight(FontWeight.Bold)
                }
                .margin({
                  top: 8,
                  bottom: 8,
                  left: 8,
                  right: 8
                })
              }
            }, (courseItem: CourseBean) => JSON.stringify(courseItem))
          }
          .listDirection(Axis.Horizontal)
          .width('100%')
          .height(150)
          .margin({ top: 10 })
        }
        .width('95%')
        .backgroundColor(Color.White)
        .borderRadius(10)
        .margin({ top: 10 })

        // 菜单列表：我的点赞、我的兴趣、我的评论、我的打卡、联系客服、隐私、设置等功能
        this.myMenuList()
      }
      .width('95%')
      .height('100%')
    }
    .width('100%')
  }

  //头像及横向菜单
  @Builder
  myAvatar() {
    Column() {
      Row() {
        Image($r('app.media.avatar5'))
          .width(50)
          .height(50)
          .borderRadius(25)
          .margin({ left: 8 })
        Column() {
          Text('Jerry')
            .fontSize(20)
            .fontWeight(FontWeight.Bold)
          Text('但有绿杨堪系马，处处有路透长安！')
            .fontSize(12)
        }
        .alignItems(HorizontalAlign.Start)

        Image($r('app.media.right'))
          .width(24)
          .height(24)
      }
      .width('100%')
      .margin({
        top: 8,
        bottom: 8,
        left: 10,
        right: 8
      })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Column() {
          Image($r('app.media.order'))
            .width(30)
            .height(30)
            .borderRadius(4)
            .margin({ bottom: 12 })
          Text('我的订单')
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
        }

        Column() {
          Image($r('app.media.love'))
            .width(30)
            .height(30)
            .borderRadius(4)
            .margin({ bottom: 12 })
          Text('我的收藏')
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
        }

        Column() {
          Image($r('app.media.money'))
            .width(30)
            .height(30)
            .borderRadius(4)
            .margin({ bottom: 12 })
          Text('我的学币')
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
        }

        Column() {
          Image($r('app.media.myshequ'))
            .width(30)
            .height(30)
            .borderRadius(4)
            .margin({ bottom: 12 })
          Text('我的社区')
            .fontSize(12)
            .fontWeight(FontWeight.Bold)
        }
      }
      .width('100%')
      .margin({ bottom: 10 })
      .justifyContent(FlexAlign.SpaceAround)
    }
    .width('95%')
    .backgroundColor(Color.White)
    .borderRadius(10)
  }

  //我的菜单列表
  @Builder
  myMenuList() {
    Column() {
      Row() {
        Row() {
          Image($r('app.media.dianzhan'))
            .width(24)
            .height(24)
            .borderColor(Color.Orange)
            .borderWidth(1)
            .borderRadius(12)
            .backgroundColor(Color.Orange)
          Text('我的点赞')
            .fontSize(15)
            .margin({ left: 4 })
        }

        Image($r('app.media.right'))
          .width(24)
          .height(24)
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.xingqu'))
            .width(24)
            .height(24)
            .borderColor(Color.Orange)
            .borderWidth(1)
            .borderRadius(12)
            .backgroundColor(Color.Orange)
          Text('我的兴趣')
            .fontSize(15)
            .margin({ left: 4 })
        }

        Image($r('app.media.right'))
          .width(24)
          .height(24)
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.pinglun'))
            .width(24)
            .height(24)
            .borderColor(Color.Orange)
            .borderWidth(1)
            .borderRadius(12)
            .backgroundColor(Color.Orange)
          Text('我的评论')
            .fontSize(15)
            .margin({ left: 4 })
        }

        Image($r('app.media.right'))
          .width(24)
          .height(24)
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.daka'))
            .width(24)
            .height(24)
            .borderColor(Color.Orange)
            .borderWidth(1)
            .borderRadius(12)
            .backgroundColor(Color.Orange)
          Text('我的打卡')
            .fontSize(15)
            .margin({ left: 4 })
        }

        Image($r('app.media.right'))
          .width(24)
          .height(24)
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.kefu'))
            .width(24)
            .height(24)
            .borderColor(Color.Orange)
            .borderWidth(1)
            .borderRadius(12)
            .backgroundColor(Color.Orange)
          Text('联系客服')
            .fontSize(15)
            .margin({ left: 4 })
        }

        Image($r('app.media.right'))
          .width(24)
          .height(24)
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.yinsi'))
            .width(24)
            .height(24)
            .borderColor(Color.Orange)
            .borderWidth(1)
            .borderRadius(12)
            .backgroundColor(Color.Orange)
          Text('隐私')
            .fontSize(15)
            .margin({ left: 4 })
        }

        Image($r('app.media.right'))
          .width(24)
          .height(24)
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Row() {
          Image($r('app.media.shezhi'))
            .width(24)
            .height(24)
            .borderColor(Color.Orange)
            .borderWidth(1)
            .borderRadius(12)
            .backgroundColor(Color.Orange)
          Text('设置')
            .fontSize(15)
            .margin({ left: 4 })
        }

        Image($r('app.media.right'))
          .width(24)
          .height(24)
          .onClick(() => {
            // 跳转到设置页面
            this.getUIContext()
              .getRouter()
              .pushUrl({
                url: 'pages/SettingsPage'
              })
          })
      }
      .width('100%')
      .margin({ top: 6, bottom: 6 })
      .justifyContent(FlexAlign.SpaceBetween)
    }
    .width('95%')
    .backgroundColor(Color.White)
    .borderRadius(10)
    .margin({ top: 10 })
    .padding({
      top: 8,
      left: 8,
      bottom: 8,
      right: 8
    })
  }
}