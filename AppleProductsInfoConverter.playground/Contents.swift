import UIKit

struct Products{
    let name : String
    let partNumber: String
    let storage: String
    let color: String
}

struct Output:Codable{
    let name: String
    let color : [ColorInfo]
    struct ColorInfo:Codable{
        let name:String
        let storage:[[String:String]]
    }
}
let storageList = ["1GB","2GB","4GB","8GB","16GB","32GB","64GB","128GB","256GB","512GB","1TB","2TB","4TB","8TB","16TB","32TB"]
let url = URL(string: "https://www.apple.com/jp/shop/product-locator-meta?family=iphone13")!  //ここにURLを貼る
var request = URLRequest(url: url)
let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
    guard let data = data else { return }
    do {
        let topObject = try JSONSerialization.jsonObject(with: data, options: [])  as! [String: Any]
        let object = (((topObject["body"] as! [String: Any])["productLocatorOverlayData"] as! [String: Any])["productLocatorMeta"] as![String: Any])["products"] as! [[String: String]]
        let products = object.map({
            Products(name: $0["productTitle"]!.components(separatedBy: " "+$0["dimensionCapacity"]!.uppercased())[0], partNumber: $0["partNumber"]!,storage: $0["dimensionCapacity"]!.uppercased(), color: $0["productTitle"]!.components(separatedBy: " ").last!)
        })
        var content3 = [Output]()
        unique(products.map({$0.name})).forEach{ name in
            var content2 = [Output.ColorInfo]()
            let filterbyName = products.filter({$0.name == name})
            unique(filterbyName.map({$0.color})).forEach{ color in
                var content = [[String: String]]()
                var filterbyColor = filterbyName.filter({$0.color == color})
                filterbyColor.sort{storageList.firstIndex(of: $0.storage)! < storageList.firstIndex(of: $1.storage)!}
                unique(filterbyColor.map({$0.storage})).forEach{ storage in
                    content.append(contentsOf: filterbyColor.filter({$0.storage == storage}).map({[$0.storage : $0.partNumber]}))
                }
                content2.append(Output.ColorInfo(name: color,storage:content))
            }
            content3.append(Output(name: name, color: content2))
        }
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(content3)
            let jsonstr:String = String(data: data, encoding: .utf8)!
            print(jsonstr)
        } catch {
            print(error.localizedDescription)
        }
        func unique(_ array: [String]) -> [String]{
            let orderedSet:NSOrderedSet = NSOrderedSet(array: array)
            return orderedSet.array as! [String]
        }
    } catch let error {
        print(error)
    }
}
task.resume()
