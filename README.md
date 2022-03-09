# AppleProduct-JsonConverter
指定されたApple製品の製品情報を[Apple(日本)](https://www.apple.com/jp/)から取得してJSON化します
### 入力
```
let url = URL(string: "https://www.apple.com/jp/shop/product-locator-meta?family=iphone13")!
```
### 出力
```
[
  {
    "name": "iPhone 13 mini",
    "color": [
      {
        "name": "(PRODUCT)RED",
        "storage": [
          {
            "128GB": "MLJG3J/A"
          },
          {
            "256GB": "MLJM3J/A"
          },
          {
            "512GB": "MLJW3J/A"
          }
        ]
      },
      {
        "name": "ミッドナイト",
        "storage": [
          {
            "128GB": "MLJC3J/A"
          },
          {
            "256GB": "MLJJ3J/A"
          },
          {
            "512GB": "MLJP3J/A"
          }
        ]
      },
      {
        "name": "ブルー",
        "storage": [
          {
            "128GB": "MLJH3J/A"
          },
          {
            "256GB": "MLJN3J/A"
          },
          {
            "512GB": "MLJY3J/A"
          }
        ]
      },
      {
        "name": "スターライト",
        "storage": [
          {
            "128GB": "MLJE3J/A"
          },
          {
            "256GB": "MLJK3J/A"
          },
          {
            "512GB": "MLJR3J/A"
          }
        ]
      },
      {
        "name": "ピンク",
        "storage": [
          {
            "128GB": "MLJF3J/A"
          },
          {
            "256GB": "MLJL3J/A"
          },
          {
            "512GB": "MLJU3J/A"
          }
        ]
      }
    ]
  },
  {
    "name": "iPhone 13 mini",
    "color": [
      {
        "name": "グリーン",
        "storage": [
          {
            "128GB": "MNFC3J/A"
          },
          {
            "256GB": "MNFD3J/A"
          },
          {
            "512GB": "MNFE3J/A"
          }
        ]
      }
    ]
  },
  {
    "name": "iPhone 13",
    "color": [
      {
        "name": "スターライト",
        "storage": [
          {
            "128GB": "MLND3J/A"
          },
          {
            "256GB": "MLNJ3J/A"
          },
          {
            "512GB": "MLNP3J/A"
          }
        ]
      },
      {
        "name": "ブルー",
        "storage": [
          {
            "128GB": "MLNG3J/A"
          },
          {
            "256GB": "MLNM3J/A"
          },
          {
            "512GB": "MLNT3J/A"
          }
        ]
      },
      {
        "name": "(PRODUCT)RED",
        "storage": [
          {
            "128GB": "MLNF3J/A"
          },
          {
            "256GB": "MLNL3J/A"
          },
          {
            "512GB": "MLNR3J/A"
          }
        ]
      },
      {
        "name": "ミッドナイト",
        "storage": [
          {
            "128GB": "MLNC3J/A"
          },
          {
            "256GB": "MLNH3J/A"
          },
          {
            "512GB": "MLNN3J/A"
          }
        ]
      },
      {
        "name": "ピンク",
        "storage": [
          {
            "128GB": "MLNE3J/A"
          },
          {
            "256GB": "MLNK3J/A"
          },
          {
            "512GB": "MLNQ3J/A"
          }
        ]
      }
    ]
  },
  {
    "name": "iPhone 13",
    "color": [
      {
        "name": "グリーン",
        "storage": [
          {
            "128GB": "MNGG3J/A"
          },
          {
            "256GB": "MNGH3J/A"
          },
          {
            "512GB": "MNGJ3J/A"
          }
        ]
      }
    ]
  }
]
```
