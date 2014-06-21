//
//  main.swift
//  SwiftCollection
//
//  Created by onskyline on 14-6-14.
//  Copyright (c) 2014年 onskyline. All rights reserved.
//

import Foundation

//println("Hello, World!")

//数组的定义
let array=["apple","banana","pear","peach"];

//带类型的定义

var shoppingList:String[]=["apple","banana","pear","peach"];

var emptyArray:Int[]=[];
var someInt=Int[]();

//判断数组是否为空
if emptyArray.isEmpty {
    println("emptyArray is Empty")
}

if emptyArray.count==0 {
    println("emptyArray is Null")
}


//空数组

//访问

println(array[0])

println(shoppingList[1])

//遍历数组,可以用for... in的方式

for fruit in array{
    println(fruit)
}

//查看数组的长度

println("数组的长度是:\(array.count)");

//数组添加内容

//array.append("Flour");

println("shoppingList的长度",shoppingList.count)
shoppingList.append("Flour");

println("shoppingList的长度",shoppingList.count)




//用追加的方式给数组赋值
shoppingList+="strawberry"

shoppingList += ["Chocolate Spread", "Cheese", "Butter"]

//在制定位置插入元素
shoppingList.insert("tomato",atIndex:1)

shoppingList[4...6] = ["Four", "Five"]


//插入后的遍历
println("插入后的遍历")
for d in shoppingList{
    println(d)
}

//删除一个元素
shoppingList.removeAtIndex(4);
println("shoppingList 的 长度是", shoppingList.count)
for d in shoppingList{
    println(d)
}


for (index,v) in enumerate(shoppingList){
    println("索引:\(index),值：\(v)")
}

println("通过普通循环遍历 ")
for(var i=0; i<shoppingList.count;i++){
    shoppingList[4]="栗子"
    println("索引：\(i) 值：\(shoppingList[i])")
}

var threeDoubles = Double[](count: 3, repeatedValue: 0.0)

for t in threeDoubles{
    println(t)
}

var anotherAarry=Array(count:3,repeatedValue:3.5)

for t in anotherAarry{
    println(t)
}

//集合字典部分：

var airports:Dictionary<String,String>= ["TYO": "Tokyo", "DUB": "Dublin"]

println(airports)

//通过 count 获取字典包含的元素个数

println("airports count=\(airports.count)")

//字典的访问，和其他语言没有多少区别
//println(airports["TYO"])

//修改,找到对于的键，重新复制

airports["TYO"]="DaBan"

//新增项目
airports["RMB"]="Shanghai"

//修改项的值,如果是新增返回nil,如果是修改返回被修改的值
var ds=airports.updateValue("Beijing",forKey:"CHR")
var ty=airports.updateValue("Tokyo",forKey:"TYO")
println(ty)
//删除一个项
airports["CHR"]=nil

//删除一项，返回被移除项的值
var df=airports.removeValueForKey("TYO")
println(df)

println("迭代字典")
//迭代字典
for (k, v) in airports {
    println("\(k): \(v)")
}

//遍历key
for k in airports.keys{
    println(k)
}

//遍历value
for v in airports.values{
    println(v)
}

println(airports)

//通过 Array利用字典的键值，转换为一个新的数组
let airCode=Array(airports.keys)

println(airCode)

//申明一个不可变的字典
let constantDc:Dictionary<Int,String>=[1:"One",2:"Two",3:"Three"];
//这个是没法编译通过的
//constantDc[4]="Four"
//是否可以修改其中的值呢？
//constantDc[1]="Zero";
println(constantDc[1])












