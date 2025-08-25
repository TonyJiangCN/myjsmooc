export default class PublishItem {
  // 发现列表的列表项id
  itemId: number = 0;
  // 发布者id
  userId: string = '';
  // 发布者昵称
  nickName: string = '';
  // 用户头像
  userImage: Resource = $r('app.media.avatar1');
  // 角色：学生、讲师
  roleName: string = '';
  // 发布内容
  publishContent: string = '';
  // 发布的视频
  videoResource: Resource = $rawfile('video1.mp4');
  // 发布时间
  publishDate: string = '';
  // 标签列表，比如：学习比较，打卡等等 #号分隔
  tags: string = '';
  // 收藏数
  favoriteCount: number = 0;
  // 评论数
  commentCount: number = 0;
  // 点赞数
  loveCount: number = 0;
  // 海报
  previewImage: Resource = $r('app.media.videoprivew1');
}