import ChapterBean from '../common/bean/ChapterBean';

class ChapterListModel {
  getChapterList(): Array<ChapterBean> {
    let chapters: Array<ChapterBean> = [
      {
        chapterId: 1,
        title: 'Java概述',
        sectionList: [
          {
            sectionId: 1,
            sectionName: 'Java前景',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: 'Java特点',
            timeCount: 45
          },
          {
            sectionId: 3,
            sectionName: 'Java术语介绍',
            timeCount: 45
          },
          {
            sectionId: 4,
            sectionName: 'Java环境搭建',
            timeCount: 45
          }
        ]
      },
      {
        chapterId: 2,
        title: 'Java基本数据类型',
        sectionList: [
          {
            sectionId: 1,
            sectionName: '数据类型概述',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: '整型介绍',
            timeCount: 45
          },
          {
            sectionId: 3,
            sectionName: '浮点型介绍',
            timeCount: 45
          },
        ]
      },
      {
        chapterId: 3,
        title: '基本语法概述',
        sectionList: [
          {
            sectionId: 1,
            sectionName: 'Java语句',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: '编程规范',
            timeCount: 45
          }

        ]
      },
      {
        chapterId: 4,
        title: '条件语句',
        sectionList: [
          {
            sectionId: 1,
            sectionName: 'if语句',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: 'switch语句',
            timeCount: 45
          }
        ]
      },
      {
        chapterId: 5,
        title: '循环语句',
        sectionList: [
          {
            sectionId: 1,
            sectionName: 'for循环',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: 'while循环',
            timeCount: 45
          },
          {
            sectionId: 3,
            sectionName: 'do-while循环',
            timeCount: 45
          }
        ]
      },
      {
        chapterId: 6,
        title: '数组',
        sectionList: [
          {
            sectionId: 1,
            sectionName: '数组介绍',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: '数组遍历',
            timeCount: 45
          }
        ]
      },
      {
        chapterId: 7,
        title: '集合框架',
        sectionList: [
          {
            sectionId: 1,
            sectionName: '集合概述',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: 'List接口',
            timeCount: 45
          },
          {
            sectionId: 3,
            sectionName: 'Map接口',
            timeCount: 45
          },
          {
            sectionId: 4,
            sectionName: '集合迭代',
            timeCount: 45
          }
        ]
      },
      {
        chapterId: 8,
        title: '面向对象编程',
        sectionList: [
          {
            sectionId: 1,
            sectionName: '面向对象编程概述',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: '继承和接口',
            timeCount: 45
          }
        ]
      },
      {
        chapterId: 9,
        title: '继承',
        sectionList: [
          {
            sectionId: 1,
            sectionName: '什么是继承',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: 'extends关键字',
            timeCount: 45
          },
          {
            sectionId: 3,
            sectionName: '使用多态',
            timeCount: 45
          }
        ]
      },
      {
        chapterId: 10,
        title: '异常处理',
        sectionList: [
          {
            sectionId: 1,
            sectionName: '什么是异常',
            timeCount: 45
          },
          {
            sectionId: 2,
            sectionName: '异常的继承',
            timeCount: 45
          }
        ]
      }
    ];
    return chapters;
  }
}

export default new ChapterListModel();


