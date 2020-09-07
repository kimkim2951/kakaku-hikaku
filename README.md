# README

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nick_name|string|null: false, unique: true|
|email|string|null: false, unique: true|
|password|string|null: false|
### Association
- has_many :stores

## storesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|references|null: false, foreign_key: true|
|name|string|null: false|
|store_type|integer|null: false|
|address|string|null: false|
|prefecture|integer|null: false|
|city|string|null: false|
|village|string||
|business_hours|string|null: false|
|rest_day|integer|null: false|
### Association
- has_many :items
- belongs_to :user

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|store_id|references|null: false, foreign_key: true|
|name|string|null: false|
|item_type|integer|null: false|
|price|integer|null: false|
|post_data|date|null: false|
|leaflet_image|string||
### Association
- belongs_to :store