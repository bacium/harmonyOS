
/**
 * 参数的接收
 * 通过路由传递的参数可在使用页面通过router.getParams()函数接收
 * 使用方法：router.getParams()[传递参数的键(字符串形式)]
 * 例：router.getParams()['payload']
 *
 * */


import router from '@ohos.router'
let params=router.getParams()['payload']

@Entry
@Component
struct Params_payload2 {
  @State message: string = 'Hello World'

  build() {
    Row() {
      Column() {
        Text(params)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            router.back()
          })
      }
      .width('100%')

    }
    .height('100%')
  }
}