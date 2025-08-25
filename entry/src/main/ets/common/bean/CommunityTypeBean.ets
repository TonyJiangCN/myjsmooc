export default class CommunityTypeBean {
  // 分类id
  typeId: number = 0;
  // 分类名
  type: string = '';
  // 二级分类（标签列表）
  tags: Array<string> = [];
}