
/*
 * 多态样式stateStyle
 * 多态样式的真不要属性
 * 1、normal:正常态的样式，
 * 2、focused:获取焦点后的样式
 * 3、pressed：按压后的样式
 *
 *如果页面上没有获焦元素的话默认第一个元素获得焦点，呈现focused里面设置的样式，
 * 如果前面有获焦元素则第一个元素呈现获焦状态样式
 * ep:页面上按钮显示为红色是获得了焦点，如果打开按钮前面的TextInput()，则按钮会变为其normal状态的样式
 *
 * */


@Entry
@Component
struct StateStyle {
  @State message: string = 'StateStyle 不同状态样式'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(30)
          .fontWeight(FontWeight.Bold)
        // TextInput()  -------->该元素是个获焦元素
        Button(){
          Text('点击状态变化').fontColor(Color.White).fontSize(20)
        }
        .width('50%')
        .height(50)
        .margin({
          top:15
        })
       .stateStyles({
         normal:{
           .backgroundColor(Color.Green)
         },
         focused:{
         .backgroundColor(Color.Red)
       },
         pressed:{
           .backgroundColor(Color.Yellow)
         }
       })
      }
      .width('100%')
    }
    .height('100%')
  }
}