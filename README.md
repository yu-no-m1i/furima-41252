# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
|nickname |string |null: false|
| email | string | null: false, unique: true |
|encrypted_password |string |null: false|

|family_name |string |null: false|
|first_name |string |null: false|
|family_name_kana |string |null: false|
|first_name_kana| string |null: false|
|birth_day| date| null: false|

### Association
* has_many :products
* has_many :orders
* 

## buyers table
| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
|post_code	|string	|null: false|
|city	|string	|null: false|
|address|	string	|null: false|
|building_name	|string	|
|phone_number	|string	| null: false|
| prefecture_id |integer| null: false |
| user      | references | null: false, foreign_key: true |
| product   | references | null: false, foreign_key: true |


### Association

- has_many :products

## products table
| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| name |string |null: false |
| price |integer |null: false |
| description |text |null: false |
| shipping_cost |integer	|null: false |
| shipping_days |integer	|null: false |
| prefecture_id |integer|
| brand_id |references |null: false, foreign_key: true |
| shipping_id |references |null: false, foreign_key: true |
| user |references |null: false, foreign_key: true |

### Association

- belongs_to :user
* has_one :history

## history table
| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user |references |null: false, foreign_key: true |
| shippng_id |references |null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :shipping