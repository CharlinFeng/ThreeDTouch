# 3D Touch 快速集成 （持续关注[信息公告牌](https://github.com/CharlinFeng/Show)）
用最简单的方式集成3D Touch：<br/>
> (1). 快速集成QA<br/>
> (2). 快速集成Peek。<br/>
> (3). Pop Gesture太过简单，无需集成，直接实现previewActionItems方法即可<br/>


<br/><br/><br/>
一、Quick Action
==========
        let m1 = ThreeDTouchItemModel(title: "消息", subTitle: "发一条消息", imgName: "news", userInfo: nil)
       
        m1.quickAction = {
          //do sth
        }
        
        let m2 = ThreeDTouchItemModel(title: "新建", subTitle: "新建一条说说", imgName: "unfinished", userInfo: nil)
        
        m2.quickAction = {
          //do sth
        }
        
        ThreeDTouch.create([m1,m2])

<br/><br/><br/>
二、Peek Gesture
==========

        1.继承自PeekVC
        2. 设置变成即可       
                peekRegister(btn)
                peekVC = SecVC(nibName: "SecVC", bundle: nil)

