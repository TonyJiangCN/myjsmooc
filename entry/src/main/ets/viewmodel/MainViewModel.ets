import CampBean from '../common/bean/CampBean';
import CommunityTypeBean from '../common/bean/CommunityTypeBean';
import CourseBean from '../common/bean/CourseBean';
import CourseTypeBean from '../common/bean/CourseTypeBean';
import HomeItemBean from '../common/bean/HomeItemBean';
import PublishItemBean from '../common/bean/PublishItemBean';

export class MainViewModel {
  getHomeSwiperImage(): Array<Resource> {
    let swiperImages: Resource[] = [
      $r('app.media.swiper1'),
      $r('app.media.swiper2'),
      $r('app.media.swiper3'),
      $r('app.media.swiper4'),
      $r('app.media.swiper5'),
      $r('app.media.swiper6')
    ];

    return swiperImages;
  }

  getHomeItemBeanList(): Array<HomeItemBean> {
    let homeItems: HomeItemBean[] = [
      new HomeItemBean('狂飙英语', $r('app.media.itm1')),
      new HomeItemBean('冲刺考研', $r('app.media.itm2')),
      new HomeItemBean('写作宝典', $r('app.media.itm3')),
      new HomeItemBean('职场充电', $r('app.media.itm4')),
      new HomeItemBean('免费课程', $r('app.media.itm5')),
      new HomeItemBean('设计课堂', $r('app.media.itm6')),
      new HomeItemBean('出国留学', $r('app.media.itm7')),
      new HomeItemBean('直播课程', $r('app.media.itm8')),
      new HomeItemBean('IT技术', $r('app.media.itm9')),
      new HomeItemBean('软考课堂', $r('app.media.itm10'))
    ]

    return homeItems;
  }

  // 主页速成训练营数据
  getCampList(): Array<CampBean> {
    let campList: CampBean[] = [
      new CampBean('7天Java速成', $r('app.media.course01'), 7, '7月26日', 888.00, '张老师', 100),
      new CampBean('2天职场小白变老油条', $r('app.media.course02'), 2, '7月27日', 1888.00, '李老师', 120),
      new CampBean('无师自通Excel', $r('app.media.course03'), 3, '7月28日', 2888.00, '王老师', 130),
      new CampBean('PS不求人', $r('app.media.course04'), 3, '7月29日', 88.00, '宏图教育', 105),
      new CampBean('4天鸿蒙扫盲', $r('app.media.course05'), 4, '7月30日', 8888.00, '大展教育', 1009)
    ]

    return campList;
  }

  //IT·互联网分类下速成训练营数据
  getITCampList(): Array<CampBean> {
    let campList: CampBean[] = [
      new CampBean('7天Python速成', $r('app.media.course06'), 7, '8月26日', 888.00, '张老师', 100),
      new CampBean('2天SpringBoot入门', $r('app.media.course07'), 2, '8月27日', 1888.00, '李老师', 120),
      new CampBean('无师自通C++', $r('app.media.course08'), 3, '9月28日', 2888.00, '王老师', 130),
      new CampBean('Hadoop无所不能', $r('app.media.course09'), 3, '9月29日', 88.00, '宏图教育', 105),
      new CampBean('5天鸿蒙应用开发', $r('app.media.course03'), 4, '10月30日', 8888.00, '大展教育', 1009)
    ]

    return campList;
  }

  //主页热门课程数据
  getHotCourseList(): Array<CourseBean> {
    let hotCourseList: CourseBean[] = [
      new CourseBean('Java从入门到陌生', $r('app.media.course09'), 'hot course! good good!', 2888.00, 115),
      new CourseBean('职场小白必修课', $r('app.media.course08'), 'hot course! good good!', 1888.00, 511),
      new CourseBean('Spring Boot Quick Start', $r('app.media.course07'), 'hot course! good good!', 888.00, 5555),
      new CourseBean('英语直通车', $r('app.media.course06'), 'hot course! good good!', 288.00, 5666),
      new CourseBean('留学秘籍', $r('app.media.course05'), 'hot course! good good!', 888.00, 7775),
      new CourseBean('好习惯才有好运气', $r('app.media.course04'), 'hot course! good good!', 88.00, 9005)

    ]
    return hotCourseList;
  }

  //IT互联网课程二级分类（标签）
  getCourseType4ITContent(): Array<CourseTypeBean> {

    let courseTypeList: CourseTypeBean[] = [
      new CourseTypeBean(0, '全部'),
      new CourseTypeBean(1, 'Java开发'),
      new CourseTypeBean(2, 'C/C++'),
      new CourseTypeBean(3, '后台开发'),
      new CourseTypeBean(4, '前端开发'),
      new CourseTypeBean(5, '认证考试'),
      new CourseTypeBean(6, '运维'),
      new CourseTypeBean(7, '软件测试')
    ]
    return courseTypeList;
  }

  //获取课程的二级分类
  getSubType4Cat(): Array<CourseTypeBean> {
    let courseTypeList: CourseTypeBean[] = [
      new CourseTypeBean(0, '编程开发'),
      new CourseTypeBean(1, '人工智能'),
      new CourseTypeBean(2, '运维'),
      new CourseTypeBean(3, '认证考试'),
      new CourseTypeBean(4, '软件测试'),
      new CourseTypeBean(5, '前沿技术')

    ]
    return courseTypeList;
  }


  //此处应根据查询条件获取课程数据，仅模拟没有实现条件查询功能
  getITCourseList(): Array<CourseBean> {
    let hotCourseList: CourseBean[] = [
      new CourseBean('Hadoop从入门到陌生', $r('app.media.course01'), 'hot course! good good!', 2888.00, 115),
      new CourseBean('Java必修课', $r('app.media.course03'), 'hot course! good good!', 1888.00, 511),
      new CourseBean('Spring Boot Quick Start', $r('app.media.course05'), 'hot course! good good!', 888.00, 5555),
      new CourseBean('软考入门', $r('app.media.course07'), 'hot course! good good!', 288.00, 5666),
      new CourseBean('鸿蒙北向应用开发指南', $r('app.media.course09'), 'hot course! good good!', 888.00, 7775),
      new CourseBean('鸿蒙设备开发', $r('app.media.course02'), 'hot course! good good!', 88.00, 9005)
    ]
    return hotCourseList;
  }

  // 热门搜索关键字列表
  getHotSearchArray(): Array<string> {
    let hotSearch: Array<string> = [
      'Java',
      'Python',
      'Hadoop',
      '人工智能',
      'ChatGPT',
      '面试题'
    ]
    return hotSearch;
  }

  //模拟搜索课程
  searchCourseList(): Array<CourseBean> {
    let courseList: CourseBean[] = [
      new CourseBean('Hadoop从入门到陌生', $r('app.media.course01'), 'hot course! good good!', 2888.00, 115),
      new CourseBean('Java必修课', $r('app.media.course03'), 'hot course! good good!', 1888.00, 511),
      new CourseBean('Spring Boot Quick Start', $r('app.media.course05'), 'hot course! good good!', 888.00, 5555),
      new CourseBean('软考入门', $r('app.media.course07'), 'hot course! good good!', 288.00, 5666),
      new CourseBean('鸿蒙北向应用开发指南', $r('app.media.course09'), 'hot course! good good!', 888.00, 7775),
      new CourseBean('鸿蒙设备开发', $r('app.media.course02'), 'hot course! good good!', 88.00, 9005),
      new CourseBean('Java从入门到陌生', $r('app.media.course09'), 'hot course! good good!', 2888.00, 115),
      new CourseBean('职场小白必修课', $r('app.media.course08'), 'hot course! good good!', 1888.00, 511),
      new CourseBean('Spring Boot Quick Start', $r('app.media.course07'), 'hot course! good good!', 888.00, 5555),
      new CourseBean('英语直通车', $r('app.media.course06'), 'hot course! good good!', 288.00, 5666),
      new CourseBean('留学秘籍', $r('app.media.course05'), 'hot course! good good!', 888.00, 7775),
      new CourseBean('好习惯才有好运气', $r('app.media.course04'), 'hot course! good good!', 88.00, 9005)

    ]
    return courseList;
  }

  //获取课程详情页的推荐课程
  getRecommendCourseList(): Array<CourseBean> {
    let courseList: CourseBean[] = [
      new CourseBean('Hadoop从入门到陌生', $r('app.media.course01'), 'hot course! good good!', 2888.00, 115),
      new CourseBean('Java必修课', $r('app.media.course03'), 'hot course! good good!', 1888.00, 511),
      new CourseBean('Spring Boot Quick Start', $r('app.media.course05'), 'hot course! good good!', 888.00, 5555),
      new CourseBean('软考入门', $r('app.media.course07'), 'hot course! good good!', 288.00, 5666),
      new CourseBean('鸿蒙北向应用开发指南', $r('app.media.course09'), 'hot course! good good!', 888.00, 7775),
      new CourseBean('鸿蒙设备开发', $r('app.media.course02'), 'hot course! good good!', 88.00, 9005)


    ]
    return courseList;
  }

  //获取社区发现下的分类列表
  getCommunityTypeList(): Array<CommunityTypeBean> {
    let communityTypeList: CommunityTypeBean[] = [
      {
        typeId: 0,
        type: 'IT',
        tags: ['全部', '笔记', '学习干货', '作品', '心得体会']
      },
      {
        typeId: 1,
        type: '英语',
        tags: ['全部', '笔记', '学习干货', '配音', '秘籍']
      },
      {
        typeId: 2,
        type: '考试',
        tags: ['全部', '笔记', '学习干货', '软考', '心得体会']
      },
      {
        typeId: 3,
        type: '职场',
        tags: ['全部', '面试', '心得体会']
      },
      {
        typeId: 4,
        type: '兴趣',
        tags: ['全部', '作品', '心得体会', '打卡']
      },
      {
        typeId: 5,
        type: '综合',
        tags: ['全部', '作品', '心得体会', '奇思妙想', '攻略']
      },
    ]
    return communityTypeList;
  }

  getPublishList(): Array<PublishItemBean> {
    let publishItemList: PublishItemBean[] = [
      new PublishItemBean(1, '1', 'Tony老师', $r('app.media.avatar1'), '讲师', '白日依山尽，黄河入海流！',
        $rawfile('video1.mp4'), '2023-3-3', '#打卡#心得', 22, 11, 33, $r('app.media.videoprivew1')),
      new PublishItemBean(2, '1', 'Tony老师', $r('app.media.avatar1'), '讲师', '欲穷千里目，更上一层楼！',
        $rawfile('video2.mp4'), '2023-3-4', '#心得', 55, 123, 55, $r('app.media.videoprivew2')),
      new PublishItemBean(3, '2', '张飞', $r('app.media.avatar2'), '学员', '俺来打卡了！', $rawfile('video3.mp4'),
        '2023-3-2', '#打卡#学Java', 22, 111, 313, $r('app.media.videoprivew3')),
      new PublishItemBean(4, '3', '大胡子老师', $r('app.media.avatar3'), '讲师', '胡子的长度和文化水平正相关！',
        $rawfile('video4.mp4'), '2023-3-5', '#老师不打卡#心得', 122, 151, 30, $r('app.media.videoprivew4')),
      new PublishItemBean(5, '4', 'helloworld', $r('app.media.avatar4'), '学员', 'Hello World！', $rawfile('video5.mp4'),
        '2023-3-13', '#打卡#心得', 622, 171, 338, $r('app.media.videoprivew5')),
      new PublishItemBean(6, '4', 'helloworld', $r('app.media.avatar4'), '学员', 'Hello world day1！',
        $rawfile('video6.mp4'), '2023-3-12', '#旅拍#心得', 22, 116, 3, $r('app.media.videoprivew6')),
      new PublishItemBean(7, '5', '日复一日', $r('app.media.avatar5'), '学员', '人面不知何处去，桃花依旧笑春风。',
        $rawfile('video7.mp4'), '2023-3-21', '#一日游#心得', 22, 11, 4, $r('app.media.videoprivew7')),
      new PublishItemBean(8, '6', 'Jerry', $r('app.media.avatar6'), '讲师', '今天干什么？', $rawfile('video8.mp4'),
        '2023-3-22', '#打卡#一日游#心得', 2, 11, 3, $r('app.media.videoprivew8')),
      new PublishItemBean(9, '7', '你说呢', $r('app.media.avatar6'), '学员', '楼上你说啥！', $rawfile('video9.mp4'),
        '2023-3-2', '#打卡#美味#心得', 2, 1, 3, $r('app.media.videoprivew9')),
      new PublishItemBean(10, '8', '我是学员我怕谁', $r('app.media.avatar7'), '学员', '这题真难！',
        $rawfile('video10.mp4'), '2023-6-3', '#打卡#心得#开学', 202, 101, 33, $r('app.media.videoprivew10')),
      new PublishItemBean(11, '9', '我loveJava', $r('app.media.avatar8'), '学员', 'Java YYDS！', $rawfile('video11.mp4'),
        '2023-5-3', '#心情#兴趣', 122, 16, 3, $r('app.media.videoprivew11')),
      new PublishItemBean(12, '10', 'I爱Python', $r('app.media.avatar9'), '学员', 'Python YYDS！',
        $rawfile('video12.mp4'), '2023-3-13', '#打卡#晨读', 52, 61, 33, $r('app.media.videoprivew12')),
      new PublishItemBean(13, '11', 'ChatGPT', $r('app.media.avatar10'), '学员', 'Hi，有人吗，出来玩玩！',
        $rawfile('video13.mp4'), '2023-2-3', '#面试#心得', 82, 11, 33, $r('app.media.videoprivew13')),
      new PublishItemBean(14, '11', 'ChatGPT', $r('app.media.avatar10'), '学员', '我是谁！谁能告诉我',
        $rawfile('video14.mp4'), '2023-4-3', '#打卡#Java', 22, 61, 33, $r('app.media.videoprivew14'))
    ];
    return publishItemList;
  }

  getMyRecentCourse(): Array<CourseBean> {
    let courseList: CourseBean[] = [
      new CourseBean('Java修炼大法', $r('app.media.course01'), 'Java必须从娃娃抓起', 29, 8299),
      new CourseBean('Hadoop修炼大法', $r('app.media.course02'), 'Hadoop必须从娃娃抓起', 299, 2999),
      new CourseBean('鸿蒙修炼大法', $r('app.media.course03'), '鸿蒙必须从娃娃抓起', 99, 9299),
      new CourseBean('Python修炼大法', $r('app.media.course04'), 'python必须从娃娃抓起', 99, 2999),
      new CourseBean('职场必修课', $r('app.media.course05'), '职场必须课必须从幼儿园抓起', 29, 299),
      new CourseBean('沟通技巧', $r('app.media.course06'), '沟通无处不在', 9, 299),
      new CourseBean('英语翻译宝典', $r('app.media.course07'), '架起世界的桥梁', 29, 299),
      new CourseBean('考研辅导不求人', $r('app.media.course08'), '啥都不求人', 99, 299),
      new CourseBean('自媒体入行指南', $r('app.media.course09'), '男怕入错行', 29, 29),
      new CourseBean('7天学完AI', $r('app.media.course04'), 'AI真的能替代你吗？', 99, 99)
    ]
    return courseList;
  }
}


export default new MainViewModel();