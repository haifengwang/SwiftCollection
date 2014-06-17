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

var atuples=(22)







