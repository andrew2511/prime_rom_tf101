.class Lcom/google/android/gm/MenuHandler$1;
.super Landroid/os/Handler;
.source "MenuHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gm/MenuHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/MenuHandler;


# direct methods
.method constructor <init>(Lcom/google/android/gm/MenuHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/google/android/gm/MenuHandler$1;->this$0:Lcom/google/android/gm/MenuHandler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 13
    .parameter "msg"

    .prologue
    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 81
    iget-object v10, p0, Lcom/google/android/gm/MenuHandler$1;->this$0:Lcom/google/android/gm/MenuHandler;

    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->access$000(Lcom/google/android/gm/MenuHandler;)Landroid/app/Activity;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Activity;->isFinishing()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    iget v10, p1, Landroid/os/Message;->arg1:I

    if-eqz v10, :cond_2

    move v0, v11

    .line 86
    .local v0, add:Z
    :goto_1
    iget v10, p1, Landroid/os/Message;->what:I

    if-ne v11, v10, :cond_3

    .line 88
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    .line 89
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "LABEL_KEY"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 90
    .local v7, labelStr:Ljava/lang/String;
    const-string v10, "CONVERSATION_KEY"

    invoke-virtual {v1, v10}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 96
    .local v2, conversationId:J
    invoke-static {v7}, Lcom/google/android/gm/provider/Label;->parseJoinedString(Ljava/lang/String;)Lcom/google/android/gm/provider/Label;

    move-result-object v5

    .line 97
    .local v5, label:Lcom/google/android/gm/provider/Label;
    iget-object v10, p0, Lcom/google/android/gm/MenuHandler$1;->this$0:Lcom/google/android/gm/MenuHandler;

    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->access$100(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/MenuHandler$ActivityCallback;

    move-result-object v10

    invoke-interface {v10, v5, v2, v3, v0}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onLabelChanged(Lcom/google/android/gm/provider/Label;JZ)V

    goto :goto_0

    .end local v0           #add:Z
    .end local v1           #bundle:Landroid/os/Bundle;
    .end local v2           #conversationId:J
    .end local v5           #label:Lcom/google/android/gm/provider/Label;
    .end local v7           #labelStr:Ljava/lang/String;
    :cond_2
    move v0, v12

    .line 85
    goto :goto_1

    .line 98
    .restart local v0       #add:Z
    :cond_3
    const/4 v10, 0x2

    iget v11, p1, Landroid/os/Message;->what:I

    if-ne v10, v11, :cond_4

    .line 100
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    .line 101
    .local v4, encodedLabelOperations:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/gm/LabelOperations;->deserialize(Ljava/lang/String;)Lcom/google/android/gm/LabelOperations;

    move-result-object v6

    .line 103
    .local v6, labelOperations:Lcom/google/android/gm/LabelOperations;
    iget-object v10, p0, Lcom/google/android/gm/MenuHandler$1;->this$0:Lcom/google/android/gm/MenuHandler;

    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->access$200(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/BulkOperationHelper;

    move-result-object v8

    .line 104
    .local v8, op:Lcom/google/android/gm/BulkOperationHelper;
    invoke-virtual {v8, v12}, Lcom/google/android/gm/BulkOperationHelper;->hideProgressDialog(Z)V

    .line 105
    invoke-virtual {v8}, Lcom/google/android/gm/BulkOperationHelper;->clearState()V

    .line 106
    iget-object v10, p0, Lcom/google/android/gm/MenuHandler$1;->this$0:Lcom/google/android/gm/MenuHandler;

    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->access$100(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/MenuHandler$ActivityCallback;

    move-result-object v10

    invoke-interface {v10, v6}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->doneChangingLabels(Lcom/google/android/gm/LabelOperations;)V

    goto :goto_0

    .line 107
    .end local v4           #encodedLabelOperations:Ljava/lang/String;
    .end local v6           #labelOperations:Lcom/google/android/gm/LabelOperations;
    .end local v8           #op:Lcom/google/android/gm/BulkOperationHelper;
    :cond_4
    const/4 v10, 0x3

    iget v11, p1, Landroid/os/Message;->what:I

    if-ne v10, v11, :cond_0

    .line 108
    iget-object v9, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Lcom/google/android/gm/UndoOperation;

    .line 109
    .local v9, operation:Lcom/google/android/gm/UndoOperation;
    if-eqz v9, :cond_5

    .line 111
    iget-object v10, p0, Lcom/google/android/gm/MenuHandler$1;->this$0:Lcom/google/android/gm/MenuHandler;

    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->access$100(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/MenuHandler$ActivityCallback;

    move-result-object v10

    invoke-interface {v10, v9}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onUndoAvailable(Lcom/google/android/gm/UndoOperation;)V

    goto :goto_0

    .line 114
    :cond_5
    iget-object v10, p0, Lcom/google/android/gm/MenuHandler$1;->this$0:Lcom/google/android/gm/MenuHandler;

    invoke-static {v10}, Lcom/google/android/gm/MenuHandler;->access$100(Lcom/google/android/gm/MenuHandler;)Lcom/google/android/gm/MenuHandler$ActivityCallback;

    move-result-object v10

    invoke-interface {v10}, Lcom/google/android/gm/MenuHandler$ActivityCallback;->onUndoExpired()V

    goto :goto_0
.end method
