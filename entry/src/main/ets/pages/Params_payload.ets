
/**
 *  路由传参
 * 在跳转路由的时候如果有参数需要传递通过params关键字以对象的形式传递
 *
 * 例：router.pushUrl({
        url:"pages/Params_payload2",
        params:{
        payload:'哇哈哈真甜'
        }
       })
 *
 * */




import router from '@ohos.router'
@Entry
@Component
struct Params_payload {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('点击跳转').fontSize(30).fontColor(Color.White)
        }
        .width('50%')
        .height(50)
        .onClick(() => {
          router.pushUrl({
            url:"pages/Params_payload2",
            params:{
              payload:'哇哈哈真甜'
            }
          })
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}