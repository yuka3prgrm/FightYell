## usersテーブル

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |
| first_name          | string | null: false               |
| last_name           | string | null: false               |

### Association
- has_many :fights


## fight テーブル

| Column         | Type        | Options                        |
| -------------- | ----------- | -------------------------------|
| title          | string      | null: false                    |
| unit_id        | integer     | null: false                    |
| gool           | integer     | null: false                    |
| user           | references  | null: false, foreign_key: true |

### Association
- belongs_to :user
- has_one :message
- has_one :progress

## message テーブル

| Column         | Type        | Options                        |
| -------------- | ----------- | -------------------------------|
| content        | string      | null: false                    |
| fight          | references  | null: false, foreign_key: true |

### Association
- belongs_to :fight
- has_one_attached :image

## progress テーブル

| Column         | Type        | Options                        |
| -------------- | ----------- | -------------------------------|
| conduct        | string      | null: false                    |
| fight          | references  | null: false, foreign_key: true |

### Association
- belongs_to :fight