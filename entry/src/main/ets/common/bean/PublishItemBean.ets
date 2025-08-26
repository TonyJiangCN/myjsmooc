export default class PublishItem {
  // 发现列表的列表项id
  itemId: number;
  // 发布者id
  userId: string;
  // 发布者昵称
  nickName: string;
  // 用户头像
  userImage: Resource;
  // 角色：学生、讲师
  roleName: string;
  // 发布内容
  publishContent: string;
  // 发布的视频
  videoResource: Resource;
  // 发布时间
  publishDate: string;
  // 标签列表，比如：学习比较，打卡等等 #号分隔
  tags: string;
  // 收藏数
  favoriteCount: number;
  // 评论数
  commentCount: number;
  // 点赞数
  loveCount: number;
  // 海报
  previewImage: Resource;

  constructor(itemId: number, userId: string, nickName: string, userImage: Resource, roleName: string,
              publishContent: string, videoResource: Resource, publishDate: string, tags: string, favoriteCount: number,
              commentCount: number, loveCount: number, previewImage: Resource) {
    this.itemId = itemId;
    this.userId = userId;
    this.nickName = nickName;
    this.userImage = userImage;
    this.roleName = roleName;
    this.publishContent = publishContent;
    this.videoResource = videoResource;
    this.publishDate = publishDate;
    this.tags = tags;
    this.favoriteCount = favoriteCount;
    this.commentCount = commentCount;
    this.loveCount = loveCount;
    this.previewImage = previewImage;
  }
}