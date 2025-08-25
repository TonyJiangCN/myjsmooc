import CampBean from '../common/bean/CampBean';
import CommunityTypeBean from '../common/bean/CommunityTypeBean';
import CourseBean from '../common/bean/CourseBean';
import CourseTypeBean from '../common/bean/CourseTypeBean';
import HomeItemBean from '../common/bean/HomeItemBean';
import PublishItem from '../common/bean/PublishItemBean';

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
  getSubType4Cat():Array<CourseTypeBean> {
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
        tags: ['全部','笔记','学习干货','作品','心得体会']
      },
      {
        typeId: 1,
        type: '英语',
        tags: ['全部','笔记','学习干货','配音','秘籍']
      },
      {
        typeId: 2,
        type: '考试',
        tags: ['全部','笔记','学习干货','软考','心得体会']
      },
      {
        typeId: 3,
        type: '职场',
        tags: ['全部','面试','心得体会']
      },
      {
        typeId: 4,
        type: '兴趣',
        tags: ['全部','作品','心得体会','打卡']
      },
      {
        typeId: 5,
        type: '综合',
        tags: ['全部','作品','心得体会','奇思妙想','攻略']
      },
    ]
    return communityTypeList;
  }

  getPublishList() : Array<PublishItem> {
    let publishItemList: PublishItem[] = [
      {
        itemId: 1,
        userId: '1',
        nickName: 'Tony老师',
        userImage: $r('app.media.avatar1'),
        roleName: '讲师',
        publishContent: '白日依山尽，黄河入海流！',
        videoResource:  $rawfile('video1.mp4'),
        publishDate:  '2023-3-3',
        tags: '#打卡#心得',
        favoriteCount: 22,
        commentCount: 11,
        loveCount: 33,
        previewImage:$r('app.media.videoprivew1')
      },
      {
        itemId: 2,
        userId: '1',
        nickName: 'Tony老师',
        userImage: $r('app.media.avatar1'),
        roleName: '讲师',
        publishContent: '欲穷千里目，更上一层楼！',
        videoResource:  $rawfile('video2.mp4'),
        publishDate:  '2023-3-4',
        tags: '#心得',
        favoriteCount: 55,
        commentCount: 123,
        loveCount: 55,
        previewImage:$r('app.media.videoprivew2')
      },
      {
        itemId: 3,
        userId: '2',
        nickName: '张飞',
        userImage: $r('app.media.avatar2'),
        roleName: '学员',
        publishContent: '俺来打卡了！',
        videoResource:  $rawfile('video3.mp4'),
        publishDate:  '2023-3-2',
        tags: '#打卡#学Java',
        favoriteCount: 22,
        commentCount: 111,
        loveCount: 313,
        previewImage:$r('app.media.videoprivew3')
      },
      {
        itemId: 4,
        userId: '3',
        nickName: '大胡子老师',
        userImage: $r('app.media.avatar3'),
        roleName: '讲师',
        publishContent: '胡子的长度和文化水平正相关！',
        videoResource:  $rawfile('video4.mp4'),
        publishDate:  '2023-3-5',
        tags: '#老师不打卡#心得',
        favoriteCount: 122,
        commentCount: 151,
        loveCount: 30,
        previewImage:$r('app.media.videoprivew4')
      },
      {
        itemId: 5,
        userId: '4',
        nickName: 'helloworld',
        userImage: $r('app.media.avatar4'),
        roleName: '学员',
        publishContent: 'Hello World！',
        videoResource:  $rawfile('video5.mp4'),
        publishDate:  '2023-3-13',
        tags: '#打卡#心得',
        favoriteCount: 622,
        commentCount: 171,
        loveCount: 338,
        previewImage:$r('app.media.videoprivew5')
      },
      {
        itemId: 6,
        userId: '4',
        nickName: 'helloworld',
        userImage: $r('app.media.avatar4'),
        roleName: '学员',
        publishContent: 'Hello world day1！',
        videoResource:  $rawfile('video6.mp4'),
        publishDate:  '2023-3-12',
        tags: '#旅拍#心得',
        favoriteCount: 22,
        commentCount: 116,
        loveCount: 3,
        previewImage:$r('app.media.videoprivew6')
      },
      {
        itemId: 7,
        userId: '5',
        nickName: '日复一日',
        userImage: $r('app.media.avatar5'),
        roleName: '学员',
        publishContent: '人面不知何处去，桃花依旧笑春风。',
        videoResource:  $rawfile('video7.mp4'),
        publishDate:  '2023-3-21',
        tags: '#一日游#心得',
        favoriteCount: 22,
        commentCount: 11,
        loveCount: 4,
        previewImage:$r('app.media.videoprivew7')
      },
      {
        itemId: 8,
        userId: '6',
        nickName: 'Jerry',
        userImage: $r('app.media.avatar6'),
        roleName: '讲师',
        publishContent: '今天干什么？',
        videoResource:  $rawfile('video8.mp4'),
        publishDate:  '2023-3-22',
        tags: '#打卡#一日游#心得',
        favoriteCount: 2,
        commentCount: 11,
        loveCount: 3,
        previewImage:$r('app.media.videoprivew8')
      },
      {
        itemId: 9,
        userId: '7',
        nickName: '你说呢',
        userImage: $r('app.media.avatar6'),
        roleName: '学员',
        publishContent: '楼上你说啥！',
        videoResource:  $rawfile('video9.mp4'),
        publishDate:  '2023-3-2',
        tags: '#打卡#美味#心得',
        favoriteCount: 2,
        commentCount: 1,
        loveCount: 3,
        previewImage:$r('app.media.videoprivew9')
      },
      {
        itemId: 10,
        userId: '8',
        nickName: '我是学员我怕谁',
        userImage: $r('app.media.avatar7'),
        roleName: '学员',
        publishContent: '这题真难！',
        videoResource:  $rawfile('video10.mp4'),
        publishDate:  '2023-6-3',
        tags: '#打卡#心得#开学',
        favoriteCount: 202,
        commentCount: 101,
        loveCount: 33,
        previewImage:$r('app.media.videoprivew10')
      },
      {
        itemId: 11,
        userId: '9',
        nickName: '我loveJava',
        userImage: $r('app.media.avatar8'),
        roleName: '学员',
        publishContent: 'Java YYDS！',
        videoResource:  $rawfile('video11.mp4'),
        publishDate:  '2023-5-3',
        tags: '#心情#兴趣',
        favoriteCount: 122,
        commentCount: 16,
        loveCount: 3,
        previewImage:$r('app.media.videoprivew11')
      },
      {
        itemId: 12,
        userId: '10',
        nickName: 'I爱Python',
        userImage: $r('app.media.avatar9'),
        roleName: '学员',
        publishContent: 'Python YYDS！',
        videoResource:  $rawfile('video12.mp4'),
        publishDate:  '2023-3-13',
        tags: '#打卡#晨读',
        favoriteCount: 52,
        commentCount: 61,
        loveCount: 33,
        previewImage:$r('app.media.videoprivew12')
      },
      {
        itemId: 13,
        userId: '11',
        nickName: 'ChatGPT',
        userImage: $r('app.media.avatar10'),
        roleName: '学员',
        publishContent: 'Hi，有人吗，出来玩玩！',
        videoResource:  $rawfile('video13.mp4'),
        publishDate:  '2023-2-3',
        tags: '#面试#心得',
        favoriteCount: 82,
        commentCount: 11,
        loveCount: 33,
        previewImage:$r('app.media.videoprivew13')
      },
      {
        itemId: 14,
        userId: '11',
        nickName: 'ChatGPT',
        userImage: $r('app.media.avatar10'),
        roleName: '学员',
        publishContent: '我是谁！谁能告诉我',
        videoResource:  $rawfile('video14.mp4'),
        publishDate:  '2023-4-3',
        tags: '#打卡#Java',
        favoriteCount: 22,
        commentCount: 61,
        loveCount: 33,
        previewImage:$r('app.media.videoprivew14')
      }

    ];
    return publishItemList;
  }

  getMyRecentCourse(): Array<CourseBean> {

    let courseList: CourseBean[] = [
      {
        title:'Java修炼大法',
        img: $r('app.media.course01'),
        desc: 'Java必须从娃娃抓起',
        price:29,
        students:8299

      },
      {
        title:'Hadoop修炼大法',
        img: $r('app.media.course02'),
        desc: 'Hadoop必须从娃娃抓起',
        price:299,
        students:2999

      },
      {
        title:'鸿蒙修炼大法',
        img: $r('app.media.course03'),
        desc: '鸿蒙必须从娃娃抓起',
        price:99,
        students:9299

      },
      {
        title:'Python修炼大法',
        img: $r('app.media.course04'),
        desc: 'python必须从娃娃抓起',
        price:99,
        students:2999

      },
      {
        title:'职场必修课',
        img: $r('app.media.course05'),
        desc: '职场必须课必须从幼儿园抓起',
        price:29,
        students:299

      },
      {
        title:'沟通技巧',
        img: $r('app.media.course06'),
        desc: '沟通无处不在',
        price:9,
        students:299

      },
      {
        title:'英语翻译宝典',
        img: $r('app.media.course07'),
        desc: '架起世界的桥梁',
        price:29,
        students:299

      },
      {
        title:'考研辅导不求人',
        img: $r('app.media.course08'),
        desc: '啥都不求人',
        price:99,
        students:299

      },
      {
        title:'自媒体入行指南',
        img: $r('app.media.course09'),
        desc: '男怕入错行',
        price:29,
        students:29

      },
      {
        title:'7天学完AI',
        img: $r('app.media.course04'),
        desc: 'AI真的能替代你吗？',
        price:99,
        students:99

      }


    ]
    return courseList;


  }

}


export default new MainViewModel();