.class Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;
.super Landroid/os/Handler;
.source "FotaDLExecuter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/fumo/FotaDLExecuter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FUMOHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;


# direct methods
.method public constructor <init>(Lcom/asus/dmlib/fumo/FotaDLExecuter;Landroid/os/Looper;)V
    .locals 0
    .parameter
    .parameter "loop"

    .prologue
    .line 165
    iput-object p1, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    .line 166
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 167
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .parameter "msg"

    .prologue
    .line 172
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->values()[Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    aget-object v4, v4, v5

    invoke-static {v3, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$002(Lcom/asus/dmlib/fumo/FotaDLExecuter;Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    .line 173
    const-string v3, "FOTADLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$000(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v3

    const-string v4, "FUMOStatus"

    invoke-interface {v3, v4}, Lcom/asus/dmlib/vdm/PLRegistry;->getIntValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 175
    .local v2, preStatus:I
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v3

    const-string v4, "FUMOStatus"

    iget-object v5, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$000(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->ordinal()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V

    .line 176
    sget-object v3, Lcom/asus/dmlib/fumo/FotaDLExecuter$1;->$SwitchMap$com$asus$dmlib$fumo$FotaDLExecuter$Status:[I

    iget-object v4, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$000(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 180
    :pswitch_0
    :try_start_0
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$100(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_READY_TO_UPDATE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$100(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_COMPLETE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-ne v3, v4, :cond_2

    .line 182
    :cond_1
    const-string v3, "FOTADLHandler"

    const-string v4, "============ error status change ==========="

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v3, "FOTADLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$000(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    const-string v3, "FOTADLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "preStatus: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->values()[Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    const-string v3, "FOTADLHandler"

    const-string v4, "============================================"

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v3, "FOTADLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "restoore to pre state--> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logE(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v3

    const-string v4, "FUMOStatus"

    invoke-interface {v3, v4, v2}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V
    :try_end_0
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 190
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 191
    .local v1, e1:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v1}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 195
    .end local v1           #e1:Lcom/asus/dmlib/vdm/VdmException;
    :cond_2
    :try_start_1
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-virtual {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->getDD()Lcom/asus/dmlib/vdm/DownloadDescriptor;

    .line 196
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$200(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/DownloadDescriptor;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 197
    const-string v3, "FOTADLHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$200(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/DownloadDescriptor;

    move-result-object v5

    iget-wide v5, v5, Lcom/asus/dmlib/vdm/DownloadDescriptor;->size:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " name: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$200(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/DownloadDescriptor;

    move-result-object v5

    sget-object v6, Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;->NAME:Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;

    invoke-virtual {v5, v6}, Lcom/asus/dmlib/vdm/DownloadDescriptor;->getField(Lcom/asus/dmlib/vdm/DownloadDescriptor$Field;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    iget-object v4, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$200(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/DownloadDescriptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->onConfirmDownload(Lcom/asus/dmlib/vdm/DownloadDescriptor;)V

    .line 200
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    sget-object v4, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->DOWNLOADING:Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    invoke-static {v3, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$002(Lcom/asus/dmlib/fumo/FotaDLExecuter;Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    .line 201
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmEngine;->getRegistry()Lcom/asus/dmlib/vdm/PLRegistry;

    move-result-object v3

    const-string v4, "FUMOStatus"

    iget-object v5, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$000(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/dmlib/fumo/FotaDLExecuter$Status;->ordinal()I

    move-result v5

    invoke-interface {v3, v4, v5}, Lcom/asus/dmlib/vdm/PLRegistry;->setIntValue(Ljava/lang/String;I)V
    :try_end_1
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 207
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 208
    .local v0, e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 209
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$300(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getErrorCode()Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    goto/16 :goto_0

    .line 204
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :cond_3
    :try_start_2
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$300(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    sget-object v5, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;->ERROR_BAD_DD:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V
    :try_end_2
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_0

    .line 214
    :pswitch_1
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 216
    :try_start_3
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-virtual {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->getDD()Lcom/asus/dmlib/vdm/DownloadDescriptor;

    .line 217
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$400(Lcom/asus/dmlib/fumo/FotaDLExecuter;)V
    :try_end_3
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_3 .. :try_end_3} :catch_3

    .line 224
    :goto_1
    :try_start_4
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$100(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/fumo/VdmFumo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumo;->getState()Lcom/asus/dmlib/vdm/fumo/FumoState;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    if-ne v3, v4, :cond_0

    .line 225
    const-string v3, "FOTADLHandler"

    const-string v4, "warning: fumo state == DOWNLOAD_PROGRESSING"

    invoke-static {v3, v4}, Lcom/asus/dmlib/util/DMLog;->logD(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lcom/asus/dmlib/vdm/VdmException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_0

    .line 227
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 228
    .restart local v0       #e:Lcom/asus/dmlib/vdm/VdmException;
    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->printStackTrace()V

    goto/16 :goto_0

    .line 218
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 219
    .restart local v0       #e:Lcom/asus/dmlib/vdm/VdmException;
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->DOWNLOAD_FAILED:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 220
    invoke-static {v0}, Lcom/asus/dmlib/util/DMLog;->logException(Ljava/lang/Throwable;)V

    .line 221
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-static {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->access$300(Lcom/asus/dmlib/fumo/FotaDLExecuter;)Lcom/asus/dmlib/vdm/TaskScheduler;

    move-result-object v3

    sget-object v4, Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;->ABORTED:Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;

    invoke-virtual {v0}, Lcom/asus/dmlib/vdm/VdmException;->getErrorCode()Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/asus/dmlib/vdm/TaskScheduler;->onFinishDL(Lcom/asus/dmlib/vdm/SessionStateObserver$SessionState;Lcom/asus/dmlib/vdm/SessionStateObserver$SessionErrCode;)V

    goto :goto_1

    .line 232
    .end local v0           #e:Lcom/asus/dmlib/vdm/VdmException;
    :pswitch_2
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_READY_TO_UPDATE:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 233
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-virtual {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->onConfirmUpgrade()V

    goto/16 :goto_0

    .line 236
    :pswitch_3
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    sget-object v4, Lcom/asus/dmlib/vdm/fumo/FumoState;->UPDATE_PROGRESSING:Lcom/asus/dmlib/vdm/fumo/FumoState;

    invoke-virtual {v3, v4}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->setFumoState(Lcom/asus/dmlib/vdm/fumo/FumoState;)V

    .line 237
    iget-object v3, p0, Lcom/asus/dmlib/fumo/FotaDLExecuter$FUMOHandler;->this$0:Lcom/asus/dmlib/fumo/FotaDLExecuter;

    invoke-virtual {v3}, Lcom/asus/dmlib/fumo/FotaDLExecuter;->onExecuteUpdate()V

    goto/16 :goto_0

    .line 176
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
