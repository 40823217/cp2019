// 定義一個 lb to kg function

// define a lb to kg function

// 每一個 Dart 程式都從 main() 開始執行
main() {
  // 宣告 len 整數變數, 準備設為各字串的長度
  int len;
  // 宣告 var 變數 type, 準備設為各字串最後一個字元, 可能為 lb 或 kg
  var type;
  // 宣告 var 變數 number, 準備設為各字串中的數字
  var number; 
  List temp =["25g","30l", "56l", "14g", "68l", "198g" ];
  // 利用重複迴圈, 逐一讀出各筆資料
  for (var data in temp) {
    //print(i);
    //print(i[2]);
    // https://api.dartlang.org/stable/2.6.1/dart-core/String/length.html
    len = data.length;
    // 取得各筆資料的最後兩個字元
    //print(data[len-1]);
    type = data[len-1];
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 type 變數資料型別為: ${type.runtimeType}");
    // 根據重量類別轉給對應函式進行溫重量轉換
    // https://api.dartlang.org/stable/2.6.1/dart-core/String/substring.html
    number = data.substring(0, len-1);
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 number 變數資料型別為: ${number.runtimeType}");
    // 由於取得的 number 為字串, 必須設法轉為數字
   // https://stackoverflow.com/questions/13167496/how-do-i-parse-a-string-into-a-number-with-dart
    number = int.parse(number);
    // https://api.dartlang.org/stable/2.6.1/dart-core/Object/runtimeType.html
    //print("目前 number 變數資料型別為: ${number.runtimeType}");
    // 之後就可以根據 type 與 number 執行各數列元素的重量轉換
    if (type =="g"){
      double type=number*2.20462262;
      print("kg:$number, =$type lb");
    }else{
      double type=number*0.45;
      print("lb:$number, =$type kg");
    }
      
  } // for
} // main