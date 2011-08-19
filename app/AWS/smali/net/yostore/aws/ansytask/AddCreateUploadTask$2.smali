.class Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;
.super Ljava/lang/Object;
.source "AddCreateUploadTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/AddCreateUploadTask;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

.field private final synthetic val$editName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/AddCreateUploadTask;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    iput-object p2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->val$editName:Landroid/widget/EditText;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;)Lnet/yostore/aws/ansytask/AddCreateUploadTask;
    .locals 1
    .parameter

    .prologue
    .line 108
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 116
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->val$editName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->newName:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    iget-object v2, v2, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->newName:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->access$3(Lnet/yostore/aws/ansytask/AddCreateUploadTask;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 125
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v2, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2$1;

    invoke-direct {v2, p0}, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2$1;-><init>(Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 139
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 138
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->this$0:Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->task:Landroid/os/AsyncTask;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
