
//
//  newViewController.swift
//  seikofestapp
//
//  Created by 田中千洋 on 2017/04/07.
//  Copyright © 2017年 田中 颯. All rights reserved.
//

import UIKit

class newViewController: UIViewController,UIScrollViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var imagearray1:[String] = ["ポケモンセンターSeiko.jpg","英語劇.jpg", "題名のない音楽喫茶.jpg","AFIs.jpg", "東方聖水精.jpg", "横浜漫才フィルム.jpg"]
    var imagearray2:[String] = ["スムージー.jpg","ぶいえいす.jpg", "79枚目のJOKER.jpg","TrickHark.jpg"]
    var imagearray3:[String] = ["生徒会展示.jpg","藤子F不二雄研究会.jpg", "数学研究会.jpg"]
    var imagearray4:[String] = ["SeSDA.jpg","RobotHeaven.jpg", "地理歴史巡検部.jpg", "聖光祭からの脱出.jpg"]
    var imagearray5:[String] = ["チョコパイ.jpg","ぎゃんぶる.jpg", "人狼の館.jpg", "交通研究部.jpg"]
    var imagearray6:[String] = ["レゴランド.jpg","THE5MINIUTES.jpg", "クイズ研究会.jpg","プロ野球研究会.jpg", "聖光道場.jpg"]
    
    var namearray1:[String] = ["ポケモンセンターSeiko","英語劇","題名のない音楽喫茶","AFIs","東方聖水精","横浜漫才フィルム"]
    var namearray2:[String] = ["Juicy Juicer","ぶいえいす","79枚目のJOKER","TrickHark"]
    var namearray3:[String] = ["生徒会","藤子F不二雄研究会","数学研究会"]
    var namearray4:[String] = ["SeSDA宇宙センター","Robot Heacen","地理歴史巡検部","聖光祭からの脱出"]
    var namearray5:[String] = ["三角チョコπ","ぎゃんぶる。","人狼の館","交通研究部"]
    var namearray6:[String] = ["レゴランド","THE 5 MINIUTES","クイズ研究会","プロ野球研究会","聖光道場"]
    
    
    var contentarray1: [String] = ["ポケモンが好きな人も、そうじゃない人も、いくぜ！ゼンリョク！ポケモンセンターSeiko！！","ディズニーならではの世界観を、聖光生の迫真の演技とともにお楽しみください。","生徒による生演奏を聴くことのできる喫茶店です。風薫る季節、音楽と共にゆったりとしたひと時を。","アメコミ映画を中心とする趣味研です！モジュールや再現小物などあります！ぜひ一度足を運んでください！","魔理沙｢『聖氷精(せいこおせい)による幻想郷同好会、始動』らしいぜ｣霊夢｢あら、チルノも聖人になったのね｣","クラスに1人はいるお調子者を全員集めました。漫才・コント・1発芸やってます。皆様の笑顔を楽しみにお待ちしてます！"]
    var contentarray2:[String] = ["果物がたっぷり、聖光名物のスムージー。ぶどう味が新登場！！テイクアウトもOKです。","聖光祭に来てどこに行こうか迷ったそこのあなた！誰でも楽しめる体力テスト・心理ゲームはいかがですか！？","爽やかサッカー部員と盛り上がって最高の聖光祭を体験したい人集まれ！！","トランプ・コイン・ステージなど数々のマジックを揃えて、聖光生マジシャンたちがあなたを魅了する！"]
    var contentarray3:[String] = ["聖光についてもっと知りたい？！それならここしかない、生徒会展示へ！生徒目線の聖光を紹介します。","君も藤子F不二雄のSF(少し不思議)を体感しよう！新たな発見や感動が君を待っている！","君を数学の世界へ招待します。"]
    var contentarray4:[String] = ["今年のSeSDAの展示は模型、ローバー、Cansatなど盛りだくさん！是非お越しください。","聖光学院に巻き起こるメカニックムーブメント！様々なロボットを駆使してミッションをクリアしよう！","　見どころは北アフリカ戦線の大ジオラマ！恒例の甲冑着付けも小学生向けに行います。誰でも大歓迎です！","聖光祭中を回り謎を解いてこの聖光祭から脱出せよ!!"]
    var contentarray5:[String] = ["中はとろ～りチョコ、外はサックサク！一度食べたらやみつき！この美味しさは食べないと分からない♪","とってもエキサイティングでスリリングな体験をぎゃんぶる。は提供します。さあ狙え！一発逆転！！！","人気推理ゲーム「人狼」が聖光祭に！あなたは真実にたどり着けるのか?!次の犠牲者はあなたかもしれない…。","交通のプロである部員たちの熱意のこもった研究と、大迫力の巨大鉄道ジオラマ！交研の本気とくとご覧あれ！"]
    var contentarray6:[String] = ["聖光学院にレゴランドがついに登場⁈圧巻の作品達を見逃すな!","新感覚のリアル脱出ゲームが登場!!探偵となり、殺人現場に隠された謎を解読して密室から脱出セヨ!!与えられた時間はTHE 5 MINUTES"," 一匹の妖怪が日本を徘徊している。すなわち、競技クイズの妖怪である。万国のプロレタリア早押しせよ！","プロ野球を愛する男たちがお届けする、“神ってる”展示をご覧あれ！景品付きストラックアウトもあるよ！","今年はルールブックも配布するので、腕に自信がある方は勿論、初心者の方も気軽にお越しください。"]
    
    
    var pageControl: UIPageControl!
    var scrollView: UIScrollView!
    var width:CGFloat!
    var Image:UIImage!
    var nowarray:[String] = []
    var detailWindow:UIWindow!
    var closeButton:UIButton!
    var logoImage:UIImage!
    var mapImage:UIImage!
    var textView: UITextView!
    var mapImageView: UIImageView!
    var logoImageView: UIImageView!
    var detailButton: UIButton!
    var collectionView : UICollectionView!
    var cellImageView:UIImageView!
    var numberi = 0
    var Label:UILabel!
    let labelback:UIColor = UIColor(red: 255/255, green: 158/255, blue: 35/255, alpha: 1.0)
    var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = self.view.frame.maxX
        
        myImageView = UIImageView(frame: CGRect(x: 0, y: 0, width: width, height: self.view.frame.maxY))
        let myImage: UIImage = UIImage(named: "sky.jpg")!
        myImageView.image = myImage
        // self.view.addSubview(myImageView)
        
        Label = UILabel(frame: CGRect(x:0,y:0,width:width,height:60))
        Label.backgroundColor = labelback
        Label.text = "中学棟2F"
        Label.textColor = UIColor.white
        Label.shadowColor = UIColor.gray
        Label.textAlignment = NSTextAlignment.center
        self.view.addSubview(Label)
        
        
        scrollView = UIScrollView(frame:CGRect(x:0,y:60,width:width,height:self.view.frame.maxY - 60))
        let pageSize = 6
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: CGFloat(pageSize) * width, height: 0)
        scrollView.backgroundColor = UIColor.white
        self.view.addSubview(scrollView)
        
        for i in 0 ..< pageSize {
            
            if i == 0 {
                nowarray = imagearray1
            }else if i == 1 {
                nowarray = imagearray2
            }else if i == 2 {
                nowarray = imagearray3
            }else if i == 3 {
                nowarray = imagearray4
            }else if i == 4 {
                nowarray = imagearray5
            }else if i == 5 {
                nowarray = imagearray6
            }
            for j in 0 ..< nowarray.count {
                
                self.makeimage(at: j,stage: i)
            }
            
            let layout = UICollectionViewFlowLayout()
            layout.itemSize = CGSize(width:150, height:170)
            layout.sectionInset = UIEdgeInsetsMake( -10, 20, 20, 20)
            layout.headerReferenceSize = CGSize(width: 100,height: 30)
            
            let framex:CGFloat = CGFloat(i ) * width
            let framewidth:CGFloat =  self.view.bounds.width
            let frameheight:CGFloat = self.view.bounds.height - 80
            
            let collectionframe = (frame: CGRect(x: framex, y: 0, width: framewidth, height: frameheight))
            collectionView = UICollectionView(frame: collectionframe , collectionViewLayout: layout)
            collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
            collectionView.delegate = self
            collectionView.dataSource = self
            collectionView.backgroundColor = UIColor.clear
            self.scrollView.addSubview(collectionView)
            
            
        }
        
        pageControl = UIPageControl(frame: CGRect(x: 0, y: 60,width: width ,height: 15))
        pageControl.backgroundColor = UIColor.blue
        pageControl.numberOfPages = pageSize
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        
        self.view.addSubview(pageControl)
        
    }
    
    func makeimage(at:Int,stage:Int) {
        
        let imagex: CGFloat = CGFloat(stage) * width + 20 + CGFloat(185 * (at % 2))
        let imagey: CGFloat = CGFloat(20 + 180 * (at / 2))
        
        cellImageView = UIImageView(frame: CGRect(x: imagex, y: imagey, width: 150, height: 150))
        
        let namex:CGFloat = CGFloat(stage) * width + CGFloat(30 + 185 * (at % 2))
        let namey:CGFloat = CGFloat(170 + 180 * (at / 2))
        let nameLabel:UILabel = UILabel(frame: CGRect(x: namex,y: namey,width: 150,height: 20))
        
        nameLabel.backgroundColor  = UIColor.clear
        nameLabel.font = UIFont.systemFont(ofSize: CGFloat(13))
        
        if stage == 0 {
            Image = UIImage(named: imagearray1[at])!
            nameLabel.text = namearray1[at]
            print("middle2f")
        }else if stage == 1 {
            Image = UIImage(named: imagearray2[at])!
            nameLabel.text = namearray2[at]
            print("middle3f")
        }else if stage == 2 {
            Image = UIImage(named: imagearray3[at])!
            nameLabel.text = namearray3[at]
            print("middle4f")
        }else if stage == 3 {
            Image = UIImage(named: imagearray4[at])!
            nameLabel.text = namearray4[at]
            print("high2f")
        }else if stage == 4 {
            Image = UIImage(named: imagearray5[at])!
            nameLabel.text = namearray5[at]
            print("high3f")
        }else if stage == 5 {
            Image = UIImage(named: imagearray6[at])!
            nameLabel.text = namearray6[at]
            print("high4f")
        }
        
        cellImageView.image = Image
        cellImageView.layer.borderColor = UIColor.black.cgColor
        cellImageView.layer.borderWidth = 2
        cellImageView.layer.cornerRadius = 30
        cellImageView.layer.masksToBounds = true
        
        self.scrollView.addSubview(cellImageView)
        self.scrollView.addSubview(nameLabel)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            let on:Int = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
            pageControl.currentPage = on
            print(on)
            
            if on == 0 {
                Label.text = "中学棟2階"
            }else if on == 1 {
                Label.text = "中学棟3階"
            }else if on == 2 {
                Label.text = "中学棟4階"
            }else if on == 3 {
                Label.text = "高校棟2階"
            }else if on == 4 {
                Label.text = "高校棟3階"
            }else if on == 5 {
                Label.text = "高校棟4階"
            }
        }
        
    }
    
    func makeDetailWindow(indexPath:Int,nowat:Int){
        
        let j = pageControl.currentPage
        
        detailWindow = UIWindow()
        detailWindow.frame = CGRect(x:0, y:0, width:340, height:500)
        detailWindow.layer.position = CGPoint(x:self.view.frame.width/2, y:self.view.frame.height/2)
        detailWindow.alpha = 1.0
        detailWindow.layer.cornerRadius = 20
        detailWindow.makeKey()
        self.detailWindow.makeKeyAndVisible()
        
        let pageSize = 2
        
        scrollView = UIScrollView(frame: self.view.frame)
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width:760 ,height: 0)
        
        logoImageView = UIImageView(frame: CGRect(x:50,y:70,width:250,height:250))
        mapImageView = UIImageView(frame: CGRect(x:430,y:70,width:250,height:250))
        
        pageControl = UIPageControl(frame: CGRect(x: 120,y: 310,width: 100,height: 50))
        pageControl.numberOfPages = pageSize
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        
        closeButton = UIButton(frame: CGRect(x:0, y:0, width:100, height:60))
        closeButton.backgroundColor = UIColor.orange
        closeButton.setTitle("Close", for: .normal)
        closeButton.setTitleColor(UIColor.white, for: .normal)
        closeButton.layer.masksToBounds = true
        closeButton.layer.cornerRadius = 20.0
        closeButton.layer.position = CGPoint(x:self.detailWindow.frame.width/2, y:self.detailWindow.frame.height-50)
        closeButton.addTarget(self, action: #selector(hide), for: .touchUpInside)
        
        let titleLabel:UILabel = UILabel(frame: CGRect(x:10, y:10, width:self.detailWindow.frame.width - 20, height:40))
        titleLabel.backgroundColor = UIColor.white
        titleLabel.layer.masksToBounds = true
        titleLabel.layer.cornerRadius = 5.0
        titleLabel.font = UIFont.systemFont(ofSize: 20.0)
        titleLabel.textColor = UIColor.black
        titleLabel.textAlignment = NSTextAlignment.center
        
        
        textView = UITextView(frame: CGRect(x:10, y:340, width:self.detailWindow.frame.width - 40, height:100))
        textView.backgroundColor = UIColor.clear
        
        
        textView.font = UIFont.systemFont(ofSize: 15.0)
        textView.textColor = UIColor.white
        textView.textAlignment = NSTextAlignment.left
        textView.isEditable = false
        
        
        if j == 0 {
            logoImage = UIImage(named: imagearray1[indexPath])
            mapImage = UIImage(named: imagearray1[indexPath])
            titleLabel.text = namearray1[indexPath]
            textView.text = contentarray1[indexPath]
        }else if j == 1 {
            logoImage = UIImage(named: imagearray2[indexPath])
            mapImage = UIImage(named: imagearray2[indexPath])
            titleLabel.text = namearray2[indexPath]
            textView.text = contentarray2[indexPath]
        }else if j == 2 {
            logoImage = UIImage(named: imagearray3[indexPath])
            mapImage = UIImage(named: imagearray3[indexPath])
            titleLabel.text = namearray3[indexPath]
            textView.text = contentarray3[indexPath]
        }else if j == 3 {
            logoImage = UIImage(named: imagearray4[indexPath])
            mapImage = UIImage(named: imagearray4[indexPath])
            titleLabel.text = namearray4[indexPath]
            textView.text = contentarray4[indexPath]
        }else if j == 4 {
            logoImage = UIImage(named: imagearray5[indexPath])
            mapImage = UIImage(named: imagearray5[indexPath])
            titleLabel.text = namearray5[indexPath]
            textView.text = contentarray5[indexPath]
        }else if j == 5 {
            logoImage = UIImage(named: imagearray6[indexPath])
            mapImage = UIImage(named: imagearray6[indexPath])
            titleLabel.text = namearray6[indexPath]
            textView.text = contentarray6[indexPath]
        }
        
        mapImageView.image = mapImage
        logoImageView.image = logoImage
        
        detailWindow.addSubview(scrollView)
        scrollView.addSubview(mapImageView)
        scrollView.addSubview(logoImageView)
        detailWindow.addSubview(pageControl)
        detailWindow.addSubview(closeButton)
        detailWindow.addSubview(titleLabel)
        detailWindow.addSubview(textView)
        
    }
    
    func hide(sender:UIButton) {
        
        textView.isHidden  = true
        detailWindow.isHidden = true
        logoImageView.isHidden = true
        mapImageView.isHidden = true
        scrollView.isHidden = true
        pageControl.isHidden = true
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell",for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.clear
        
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let i = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
        print("indexPath.row:" + String(indexPath.row) + ",nowat" + String(i))
        
        makeDetailWindow(indexPath: indexPath.row, nowat: i)
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 6
    }
    
    
}
