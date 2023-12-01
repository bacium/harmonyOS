@Entry
@Component
struct DaterPickerExample {
  @State message: string = 'Daterpicker'

  build() {
    Row() {
      Column() {
        DatePicker({start:new Date('2023-1-23'),end:new Date('2025-1-1'),selected:new Date()})
          .onChange((val)=>{
            console.log(JSON.stringify(val))
          })
          .lunar(false)
      }
      .width('100%')
    }
    .height('100%')
  }
}