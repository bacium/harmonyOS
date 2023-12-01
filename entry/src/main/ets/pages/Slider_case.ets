@Entry
@Component
struct Slider_case {
  @State message: string = 'Slider'

  build() {
    Row() {
      Column({space:20}) {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Slider({
          value:20,
          min:0,
          max:100,
          step:10,
          style:SliderStyle.InSet
        })
          .width('90%')
          .trackThickness(20)
          .showSteps(true)
          .showTips(true)
      }
      .width('100%')
    }
    .height('100%')
  }
}