export default class CommentBean {
  //用户头像
  userImage: Resource = $r('app.media.avatar1');
  //用户昵称
  nick: string = '';
  //评星 1~5，支持小数
  stars: number = 0;
  //评论内容
  comment: string = '';
  //评论日期
  commentDate: string = '';
  //学习时长
  studyTime: number = 0;
}