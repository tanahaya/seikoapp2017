//
//  ViewController_2.swift
//  seiko
//
//  Created by 田中千洋 on 2016/12/24.
//  Copyright © 2016年 田中 颯. All rights reserved.
//

import UIKit

class testViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource , UIScrollViewDelegate{
    
    var collectionView : UICollectionView!
    var mapImageView: UIImageView!
    var logoImageView: UIImageView!
    
    let imagename: [String] = ["ポケモンセンターSeiko.jpg","英語劇.jpg", "題名のない音楽喫茶.jpg","AFIs.jpg", "東方聖水精.jpg", "横浜漫才フィルム.jpg"]
    let namearray:[String] = ["ポケモンセンターSeiko","英語劇","題名のない音楽喫茶","AFIs","東方聖水精","横浜漫才フィルム"]
    let content:[String] = ["ポケモンが好きな人も、そうじゃない人も、いくぜ！ゼンリョク！ポケモンセンターSeiko！！","ディズニーならではの世界観を、聖光生の迫真の演技とともにお楽しみください。","生徒による生演奏を聴くことのできる喫茶店です。風薫る季節、音楽と共にゆったりとしたひと時を。","アメコミ映画を中心とする趣味研です！モジュールや再現小物などあります！ぜひ一度足を運んでください！","魔理沙｢『聖氷精(せいこおせい)による幻想郷同好会、始動』らしいぜ｣霊夢｢あら、チルノも聖人になったのね｣","クラスに1人はいるお調子者を全員集めました。漫才・コント・1発芸やってます。皆様の笑顔を楽しみにお待ちしてます！"]
    
    let imagename2: [String] = ["スムージー.jpg","ぶいえいす.jpg", "79枚目のJOKER.jpg","TrickHark.jpg"]
    let namearray2:[String] = ["Juicy Juicer","ぶいえいす","79枚目のJOKER","TrickHark"]
    let content2:[String] = ["果物がたっぷり、聖光名物のスムージー。ぶどう味が新登場！！テイクアウトもOKです。","聖光祭に来てどこに行こうか迷ったそこのあなた！誰でも楽しめる体力テスト・心理ゲームはいかがですか！？","爽やかサッカー部員と盛り上がって最高の聖光祭を体験したい人集まれ！！","トランプ・コイン・ステージなど数々のマジックを揃えて、聖光生マジシャンたちがあなたを魅了する！"]
    
    
    var nownumber :Int = 0
    var detailWindow: UIWindow!
    var closeButton: UIButton!
    var textView: UITextView!
    var scrollView: UIScrollView!
    var pageControl: UIPageControl!
    
    var posX: CGFloat!
    var posY: CGFloat!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        detailWindow = UIWindow()
        closeButton = UIButton()
        
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width:150, height:170)
        layout.sectionInset = UIEdgeInsetsMake( -10, 20, 20, 20)
        layout.headerReferenceSize = CGSize(width:100,height:30)
        
        let collectionframe = (frame: CGRect(x: 0, y: 0, width: self.view.bounds.width, height: self.view.bounds.height - 60))
        
        collectionView = UICollectionView(frame: collectionframe , collectionViewLayout: layout)
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "MyCell")
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.backgroundColor = UIColor.white
        
        self.view.addSubview(collectionView)
        
        
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        nownumber = indexPath.row
        self.makeMyWindow()
        
    }
    
    /*
     Cellの総数を返す
     */
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imagename.count
    }
    
    /*
     Cellに値を設定する
     */
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell : UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "MyCell",for: indexPath as IndexPath)
        cell.backgroundColor = UIColor.orange
        
        let ImageView:UIImageView = UIImageView(frame: CGRect(x: 20 + 185 * (indexPath.row % 2)  , y: 20 + 180 * (indexPath.row / 2) , width: 150, height: 150))
        
        let Image:UIImage = UIImage(named: imagename[indexPath.row])!
        ImageView.image = Image
        self.collectionView.addSubview(ImageView)
        let nameLabel:UILabel = UILabel(frame: CGRect(x: 30 + 185 * (indexPath.row % 2) ,y: 170 + 180 * (indexPath.row / 2) ,width: 150,height: 20))
        nameLabel.text = namearray[indexPath.row]
        self.collectionView.addSubview(nameLabel)
        
        return cell
    }
    func makeMyWindow(){
        
        detailWindow.frame = CGRect(x:0, y:0, width:340, height:500)
        detailWindow.layer.position = CGPoint(x:self.view.frame.width/2, y:self.view.frame.height/2)
        detailWindow.alpha = 1.0
        detailWindow.layer.cornerRadius = 20
        detailWindow.makeKey()
        self.detailWindow.makeKeyAndVisible()
        
        
        scrollView = UIScrollView(frame: self.view.frame)
        let pageSize = 2
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width:760 ,height: 0)
        self.detailWindow.addSubview(scrollView)
        
        if title == "中学棟2階" {
            logoImageView = UIImageView(frame: CGRect(x:50,y:20,width:250,height:250))
            let logoImage = UIImage(named: imagename[nownumber])
            logoImageView.image = logoImage
            scrollView.addSubview(logoImageView)
            
            
            mapImageView = UIImageView(frame: CGRect(x:430,y:20,width:250,height:250))
            let mapImage = UIImage(named: imagename[nownumber])
            mapImageView.image = mapImage
            scrollView.addSubview(mapImageView)
            
            let titleLabel:UILabel = UILabel(frame: CGRect(x:10, y:10, width:self.detailWindow.frame.width - 20, height:40))
            titleLabel.backgroundColor = UIColor.white
            titleLabel.layer.masksToBounds = true
            titleLabel.layer.cornerRadius = 5.0
            titleLabel.font = UIFont.systemFont(ofSize: 20.0)
            titleLabel.textColor = UIColor.black
            titleLabel.textAlignment = NSTextAlignment.center
            titleLabel.text = namearray[nownumber]
            detailWindow.addSubview(titleLabel)
            
            textView = UITextView(frame: CGRect(x:10, y:340, width:self.detailWindow.frame.width - 40, height:100))
            textView.backgroundColor = UIColor.clear
            textView.text = content[nownumber]
            textView.font = UIFont.systemFont(ofSize: 15.0)
            textView.textColor = UIColor.white
            textView.textAlignment = NSTextAlignment.left
            textView.isEditable = false
            detailWindow.addSubview(textView)
            
        }else if title == "中学棟3階" {
            logoImageView = UIImageView(frame: CGRect(x:50,y:20,width:250,height:250))
            let logoImage = UIImage(named: imagename2[nownumber])
            logoImageView.image = logoImage
            scrollView.addSubview(logoImageView)
            
            
            mapImageView = UIImageView(frame: CGRect(x:430,y:20,width:250,height:250))
            let mapImage = UIImage(named: imagename2[nownumber])
            mapImageView.image = mapImage
            
            scrollView.addSubview(mapImageView)
            let titleLabel:UILabel = UILabel(frame: CGRect(x:10, y:10, width:self.detailWindow.frame.width - 20, height:40))
            titleLabel.backgroundColor = UIColor.white
            titleLabel.layer.masksToBounds = true
            titleLabel.layer.cornerRadius = 5.0
            titleLabel.font = UIFont.systemFont(ofSize: 20.0)
            titleLabel.textColor = UIColor.black
            titleLabel.textAlignment = NSTextAlignment.center
            titleLabel.text = namearray2[nownumber]
            detailWindow.addSubview(titleLabel)
            
            textView = UITextView(frame: CGRect(x:10, y:340, width:self.detailWindow.frame.width - 40, height:100))
            textView.backgroundColor = UIColor.clear
            textView.text = content2[nownumber]
            textView.font = UIFont.systemFont(ofSize: 15.0)
            textView.textColor = UIColor.white
            textView.textAlignment = NSTextAlignment.left
            textView.isEditable = false
            detailWindow.addSubview(textView)
        }
        
        pageControl = UIPageControl(frame: CGRect(x: 120,y: 310,width: 100,height: 50))
        pageControl.numberOfPages = pageSize
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        self.detailWindow.addSubview(pageControl)
        
        
        
        closeButton.frame = CGRect(x:0, y:0, width:100, height:60)
        closeButton.backgroundColor = UIColor.orange
        closeButton.setTitle("Close", for: .normal)
        closeButton.setTitleColor(UIColor.white, for: .normal)
        closeButton.layer.masksToBounds = true
        closeButton.layer.cornerRadius = 20.0
        closeButton.layer.position = CGPoint(x:self.detailWindow.frame.width/2, y:self.detailWindow.frame.height-50)
        closeButton.addTarget(self, action: #selector(hide), for: .touchUpInside)
        self.detailWindow.addSubview(closeButton)
        
        
        
    }
    
    func hide(sender:UIButton) {
        
        textView.isHidden  = true
        detailWindow.isHidden = true
        logoImageView.isHidden = true
        mapImageView.isHidden = true
        scrollView.isHidden = true
        pageControl.isHidden = true
        
    }
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            
            pageControl.currentPage = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
        }
    }
    
    
}


