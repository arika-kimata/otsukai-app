# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages
- has_many :lists,
- has_many :user_groups
- has_many :groups, through: user_groups
- has_many :tag_users
- has_many :tags, through: tag_users

## rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages
- has_many :room_lists
- has_many :lists, through: room_lists

## room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |
| image   | string     | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

## tags テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| details  | string | null: false |
| image    | string | null: false |

### Association
- has_many :tag_lists
- has_many :lists, through: tag_lists
- has_many :tag_users
- has_many :user, tag_users

## lists テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |
| image  | string | null: false |

### Association
- has_many :tag_lists
- has_many :tag, through: tag_lists
- has_many :room_lists
- has_many :room, through: room_lists

## tag_lists テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| tag    | references | null: false, foreign_key: true |
| list   | references | null: false, foreign_key: true |

### Association
- belongs :list
- belongs :tag

## room_list テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| room    | references | null: false, foreign_key: true |
| list    | references | null: false, foreign_key: true |

### Association
- belongs :room
- belongs :list

## groups テーブル

| Column  | Type       | Options     |
| ------- | ---------- | ----------- |
| name    | string     | null: false |

### Association

- has_many :user_groups
- has_many :user, through: user_groups

## user_groups テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :group


## user_tags テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| user    | references | null: false, foreign_key: true |
| tag     | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :tag

