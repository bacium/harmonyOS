@Entry
@Component
struct ForEach_case {
  @State message: string = 'forEach 循环案例'
  @State  harmony_data:object[] = [
    {
      id:'001',
      title:'helloworld',
      content:'入门代码编写'
    },
    {
      id:'002',
      title:'跳转',
      content:'多种语言页面跳转'
    },
    {
      id:'003',
      title:'ArkTS语言',
      content:'详细学习arkts语法内容'
    },
  ]
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(40)
          .fontWeight(FontWeight.Bold)

        ForEach(this.harmony_data,(item,index:number)=>{
          Text(`${item.title}-${item.content}`).fontSize(20)
        },item=>item.id)
      }
      .width('100%')
    }
    .height('100%')
  }
}