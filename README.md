### 使用方法 Instructions
*  打開APP 
*  點選分享位置
*  稍等一下即可獲得天氣資訊 以及適合這種天氣的穿搭指南！
*  Open the APP
*  Share your location
*  Wait a moment to get weather information and a guide on what to wear for this kind of weather!

### 系統架構 System Structure

![flow chart](https://hackmd.io/_uploads/S17rG6agA.png)

程式進入點為 WelcomeView，在此取得使用者的位置資訊(內建模組) 接著進入 ContentView 取得天氣資訊 (OpenWeather API) 最後將資訊送進 WeatherView 作展示

The entry point of the program is the WelcomeView, where the user's location information is obtained using the built-in module. Then, it proceeds to the ContentView to retrieve weather information from the OpenWeather API. Finally, the information is sent to the WeatherView for display.

### 現有功能 Existing features

取得使用者當前位置
回傳 最低溫度、最高溫度、體感溫度、濕度 等天氣因子
依照天氣回傳穿搭指南 (以照片呈現)

Obtain the user's current location, return weather factors such as minimum temperature, maximum temperature, feels-like temperature, humidity, and other weather factors, and provide outfit recommendations based on the weather conditions (presented with photos).

### 未來規劃 Future Plan

**1. 穿搭指南**

會有這個想法是因為很常聽到有人批評台灣人的穿搭，不過台灣天氣太熱了，確實很難完全仿照日韓的風格，天氣是劣勢也可以變成特色，或許可以採納時尚達人的建議給穿搭新手一點參考，也可以發展成商業模式

The idea stems from frequent criticism of Taiwanese fashion, often compared unfavorably to Japanese or Korean styles. However, Taiwan's hot weather makes it challenging to fully adopt those trends. Yet, this weather disadvantage could be turned into a unique feature. By incorporating fashion experts' advice to provide outfit suggestions, especially for fashion novices, this concept could evolve into a viable business model.

**2. 冷氣店**

我喜歡的美食系 Youtuber 有一系列的影片主題叫做冷氣店，他們會向觀眾募集冷氣很強的小吃店，然後在炎炎夏日到冷氣店評比美食。每個人對於吃的要求不一樣，有些人特別重視食物的美味程度、有人重視價格、有人在意周遭環境，環境又容易受天氣影響，或許未來能結合地圖功能，向使用者募集他們心中環境特別有優勢的店家 (比如夏季提供冷氣店，雨天提供好停車的店)，增加 APP 的互動性。

The food-focused YouTube channel I enjoy has a series called "Air-Conditioned Eateries," where they solicit recommendations from viewers for eateries with strong air conditioning. Then, during the hot summer days, they visit these air-conditioned eateries to review the food. Everyone has different preferences when it comes to dining out - some prioritize food quality, others focus on price, while some care about the ambiance. Since the environment is often influenced by weather conditions, perhaps in the future, they could integrate a map feature into their app to gather recommendations from users for eateries with specific advantages (such as air-conditioned spots in the summer or places with good parking on rainy days), thus enhancing the app's interactivity.

### 開發日誌 Development log
[開發日誌](https://hackmd.io/@uVhtUTK6TxOhAlg5ZeBGKg/rkF_t6pe0)
