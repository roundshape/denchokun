# 電帳君 (Denchokun)

**電子帳簿保存法対応のデジタル帳簿管理システム**

![Version](https://img.shields.io/badge/version-2.0.0-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows-blue.svg)
![Language](https://img.shields.io/badge/language-Xojo-orange.svg)

## 概要

電帳君（Denchokun）は、電子帳簿保存法に対応したデジタル帳簿管理システムです。領収書や請求書などの取引書類をデジタル化し、効率的に管理することができます。

**重要な注意事項:**  
電帳君は現在、弊社ホームページ、Vectorでも配布(version 1-x-x)していますが、このGitHubリポジトリのものとそれらとは開発方針が違います。そのためDBの取り扱いが違い互換性がありません。バージョンが2-0-0となっていますが、バージョンアップ版ではありません。

## 主な機能

### 📊 取引データ管理
- 取引日、取引先、金額、種別（領収書/請求書/納品書等）の管理
- 期間別の取引データ整理
- 検索・フィルタリング機能

### 🔍 OCR機能
- Tesseract OCRエンジンを使用した文字認識
- 日本語・英語の文字認識に対応
- スキャンした書類からのテキスト抽出

### 💾 データベース管理
- SQLiteベースのローカルデータベース
- ハッシュ値による重複チェック
- データ更新履歴の管理

### 🔧 設定管理
- XML形式の設定ファイル（Denchokun.pref）
- OCRエンジンの設定カスタマイズ
- MBSライセンス情報の管理

## システム要件

### 必要環境
- **OS**: Windows 64bit
- **OCRエンジン**: Tesseract-OCR（推奨パス: `C:\Program Files\Tesseract-OCR`）
- **ライブラリ**: MBS Xojo Plugins（ライセンス必要）

### 推奨スペック
- RAM: 4GB以上
- ストレージ: 500MB以上の空き容量

## 開発・ビルドに必要な環境

- **Xojo**: Xojo 2023 Release 4が必要

### 1. インストーラーを使用する場合
1. `Denchokun-setup.exe` をダウンロード
2. インストーラーを実行してセットアップを完了

**インストーラーの作成方法:**  
プロジェクトには `Denchokun.iss` ファイルが用意されているため、Inno Setupを使用してsetup.exeを作成できます。

### 2. OCR機能について
1. Tesseract-OCRをインストール

### 3. MonkeyBread Software Plugin(MBS Complete)について
1. 本アプリではMBS Pluginを利用しているため、そのライセンスが必要です
2. アプリケーションを起動してライセンス情報を入力

## 使用方法

### 初回セットアップ
1. アプリケーションを起動
2. MBSライセンス情報を入力
3. ベースフォルダ（データ保存先）を設定
4. 取引期間を作成

### 基本的な操作
1. **新規取引の登録**
   - 書類（画像ファイル）をドラッグ&ドロップ
   - 取引情報（日付、金額、取引先等）を入力
   - 登録ボタンで保存

2. **データの検索・参照**
   - 期間を選択して取引一覧を表示
   - キーワード検索でデータを絞り込み
   - 詳細画面で取引内容を確認

3. **OCR機能の使用**
   - 画像ファイルから自動でテキストを抽出
   - 設定画面でOCRエンジンのパラメータを調整

## 設定ファイル

### Denchokun.pref
XMLフォーマットの設定ファイルで、以下の情報を管理します：

```xml
<Denchokun version="2.0.0">
  <MainWindow Left="100" Top="100" Width="482" Height="436"/>
  <BaseFolder path="C:\Users\...\Documents" workingPeriod=""/>
  <OCR>
    <Setup workingDirectory="C:\Program Files\Tesseract-OCR" 
           languages="eng+jpn"/>
  </OCR>
  <MBSLicense Name="" Product="" YearMonth="" SerialKey=""/>
</Denchokun>
```

## 開発・ビルド環境

### 開発環境
- **IDE**: Xojo 2023.04以降
- **言語**: Xojo (REALbasic系)
- **データベース**: SQLite
- **UI Framework**: Xojo Desktop

### ビルド方法
1. Xojo IDEでプロジェクトファイル（`Denchokun.xojo_project`）を開く
2. Build → Build App for Windows 64bitを選択
3. 生成されたexeファイルを配布

### インストーラー作成
Inno Setupスクリプト（`Denchokun.iss`）を使用してインストーラーを作成できます。

## ライセンス

### 本プロジェクト
このプロジェクトはMITライセンスの下で配布されています。

### MBS Plugins
このアプリケーションは商用ライブラリであるMBS Xojo Pluginsを使用しています。
使用には有効なMBSライセンスが必要です。

### Tesseract OCR
Apache License 2.0の下で配布されているオープンソースOCRエンジンを使用しています。

## 開発者情報

- **開発**: RoundShape K.K.
- **ウェブサイト**: https://www.roundshape.jp
- **サポート**: https://www.roundshape.jp

## 更新履歴

### v2.0.0 (最新)
- MBSライセンス管理を環境変数から設定ファイルに移行
- タイムスタンプ機能を削除（電子帳簿保存法の要件変更に対応）
- UI/UXの改善

### v1.2.1
- 安定性の向上
- バグ修正

## サポート・問い合わせ

技術的な問題やご質問については、以下までお問い合わせください：
- ウェブサイト: https://www.roundshape.jp
- ダウンロード: https://www.roundshape.jp/downloadMain.php

---

**注意**: このソフトウェアを使用する前に、最新の電子帳簿保存法の要件を確認し、適切な法的助言を受けることをお勧めします。
