
//
//  newViewController.swift
//  seikofestapp
//
//  Created by 田中千洋 on 2017/04/07.
//  Copyright © 2017年 田中 颯. All rights reserved.
//

import UIKit

class foodViewController: UIViewController,UIScrollViewDelegate, UICollectionViewDelegate, UICollectionViewDataSource {
    
    let imagearray1: [String] = ["わたあめ.jpg","ドリンク.jpg", "クレープ.jpg","フランクフルト.jpg", "塩焼きそば.jpg"]
    let namearray1:[String] = ["綿菓子","Cold Spot", "ピッピのクレープ屋","ふらんくふると。", "麺’s Run Run"]
    let contentarray1:[String] = ["甘くて、ふわふわで、お口にとろける魅力的な一品。聖光祭のお供にどうぞ!!","熱い聖光祭を楽しんでいるそこのあなた！喉が渇いていませんか？そんな方は是非Cold Spotへ！","スイーツ界の王者クレープ！バナナチョコ・イチゴホイップ・シナモンアップル、お好きな味で召し上がれ","今年はプレーンだけでなくスパイシーなフランクフルトも販売！目の前で香ばしく焼き上げる1本を貴方に...","売上4連覇を誇るこの味は決してあなたを裏切りません。熱い職人による本格派、是非一度ご賞味あれ！"]
    
    let imagearray2:[String] = [ "ソース焼きそば.jpg","お好み焼き.jpg","ケバブ.jpg","焼き鳥.jpg"]
    let namearray2:[String] = ["麺麺麺世","鉄板職人","俺のケバブ","鳥角"]
    let contentarray2:[String] = ["常に進化を続けるソース焼きそば。あまりの美味しさに「生まれ変わってる！？」と叫んでしまうかも？","今年は王道、豚玉に対し新時代の扉を開く新参者が登場！気になったら店頭に来て食べてみてね。","スパイス香るお肉にもちっと生地のピタパンは相性抜群！リピーター続出の癖になる1品！是非ご賞味あれ！","焼き鳥　焼き鳥が今年も聖光祭に登場！ジューシーな鶏肉があなたの心を鷲掴み！ほっぺが飛んでいく美味しさ！"]
    
    let imagearray3: [String] = ["スムージー.jpg","チョコパイ.jpg", "noicon.jpg"]
    let namearray3:[String] = ["　Juicy Juicer","Chocolate Piet", "駅弁"]
    let contentarray3:[String] = ["果物がたっぷり、聖光名物のスムージー。ぶどう味が新登場！！テイクアウトもOKです。","中はとろ～りチョコ、外はサックサク！一度食べたらやみつき！この美味しさは食べないと分からない♪","駅弁"]
    
    
    
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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        width = self.view.frame.maxX
        
        Label = UILabel(frame: CGRect(x:0,y:0,width:width,height:60))
        Label.backgroundColor = labelback
        Label.text = "中庭その1"
        Label.textColor = UIColor.white
        Label.shadowColor = UIColor.gray
        Label.textAlignment = NSTextAlignment.center
        self.view.addSubview(Label)
        
        scrollView = UIScrollView(frame:CGRect(x:0,y:60,width:width,height:self.view.frame.maxY - 60))
        let pageSize = 3
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
            let frameheight:CGFloat = self.view.bounds.height - 60
            
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
        
        if stage == 0 {
            Image = UIImage(named: imagearray1[at])!
            nameLabel.text = namearray1[at]
            print("middlecourt1")
        }else if stage == 1 {
            Image = UIImage(named: imagearray2[at])!
            nameLabel.text = namearray2[at]
            print("middlecourt2")
        }else if stage == 2 {
            Image = UIImage(named: imagearray3[at])!
            nameLabel.text = namearray3[at]
            print("others")
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
            if on == 0 {
                Label.text = "中庭その1"
            }else if on == 1 {
                Label.text = "中庭その2"
            }else if on == 2 {
                Label.text = "その他"
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
        self.makeDetailWindow(indexPath: indexPath.row, nowat: i)
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 5
    }
    
    
}
