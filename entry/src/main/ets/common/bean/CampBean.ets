// 封装训练营信息
export default class CampBean {
  // 标题
  title: string
  // 海报
  img: Resource
  // 天数
  days: number
  // 开始日期
  startDate: string
  // 价格
  price: number
  // 开课组织或个人
  orgName: string
  // 学生数，报名人数
  students: number

  constructor(title: string, img: Resource, days: number,
              startDate: string, price: number, orgName: string, students: number) {
    this.title = title
    this.img = img
    this.days = days
    this.startDate = startDate
    this.price = price
    this.orgName = orgName
    this.students = students
  }
}