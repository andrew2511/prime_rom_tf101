.class Lnet/yostore/aws/ansytask/AddDownloadTask$2;
.super Ljava/lang/Object;
.source "AddDownloadTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/AddDownloadTask;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

.field private final synthetic val$editName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/AddDownloadTask;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

    iput-object p2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->val$editName:Landroid/widget/EditText;

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v3, 0x0

    .line 129
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->val$editName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/ansytask/AddDownloadTask;->newName:Ljava/lang/String;

    .line 134
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

    iget-object v2, v2, Lnet/yostore/aws/ansytask/AddDownloadTask;->newName:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/ansytask/AddDownloadTask;->access$3(Lnet/yostore/aws/ansytask/AddDownloadTask;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 137
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v1, "format error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 138
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/AddDownloadTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 139
    const-string v1, "format error"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 140
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 144
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 143
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddDownloadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddDownloadTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/AddDownloadTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
