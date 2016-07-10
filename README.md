# SlidertoChangeLabelFount
一键改变label的字体大小



1 把MYHSliderChangeLabelFont 这个类拖到你的项目里面
在application中初始化这个类
// 实例化对象
MYHSliderChangeLabelFont *slider = [MYHSliderChangeLabelFont shareInsance];
[slider listenNotify];
记住一定要注销通知详情看我的demo


2 在你任意类里面初始化这个单例对象(demo中我在viewcontroller中写的)

/**
*  实例化对象
*/
MYHSliderChangeLabelFont *slider = [MYHSliderChangeLabelFont shareInsance];

int  currentFloat = label.font.pointSize;
_rect = CGRectMake(20, 300, 200, 30);
[slider setupSliderWithFrame:_rect addView:self.view minValue:13 maxValue:25 currentValue:currentFloat];




3 滑动可以改变你项目里面任意的label的大小 估计还会有bug 后期慢慢更正
