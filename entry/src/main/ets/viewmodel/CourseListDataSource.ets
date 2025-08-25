import CourseItem, { courseInitialList } from './CourseListInitData';

// 模拟2倍的数据
const createCourseListArray = () => {
  let result: CourseItem[] = [];
  for (let i = 0; i < 2; i++) {
    // 展开运算符，将数组元素取出
    result = [...result, ...courseInitialList];
  }
  return result;
}

// 懒加载类
class BasicDataSource implements IDataSource {
  private listeners: DataChangeListener[] = [];

  public totalCount(): number {
    return 0;
  }

  // 临时数据源
  public getData(index: number): CourseItem | undefined {
    return undefined; // 根据实际逻辑返回有效值或undefined
  }

  registerDataChangeListener(listener: DataChangeListener): void {
    if (this.listeners.indexOf(listener) < 0) {
      this.listeners.push(listener);
    }
  }

  unregisterDataChangeListener(listener: DataChangeListener): void {
    const position = this.listeners.indexOf(listener);
    if (position >= 0) {
      this.listeners.slice(position, 1);
    }
  }

  notifyDataReload(): void {
    this.listeners.forEach(listener => {
      listener.onDataReloaded();
    })
  }

  notifyDataAdd(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataAdd(index);
    })
  }

  notifyDataChange(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataChange(index);
    })
  }

  notifyDataDelete(index: number): void {
    this.listeners.forEach(listener => {
      listener.onDataDelete(index);
    })
  }

  notifyDataMove(from: number, to: number): void {
    this.listeners.forEach(listener => {
      listener.onDataMove(from, to);
    })
  }
}

// 课程列表数据源
export default class CourseListDataSource extends BasicDataSource {
  private courseListData = createCourseListArray();

  public totalCount(): number {
    return this.courseListData.length;
  }

  public getData(index: number): CourseItem {
    return this.courseListData[index];
  }

  public pushData(): void {
    if (this.courseListData.length < 50) {
      this.courseListData = [...this.courseListData, ...courseInitialList];
      this.notifyDataAdd(this.courseListData.length - 1);
    }
  }
}
