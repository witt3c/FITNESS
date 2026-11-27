# MVP 0.6.2 安裝
1. 先於原網站設定匯出 JSON，確認雲端同步成功；保留 0.6.1 套件。
2. Supabase SQL Editor → New query → 貼上 coach_setup.sql 全文 → Run。若出錯停止，不要上傳網站。SQL 使用交易，原 fitness_state 不改動。
3. GitHub FITNESS 根目錄上傳 index.html、cloud.js、coach.html、coach-owner.js、coach-view.js、sw.js、BACKLOG.md、CHANGELOG.md。SQL 可留本機。Vercel 部署完成後重新整理。
4. 個人登入 → 設定與備份 → 教練查閱中心 → 建立帳號。帳號 3–32 英數底線，密碼至少10字元且最多72 bytes。勾選身體及營養權限。
5. 用另一個瀏覽器或無痕視窗開啟 /coach.html，登入測試；另一裝置同時登入。停用並儲存後，手動更新或等待約15秒；確認不能再查詢。重新啟用後須重新登入。
6. 測試兩項授權各自開關、重設密碼、刪除、原帳號同步。教練登入有效期8小時，重新載入頁面需重新登入。共用帳號不能分辨個別教練；撤銷無法收回已取得資料。
限制：尚未實際執行 Supabase SQL 或瀏覽器端到端測試；SQL 假設 pgcrypto 位於 extensions schema（Supabase 常見配置）。目前僅有單帳號登入失敗鎖定，非公開商用級全域限流。教練資料為最近已同步的完成紀錄，不含草稿及私人備註。
