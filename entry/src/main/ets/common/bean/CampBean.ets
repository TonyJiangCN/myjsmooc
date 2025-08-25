// 封装训练营信息
export default class CampBean {
  title: string //标题
  img: Resource  //海报
  days:number    //天数
  startDate: string //开始日期
  price: number   //价格
  orgName: string   //开课组织或个人
  students: number  //学生数，报名人数

  constructor(title: string, img: Resource, days: number,
  startDate: string, price: number, orgName: string, students: number ) {
    this.title = title
    this.img = img
    this.days = days
    this.startDate = startDate
    this.price = price
    this.orgName = orgName
    this.students = students
  }
}