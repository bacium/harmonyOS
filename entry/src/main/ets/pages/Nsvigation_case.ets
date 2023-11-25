@Entry
@Component
struct Nsvigation_case {
  @State activeIndex: number = 0
  @State bars: Array<{ text: string, subtitle: string, num: number, img: Resource, content: Resource }> = [
    {
      text: '点赞',
      subtitle: '帝心又细又长',
      num: 0,
      img: $r('app.media.navigation_0'),
      content: $r('app.media.navigation_page0')
    },
    {
      text: '投币',
      subtitle: '全网最新',
      num: 1,
      img: $r('app.media.navigation_1'),
      content: $r('app.media.navigation_page1')
    },
    {
      text: '收藏',
      subtitle: '求三连',
      num: 2,
      img: $r('app.media.navigation_2'),
      content: $r('app.media.navigation_page2')
    }
  ]

  build() {
    Row() {
      Column() {
        Navigation()
          .title(this.NavigatorTitle())
          .toolBar(this.NavigatorToolbar())

      }
      .width('100%')
      .height('100%')
      .backgroundColor(0xcccccc)
      .padding(20)
    }
    .height('100%')
  }


  @Builder NavigatorTitle(){
    Column(){
      Text(this.bars[this.activeIndex].text).fontSize(30)
      Text(this.bars[this.activeIndex].subtitle).fontSize(15)
    }
  }

  @Builder NavigatorToolbar() {
    Row(){
      ForEach(this.bars,item=>{
        Column({space:10}){
          Image(item.img).width(50).height(50)
          Text(item.text)
        }
        .height(160)
        .width(110)
        .onClick(()=>{
          this.activeIndex=item.num
        })
      })
    }

  }
}