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


#テーブル設計

## users テーブル

| Column             | Type        | Options                         |
| --------           | ----------- | ------------------------------- |
| nickname           | string      | null: false                     |
| email              | string      | null: false unique: true        |
| encrypted_password | string      | null: false                     |

### Association

- has_many :simples
- has_many :comments

## simples テーブル

| Column    | Type        | Options                         |
| --------  | ----------- | ------------------------------- |
| title     | string      | null: false                     |
|sentense   | text        | null: false                     |
|category_id| integer     | null: false                     |
| user      | references  | null: false, foreign_key: true  |
| comment   | references  | null: false, foreign_key: true  |



### Association

- belongs_to :user
- has_many   :comment



## comments テーブル

| Column      | Type        | Options                         |
| --------    | ----------- | ------------------------------- |
| user        | references  | null: false, foreign_key: true  |
|simple       | references  | null: false, foreign_key: true  |

### Association

- has one :user
- has one :simple

