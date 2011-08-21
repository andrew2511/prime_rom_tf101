.class Lcom/android/server/am/ActivityManagerService$2;
.super Landroid/os/Handler;
.source "ActivityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2
    .parameter

    .prologue
    .line 1000
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 45
    .parameter "msg"

    .prologue
    .line 1006
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    packed-switch v5, :pswitch_data_6ec

    .line 1325
    .end local p0
    .end local p1
    :cond_8
    :goto_8
    :pswitch_8
    return-void

    .line 1008
    .restart local p0
    .restart local p1
    :pswitch_9
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/HashMap;

    .line 1009
    .local v23, data:Ljava/util/HashMap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1010
    :try_start_17
    const-string v6, "app"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ProcessRecord;

    .line 1011
    .local v35, proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v35, :cond_4b

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_4b

    .line 1012
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has crash dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    monitor-exit v5

    goto :goto_8

    .line 1025
    .end local v35           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_48
    move-exception v6

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_17 .. :try_end_4a} :catchall_48

    throw v6

    .line 1015
    .restart local v35       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_4b
    :try_start_4b
    const-string v6, "result"

    move-object/from16 v0, v23

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/AppErrorResult;

    .line 1016
    .local v39, res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_8f

    .line 1017
    new-instance v22, Lcom/android/server/am/AppErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object v1, v6

    move-object/from16 v2, v39

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppErrorDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1018
    .local v22, d:Landroid/app/Dialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1019
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1025
    .end local v22           #d:Landroid/app/Dialog;
    :goto_84
    monitor-exit v5
    :try_end_85
    .catchall {:try_start_4b .. :try_end_85} :catchall_48

    .line 1027
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 1023
    :cond_8f
    const/4 v6, 0x0

    :try_start_90
    move-object/from16 v0, v39

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_96
    .catchall {:try_start_90 .. :try_end_96} :catchall_48

    goto :goto_84

    .line 1030
    .end local v23           #data:Ljava/util/HashMap;
    .end local v35           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v39           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_97
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1031
    :try_start_9e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/HashMap;

    .line 1032
    .restart local v23       #data:Ljava/util/HashMap;
    const-string v5, "app"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ProcessRecord;

    .line 1033
    .restart local v35       #proc:Lcom/android/server/am/ProcessRecord;
    if-eqz v35, :cond_db

    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    move-object v5, v0

    if-eqz v5, :cond_db

    .line 1034
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "App already has anr dialog: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    monitor-exit v19

    goto/16 :goto_8

    .line 1050
    .end local v23           #data:Ljava/util/HashMap;
    .end local v35           #proc:Lcom/android/server/am/ProcessRecord;
    .end local p1
    :catchall_d8
    move-exception v5

    monitor-exit v19
    :try_end_da
    .catchall {:try_start_9e .. :try_end_da} :catchall_d8

    throw v5

    .line 1038
    .restart local v23       #data:Ljava/util/HashMap;
    .restart local v35       #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :cond_db
    :try_start_db
    new-instance v8, Landroid/content/Intent;

    const-string v5, "android.intent.action.ANR"

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1039
    .local v8, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v5, :cond_f0

    .line 1040
    const/high16 v5, 0x4000

    invoke-virtual {v8, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1042
    :cond_f0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    sget v17, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/16 v18, 0x3e8

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastIntentLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I
    invoke-static/range {v5 .. v18}, Lcom/android/server/am/ActivityManagerService;->access$000(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;ZZII)I

    .line 1046
    new-instance v22, Lcom/android/server/am/AppNotRespondingDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "activity"

    move-object/from16 v0, v23

    move-object v1, v7

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/server/am/ActivityRecord;

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    move-object/from16 v3, v35

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/am/AppNotRespondingDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ActivityRecord;)V

    .line 1048
    .restart local v22       #d:Landroid/app/Dialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1049
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->anrDialog:Landroid/app/Dialog;

    .line 1050
    monitor-exit v19
    :try_end_135
    .catchall {:try_start_db .. :try_end_135} :catchall_d8

    .line 1052
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 1055
    .end local v8           #intent:Landroid/content/Intent;
    .end local v22           #d:Landroid/app/Dialog;
    .end local v23           #data:Ljava/util/HashMap;
    .end local v35           #proc:Lcom/android/server/am/ProcessRecord;
    .restart local p1
    :pswitch_13f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/util/HashMap;

    .line 1056
    .local v24, data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1057
    :try_start_14d
    const-string v6, "app"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/ProcessRecord;

    .line 1058
    .restart local v35       #proc:Lcom/android/server/am/ProcessRecord;
    if-nez v35, :cond_167

    .line 1059
    const-string v6, "ActivityManager"

    const-string v7, "App not found when showing strict mode dialog."

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1060
    monitor-exit v5

    goto/16 :goto_8

    .line 1076
    .end local v35           #proc:Lcom/android/server/am/ProcessRecord;
    :catchall_164
    move-exception v6

    monitor-exit v5
    :try_end_166
    .catchall {:try_start_14d .. :try_end_166} :catchall_164

    throw v6

    .line 1062
    .restart local v35       #proc:Lcom/android/server/am/ProcessRecord;
    :cond_167
    :try_start_167
    move-object/from16 v0, v35

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_18c

    .line 1063
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App already has strict mode dialog: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v0, v7

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1064
    monitor-exit v5

    goto/16 :goto_8

    .line 1066
    :cond_18c
    const-string v6, "result"

    move-object/from16 v0, v24

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/AppErrorResult;

    .line 1067
    .restart local v39       #res:Lcom/android/server/am/AppErrorResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mSleeping:Z

    if-nez v6, :cond_1d0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-boolean v6, v6, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    if-nez v6, :cond_1d0

    .line 1068
    new-instance v22, Lcom/android/server/am/StrictModeViolationDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object v1, v6

    move-object/from16 v2, v39

    move-object/from16 v3, v35

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/StrictModeViolationDialog;-><init>(Landroid/content/Context;Lcom/android/server/am/AppErrorResult;Lcom/android/server/am/ProcessRecord;)V

    .line 1069
    .restart local v22       #d:Landroid/app/Dialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1070
    move-object/from16 v0, v22

    move-object/from16 v1, v35

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->crashDialog:Landroid/app/Dialog;

    .line 1076
    .end local v22           #d:Landroid/app/Dialog;
    :goto_1c5
    monitor-exit v5
    :try_end_1c6
    .catchall {:try_start_167 .. :try_end_1c6} :catchall_164

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 1074
    :cond_1d0
    const/4 v6, 0x0

    :try_start_1d1
    move-object/from16 v0, v39

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppErrorResult;->set(I)V
    :try_end_1d7
    .catchall {:try_start_1d1 .. :try_end_1d7} :catchall_164

    goto :goto_1c5

    .line 1080
    .end local v24           #data:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v35           #proc:Lcom/android/server/am/ProcessRecord;
    .end local v39           #res:Lcom/android/server/am/AppErrorResult;
    :pswitch_1d8
    new-instance v22, Lcom/android/server/am/FactoryErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "msg"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    move-object/from16 v0, v22

    move-object v1, v5

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/FactoryErrorDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1082
    .restart local v22       #d:Landroid/app/Dialog;
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1083
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->ensureBootCompleted()V

    goto/16 :goto_8

    .line 1086
    .end local v22           #d:Landroid/app/Dialog;
    :pswitch_1ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v40

    .line 1087
    .local v40, resolver:Landroid/content/ContentResolver;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/content/res/Configuration;

    move-object/from16 v0, v40

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->putConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)Z

    goto/16 :goto_8

    .line 1090
    .end local v40           #resolver:Landroid/content/ContentResolver;
    .restart local p0
    :pswitch_21b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1091
    :try_start_221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->performAppGcsIfAppropriateLocked()V

    .line 1092
    monitor-exit v5

    goto/16 :goto_8

    :catchall_22c
    move-exception v6

    monitor-exit v5
    :try_end_22e
    .catchall {:try_start_221 .. :try_end_22e} :catchall_22c

    throw v6

    .line 1095
    :pswitch_22f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1096
    :try_start_235
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1097
    .local v19, app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_277

    .line 1098
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    move v6, v0

    if-nez v6, :cond_271

    .line 1099
    new-instance v22, Lcom/android/server/am/AppWaitingForDebuggerDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object v1, v6

    move-object v2, v7

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/AppWaitingForDebuggerDialog;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/ProcessRecord;)V

    .line 1102
    .restart local v22       #d:Landroid/app/Dialog;
    move-object/from16 v0, v22

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    .line 1103
    const/4 v6, 0x1

    move v0, v6

    move-object/from16 v1, v19

    iput-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->waitedForDebugger:Z

    .line 1104
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    .line 1112
    .end local v22           #d:Landroid/app/Dialog;
    :cond_271
    :goto_271
    monitor-exit v5

    goto/16 :goto_8

    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :catchall_274
    move-exception v6

    monitor-exit v5
    :try_end_276
    .catchall {:try_start_235 .. :try_end_276} :catchall_274

    throw v6

    .line 1107
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    :cond_277
    :try_start_277
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    if-eqz v6, :cond_271

    .line 1108
    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 1109
    const/4 v6, 0x0

    move-object v0, v6

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->waitDialog:Landroid/app/Dialog;
    :try_end_28c
    .catchall {:try_start_277 .. :try_end_28c} :catchall_274

    goto :goto_271

    .line 1117
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_28d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->processNextBroadcast(Z)V
    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService;->access$100(Lcom/android/server/am/ActivityManagerService;Z)V

    goto/16 :goto_8

    .line 1120
    :pswitch_298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1121
    :try_start_29e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->broadcastTimeoutLocked(Z)V
    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService;->access$200(Lcom/android/server/am/ActivityManagerService;Z)V

    .line 1122
    monitor-exit v5

    goto/16 :goto_8

    :catchall_2aa
    move-exception v6

    monitor-exit v5
    :try_end_2ac
    .catchall {:try_start_29e .. :try_end_2ac} :catchall_2aa

    throw v6

    .line 1125
    :pswitch_2ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_2e7

    .line 1126
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1127
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0xc

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 1128
    .local v31, nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x4e20

    move-object v0, v5

    move-object/from16 v1, v31

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1132
    .end local v31           #nmsg:Landroid/os/Message;
    :cond_2e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/ProcessRecord;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->serviceTimeout(Lcom/android/server/am/ProcessRecord;)V

    goto/16 :goto_8

    .line 1135
    .restart local p0
    :pswitch_2fc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1136
    :try_start_302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v29, v6, v7

    .local v29, i:I
    :goto_310
    if-ltz v29, :cond_35a

    .line 1137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 1138
    .local v38, r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0
    :try_end_327
    .catchall {:try_start_302 .. :try_end_327} :catchall_357

    if-eqz v6, :cond_331

    .line 1140
    :try_start_329
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0

    invoke-interface {v6}, Landroid/app/IApplicationThread;->updateTimeZone()V
    :try_end_331
    .catchall {:try_start_329 .. :try_end_331} :catchall_357
    .catch Landroid/os/RemoteException; {:try_start_329 .. :try_end_331} :catch_334

    .line 1136
    :cond_331
    :goto_331
    add-int/lit8 v29, v29, -0x1

    goto :goto_310

    .line 1141
    :catch_334
    move-exception v6

    move-object/from16 v26, v6

    .line 1142
    .local v26, ex:Landroid/os/RemoteException;
    :try_start_337
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update time zone for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_331

    .line 1146
    .end local v26           #ex:Landroid/os/RemoteException;
    .end local v29           #i:I
    .end local v38           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_357
    move-exception v6

    monitor-exit v5
    :try_end_359
    .catchall {:try_start_337 .. :try_end_359} :catchall_357

    throw v6

    .restart local v29       #i:I
    :cond_35a
    :try_start_35a
    monitor-exit v5
    :try_end_35b
    .catchall {:try_start_35a .. :try_end_35b} :catchall_357

    goto/16 :goto_8

    .line 1149
    .end local v29           #i:I
    :pswitch_35d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1150
    :try_start_363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v29, v6, v7

    .restart local v29       #i:I
    :goto_371
    if-ltz v29, :cond_3bb

    .line 1151
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 1152
    .restart local v38       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0
    :try_end_388
    .catchall {:try_start_363 .. :try_end_388} :catchall_3b8

    if-eqz v6, :cond_392

    .line 1154
    :try_start_38a
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0

    invoke-interface {v6}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_392
    .catchall {:try_start_38a .. :try_end_392} :catchall_3b8
    .catch Landroid/os/RemoteException; {:try_start_38a .. :try_end_392} :catch_395

    .line 1150
    :cond_392
    :goto_392
    add-int/lit8 v29, v29, -0x1

    goto :goto_371

    .line 1155
    :catch_395
    move-exception v6

    move-object/from16 v26, v6

    .line 1156
    .restart local v26       #ex:Landroid/os/RemoteException;
    :try_start_398
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to clear dns cache for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_392

    .line 1160
    .end local v26           #ex:Landroid/os/RemoteException;
    .end local v29           #i:I
    .end local v38           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_3b8
    move-exception v6

    monitor-exit v5
    :try_end_3ba
    .catchall {:try_start_398 .. :try_end_3ba} :catchall_3b8

    throw v6

    .restart local v29       #i:I
    :cond_3bb
    :try_start_3bb
    monitor-exit v5
    :try_end_3bc
    .catchall {:try_start_3bb .. :try_end_3bc} :catchall_3b8

    goto/16 :goto_8

    .line 1163
    .end local v29           #i:I
    :pswitch_3be
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v37, v0

    check-cast v37, Landroid/net/ProxyProperties;

    .line 1164
    .local v37, proxy:Landroid/net/ProxyProperties;
    const-string v28, ""

    .line 1165
    .local v28, host:Ljava/lang/String;
    const-string v34, ""

    .line 1166
    .local v34, port:Ljava/lang/String;
    const-string v27, ""

    .line 1167
    .local v27, exclList:Ljava/lang/String;
    if-eqz v37, :cond_3de

    .line 1168
    invoke-virtual/range {v37 .. v37}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v28

    .line 1169
    invoke-virtual/range {v37 .. v37}, Landroid/net/ProxyProperties;->getPort()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v34

    .line 1170
    invoke-virtual/range {v37 .. v37}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v27

    .line 1172
    :cond_3de
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1173
    :try_start_3e4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int v29, v6, v7

    .restart local v29       #i:I
    :goto_3f2
    if-ltz v29, :cond_443

    .line 1174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object v0, v6

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/am/ProcessRecord;

    .line 1175
    .restart local v38       #r:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0
    :try_end_409
    .catchall {:try_start_3e4 .. :try_end_409} :catchall_440

    if-eqz v6, :cond_41a

    .line 1177
    :try_start_40b
    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v28

    move-object/from16 v2, v34

    move-object/from16 v3, v27

    invoke-interface {v0, v1, v2, v3}, Landroid/app/IApplicationThread;->setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_41a
    .catchall {:try_start_40b .. :try_end_41a} :catchall_440
    .catch Landroid/os/RemoteException; {:try_start_40b .. :try_end_41a} :catch_41d

    .line 1173
    :cond_41a
    :goto_41a
    add-int/lit8 v29, v29, -0x1

    goto :goto_3f2

    .line 1178
    :catch_41d
    move-exception v6

    move-object/from16 v26, v6

    .line 1179
    .restart local v26       #ex:Landroid/os/RemoteException;
    :try_start_420
    const-string v6, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to update http proxy for: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v38

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v8, v0

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41a

    .line 1184
    .end local v26           #ex:Landroid/os/RemoteException;
    .end local v29           #i:I
    .end local v38           #r:Lcom/android/server/am/ProcessRecord;
    :catchall_440
    move-exception v6

    monitor-exit v5
    :try_end_442
    .catchall {:try_start_420 .. :try_end_442} :catchall_440

    throw v6

    .restart local v29       #i:I
    :cond_443
    :try_start_443
    monitor-exit v5
    :try_end_444
    .catchall {:try_start_443 .. :try_end_444} :catchall_440

    goto/16 :goto_8

    .line 1188
    .end local v27           #exclList:Ljava/lang/String;
    .end local v28           #host:Ljava/lang/String;
    .end local v29           #i:I
    .end local v34           #port:Ljava/lang/String;
    .end local v37           #proxy:Landroid/net/ProxyProperties;
    :pswitch_446
    new-instance v22, Lcom/android/server/am/BaseErrorDialog;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/android/server/am/BaseErrorDialog;-><init>(Landroid/content/Context;)V

    .line 1189
    .local v22, d:Landroid/app/AlertDialog;
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/BaseErrorDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7da

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 1190
    const/4 v5, 0x0

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 1191
    const-string v5, "System UIDs Inconsistent"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 1192
    const-string v5, "UIDs on the system are inconsistent, you need to wipe your data partition or your device will be unstable."

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1193
    const/4 v5, -0x1

    const-string v6, "I\'m Feeling Lucky"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xf

    invoke-virtual {v7, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v0, v22

    move v1, v5

    move-object v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 1195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    iput-object v0, v1, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    .line 1196
    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_8

    .line 1199
    .end local v22           #d:Landroid/app/AlertDialog;
    :pswitch_49c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    if-eqz v5, :cond_8

    .line 1200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog;->dismiss()V

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Lcom/android/server/am/ActivityManagerService;->mUidAlert:Landroid/app/AlertDialog;

    goto/16 :goto_8

    .line 1205
    :pswitch_4b9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    if-eqz v5, :cond_4f3

    .line 1206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/android/server/am/ActivityManagerService;->mDidDexOpt:Z

    .line 1207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x14

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 1208
    .restart local v31       #nmsg:Landroid/os/Message;
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v31

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x2710

    move-object v0, v5

    move-object/from16 v1, v31

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_8

    .line 1212
    .end local v31           #nmsg:Landroid/os/Message;
    :cond_4f3
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/am/ProcessRecord;

    .line 1213
    .restart local v19       #app:Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1214
    :try_start_501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v19

    #calls: Lcom/android/server/am/ActivityManagerService;->processStartTimedOutLocked(Lcom/android/server/am/ProcessRecord;)V
    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerService;->access$300(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessRecord;)V

    .line 1215
    monitor-exit v5

    goto/16 :goto_8

    :catchall_50f
    move-exception v6

    monitor-exit v5
    :try_end_511
    .catchall {:try_start_501 .. :try_end_511} :catchall_50f

    throw v6

    .line 1218
    .end local v19           #app:Lcom/android/server/am/ProcessRecord;
    :pswitch_512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1219
    :try_start_518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->doPendingActivityLaunchesLocked(Z)V

    .line 1220
    monitor-exit v5

    goto/16 :goto_8

    :catchall_524
    move-exception v6

    monitor-exit v5
    :try_end_526
    .catchall {:try_start_518 .. :try_end_526} :catchall_524

    throw v6

    .line 1223
    :pswitch_527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1224
    :try_start_52d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v11, v0

    .line 1225
    .local v11, uid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_553

    const/4 v6, 0x1

    move v12, v6

    .line 1226
    .local v12, restart:Z
    :goto_53c
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 1227
    .local v10, pkg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v9, v0

    const/4 v13, 0x0

    const/4 v14, 0x1

    #calls: Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZ)Z
    invoke-static/range {v9 .. v14}, Lcom/android/server/am/ActivityManagerService;->access$400(Lcom/android/server/am/ActivityManagerService;Ljava/lang/String;IZZZ)Z

    .line 1228
    monitor-exit v5

    goto/16 :goto_8

    .end local v10           #pkg:Ljava/lang/String;
    .end local v11           #uid:I
    .end local v12           #restart:Z
    :catchall_550
    move-exception v6

    monitor-exit v5
    :try_end_552
    .catchall {:try_start_52d .. :try_end_552} :catchall_550

    throw v6

    .line 1225
    .restart local v11       #uid:I
    :cond_553
    const/4 v6, 0x0

    move v12, v6

    goto :goto_53c

    .line 1231
    .end local v11           #uid:I
    :pswitch_556
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Lcom/android/server/am/PendingIntentRecord;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/PendingIntentRecord;->completeFinalize()V

    goto/16 :goto_8

    .line 1234
    .restart local p0
    :pswitch_563
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v30

    .line 1235
    .local v30, inm:Landroid/app/INotificationManager;
    if-eqz v30, :cond_8

    .line 1239
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v41, v0

    check-cast v41, Lcom/android/server/am/ActivityRecord;

    .line 1240
    .local v41, root:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v36, v0

    .line 1241
    .local v36, process:Lcom/android/server/am/ProcessRecord;
    if-eqz v36, :cond_8

    .line 1246
    :try_start_579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, v36

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object v6, v0

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v21

    .line 1247
    .local v21, context:Landroid/content/Context;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040356

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v42

    .line 1249
    .local v42, text:Ljava/lang/String;
    new-instance v32, Landroid/app/Notification;

    invoke-direct/range {v32 .. v32}, Landroid/app/Notification;-><init>()V

    .line 1250
    .local v32, notification:Landroid/app/Notification;
    const v5, 0x10804b7

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 1251
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, v32

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 1252
    const/4 v5, 0x2

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/app/Notification;->flags:I

    .line 1253
    move-object/from16 v0, v42

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1254
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Landroid/app/Notification;->defaults:I

    .line 1255
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1256
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, v32

    iput-object v0, v1, Landroid/app/Notification;->vibrate:[J

    .line 1257
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v6, 0x1040357

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const/4 v7, 0x0

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->intent:Landroid/content/Intent;

    move-object v8, v0

    const/high16 v9, 0x1000

    invoke-static {v6, v7, v8, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    move-object/from16 v0, v32

    move-object/from16 v1, v21

    move-object/from16 v2, v42

    move-object v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    :try_end_60a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_579 .. :try_end_60a} :catch_632

    .line 1263
    const/4 v5, 0x1

    :try_start_60b
    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v33, v0

    .line 1264
    .local v33, outId:[I
    const-string v5, "android"

    const v6, 0x1040356

    move-object/from16 v0, v30

    move-object v1, v5

    move v2, v6

    move-object/from16 v3, v32

    move-object/from16 v4, v33

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/INotificationManager;->enqueueNotification(Ljava/lang/String;ILandroid/app/Notification;[I)V
    :try_end_620
    .catch Ljava/lang/RuntimeException; {:try_start_60b .. :try_end_620} :catch_622
    .catch Landroid/os/RemoteException; {:try_start_60b .. :try_end_620} :catch_6e8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_60b .. :try_end_620} :catch_632

    goto/16 :goto_8

    .line 1266
    .end local v33           #outId:[I
    :catch_622
    move-exception v5

    move-object/from16 v25, v5

    .line 1267
    .local v25, e:Ljava/lang/RuntimeException;
    :try_start_625
    const-string v5, "ActivityManager"

    const-string v6, "Error showing notification for heavy-weight app"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_630
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_625 .. :try_end_630} :catch_632

    goto/16 :goto_8

    .line 1271
    .end local v21           #context:Landroid/content/Context;
    .end local v25           #e:Ljava/lang/RuntimeException;
    .end local v32           #notification:Landroid/app/Notification;
    .end local v42           #text:Ljava/lang/String;
    :catch_632
    move-exception v5

    move-object/from16 v25, v5

    .line 1272
    .local v25, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v5, "ActivityManager"

    const-string v6, "Unable to create context for heavy notification"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1276
    .end local v25           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v30           #inm:Landroid/app/INotificationManager;
    .end local v36           #process:Lcom/android/server/am/ProcessRecord;
    .end local v41           #root:Lcom/android/server/am/ActivityRecord;
    :pswitch_642
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v30

    .line 1277
    .restart local v30       #inm:Landroid/app/INotificationManager;
    if-eqz v30, :cond_8

    .line 1281
    :try_start_648
    const-string v5, "android"

    const v6, 0x1040356

    move-object/from16 v0, v30

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelNotification(Ljava/lang/String;I)V
    :try_end_654
    .catch Ljava/lang/RuntimeException; {:try_start_648 .. :try_end_654} :catch_656
    .catch Landroid/os/RemoteException; {:try_start_648 .. :try_end_654} :catch_6e5

    goto/16 :goto_8

    .line 1283
    :catch_656
    move-exception v5

    move-object/from16 v25, v5

    .line 1284
    .local v25, e:Ljava/lang/RuntimeException;
    const-string v5, "ActivityManager"

    const-string v6, "Error canceling notification for service"

    move-object v0, v5

    move-object v1, v6

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_8

    .line 1290
    .end local v25           #e:Ljava/lang/RuntimeException;
    .end local v30           #inm:Landroid/app/INotificationManager;
    :pswitch_666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1291
    :try_start_66c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->checkExcessivePowerUsageLocked(Z)V

    .line 1292
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2;->removeMessages(I)V

    .line 1293
    const/16 v6, 0x1b

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$2;->obtainMessage(I)Landroid/os/Message;

    move-result-object v31

    .line 1294
    .restart local v31       #nmsg:Landroid/os/Message;
    const-wide/32 v6, 0xdbba0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ActivityManagerService$2;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 1295
    monitor-exit v5

    goto/16 :goto_8

    .end local v31           #nmsg:Landroid/os/Message;
    :catchall_694
    move-exception v6

    monitor-exit v5
    :try_end_696
    .catchall {:try_start_66c .. :try_end_696} :catchall_694

    throw v6

    .line 1298
    :pswitch_697
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v5, v0

    monitor-enter v5

    .line 1299
    :try_start_69d
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/server/am/ActivityRecord;

    .line 1300
    .local v20, ar:Lcom/android/server/am/ActivityRecord;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    if-eqz v6, :cond_6e0

    .line 1301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    iget-object v6, v6, Lcom/android/server/am/CompatModeDialog;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object v7, v0

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6ce

    .line 1303
    monitor-exit v5

    goto/16 :goto_8

    .line 1322
    .end local v20           #ar:Lcom/android/server/am/ActivityRecord;
    :catchall_6cb
    move-exception v6

    monitor-exit v5
    :try_end_6cd
    .catchall {:try_start_69d .. :try_end_6cd} :catchall_6cb

    throw v6

    .line 1305
    .restart local v20       #ar:Lcom/android/server/am/ActivityRecord;
    :cond_6ce
    :try_start_6ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    invoke-virtual {v6}, Lcom/android/server/am/CompatModeDialog;->dismiss()V

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService$2;->this$0:Lcom/android/server/am/ActivityManagerService;

    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/server/am/ActivityManagerService;->mCompatModeDialog:Lcom/android/server/am/CompatModeDialog;

    .line 1308
    :cond_6e0
    if-eqz v20, :cond_6e2

    .line 1322
    :cond_6e2
    monitor-exit v5
    :try_end_6e3
    .catchall {:try_start_6ce .. :try_end_6e3} :catchall_6cb

    goto/16 :goto_8

    .line 1286
    .end local v20           #ar:Lcom/android/server/am/ActivityRecord;
    .restart local v30       #inm:Landroid/app/INotificationManager;
    :catch_6e5
    move-exception v5

    goto/16 :goto_8

    .line 1269
    .restart local v21       #context:Landroid/content/Context;
    .restart local v32       #notification:Landroid/app/Notification;
    .restart local v36       #process:Lcom/android/server/am/ProcessRecord;
    .restart local v41       #root:Lcom/android/server/am/ActivityRecord;
    .restart local v42       #text:Ljava/lang/String;
    :catch_6e8
    move-exception v5

    goto/16 :goto_8

    .line 1006
    nop

    :pswitch_data_6ec
    .packed-switch 0x1
        :pswitch_9
        :pswitch_97
        :pswitch_1d8
        :pswitch_1ff
        :pswitch_21b
        :pswitch_22f
        :pswitch_28d
        :pswitch_298
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_2ad
        :pswitch_2fc
        :pswitch_446
        :pswitch_49c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_4b9
        :pswitch_512
        :pswitch_527
        :pswitch_556
        :pswitch_563
        :pswitch_642
        :pswitch_13f
        :pswitch_666
        :pswitch_35d
        :pswitch_3be
        :pswitch_697
    .end packed-switch
.end method
