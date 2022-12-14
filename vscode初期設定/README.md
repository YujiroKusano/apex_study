# VSCodeとSalesforceの接続設定～Salesforceへのデプロイ手順

以下の手順も書けるといいが、ひとまず上記までの手順。
- テストクラスのカバレッジ確認手順
- リリース手順

> **Note** 
> 
> OpenJDK version 11 のダウンロードおよびインストール
> - ```<Windows>```
> Java Runtime Environment (JRE) バージョン 11 以降 (Zulu OpenJDK バージョン 11 以降など)
> - ```<macOS>```
> Java Runtime Environment (JRE) バージョン 11 以降 (Zulu OpenJDK バージョン 11 以降など) 

## 目次
1. [OpenJDKのインストール](#1-openjdkのインストール)（インストール済みであれば飛ばす）
1. [VisualStudioCodeのインストール](#2-visualstudiocodeのインストール)
1. [VisualStudioCodeでSalesforce開発](#3-visualstudiocodeでsalesforce開発)

> **Note**
> 
>SalesforceにApexをデプロイする方法が分かり、Apexについて学習したい場合[こちら](https://github.com/YujiroKusano/apex_study/tree/main/apex#apex%E5%85%A5%E9%96%80)を参照。

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

        コマンドパレットを開き（ショートカットキー：[ctrl]キー + [shift]キー + [P]キー）、
        
        テキストボックスに「SFDX: Create Project with Manifest」と入力し、選択します。

        ![image](https://user-images.githubusercontent.com/64938514/193994823-76b7656b-e8dc-43a6-ba6d-89be4c6de8f0.png)

        - 選択後、作業用プロジェクトの名前を入力します。（適宜、入力してください）
        - 名前を入力後、プロジェクトを作成するフォルダ選択ダイアログが表示されます。（適宜、管理する場所を選択してください）


    1. salesforce組織の認証を行う

        developer 組織に接続するので不要ですが、
        sandbox組織に接続する場合は sfdx-project.json を開いてログインURL の値を更新します。

        > **Note**
        >
        > sfdx-project.json を変更する場合
        > 
        > sandbox なら「https://test.salesforce.com」に変更します。
        > 
        > ![image](https://user-images.githubusercontent.com/64938514/193996643-d47d5cb7-99d0-4249-9c83-9264ffba24f2.png)
        >

        salesforce 組織の認証を行います。
        
        コマンドパレットを開き、テキストボックスに「Aut「SFDX: Authorize an Org」と入力し、選択します。
        
        ※ 先に作業用プロジェクトを用意しないと、選択肢は出てきません。

        ![image](https://user-images.githubusercontent.com/64938514/193998230-43430a2d-2821-471e-8c08-159b18ab5a9c.png)

        プロジェクトのデフォルトを選択し、Enterを押してください。

        ![image](https://user-images.githubusercontent.com/64938514/193999975-3337229a-b661-45ba-a53c-81d88e6047c6.png)

        次に、接続する組織をローカルPC で管理するための alias 名（管理上の別名）を入力します。

        特にこだわりがなければ、何も入力せずにEnterでも進めます。

        ![image](https://user-images.githubusercontent.com/64938514/194000198-cd598fd9-250c-46fc-b9e6-c9b91b1401a5.png)

        salesforceの認証をするため、
        WebブラウザにてログインURL の画面に遷移します。
        
        ユーザ名とパスワードを入力して認証を行います。
        
        認証に成功すると Visual Studio Code のコンソールに下記メッセージが表示されます。

        ![image](https://user-images.githubusercontent.com/64938514/194000957-5d7f56e6-1552-4efb-b29a-1eb605623281.png)
    
    1. 接続先の組織からソースを取得する(retrive)

        package.xml に定義したソースを全て取得する方法と特定のソースのみの２つを紹介します。

        - package.xml に定義したソースを全て取得する場合

            Visual Studio Code の Explorer 上にある「package.xml」を右クリックし、コンテキストメニューを表示します。

            コンテキストメニューから「SFDX: Retrieve Source in Manifest from Org」を選択します。

            ![image](https://user-images.githubusercontent.com/64938514/194017222-69169e67-fc62-46bd-bd36-df568b2be6ea.png)

        - 特定のソースのみを取得する場合

            特定のソースを右クリックする以外は、
            「package.xml に定義したソースを全て取得する場合」と同様の手順です。
    
    1. ソースを編集する

        今回は例として、Account（取引先）の作成後に特定の項目に値を設定するApexトリガーを作成します。

        「***\force-app\main\default\triggers」で右クリックし、「Apexトリガーを作成」をクリックします。

        ![image](https://user-images.githubusercontent.com/64938514/207199770-e686c939-0be7-4b9d-8404-a6db2f389a27.png)

        作成するファイル名を入力し、「Enter」キーを押下します。
        （例として「HelloWorldTrigger」でファイル作成）

        ![image](https://user-images.githubusercontent.com/64938514/207200459-be8fb2f2-c7f3-46ba-a757-7b887ce3d555.png)

        ディレクトリを指定します。
        （例として「triggers」フォルダを選択）

        ![image](https://user-images.githubusercontent.com/64938514/207200937-718e4179-428a-453b-a11b-b3271eaadc25.png)

        ファイルが作成されるため、ここにコードを書きます。

        ![image](https://user-images.githubusercontent.com/64938514/207201319-5921b1c0-c07d-4369-ada7-c2c02e117b85.png)
        
        取引先作成後に「説明」項目に値を設定するコードは以下です。
        試すのであればコピペしてください。

        ```
        trigger HelloWorldTrigger on Account (before insert, after insert) {
            if (Trigger.isInsert) {
                if (Trigger.isBefore) {
                    // レコードが保存される前にこのトリガが実行された場合
                    for (Account account : Trigger.new) {
                        account.Description = 'Apexでのデータ投入';
                    }
                } else if (Trigger.isAfter) {
                    // すべてのレコードが保存された後にこのトリガが実行された場合
                    // 現状は何もしない。
                }
            }
        }
        ```

    1. ソースをsalesforceに格納する(deploy)

        変更したファイルまたはディレクトリで右クリックし、「組織をソースへデプロイ」をクリックします。
        （例として「triggers」フォルダを選択）

        ![image](https://user-images.githubusercontent.com/64938514/207209293-30e73541-491e-4322-af82-fc6349b17d75.png)

        デプロイが実行された情報が「出力」で見れます。

        ![image](https://user-images.githubusercontent.com/64938514/207209956-6a9caeaa-895a-43d4-938a-afe9477180c5.png)

     1. salesforce上で動作確認

        まずはデプロイされていることを確認します。
        デプロイしたsalesforceにログインし、設定の検索から「Apex」と入力して「Apexトリガー」をクリックします。

        ![image](https://user-images.githubusercontent.com/64938514/207240029-0422d6d1-2e41-440e-af22-9bc525be5e68.png)

        デプロイした名前があることを確認します。

        ![image](https://user-images.githubusercontent.com/64938514/207240156-13e39599-8bad-4e48-a78f-2a33dbd4501f.png)

        今回のトリガーは、取引先作成後に「説明」項目に値を設定するため、取引先で新規レコードを作成します。
        取引先名のみ入力し、「保存」をクリックします。

        ![image](https://user-images.githubusercontent.com/64938514/207240619-473417ce-f4e5-4d05-89af-20a3c0f3d575.png)

        作成した取引先レコードの詳細タブの「説明」項目を確認すると、入力していない値が設定されていることが確認できます。

        ![image](https://user-images.githubusercontent.com/64938514/207240824-6fc42727-b3f2-411e-8f1b-f85c52590d9b.png)

    1. おまけ：VscodeにJavaの設定をする

        Testクラスを実行するために必要となるとか必要にならないとか。

        Javaのバージョンは今後変動する可能性があるため、参考URLをもとに実施してください。
        https://developer.salesforce.com/tools/vscode/ja/vscode-desktop/java-setup


        例として、ZuluのJava11を設定する手順を記載します。
        「ファイル」-「ユーザ設定」-「設定」をクリックします。

        ![image](https://user-images.githubusercontent.com/64938514/207516064-fe9613e1-19e5-47d4-a209-b4491cfbfb03.png)

        設定の検索欄に「java」と入力し、「Salesforcedx-vscode-apex › Java: Home」にJavaのインストール場所ディレクトリを設定してください。
        （例としてJava11をデフォルトでインストールした場合のパス「C:\\Program Files\\Zulu\\zulu-11」を記載しています。）

        ![image](https://user-images.githubusercontent.com/64938514/207516921-ff580a4a-d560-4e8f-b49e-04e5f7f2c39e.png)

