# 👕 自動點擊換裝系統 (Interactive Clothing Changer)

這是一款為 Roblox 開發的即時互動換裝組件。玩家只需在遊戲中點擊指定的物件（如衣櫃、人型模特兒），系統便會自動為其角色穿上預設的上衣與褲子，並支援自動覆蓋現有服裝或動態生成新服裝物件。

## ✨ 技術亮點

- **實時互動偵測**：整合 `ClickDetector` 事件，實現直觀的物理空間交互，增強遊戲場景的沉浸感。
- **動態實例處理 (Dynamic Instance Handling)**：腳本會自動檢查玩家角色 (Character) 是否已具備 `Shirt` 或 `Pants` 物件。若無，則使用 `Instance.new` 即時生成，確保換裝邏輯在任何初始裝備狀態下均能穩定運作。
- **異步角色載入處理**：運用 `player.CharacterAdded:Wait()` 邏輯，優化了角色尚未完全加載時的處理流程，防止腳本因空值 (nil) 而崩潰。
- **配置化資源管理**：將服裝的 Asset ID 提取為頂層變數，方便開發者快速更換制服樣式，具備高度的靈活性與可維護性。
- **物件導向操作**：透過 `FindFirstChildOfClass` 精確搜尋物件類型，展現了對 Roblox 類別體系 (Class Hierarchy) 的熟練運用。

## 🛠️ 開發環境與 API

- **開發平台**：Roblox Studio
- **腳本類型**：Server Script (伺服器端腳本)
- **核心技術**：`ClickDetector`, `ShirtTemplate`, `PantsTemplate`, `Instance.new`

## 📂 檔案結構
- `Server/ClothingChanger.lua`: 負責監聽點擊事件與玩家服裝實例的動態修改。

## 📝 備審展示說明
本專案展示了開發者在 **環境交互 (Environment Interaction)** 與 **角色屬性動態修改** 上的實作技巧。透過精簡且強健的邏輯，實現了流暢的換裝體驗。這類系統是開發 Roleplay (RP) 類遊戲、制服模擬或角色自定義系統的核心模組。

---
*註：展示代碼中的 Asset ID 僅供參考，實際應用時需替換為您擁有的服裝資產編號。*
