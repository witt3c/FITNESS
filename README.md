# FITNESS V3.1 MVP 0.2

本機版：逐組訓練、週課表、月曆、飲食手動輸入、歷史與 JSON 備份。月曆綠框依已儲存完成且至少一組勾選判定。肌群採名稱規則辨識，可手動修正。資料不跨裝置同步。

部署：將本資料夾內所有檔案上傳至獨立 GitHub repository，於 Vercel Import Project 選 Other，無 build command，輸出根目錄；或使用 GitHub Pages main/root。HTTPS 下提供 PWA manifest 與 service worker。

尚未連接 Supabase、Google Calendar、OpenAI API；AI 課表審核尚未實作。勿在前端放置秘密金鑰。舊版同網址 localStorage 可沿用；跨網址請先匯出再匯入。
