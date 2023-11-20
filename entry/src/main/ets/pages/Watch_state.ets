
/**
 *
 *@Watch装饰器用来监听状态值，即 用@State修饰的状态值
 * 使用方式  @State @Watch('事件处理函数')  count:number=1
 * 其中事件处理函数:：()=>void
 * 在事件处理函数中不能修改监听的状态值，否则Watch一直触发频繁调用会造成死循环
 *
 * */


@Entry
@Component
struct Watch_state {
  @State @Watch('change') count: number = 1
  @State pow:number  =2
  @State result:number  = 1
 change(){
  // this.count=this.count*2    在监听函数中不能修改监听的状态值，否则状态值一直改变，监听持续调用会死循环
   this.result=Math.pow(this.count,this.pow)
}
  build() {
    Row() {
      Column() {
        Text("count:"+this.count)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .margin({bottom:15})
          .onClick(()=>{
            this.count++
          })
        Text("pow:"+this.pow) .fontSize(50)
          .fontWeight(FontWeight.Bold).margin({bottom:15}) .onClick(()=>{
          this.pow++
        })
        Text("result:"+this.result) .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}