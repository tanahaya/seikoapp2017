
//
//  newViewController.swift
//  seikofestapp
//
//  Created by 田中千洋 on 2017/04/07.
//  Copyright © 2017年 田中 颯. All rights reserved.
//

import UIKit

class timetableViewController: UIViewController,UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource {
    
    
    let imagearray1: [String] = ["noicon.jpg","ミュージックサロン.jpg", "ボールぽこぽこ.jpg","英語劇講堂.jpg"]
    let namearray1:[String] = ["天使の歌声","ミュージックサロン", "ボールポコポコ","英語劇"]
    let timearray1:[String] = ["9:30～10:10","10:30～13:00","13:30～14:00","14:15～15:15"]
    let contentarray1:[String] = ["今年入学したばたりの中学1年生の歌声をお聴き下さい。","今年も講堂にて様々な曲を演奏します。あの有名曲を男だけの吹奏楽部の迫力ある演奏で！皆様のご来場をお待ちしています","今年もやりますジャグリング！今年は講堂演技に加え、第二体育館にて定期演技を開催！ぜひお越しください！","今年の演目は、初期ディズニー作品  ｢Newsies｣！ストライキを巡って争う、新聞売りの少年達と欲深な大人達。感情のこもった熱い演技と歌を、講堂で是非ご覧ください。","","","",""]
    let imagearray2: [String] = ["noicon.jpg","コミュ力.jpg", "一本.jpg","SDP.jpg","笑.jpg","のど自慢.jpg","Mr.jpg","noicon.jpg"]
    let namearray2:[String] = ["五感塾","コミュ力の窓","Seiko IPPON grand prix","SDP","笑-1GP","のど自慢","Mr.聖光","春夜祭"]
    let timearray2:[String] = ["10:30～11:00","11:00～11:30","11:30～12:00","12:10～12:35","12:35～13:10","13:40～14:40","14:40～15:20","15:35～16:35"]
    let contentarray2:[String] = ["視覚、聴覚、嗅覚、味覚、触覚。生きていく上で欠かせないこれらの感覚が失われたとき人々はどうなってしまうのか!?五感を震わすバトルがここにある!","閉ざされた男子校という空間に暮らしている聖光生は 内に秘めたコミュ力を持っているという噂が・・・・。さあ、ユニークな表現力をもつ聖光生をお楽しみください。","聖光生がその類稀なる笑いのセンスを活かし大喜利に答える新企画！！ 漫才やコントとは一味違った笑いを皆様にお届けします！","今年もやって来た!聖光生が超カッコいい!?ダンス同好会によるパフォーマンスで聖光祭を盛り上げる!","聖光1の漫才上手を決めるこの企画！ 我々が満を持して送り出す笑いのエキスパートたちのネタにあなたの腹筋は崩壊寸前！","聖光でNo.1歌上手い奴は誰だ!?プロ並みの歌唱力を誇る高校生が出揃う!! 昼のステージが最高潮に盛り上がる!?","聖光生はオタク？めがね？そんなイメージを今日、聖光が誇るイケメンが変えてくれます!!彼らの魅力に虜となること間違いなし!!イケメンたちによるショーを見逃すな！","聖光祭１日目を締めくくるビッグイベント春夜祭!青空のもとで行われる聖光生の多彩なパフォーマンスを見よ! "]
    
    let imagearray3: [String] = ["せいとんがかり.jpg","奴ら.jpg", "Rooz-Leef.jpg","MillionDollars.jpg","Quintet.jpg"]
    let namearray3:[String] = ["せいとんがかり","奴等", "Яooz-Leef","Million Dollars","Quintet"]
    let timearray3:[String] = ["10:00～10:30","11:00～11:30","12:00～12:30","13:00～13:30","14:00～14:30"]
    let contentarray3:[String] = ["Vo. Gt. 後藤巧士朗 Gt. 宇都宮正樹 Ba. 海老原圭祐 Dr. 橋本新大 Key. 佐藤太希 イエェェェーイ！！！","Vo. Gt. Ba. 原囿森音 Gt. 小谷部広大 Gt. 高須大輔 Ba. 北村昂之 Dr. 鈴木康太 Key. 志賀裕斗 青い奴等テーマソングの奴等10回目のライブで企画ライブした奴等サイサイ1時RADヤバT重音系やる奴等","Vo. やなぎはら Gt. 大野太郎 Gt. 斎藤樹 Ba. 小澤征爾 Key. 笹井隆太郎 個性派6人組の織り成す爽やかな音色にあなたは虜になること間違いなし！！躍動感溢れるパフォーマンスと全てを飲み込んでしまうような声で学生をターゲットに活動中。","Vo. 田中多聞 Gt. 青木涼馬 Gt. 浜野怜 Ba. 櫻井春基 Dr. 西川魁 Key. 坂上知聴 奏でる音は百万石 刮目せよーMillion Dollars ー","Vo .Gt. 金田昌也 Gt. 大谷燎平 Ba. 平川倫太郎 Dr. 堺圭一郎 Key. ふみと 爽やかメロデイ聞かせます。心に響け五重奏"]
    
    let imagearray4: [String] = ["スペシャルゲスト.jpg","+Tic.jpg", "Resurrection.jpg","Defect.jpg","BAN.jpg","KnocKouT.jpg"]
    let namearray4:[String] = ["スペシャルゲスト","+Tic", "Re:surrection","Defect","BAN狂わせ","KnocKouT"]
    let timearray4:[String] = ["9:50～10:00","10:30～11:00","11:30～12:00","12:30～13:00","13:30～14:00","14:30～15:00"]
    let contentarray4:[String] = ["Vo. 中村公亮 Gt. 金子凛太朗 Dr. 佐藤心哉 DJ.藤田有祐 あの伝説のモンスターバンドが、スペシャルゲストとして満を持して聖光祭に降臨。彼らは何を求め、何を伝えたかったのか。","Vo. 大西 Gt. 岡村 Ba. 熊坂 Dr. 平田 Key. 室 「俺、このライブが終わったら、勉強するんだ。」","Vo. 武田英宏 Gt. 中村拓磨 Gt. 馬目晃太郎 Ba. 中村公亮 Dr. 堺圭一郎 エアバンドの次にネタバンドなリザレクションです。メンバーを紹介します。4人と1匹です。よろしくお願いします。","Vo. Gt. 大久保友晶 Ba. 小薬直央 Dr. 石渡春来 Key. 坂上知聴 ｢Defect｣ (名詞)①欠点、欠陥、弱点②不足、欠乏③4人組神バンド楽しくやってます。有名な曲もやります!是非見に来てね！！","Vo. Gt. 林奏多 Gt. 田辺祐大 Ba. 長澤太一 Dr. 川口輝 ライブ経験のある新進気鋭の高1バンド！圧倒的演奏力であなたの心を鷲掴みに！みんな、ライブハウスでBAN狂おうぜ！","Vo. 高木信太朗 Gt. 窪田隆平 Ba. 金森廉 Dr. 樋田健斗 Key. 滝沢麟太郎 聴きにきた人の心をKnocKouT寸前までえぐります。FirstLiveを見にきなよ！"]
    
    let imagearray5: [String] = ["noicon.jpg","数学研究会.jpg", "ミュージックサロン.jpg"]
    let namearray5:[String] = ["聖光生の成功の秘密","数学研究会", "ミュージックサロン"]
    let timearray5:[String] = ["11:30～12:30","13:00～14:00","14:30～15:30"]
    let contentarray5:[String] = ["今年から始まる新企画!生徒五人を選抜し、パネルディスカッションなどを通して成功の秘訣に迫る企画!全来場者必見! ","小学生から大人まで楽しめる企画となっています。 来て頂いた方に、「今日は来てよかったな」と思ってもらえるよう頑張ります。小講堂に足を踏み入れただけで問題を解かされるなんてことはないので、安心してください（笑）。","今年も講堂にて様々な曲を演奏します。あの有名曲を男だけの吹奏楽部の迫力ある演奏で！皆様のご来場をお待ちしています"]
    /*
    let imagearray6: [String] = ["noicon.jpg","ミュージックサロン.jpg", "ボールぽこぽこ.jpg","英語劇講堂.jpg"]
    let namearray6:[String] = ["天使の歌声","ミュージックサロン", "ボールポコポコ","英語劇"]
    let timearray6:[String] = ["9:30～10:10","10:30～13:00","13:30～14:00","14:15～15:15"]
    let content6:[String] = ["今年入学したばたりの中学1年生の歌声をお聴き下さい。","今年も講堂にて様々な曲を演奏します。あの有名曲を男だけの吹奏楽部の迫力ある演奏で！皆様のご来場をお待ちしています","今年もやりますジャグリング！今年は講堂演技に加え、第二体育館にて定期演技を開催！ぜひお越しください！","今年の演目は、初期ディズニー作品  ｢Newsies｣！ストライキを巡って争う、新聞売りの少年達と欲深な大人達。感情のこもった熱い演技と歌を、講堂で是非ご覧ください。"]
 */
    
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
    var numberi = 0
    var tableView:UITableView!
    var Label:UILabel!
    let labelback:UIColor = UIColor(red: 255/255, green: 158/255, blue: 35/255, alpha: 1.0)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        width = self.view.frame.maxX
        
        Label = UILabel(frame: CGRect(x:0,y:0,width:width,height:60))
        Label.backgroundColor = labelback
        Label.text = "講堂"
        Label.textColor = UIColor.white
        Label.shadowColor = UIColor.gray
        Label.textAlignment = NSTextAlignment.center
        self.view.addSubview(Label)
        
        scrollView = UIScrollView(frame: CGRect(x:0,y:60,width:width,height:self.view.frame.maxY - 60))
        let pageSize = 5
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.showsVerticalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.delegate = self
        scrollView.contentSize = CGSize(width: CGFloat(pageSize) * width, height: 0)
        scrollView.backgroundColor = UIColor.white
        self.view.addSubview(scrollView)
        
        for i in 0 ..< pageSize {
            
            let framex:CGFloat = CGFloat(i ) * width
            let framewidth:CGFloat =  self.view.bounds.width
            let frameheight:CGFloat = self.view.bounds.height - 60
            
            tableView = UITableView(frame: CGRect(x: framex, y: 15, width: framewidth, height: frameheight))
            
            tableView.register(CustomCell.self, forCellReuseIdentifier: "CustomCell")
            
            tableView.dataSource = self
            tableView.delegate = self
            
            self.scrollView.addSubview(tableView)
            
        }
        
        pageControl = UIPageControl(frame: CGRect(x: 0, y: 60,width: width ,height: 15))
        pageControl.backgroundColor = UIColor.blue
        pageControl.numberOfPages = pageSize
        pageControl.currentPage = 0
        pageControl.isUserInteractionEnabled = false
        
        self.view.addSubview(pageControl)
        
        
    }
    
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        if fmod(scrollView.contentOffset.x, scrollView.frame.maxX) == 0 {
            let on = Int(scrollView.contentOffset.x / scrollView.frame.maxX)
            pageControl.currentPage = on
            if on == 0 {
                Label.text = "講堂"
            }else if on == 1 {
                Label.text = "外ステージ"
            }else if on == 2 {
                Label.text = "ライブハウス1"
            }else if on == 3 {
                Label.text = "ライブハウス2"
            }else if on == 4 {
                Label.text = "小講堂"
            }
        }
        
    }
    
    func makeDetailWindow(indexPath:Int){
        
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
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Num: \(indexPath.row)")
        self.makeDetailWindow(indexPath: indexPath.row)
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        

        if numberi >= 0 {
            numberi = numberi + 1
            print(numberi)
        }
        
        if numberi == 11{
            return 3
        }else if numberi == 12 {
            return 6
        }else if numberi == 13 {
            return 5
        }else if numberi == 14 {
            return 8
        }else if numberi == 15 {
            return 3
        }
        if numberi == 1{
            return 3
        }else if numberi == 2 {
            return 6
        }else if numberi == 3 {
            return 5
        }else if numberi == 4 {
            return 8
        }else if numberi == 5 {
            return 3
        }
        
            return 3
        

        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell: CustomCell = tableView.dequeueReusableCell(withIdentifier: "CustomCell", for: indexPath) as! CustomCell
        
        if numberi == 15 {
            cell.titleLabel.text = namearray1[indexPath.row]
            cell.timeLabel.text = timearray1[indexPath.row]
            cell.ImageView.image = UIImage(named: imagearray1[indexPath.row])
        }else if numberi == 14 {
            cell.titleLabel.text = namearray2[indexPath.row]
            cell.timeLabel.text = timearray2[indexPath.row]
            cell.ImageView.image = UIImage(named: imagearray2[indexPath.row])
        }else if numberi == 13 {
            cell.titleLabel.text = namearray3[indexPath.row]
            cell.timeLabel.text = timearray3[indexPath.row]
            cell.ImageView.image = UIImage(named: imagearray3[indexPath.row])
        }else if numberi == 12 {
            cell.titleLabel.text = namearray4[indexPath.row]
            cell.timeLabel.text = timearray4[indexPath.row]
            cell.ImageView.image = UIImage(named: imagearray4[indexPath.row])
        }else if numberi == 11 {
            cell.titleLabel.text = namearray5[indexPath.row]
            cell.timeLabel.text = timearray5[indexPath.row]
            cell.ImageView.image = UIImage(named: imagearray5[indexPath.row])
        }
        
        
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return CGFloat(120)
    }
    
    
    
    
}
