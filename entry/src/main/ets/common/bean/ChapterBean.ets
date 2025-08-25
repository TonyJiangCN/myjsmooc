import SectionBean from './SectionBean';

export default class ChapterBean {
  // 章ID
  chapterId: number = 0;
  // 章标题
  title: string = '';
  // 节列表
  sectionList: Array<SectionBean> = [];
}