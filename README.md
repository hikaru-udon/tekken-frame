# README

# characters
| Column  | Type       | Option                         |
| ------- | ---------- | ------------------------------ |
| name    | string     | null: false                    |

## association
has_many :moves


# moves
| Column     | Type       | Option                         |
| ---------- | ---------- | ------------------------------ |
| move_name  | string     |                                |
| command    | text       |                                |
| hitbox     | string     |                                |
| damage     | integer    |                                |
| effect     | text       |                                |
| startup    | string     |                                |
| block      | string     |                                |
| hit        | string     |                                |
| counter    | string     |                                |
| character  | references | null: false, foreign_key: true |

## association
belongs_to :character