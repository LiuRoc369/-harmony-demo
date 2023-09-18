import router from '@ohos.router';

@Entry
@Component
struct Second {
  @State message: string = 'Hi there'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        Button() {
          Text('Back')
            .fontSize(25)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0d9ffb')
        .width('40%')
        .height('5%')
        .onClick(() => {
          console.info('触发跳转回第一个页面')
          try {
            router.back()
            console.info('成功跳转回第一个页面')
          } catch (e) {
            console.info(`跳转回第一个页面失败。code: ${e.code}, message: ${e.message}`)
          }
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}