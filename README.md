# FITNESS V3.1 MVP 0.3 Cloud
1. 在 Supabase SQL Editor 執行 setup.sql。
2. Authentication URL Configuration 設定 Site URL 為 https://fitness-gamma-fawn.vercel.app，並加入同一網址的 redirect URL。
3. 將 index.html、cloud.js、sw.js、manifest.webmanifest、兩張 icon 上傳到原 GitHub 根目錄。等待 Vercel 自動部署。
4. 在設定與備份註冊、驗證信箱、登入。新帳號可選擇移轉本機訪客資料。先匯出 JSON 備份。
5. 在另一裝置登入確認資料；若同時修改造成版本衝突，先匯出備份，再下載雲端版本。此版不自動合併衝突。
資料以每帳號一筆 JSON 快照儲存，RLS 限制本人讀寫。未實作 AI、Google Calendar、即時推播或完整離線登入；離線修改已登入帳號的資料可暫存，重新連線後嘗試同步。尚未實際連線驗收。
