import UIKit
//可変変数の宣言
var str = "Hello, playground"
//コメントの書き方
/* ここも
　　コメント
   です*/
 
// 四則演算
1+2 //足し算
1-2 //引き算
1*2 //掛け算
1/2 //割算
1%2 //余り算

//文字列の扱い
"こんにちは"
"鎌田、"+"行きまーす"
//実行結果に出力
print("鎌田、"+"行きまーす")

//変数
var STR_1:String = "鎌田、"+"行きまーす"
//変数の内容を変更する
STR_1 = "鎌田、"+"ヤッホー"
print(STR_1)

//定数
let STR_2:String = "鎌田、"+"行きまーす"
print(STR_2)
//定数なので書き換えは出来ない

//定数と変数の組み合わせ
var VALUE_3:Int = 1 //数字
let STR_VALUE_3 = String(VALUE_3) //数字を文字に変換する
//変数の整数
var VALUE_4:Int = 2 //数字のまま
//定数の宣言
let STR_3 = "ゴリラ" //定数
let STR_4 = "ライオン"
//print文で出力
print(STR_3+STR_VALUE_3+","+STR_4) //数字型のままではエラーになる
//変数を直接出す場合、定数（STR_4）の埋め込みが出来ない↓
var STR_5 = STR_3+STR_VALUE_3+","+"ライオン\(VALUE_4)"  //STR_5の文字列型に格納する事で変換（数字→文字）をする
//var STR_5 = STR_3+STR_VALUE_3+","+STR_4+VALUE_4   //エラーになるパターン
print(STR_5)
//以下定数の範囲
var VALUE_5:Int = Int.min
var VALUE_6:Int = Int.max
var VALUE_7:Int8 = Int8.min
var VALUE_8:Int8 = Int8.max
var VALUE_9:Int16 = Int16.min
var VALUE_10:Int16 = Int16.max
var VALUE_11:Int32 = Int32.min
var VALUE_12:Int32 = Int32.max
var VALUE_13:Int64 = Int64.min
var VALUE_14:Int64 = Int64.max

var VALUE_15:UInt = UInt.max
var VALUE_16:UInt = UInt.min
var VALUE_17:UInt8 = UInt8.max
var VALUE_18:UInt8 = UInt8.max
var VALUE_19:UInt16 = UInt16.min
var VALUE_20:UInt16 = UInt16.max
var VALUE_21:UInt32 = UInt32.min
var VALUE_22:UInt32 = UInt32.max
var VALUE_23:UInt64 = UInt64.max
var VALUE_24:UInt64 = UInt64.min

var VALUE_25:Float = 24.56
var VALUE_26:Float = -24.56
var VALUE_27:Double = 123.56
var VALUE_28:Double = -123.56

//整数型にひ浮動小数点型を格納出来ない為。型の変更をする
let VALUE_29 = 5
let VALUE_30 = 0.123
var pi = Double(VALUE_29) + VALUE_30    //浮動小数点型←整数型
var VALUE_31 = Int(pi)                  //整数型←浮動小数点型

//配列はvar型（ミュータブル）で宣言するとappendで追加ができる
var ARRAY_1:[String] = [String]()
ARRAY_1.append("かまた")
ARRAY_1.append("ひろゆき")
print(ARRAY_1)
//配列をlet型（イミュータブル）で宣言をすると変更が追加、変更が出来ない
let ARRAY_2 = ["kamata","hiroyuki","かまた","ひろゆき"]
let FIRST = ARRAY_2[0]
let SCOND = ARRAY_2[1]
let THIRD = ARRAY_2[2]
let FORER = ARRAY_2[3]
print(ARRAY_2[0],ARRAY_2[1])

//配列の種類にはじ辞書型（キー、値）がある
//可変型（ミュータブル）で追加ができる
var DICS_1:[String:String] = [String:String]()  //左辺（キー）と右辺（値）は同じ型であること
DICS_1["りんご"] = String(1)   //整数を文字に置き換えて格納する
DICS_1["ミカン"] = String(2)
//print(DICS_1[0])  //個別に取り出せない
print(DICS_1)   //辞書型だと個別に取り出して使えない
//不変型（イミュータブル）では変更が出来ないが高速で動作する
let DICS_2:[String:String] = ["りんご":"１","ミカン":"２"]
print(DICS_2)

//optional型はnullを文字列をして表現する
var VALUE_40 : String?     //Optinal型（null）を文字列型で表す
VALUE_40 = "こんにちは"      //値"こんにちは"を設定
print(VALUE_40)            //optional型で出力される（警告）
if let VALUE_40 = VALUE_40 {    //アンラップ処理
    print(VALUE_40)        //アンラップ後、"こんにちは"という値が処理される
}
//アンラップ前の変数が利用できる
//if let _ = VALUE_40 {           //アンラップ前の変数を使用を使用する場合（警告）
if let unrappedValue = VALUE_40 {           //アンラップ前の変数を使用する場合（警告）
    print(VALUE_40)        //アンラップ後、"こんにちは"という値が処理される（警告）
}
