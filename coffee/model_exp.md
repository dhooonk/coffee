- User ( devise )

  devise 기본세팅

  |      |      |      |
  | ---- | ---- | ---- |
  |      |      |      |

- Ingredient ( 재료 선택 )
  케냐AA, 예가체프, 저지방우유, 초코생크림 등등...

  | name | category | price   | comment |
  | ---- | -------- | ------- | ------- |
  | text | text     | integer | text    |

- Recipe ( 선택한 재료 취합 )
  무슨 상품에는 어떤재료가 몇개가 있고 그래서 그것의 가격이 얼마다.

  | ingredient_id | product_id | quantity | price                |
  | ------------- | ---------- | -------- | -------------------- |
  |               |            | integer  | 수량 * ingredient 의 가격 |

- Product ( 상품을 만듦 )
  어떤 유저가 상품을 직접 만듦. 주문이 되면 confirm이 true가 되고 주문화면에 나타나지 않음. 
  추가로 만들었던 상품을 재주문 할 경우를 위해 confirm을 남김

  | name | comment | price                          | user_id | confirm  |
  | ---- | ------- | ------------------------------ | ------- | -------- |
  | text | text    | integer (하위 레시피의 가격을 다 더한 총가격) | 누가만들었고  | 주문이 되었는지 |

- Order_list ( 주문할 상품을 취합 )
  한 주문에 여러 상품이 들어감. 주문자가 누군지 알기 위해 user 정보를 기입

  | order_id | product_id | user_id |
  | -------- | ---------- | ------- |
  |          |            |         |

- Order ( 주문 )
  실제주문임. 상품의 총 가격을 더해 price로 기입

  | Order_id | user_id | price    |
  | -------- | ------- | -------- |
  |          |         | 상품의 총 가격 |