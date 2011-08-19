.class Lnet/yostore/aws/ansytask/FileRenameTask$2;
.super Ljava/lang/Object;
.source "FileRenameTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/FileRenameTask;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

.field private final synthetic val$editName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/FileRenameTask;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iput-object p2, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->val$editName:Landroid/widget/EditText;

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v4, 0x0

    .line 116
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    new-instance v2, Ljava/lang/StringBuilder;

    iget-object v3, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->val$editName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iget-object v3, v3, Lnet/yostore/aws/ansytask/FileRenameTask;->fileExt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/ansytask/FileRenameTask;->newName:Ljava/lang/String;

    .line 121
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iget-object v2, v2, Lnet/yostore/aws/ansytask/FileRenameTask;->newName:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/ansytask/FileRenameTask;->access$3(Lnet/yostore/aws/ansytask/FileRenameTask;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 123
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 124
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 125
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/FileRenameTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 126
    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 127
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 131
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 130
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FileRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/FileRenameTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
