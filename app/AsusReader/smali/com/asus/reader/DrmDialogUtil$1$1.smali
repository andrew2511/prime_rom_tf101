.class Lcom/asus/reader/DrmDialogUtil$1$1;
.super Ljava/lang/Thread;
.source "DrmDialogUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/DrmDialogUtil$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/DrmDialogUtil$1;


# direct methods
.method constructor <init>(Lcom/asus/reader/DrmDialogUtil$1;)V
    .locals 0
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 91
    const/4 v1, 0x0

    .line 92
    .local v1, isWorkflowError:Z
    const-string v0, ""

    .line 94
    .local v0, errorString:Ljava/lang/String;
    invoke-static {}, Lcom/asus/reader/book/DrmProcessor;->initActivation()V

    .line 95
    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v3, v3, Lcom/asus/reader/DrmDialogUtil$1;->val$mAdobeIdEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v4, v4, Lcom/asus/reader/DrmDialogUtil$1;->val$mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "AdobeID"

    invoke-static {v3, v4, v5}, Lcom/asus/reader/book/DrmProcessor;->activationNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v3, v3, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v4, v4, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    const/16 v5, 0x4eb

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 99
    sget-boolean v1, Lcom/asus/reader/book/DrmProcessor;->mIsWorkflowError:Z

    .line 100
    const/4 v2, 0x0

    .line 101
    .local v2, resultStr:Ljava/lang/String;
    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 102
    sget-object v0, Lcom/asus/reader/book/DrmProcessor;->mCurrentErrorString:Ljava/lang/String;

    .line 103
    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v3, v3, Lcom/asus/reader/DrmDialogUtil$1;->val$c:Landroid/content/Context;

    invoke-static {v0}, Lcom/asus/reader/book/DrmProcessor;->getErrorId(Ljava/lang/String;)I

    move-result v4

    invoke-static {v3, v4}, Lcom/asus/reader/book/DrmProcessor;->getErrorDesc(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    .line 104
    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v3, v3, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v4, v4, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    const/16 v5, 0x4ec

    invoke-virtual {v4, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    :goto_0
    return-void

    .line 106
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v3, v3, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v4, v4, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    const/16 v5, 0x4e8

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 108
    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v3, v3, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/reader/DrmDialogUtil$1$1;->this$0:Lcom/asus/reader/DrmDialogUtil$1;

    iget-object v4, v4, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    const/16 v5, 0x4fd

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method
