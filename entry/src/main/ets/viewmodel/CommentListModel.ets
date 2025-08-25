import CommentBean from '../common/bean/CommentBean';

class CommentListModel {
  getCommentList(): Array<CommentBean> {
    let commentListData: Array<CommentBean> = [
      {
        userImage: $r('app.media.avatar1'),
        nick: '托尼',
        stars: 5,
        comment: '太完美了这课程，跟讲段子一样',
        studyTime: 100,
        commentDate: '2023-8-17'
      },
      {
        userImage: $r('app.media.avatar2'),
        nick: '老托尼',
        stars: 4,
        comment: '太完美了这课程，跟讲段子一样',
        studyTime: 50,
        commentDate: '2023-8-27'
      },
      {
        userImage: $r('app.media.avatar3'),
        nick: '小托尼',
        stars: 1,
        comment: '这都是啥啊，听不懂！！！',
        studyTime: 10,
        commentDate: '2023-8-7'
      },
      {
        userImage: $r('app.media.avatar4'),
        nick: '我是谁',
        stars: 5,
        comment: '老师经验丰富，课程适合小白学习，我都连续3天不睡觉看视频了。',
        studyTime: 200,
        commentDate: '2023-6-17'
      },
      {
        userImage: $r('app.media.avatar5'),
        nick: '白雪公主',
        stars: 5,
        comment: '我是来找白马王子的，课讲的好坏不重要！',
        studyTime: 100,
        commentDate: '2023-8-17'
      },
      {
        userImage: $r('app.media.avatar6'),
        nick: '白马王子是我吗',
        stars: 3,
        comment: '我是来找白雪公主的，课讲的好坏不重要！',
        studyTime: 100,
        commentDate: '2023-8-17'
      },
      {
        userImage: $r('app.media.avatar7'),
        nick: '托尼一世',
        stars: 2,
        comment: '太完美了这课程，跟讲段子一样',
        studyTime: 100,
        commentDate: '2023-8-17'
      },
      {
        userImage: $r('app.media.avatar8'),
        nick: '托尼二世',
        stars: 1,
        comment: '太完美了这课程，跟讲段子一样',
        studyTime: 100,
        commentDate: '2023-8-17'
      },
      {
        userImage: $r('app.media.avatar9'),
        nick: '托尼三世',
        stars: 4,
        comment: '太完美了这课程，跟讲段子一样',
        studyTime: 100,
        commentDate: '2023-8-17'
      },
      {
        userImage: $r('app.media.avatar10'),
        nick: '秦始皇',
        stars: 5,
        comment: '太完美了这课程，比孔丘讲的好100倍，yyds！',
        studyTime: 100,
        commentDate: '2023-8-17'
      }
    ];
    return commentListData;
  }
}

export default new CommentListModel();