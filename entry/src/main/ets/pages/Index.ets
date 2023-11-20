

/**
 * 一、如果是相同的样式，对样式进行封装
 * 二、单独把相同的样式提取出来通过@Style装饰器修饰放在组件内部或者外部写成函数的形式
 * 1、在组件内部
 *  （1）用@Style 修饰器修饰可直接在函数里面写公共样式
 *  （2） 在使用公共样式时直接调用该函数即可，不用加this
 * 2、在组件外部
 * （1）也是通过@Style装饰器修饰，但是在外部要添加function关键字
 * （2）调用直接进行使用即可
 * 三、公共样式的函数抽离不得使用参数传参，
 * 公共样式不一定所有属性都有对应类型的参数，所以不能使用参数传参
 *
 * */

// 外部使用
 @Styles function commonStyle(){
  .width(200)
    .height(70)
    .backgroundColor('#ccc')
    .margin({
      bottom:10
    })
}


@Entry
@Component
struct Index {
  @State message: string = '通用样式封装'


  // 内部使用
  // @Styles commonStyle(){
  //   .width(200)
  //   .height(70)
  //   .backgroundColor('#ccc')
  //   .margin({
  //     bottom:10
  //   })
  // }

  build() {
    Row() {
      Column() {
        Text(this.message).fontSize(30).margin({
          top:10
        })

      }
      .width('100%').height('10%').position({})
      Column(){
              Image('').commonStyle()
              Row().commonStyle()
            Button().commonStyle()
      }
    }
    .height('100%')
  }
}