@Entry
@Component
struct If_module {
  @State message: string = 'if语句'
  @State work:boolean  =false
  @State count:number  =0
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
        }).margin({
          bottom:20
        })
        if (this.work){
          Text('摸鱼') .fontSize(50)
            .fontWeight(FontWeight.Bold)
        }else {
          Text('上班') .fontSize(50)
            .fontWeight(FontWeight.Bold)
        }
        // Button(){
        //   Text('开始').fontColor(Color.White).fontSize(30)
        // }
        // .width('50%')
        // .height(50)
        // .onClick(() => {
        //    this.count= Math.floor(Math.random()*1000 )
        // }).margin({
        //   bottom:20
        // })
        // Text(`随机数是：${this.count}`).fontSize(40).fontColor(Color.Green)
        // if(this.count){
        //
        // }
      }
      .width('100%')
    }
    .height('100%')
  }
}