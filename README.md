# API設計

### エンドポイント：  GET /api/todos
* リクエストライン：　GET /api/todos
* リクエストボディ：　なし
* リクエストの例：　GET /api/todos
* レスポンス：　TODOの一覧のJSON
* レスポンスの例：　
```json
{
    "todos": [
        {
            "id": 1,
            "title": "寝る",
            "created_at": "2024-02-21T15:41:19.711Z",
            "updated_at": "2024-02-21T15:41:19.711Z"
        },
        {
            "id": 2,
            "title": "起きる",
            "created_at": "2024-02-21T15:41:19.728Z",
            "updated_at": "2024-02-21T15:41:19.728Z"
        },
        {
            "id": 3,
            "title": "顔を洗う",
            "created_at": "2024-02-21T15:41:19.739Z",
            "updated_at": "2024-02-24T13:31:03.728Z"
        },
        {
            "id": 9,
            "title": "風呂に入る",
            "created_at": "2024-02-24T13:31:09.453Z",
            "updated_at": "2024-02-24T13:31:09.453Z"
        }
    ]
}
```
* エラーレスポンス：　なし
* エラーレスポンスの例：　



### エンドポイント：  POST /api/todos
* リクエストライン：　POST /api/todos
* リクエストボディ：
```json
{
  "todo": {
    "title": "音楽を聞く"
  }
}
```
* リクエストの例：　POST /api/todos
* レスポンス：　作成されたTODOを含むJSON
* レスポンスの例：
```json
{
    "todo": {
        "id": 10,
        "title": "音楽を聞く",
        "created_at": "2024-02-26T18:12:53.795Z",
        "updated_at": "2024-02-26T18:12:53.795Z"
    }
}
```
* エラーレスポンス：　
* エラーレスポンスの例：　

### エンドポイント：　PUT /api/todos/:id
* リクエストライン：　PUT /api/todos/:id
* リクエストボディ：　
```json
{
  "todo": {
    "title": "イヤホンをつける"
  }
}
```
* リクエストの例：　PUT /api/todos/10
* レスポンス：　作成されたTODOを含むJSON
* レスポンスの例：
```json
{
    "todo": {
        "title": "イヤホンをつける",
        "id": 10,
        "created_at": "2024-02-26T18:12:53.795Z",
        "updated_at": "2024-02-26T18:21:48.569Z"
    }
}
```
* エラーレスポンス：　
* エラーレスポンスの例：　

### エンドポイント：  DELETE /api/todos/:id
* リクエストライン：　DELETE /api/todos/:id
* リクエストボディ：　なし
* リクエストの例：　DELETE /api/todos/10
* レスポンス：　なし
* レスポンスの例：
* エラーレスポンス：　なし
* エラーレスポンスの例：　