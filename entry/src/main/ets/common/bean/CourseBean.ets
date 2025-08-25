//封装课程信息
export default class CourseBean {
  title: string   //标题
  img: Resource   //课程封面
  desc: string    //课程描述
  price: number   //课程价格
  students: number   //学生人数

  constructor(title: string,img:Resource,desc:string,price:number,students:number) {
    this.title = title;
    this.img = img;
    this.desc = desc;
    this.price = price;
    this.students = students;
  }
}