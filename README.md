---
version: 1.0
---
# 寄り道レーダー

「いつもの道に、新しい発見を。」

寄り道レーダーは、あなたの日常に「寄り道」というスパイスを加え、移動時間をより楽しく、価値あるものに変えるためのアプリケーションです。

## 概要

目的地までの移動中、ふと「どこか面白い場所に立ち寄れないかな？」と思ったことはありませんか？
このアプリは、そんなあなたの好奇心を満たすための最高のパートナーです。

現在地から目的地までのルート上やその周辺にある、まだ知らない素敵なお店や面白いスポットをレーダーで探し出し、新しい発見へと導きます。

## ✨ 主な機能 (Features)

*   **周辺スポット検索**: 現在地や指定した場所の周りにある様々なジャンルのスポット（カフェ、公園、雑貨屋など）を検索します。
*   **寄り道レーダー**: まるで宝探しのように、周辺の魅力的なスポットをレーダー形式で表示します。
*   **ルート案内**: 具体的なルートはありません。向きや直線距離だけ表示されています。
*   **お気に入り＆履歴**: 気になった場所や訪れた場所を記録し、自分だけの寄り道マップを作成できます。

## 🛠️ 開発 (Development)

### セットアップ

1.  [Flutter](https://flutter.dev/docs/get-started/install) をインストールします。
2.  このリポジトリをクローンします。
    ```bash
    git clone https://github.com/your-username/yorimichi_radar.git
    cd yorimichi_radar
    ```
3.  依存パッケージをインストールします。
    ```bash
    flutter pub get
    ```

### 実行

以下のコマンドでアプリを実行します。

```bash
flutter run
```

### ビルド

以下のコマンドで各プラットフォーム向けのアプリをビルドします。

*   **Android**
    ```bash
    flutter build apk --release
    # または
    flutter build appbundle --release
    ```
*   **iOS**
    ```bash
    flutter build ios --release
    ```

## 📦 主要なパッケージ (Main Packages)

本アプリケーションは、以下の主要なパッケージを利用して開発されています。

*   [flutter_hooks](https://pub.dev/packages/flutter_hooks) & [hooks_riverpod](https://pub.dev/packages/hooks_riverpod): 状態管理
*   [flutter_map](https://pub.dev/packages/flutter_map): 地図表示
*   [geolocator](https://pub.dev/packages/geolocator): 位置情報取得
*   [flutter_compass](https://pub.dev/packages/flutter_compass): コンパス（方角）
*   [freezed](https://pub.dev/packages/freezed): イミュータブルなモデル作成
*   [http](https://pub.dev/packages/http): HTTP通信
*   ...その他多数

---

さあ、寄り道レーダーを使って、毎日の移動をもっとワクワクする冒険に変えましょう！
