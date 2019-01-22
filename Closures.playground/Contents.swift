import UIKit

//Normal Closure
var closureName : (Int, Int) -> Int
closureName = {(a:Int, b:Int) -> Int in
    return a+b
}

closureName(1,2)

//Anonymous Closure
var closureAnonymous : (Int, Int) -> (Int)
closureAnonymous = {
    return $0 + $1
}
closureAnonymous(2,3)

var closureAnonymous2 : (Int, Int) -> Int =
    {
        return $0 + $1
}
closureAnonymous2(4,5)

//Closure as Constant
let closureConstant = {
    print("Hello")
}

closureConstant()

let closureConstantInt = {
    (a:Int,b:Int) -> Int in
    return a + b
}

closureConstantInt(10,20)

//Closure as parameter
func methodName(closure:(Int, Int) -> ()){
    closure(1,2)
}

methodName { (a:Int, b:Int) in
    print(a)
}

func fetchAPI(completion:(String?, String?) -> ()) {
    completion("Success", nil)
}

fetchAPI { (successBlock:String?, failBlock:String?) in
    guard let status = successBlock else {
        print("Fail")
        return
    }
    print(successBlock!)
}
