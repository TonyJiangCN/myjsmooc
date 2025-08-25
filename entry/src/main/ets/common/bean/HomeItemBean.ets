//封装主页常用功能列表项
export default class HomeItemBean {
  title: string
  icon: Resource

  constructor(title: string, icon ?: Resource) {
    this.title = title;
    this.icon = icon;
  }
}