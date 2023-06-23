## usersテーブル

| Column              | Type   | Options                   |
| ------------------- | ------ | ------------------------- |
| nickname            | string | null: false               |
| email               | string | null: false, unique: true |
| encrypted_password  | string | null: false               |

### Association
- has_many :posts


## fight テーブル

| Column         | Type        | Options                        |
| -------------- | ----------- | -------------------------------|
| title          | string      | null: false                    |
| unit           | text        | null: false                    |
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
| image          | text        | null: false                    |
| fight          | references  | null: false, foreign_key: true |

### Association
- belongs_to :fight

## progress テーブル

| Column         | Type        | Options                        |
| -------------- | ----------- | -------------------------------|
| conduct        | string      | null: false                    |
| fight          | references  | null: false, foreign_key: true |

### Association
- belongs_to :fight