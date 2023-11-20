@Entry
@Component
struct If_module {
  @State message: string = 'Hello World'
  @State work:boolean  =false
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('点击切换')
        }
        .width('50%')
        .height(50)
        .onClick(() => {
          this.work=!this.work
        })
        if (this.work){
          Text('摸鱼')
        }else {
          Text('上班')
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}