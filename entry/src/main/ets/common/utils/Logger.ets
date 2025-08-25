import hilog from '@ohos.hilog';

class Logger {
  private domain: number;
  private prefix: string;
  private format: string = '%{public}s,%{public}s';

  constructor(prefix: string) {
    this.prefix = prefix;
    this.domain = 0x0001;
  }

  debug(position: string, message: string) {
    hilog.debug(this.domain, this.prefix, this.format, [position, message]);
  }

  info(position: string, message: string) {
    hilog.info(this.domain, this.prefix, this.format, [position, message]);
  }

  warn(position: string, message: string) {
    hilog.warn(this.domain, this.prefix, this.format, [position, message]);

  }

  error(position: string, message: string) {
    hilog.error(this.domain, this.prefix, this.format, [position, message]);
  }
}

export default new Logger('[Myjsmook_App]') //此处填应用名即可