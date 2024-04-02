/**
 * プログラムID : trg_Account
 * プログラム名 : サンプルバッチクラス
 * 処理形態　　 : ApexTrigger
 * 処理概要　　 : サンプル処理
 * 作成日　　　 : 2021/09/01
 * 作成者　　　 : 草野
 */
trigger trg_Account on Account (before update ,after insert) {
    if(Trigger.isBefore){
        if(Trigger.isUpdate){
            cntl_trg_Sample.onBeforeUpdateProcess(Trigger.new);
        }
    }
    if(Trigger.isAfter){
        if(Trigger.isInsert){
            cntl_trg_Sample.onAfterInsertProcess(Trigger.new);
        }
    }
}
