
/**
 * 页面生命周期函数
 * onPageShow()  页面展示时调用，触发一次
 * onPageHide()  页面隐藏时触发，包括切换后台，跳转页面
 * onBackPress() 设备返回按钮触发该函数，***设备的返回按钮，非页面导航栏返回图标***
 *
 * 组件生命周期
 * aboutToAppear() 组件加载时调用
 * aboutToDisappear() 组件移除，卸载时触发该调用
 *
 * */




@Entry
@Component
struct LifeCycle_case {
  @State message: string = '生命周期'
  @State visible: boolean =false
  onPageShow(){
    console.log('页面显示')
  }
  onPageHide(){
    console.log('页面隐藏')
  }
  onBackPress(){
    console.log('返回事件触发')
  }
  build() {
    Row() {
      Column({space:20}) {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button(){
          Text('切换')
        }
        .width('50%')
        .height(50)
        .onClick(() => {
          this.visible=!this.visible
        })
        if(!this.visible){
        LifeClcle_son()
        }
      }
      .width('100%')
    }
    .height('100%')
  }
}

@Component
struct LifeClcle_son {
  aboutToAppear(){
    console.log('组件加载触发')
  }
  aboutToDisappear(){
    console.log('页面移除触发')
  }
  build() {
    Row() {
      Text('子组件呀').fontSize(40)
    }
  }
}