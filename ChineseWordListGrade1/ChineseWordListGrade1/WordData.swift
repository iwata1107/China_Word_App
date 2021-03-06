//
//  WordData.swift
//  ChineseWordListGrade1
//
//  Created by 岩田照太 on 2021/05/01.
//

import Foundation


class MakeWordData{
    
    var chinese:[String] = []
    var japanese:[String] = []
    var randomInt:[Int] = []
    var pin:[String] = []
    
    
   
    func MakechineseData(int: Int) -> String {
       chinese = ["爱","八","爸爸","杯子","北京","本","不","不客气","菜","茶","吃","出租车","打电话","大","的","点","电脑","电视","电影","东西","都","读","对不起","多","多少","儿子","二","饭馆","飞机","分钟","高兴","个","工作","狗","汉语","好","喝","和","很","后面","回","会","火车站","几","家","叫","今天","九","开","看","看见","块","来","老师","了","冷","里","零","六","妈妈","吗","买","猫","没","没关系","米饭","明天","名字","哪","哪儿","那","那儿","呢","能","你","年","女儿","朋友","漂亮","苹果","七","钱","前面","请","去","热","人","认识","日","三","商店","上","上午","少","谁","什么","十","时候","是","书","水","水果","睡觉","说话","四","岁","他","她","太","天气","听","同学","喂","我","我们","五","喜欢","下","下午","下雨","先生","现在","想","小","小姐","些","写","谢谢","星期","学生","学习","学校","一","衣服","医生","医院","椅子","有","月","在","再见","怎么","怎么样","这","这儿","中国","中午","住","桌子","字","昨天","做","坐"]
        return chinese[int]
    }
    
    func MakejapaneseData(int:Int) -> String {
        japanese = ["愛する","八","お父さん","コップ","北京","ノート","ではありません（否定）","どういたしまして","料理","お茶","食べる","タクシー","電話をする","大きい","の","点、時","パソコン","テレビ","映画","事、物","全て","読む","すみません","もっと","どの位","息子","二つ","レストラン","航空機","分","幸せ、嬉しい","個","仕事","犬","中国語","良い、とても","飲む","と","非常に","後ろ","帰る","できる","鉄道駅","どのくらい","家","呼ぶ","今日","九つ","開ける","見る","見かける","塊","来る","教師","過去形を表す","冷たい","〜の中","ゼロ","六","お母さん","疑問を表す","購入する","猫","ではない（過去形の否定）","気にしないで","米","明日","名前","どの、どんな","どこ","その","そこ","疑問を表す表現","できる","あなた","年","娘","友人","美しい","リンゴ","七","お金","前","してください","行く","熱い","人々","知っている","日","三つ","お店","上の","朝","少ない","誰","何","十","～の時","～である","本","水","果物","寝る","話す","四","歳","彼","彼女","かなり","天気","聞く","同級生","もしもし","私","私たち","五","好き","下","午後","雨が降る","〜さん","今","したい","小さな","若い女性","一部","書く","ありがとう","週","学生","勉強する","学校","1","服","医者","病院","椅子","持っている","月","どこどこで","さようなら","どのように","どうですか？","これ","ここに","中国","正午","住んでいる","机","字","昨日","する"]
        return japanese[int]
    }
    
    func PinIn(int: Int) -> String {
        pin = ["ài","bā","bàba","bēizi","běijīng","běn","bù","bù kèqì","cài","chá","chī","chūzū chē","dǎ diànhuà","dà","de","diǎn","diànnǎo","diànshì","diànyǐng","dōngxī","dōu","dú","duìbùqǐ","duō","duōshǎo","érzi","èr","fànguǎn","fēijī","fēnzhōng","gāoxìng","gè","gōngzuò","gǒu","hànyǔ","hǎo","hē","hé","hěn","hòumiàn","huí","huì","huǒchē zhàn","jǐ","jiā","jiào","jīntiān","jiǔ","kāi","kàn","kànjiàn","kuài","lái","lǎo shī","le","lěng","lǐ","líng","liù","māmā","ma","mǎi","māo","méi","méiguānxì","mǐfàn","míngtiān","míngzì","nǎ","nǎ'er","nà","nà'er","ne","néng","nǐ","nián","nǚ'ér","péngyǒu","piàoliang","píngguǒ","qī","qián","qiánmiàn","qǐng","qù","rè","rén","rènshì","rì","sān","shāngdiàn","shàng","shàngwǔ","shǎo","shéi","shénme","shí","shíhòu","shì","shū","shuǐ","shuǐguǒ","shuìjiào","shuōhuà","sì","suì","tā","tā","tài","tiānqì","tīng","tóngxué","wèi","wǒ","wǒmen","wǔ","xǐhuān","xià","xià wǔ","xià yǔ","xiānshēng","xiànzài","xiǎng","xiǎo","xiǎojiě","xiē","xiě","xièxiè","xīngqí","xuéshēng","xuéxí","xuéxiào","yī","yīfú","yīshēng","yīyuàn","yǐzi","yǒu","yuè","zài","zàijiàn","zěnme","zěnme yàng","zhè","zhè'er","zhōngguó","zhōngwǔ","zhù","zhuōzi","zì","zuótiān","zuò"]
        return pin[int]
    }
    
    func wordCount(int:Int) -> Int {
        randomInt = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,123,124,125,126,127,128,129,130,131,132,133,134,135,136,137,138,139,140,141,142,143,144,145,146,147,148,149,150,151,152]
        return randomInt[int]
    }
    
}

