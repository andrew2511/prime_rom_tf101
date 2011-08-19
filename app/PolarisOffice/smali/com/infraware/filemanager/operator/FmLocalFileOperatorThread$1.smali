.class Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;
.super Landroid/os/Handler;
.source "FmLocalFileOperatorThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;


# direct methods
.method constructor <init>(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    .line 188
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .parameter "msg"

    .prologue
    const v4, 0x7f0a0227

    .line 191
    iget v0, p1, Landroid/os/Message;->what:I

    .line 192
    .local v0, nOperation:I
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 194
    .local v1, nResult:I
    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 197
    :pswitch_0
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 198
    invoke-static {}, Lcom/infraware/filemanager/FmFileProgress;->stopProgress()V

    .line 199
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v2, v2, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$0(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->preparePaste(I)V

    goto :goto_0

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 203
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0a024a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 204
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0288

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 202
    invoke-static {v2, v3, v4}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v2, v2, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onEvent(IILjava/lang/String;)V

    .line 206
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v2, v2, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    invoke-virtual {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->updateFileList()I

    goto :goto_0

    .line 210
    :pswitch_1
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v2, v2, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    invoke-virtual {v2, v0, v1}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onResult(II)V

    goto :goto_0

    .line 213
    :pswitch_2
    invoke-static {}, Lcom/infraware/filemanager/operator/FmFileOperatorSync;->getAsyncOperationCommand()Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    move-result-object v2

    sget-object v3, Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;->eUC_File_ContextMove:Lcom/infraware/uxcontrol/uiunit/UiEnum$EUnitCommand;

    if-ne v2, v3, :cond_1

    .line 214
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v2, v2, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    invoke-virtual {v2, v0, v1}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onResult(II)V

    goto :goto_0

    .line 219
    :cond_1
    if-nez v1, :cond_3

    .line 220
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 221
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 222
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a028b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 220
    invoke-static {v2, v3, v4}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 231
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    iget-object v2, v2, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->m_oFmLocalFileOperator:Lcom/infraware/filemanager/operator/FmLocalFileOperator;

    invoke-virtual {v2, v0, v1}, Lcom/infraware/filemanager/operator/FmLocalFileOperator;->onResult(II)V

    goto/16 :goto_0

    .line 224
    :cond_3
    const/4 v2, -0x7

    if-ne v1, v2, :cond_2

    .line 225
    iget-object v2, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v2}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    .line 226
    iget-object v3, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v3}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 227
    iget-object v4, p0, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread$1;->this$0:Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;

    invoke-static {v4}, Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;->access$1(Lcom/infraware/filemanager/operator/FmLocalFileOperatorThread;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0a0312

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 225
    invoke-static {v2, v3, v4}, Lcom/infraware/common/CoNotification;->Error(Landroid/app/Activity;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 194
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
