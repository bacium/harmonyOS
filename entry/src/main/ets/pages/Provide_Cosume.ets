
/*
 *
 * Provide和Consume跨组件传值使用
 *
 *
 * 原名称使用：
 * 1、在第一级组件中使用Provide装饰器定义传值对象
 *    例如：@Provide tips:string='哇哈哈哈'
 * 2、在使用的组件内通过@Consume装饰器获取传值的内容（不可赋值操作）
 *    例：  @Consume tips:string
 *
 *
 *
 * 修改名称使用，但是在装饰器定义的时候必须规定一个特定的字符
 * `该使用方式可以定义不同名称的字段，但是特定字符必须一致
 * 1、定义
 * 通过Tip规定特定字符，然后在使用组件中也通过Tip获取使用
 *   @Provide('Tip')
 * 2、使用
 *   @Consume('Tip')
 * */



@Entry
@Component
struct Provide_Cosume {
  @State message: string = 'Provide_Cosume'
// @Provide tips:string='哇哈哈哈'
  @Provide('Tip') tips:string='孔雀东南飞，伍里一徘徊'
  build() {

    Row() {
      Column() {
        Text(this.message).commonStyle_provide(40,FontWeight.Bold,Color.Blue)
        Provide_Cosume_father()
      }
      .width('100%')
    }
    .height('100%')
  }
}

@Component
struct Provide_Cosume_father {
  build(){
  Column(){
    Row(){
      Text('父组件').commonStyle_provide(40,FontWeight.Normal,Color.Green)
    }
    Provide_Cosume_son()
  }
  }
}

@Component
struct Provide_Cosume_son {
  // @Consume tips:string
  @Consume('Tip') content:string
  build() {

    Row() {
      // Text('子组件'+this.tips).commonStyle_provide(30,FontWeight.Medium,Color.Orange)
      Text('子组件'+this.content).commonStyle_provide(30,FontWeight.Medium,Color.Orange)
    }
  }
}


@Extend(Text) function commonStyle_provide(fs:number,fw:FontWeight,fc:Color){
  .fontSize(fs)
  .fontWeight(fw)
  .fontColor(fc)
}