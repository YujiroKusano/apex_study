# VSCodeの初期設定手順
## Visual Studio Code をインストールする

### 1. OpenJDK version 11 のダウンロードおよびインストール

- ```<Windows>```
Java Runtime Environment (JRE) バージョン 11 以降 (Zulu OpenJDK バージョン 11 以降など)
- ```<macOS>```
Java Runtime Environment (JRE) バージョン 11 以降 (Zulu OpenJDK バージョン 11 以降など) 

## 目次
- [OpenJDKのインストール](#1-openjdkのインストール)
- [VisualStudioCodeのインストール](#2-visualstudiocodeのインストール)


TODO：ここは後で整理
- セールスフォースとの連携
Salesforce CLI をインストールする
Visual Studio Code プラグイン(Salesforce Extension Pack)をインストールする
開発環境を構築する
  ローカルPCにて作業用プロジェクトを作成する
  salesforce組織の認証を行う
  接続先の組織からソースを取得する(retrive)
  ソースを編集する
  ソースをリリースする(deploy)

- デプロイ
- 画面を使って確認
- テストクラスのカバレッジ確認
- リリースもやり方わかるといいな。


---

### 1. OpenJDKのインストール

1. ダウンロード

    [公式ダウンロード](https://www.azul.com/downloads/?package=jdk) から下図のボタンをクリックし、自分のPCに合ったインストーラをダウンロードします。

    Javaのバージョンは11以降であれば問題ないと思います。（2022/9/27時点）
    Windowsを例として記載します。

    Windowsのx86 64-bitのmsiファイルをダウンロードします。
    
    ![image](https://user-images.githubusercontent.com/64938514/192466261-ca51a1ca-5944-48fb-9006-b19a2aab5325.png)

    例）ダウンロードファイル
    ![image](https://user-images.githubusercontent.com/64938514/192467950-4c16af82-9c21-4994-bc0d-3bea9196eb28.png)

1. インストール

    1. ダウンロードした msi ファイルをダブルクリックし、[Next] をクリックします。
    
        ![image](https://user-images.githubusercontent.com/42022387/187849534-0e6b8430-b1a8-40e7-a79f-d5f5168720ee.png)

    1. [Next] をクリックします。
    
        ![image](https://user-images.githubusercontent.com/42022387/187849569-2b2b9423-c7aa-4a3f-b19f-e75256e98924.png)

    1. [Install] をクリックします。
    
        ![image](https://user-images.githubusercontent.com/42022387/187849606-8f32342e-0d69-4964-9f57-3a12eb71e45c.png)

    1. 警告メッセージが表示された場合は、[Yes] をクリックします。
    
        ![image](https://user-images.githubusercontent.com/42022387/187849663-43377b4b-3f00-440f-b9c5-baf794d7e872.png)

    1. [Finish] をクリックします。

        ![image](https://user-images.githubusercontent.com/42022387/187849694-07ffcfcc-3bec-4674-80ee-096d238184c9.png)

- - -
### 2. VisualStudioCodeのインストール
1. ダウンロードおよびインストール

    以下の手順を参考にインストールします。
    
    https://miya-system-works.com/blog/detail/vscode-install/

    インストーラーは、[公式ダウンロード](https://code.visualstudio.com/)からダウンロードします。
    
    
- - -
### 3. VisualStudioCodeでSalesforce開発

1. Salesforce CLI をインストールする

    [salesforce 公式ページ](https://developer.salesforce.com/ja/tools/sfdxcli) からインストーラを取得します。ページに遷移すると、使用 OS に合わせたダウンロードリンクが表示されています。

    PCに適したダウンロードボタンをクリックしてインストーラをダウンロードします。
    
    ![image](https://user-images.githubusercontent.com/64938514/192711908-3df3dd44-94f3-45e3-ba72-b193dfa9e604.png)

    「Download for Windows 64」の場合、インストーラ名は「sfdx-windows-amd64.exe」

    ダウンロードが終わったらインストーラをダブルクリックし、インストールを進めます。

    特にこだわりが無ければ、何も変更せずに進めてインストールを完了させます。

    インストールが完了したら、Salesforce CLI のインストールおよびプラグインバージョンを確認します。
    windowsであればコマンドプロンプトを起動し、次のコマンドを実行してバージョンを確認します。
    
    > **Note**
    >
    > コマンドプロンプトの起動ショートカットは「Windows(のマーク)キー + R」で、「ファイル名を指定して実行」というダイアログが表示する。
    >
    > 「cmd」と入力し、Enterを押してください。

    ```
    sfdx --version
    ```

1. Visual Studio Code プラグイン(Salesforce Extension Pack)をインストールする

    Visual Studio Code を起動した後、拡張機能を開きます。

    検索テキストボックスに「Salesforce Extension Pack」と入力し検索して選択します。

    「インストール」ボタンをクリックします。
    
    ![image](https://user-images.githubusercontent.com/64938514/192718985-32f20cc8-2b46-4eb8-af6f-ec85f0340364.png)

1. 開発環境を構築する
    1. ローカルPCにて作業用プロジェクトを作成する

    1. salesforce組織の認証を行う
    
    1. 接続先の組織からソースを取得する(retrive)
    
    1. ソースを編集する
    
    1. ソースをリリースする(deploy)
    

