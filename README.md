# README

## users table
| Column              | Type    | Options                   |
| ------------------- | ------- | ------------------------- |
| name                | string  | null: false               |
| encrypted_password  | string  | null: false               |
### Association
- has_many :profiles
- has_many :records

## profiles table
| Column              | Type        | Options                   |
| ------------------- | ----------- | ------------------------- |
| patient             | string      | null: false               |
| barth               | date        | null: false               |
| gender_id           | integer     | null: false               |
| blood_type          | string      | null: false               |
| work                | string      | null: false               |
| family              | string      | null: false               |
| phone               | string      | null: false               |
| user                | references  | null: false, foreign_key  |
| record              | references  | null: false, foreign_key  |
### Association
- belong_to :user
- has_many :records
- has_one_attached :image

## records table
| Column              | Type        | Options                   |
| ------------------- | ----------- | ------------------------- |
| date                | date        | null: false               |
| text                | text        | null: false               |
| category            | integer     | null: false               |
| user                | references  | null: false, foreign_key  |
### Association
- belong_to :user
- belong_to :profile