// NSTextAttachment 練習
import UIKit

//let postContent = NSMutableAttributedString(string: "觀光客台北一日遊：上午先去爬象山，看一下101矗立在台北市區")

let postContent = NSMutableAttributedString()
postContent.append(NSAttributedString(string: "觀光客台北一日遊：上午先去爬象山，看一下101矗立在台北市區"))

let taipei101Attachment = NSTextAttachment()  // NSTextAttachment 可以包含圖片
taipei101Attachment.image = UIImage(named: "Taipei_101_40x40.png")
taipei101Attachment.bounds = CGRect(x: 0, y: -5, width: 30, height: 30) // NSTextAttachment 大小位置
postContent.append(NSAttributedString(attachment: taipei101Attachment))

postContent.append(NSAttributedString(string: "，接著在搭乘捷運去吃鼎泰豐"))

let xiaoLongBaoAttachment = NSTextAttachment()
xiaoLongBaoAttachment.image = UIImage(named: "Xiaolongbao_40x40.png")
xiaoLongBaoAttachment.bounds = CGRect(x: 0, y: -5, width: 30, height: 30)
postContent.append(NSAttributedString(attachment: xiaoLongBaoAttachment))

postContent.append(NSAttributedString(string: "，下午去大稻埕閒晃，順便去城隍廟"))

let taiwaneseTempleAttachment = NSTextAttachment()
taiwaneseTempleAttachment.image = UIImage(named: "Taiwanese_Temple_40x40")
taiwaneseTempleAttachment.bounds = CGRect(x: 0, y: -5, width: 30, height: 30)
postContent.append(NSAttributedString(attachment: taiwaneseTempleAttachment))

postContent.append(NSAttributedString(string: "，晚上在去逛寧夏夜市吃喝"))

let NightMarketAttachment = NSTextAttachment()
NightMarketAttachment.image = UIImage(named: "Night_Market_40x40.png")
NightMarketAttachment.bounds = CGRect(x: 0, y: -5, width: 30, height: 30)
postContent.append(NSAttributedString(attachment: NightMarketAttachment))


let contentLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 300, height: 300)) // 貼文Label藉此 postContent 顯示貼文內容以及圖片
contentLabel.numberOfLines = 0
contentLabel.backgroundColor = .white
contentLabel.attributedText = postContent

// "觀光客台北一日遊：上午先去爬象山，看一下101矗立在台北市區，接著在搭乘捷運去吃鼎泰豐，下午去大稻埕閒晃，晚上在去逛寧夏夜市吃喝")


