import router from '@ohos.router';

@Entry
@Component
struct Index {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)

        // 添加按钮
        Button() {
          Text('Next')
            .fontSize(30)
            .fontWeight(FontWeight.Bold)
        }
        .type(ButtonType.Capsule)
        .margin({
          top: 20
        })
        .backgroundColor('#0D9FFB')
        .width('40%')
        .height('5%')
        .onClick(() => {
          console.info('触发跳转到下一个页面')

          router.pushUrl({
            url: 'pages/Second'
          }).then(() => {
            console.info('成功跳转到下一个页面')
          }).catch((e) => {
            console.info(`跳转到下一个页面失败。Code: ${e.code}, message: ${e.message}`)
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}