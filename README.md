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

|introduction |text |null: |
|family_name |string |null: false|
|first_name |string |null: false|
|family_name_kana |string |null: false|
|first_name_kana| string |null: false|
|birth_day| date| null: false|

### Association

* has_many :products dependent: :destroy
* belongs_to :buyer dependent: :destroy
* belongs_to :card dependent: :destroy

## buyer table
| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
|user_id	|references	|null: false|
|post_code	|string	|null: false|
|prefecture	|string	|null: false|
|city	|string	|null: false|
|address|	string	|null: false|
|building_name	|string	|
|phone_number	|string	| null: false|
| prefecture_id |string	null: false |



### Association

- has_many :products

## product table
| Column                              | Type       | Options                        |
|-------------------------------------|------------|--------------------------------|
| name |string |null: false |
| price |integer |null: false |
| description |text |null: false |
| status |string |null: false |
| size |string |null: false |
| shipping_cost |string	null: false |
| shipping_days |string	null: false |
| prefecture_id |string	null: false |
| judgment |string |
| category_id |integer |null: false, foreign_key: true |
| brand_id |integer |null: false, foreign_key: true |
| shipping_id |integer |null: false, foreign_key: true |
| user_id |integer |null: false, foreign_key: true |

### Association

- belongs_to :user dependent: :destroy



### Association
- belongs_to :product

## brand table
| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| name     | string       | index: true                    |

### Association
- has_many :products