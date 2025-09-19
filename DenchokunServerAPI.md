 1. ヘルスチェック

  - GET /v1/api/health

  2. 期間管理

  - GET /v1/api/periods
  - GET /v1/api/periodinfo/:period
  - POST /v1/api/periods
  - PUT /v1/api/periods/:period/dates
  - PUT /v1/api/periods/:period/name
  - POST /v1/api/periods/:period/connect

  3. 取引データ管理

  - POST /v1/api/deals（multipart/form-dataとJSON両対応）
  - GET /v1/api/deals

  4. プレビュー機能

  - GET /v1/api/deals/:period/:dealId/preview-link
  - GET /v1/api/preview/cache/stats
  - DELETE /v1/api/preview/cache

  5. ファイル管理

  - POST /v1/api/files
  - GET /v1/api/files/:fileId

  6. 取引先マスタ管理

  - GET /v1/api/deal-partners
  - POST /v1/api/deal-partners
  - PUT /v1/api/deal-partners/:name
  - DELETE /v1/api/deal-partners/:name

  7. システム情報

  - GET /v1/api/system
  - PUT /v1/api/system

  8. その他

  - POST /v1/api/query（SQLクエリ実行）

  ❌ 未実装（CLAUDE.mdで定義されているが未実装）

  取引データ管理

  - PUT /v1/api/deals/:dealId（ハンドラーは存在するが、ルートが未定義）
  - DELETE /v1/api/deals/:dealId（ハンドラーは存在するが、ルートが未定義）
  - GET /v1/api/deals/:dealId（個別取引取得、ハンドラーは存在するが未定義）

  期間管理

  - DELETE /v1/api/periods/:period（期間削除機能）