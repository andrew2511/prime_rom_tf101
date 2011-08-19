.class final Lcom/asus/reader/DrmDialogUtil$1;
.super Ljava/lang/Object;
.source "DrmDialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/DrmDialogUtil;->showDrmLoginDialog(Landroid/content/Context;Landroid/os/Handler;Z)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$c:Landroid/content/Context;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$mAdobeIdEditText:Landroid/widget/EditText;

.field final synthetic val$mPasswordEditText:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/widget/EditText;Landroid/content/Context;Landroid/widget/EditText;Landroid/app/AlertDialog;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$mAdobeIdEditText:Landroid/widget/EditText;

    iput-object p2, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$c:Landroid/content/Context;

    iput-object p3, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$mPasswordEditText:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$alertDialog:Landroid/app/AlertDialog;

    iput-object p5, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 70
    iget-object v2, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$mAdobeIdEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 72
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$c:Landroid/content/Context;

    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$c:Landroid/content/Context;

    const v4, 0x7f07004b

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-void

    .line 74
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 75
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 77
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$mPasswordEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 79
    :try_start_1
    iget-object v2, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$c:Landroid/content/Context;

    const v4, 0x7f07004c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 81
    :catch_1
    move-exception v2

    move-object v0, v2

    .line 82
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 85
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 87
    iget-object v2, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/asus/reader/DrmDialogUtil$1;->val$handler:Landroid/os/Handler;

    const/16 v4, 0x4ea

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 88
    new-instance v1, Lcom/asus/reader/DrmDialogUtil$1$1;

    invoke-direct {v1, p0}, Lcom/asus/reader/DrmDialogUtil$1$1;-><init>(Lcom/asus/reader/DrmDialogUtil$1;)V

    .line 113
    .local v1, t:Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
