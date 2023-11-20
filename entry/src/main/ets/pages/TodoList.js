"use strict";
struct TodoList extends   {
    constructor() { }
    build() {
            .height('100%');
    }
}
struct todoItem extends   {
    constructor() { }
    build() {
            .width('90%')
            .height(50)
            .backgroundColor(Color.Pink)
            .borderRadius(30)
            .padding({
            left: 15,
            right: 15
        })
            .margin({
            bottom: 10
        })
            .onClick(() => {
            this.isDone = !this.isDone;
        });
    }
}
//# sourceMappingURL=TodoList.js.map