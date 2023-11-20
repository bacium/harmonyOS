@Entry
@Component
struct TodoList {
  @State message: string = 'todoList'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        todoItem({content:'娃哈哈真甜'})
        todoItem({content:'抽烟'})
        todoItem({content:'喝酒'})
        todoItem({content:'烫头'})
        todoItem({content:'爽歪歪'})
        todoItem({content:'可口可乐'})
        todoItem({content:'脉动'})
        todoItem({content:'和奇正'})
      }
      .width('100%')
    }
    .height('100%')
  }
}


@Component struct  todoItem {
  @State isDone:boolean=false
  content:string
  build(){
    Row(){
      Image(this.isDone?$r('app.media.ic_ok'):$r('app.media.ic_default')).height(30).width(30).margin({
        right:15
      })
      Text(this.content).fontSize(30).width('100%').decoration(this.isDone? {type: TextDecorationType.LineThrough } :
        {type: TextDecorationType.None })
    }
    .width('90%')
    .height(50)
    .backgroundColor(Color.Pink)
    .borderRadius(30)
    .padding({
      left:15,
      right:15
    })
    .margin({
      bottom:10
    })
    .onClick(()=>{
      this.isDone=!this.isDone
    })
  }
}