
/**
 * 组件状态
 *   @State====>@Prop(通过this传递)
 *   @State====>@Link(通过`$`传递)
 *
 *
 */



@Entry
@Component
struct StateManger {
  @State message: string = '娃哈哈'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('点击切换').fontSize(30).fontColor('#fff')
        }
        .width('50%')
        .height(50)
        .onClick(() => {
          this.message=this.message==="娃哈哈"?'爽歪歪':'娃哈哈'
        })
        StateManger_state({content:this.message})
        StateManger_link({content_link:$message})
      }
      .width('100%')
    }
    .height('100%')
  }
}
// 子组件1----->@Prop传参
@Component
struct StateManger_state {
  @Prop content:string

  build(){
    Column() {
      Text(this.content)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
      Button(){
        Text('点击切换props').fontSize(25).fontColor('#fff')
      }
      .width('60%')
      .height(50)
      .onClick(() => {
        this.content="可口可乐"
      })
    }
    .width('100%')
  }
}

// 子组件2----->link传参
@Component
struct  StateManger_link{
  @Link content_link:string
  build(){
    Column(){
      Text(this.content_link)
        .fontSize(50)
        .fontWeight(FontWeight.Bold)
      Button(){
        Text('点击切换link').fontSize(25).fontColor('#fff')
      }
      .width('60%')
      .height(50)
      .onClick(() => {
        this.content_link="雪碧"
      })
    }
  }
}