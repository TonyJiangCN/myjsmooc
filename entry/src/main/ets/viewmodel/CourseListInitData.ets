// 课程接口
export default interface CourseItem {
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
}

export const courseInitialList: CourseItem[] = [
  {
    title: 'Java大法好',
    img: $r('app.media.course07'),
    desc: 'Java YYDS',
    price: 1888.88,
    students: 39999
  },
  {
    title: 'Python大法好',
    img: $r('app.media.course05'),
    desc: 'Python YYDS',
    price: 888.88,
    students: 3999
  },
  {
    title: '算法出神入化',
    img: $r('app.media.course03'),
    desc: '算法 YYDS',
    price: 888.88,
    students: 9999
  },
  {
    title: '互联网大厂必修课',
    img: $r('app.media.course01'),
    desc: '互联网大厂不求人',
    price: 188.88,
    students: 399
  },
  {
    title: 'Hadoop实践',
    img: $r('app.media.course02'),
    desc: 'Hadoop YYDS',
    price: 1888.88,
    students: 39999
  },
  {
    title: 'Hive精通',
    img: $r('app.media.course04'),
    desc: 'Hive YYDS',
    price: 1888.88,
    students: 39999
  },
  {
    title: '数据分析实践',
    img: $r('app.media.course06'),
    desc: '数据分析从业必备',
    price: 8.88,
    students: 3
  },
  {
    title: 'HarmonyOS从入门到发呆',
    img: $r('app.media.course08'),
    desc: 'HarmonyOD YYDS',
    price: 1888.88,
    students: 39999
  },
  {
    title: '鸿蒙设备开发入门',
    img: $r('app.media.course01'),
    desc: '设备开发',
    price: 1888.88,
    students: 39
  },
  {
    title: '物联网入门',
    img: $r('app.media.course06'),
    desc: '万物互联时代，你被抛弃了吗',
    price: 188.88,
    students: 3999
  }
]