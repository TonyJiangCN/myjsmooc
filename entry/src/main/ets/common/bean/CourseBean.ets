// 封装课程信息
export default class CourseBean {
  // 标题
  title: string
  // 课程封面
  img: Resource
  // 课程描述
  desc: string
  // 课程价格
  price: number
  // 学生人数
  students: number

  constructor(title: string, img: Resource, desc: string, price: number, students: number) {
    this.title = title;
    this.img = img;
    this.desc = desc;
    this.price = price;
    this.students = students;
  }
}