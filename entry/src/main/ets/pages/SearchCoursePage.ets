import CourseBean from '../common/bean/CourseBean';
import HotSearchView from '../view/search_course_page/HotSearchView';
import SearchHistory from '../view/search_course_page/SearchHistory';
import ShowCourseListView from '../view/search_course_page/ShowCourseListView';
import MainViewModel from '../viewmodel/MainViewModel';

@Entry
@Component
struct SearchCoursePage {
  // 搜索框输入文本
  @State searchInputStr: string = '';
  @State searchHistoryData: Array<string> = ['Java', 'python'];
  // 保存搜索到的课程列表
  @State searchCourseResult: Array<CourseBean> = [];
  // 是否显示搜索到的课程列表
  @State isShowCourseList: boolean = false;

  build() {
    Scroll() {
      Column() {
        //搜索框
        Flex({
          direction: FlexDirection.Row,
          justifyContent: FlexAlign.SpaceBetween,
          alignItems: ItemAlign.Center
        }) {
          Search({
            value: this.searchInputStr,
            placeholder: '搜索...'
          })
            .searchButton('Search')
            .width('90%')
            .onSubmit((value: string) => {
              console.log('search now:' + value)
              if (value !== '' && value.trim()
                .length > 0) {
                // 添加到搜索历史，unshift在数组的前面添加元素
                this.searchHistoryData.unshift(value.trim());
              }
              // 模拟搜索数据
              this.searchCourseResult = MainViewModel.searchCourseList();
              if (this.searchCourseResult.length > 0) {
                this.isShowCourseList = true;
              }
            })
          Text('取消')
            .fontSize(16)
            .onClick(() => {
              this.getUIContext()
                .getRouter()
                .back()
            })
        }
        .margin({ top: 10 })
        .width('95%')

        if (!this.isShowCourseList) {
          // 搜索历史
          if (this.searchHistoryData.length > 0) {
            SearchHistory({ searchHistoryArray: $searchHistoryData })
          }
          // 热门搜索
          HotSearchView({ hotSearchArray: MainViewModel.getHotSearchArray() })
        }
        else {
          //展示搜索到的课程列表
          ShowCourseListView({ courseListArray: this.searchCourseResult })
        }
      }
      .width('100%')
      .height('100%')
    }
    .width('100%')
    .backgroundColor($r('sys.color.comp_background_focus'))
  }
}