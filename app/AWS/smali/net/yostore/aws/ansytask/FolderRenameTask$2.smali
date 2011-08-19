.class Lnet/yostore/aws/ansytask/FolderRenameTask$2;
.super Ljava/lang/Object;
.source "FolderRenameTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/FolderRenameTask;->showRenameDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

.field private final synthetic val$editName:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/FolderRenameTask;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

    iput-object p2, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->val$editName:Landroid/widget/EditText;

    .line 103
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

    .line 111
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->val$editName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/yostore/aws/ansytask/FolderRenameTask;->newName:Ljava/lang/String;

    .line 116
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

    iget-object v2, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

    iget-object v2, v2, Lnet/yostore/aws/ansytask/FolderRenameTask;->newName:Ljava/lang/String;

    invoke-static {v1, v2}, Lnet/yostore/aws/ansytask/FolderRenameTask;->access$3(Lnet/yostore/aws/ansytask/FolderRenameTask;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/FolderRenameTask;->ctx:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f06007f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 120
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/FolderRenameTask;->ctx:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060026

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 121
    const v1, 0x7f060077

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 122
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 126
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 125
    :cond_0
    iget-object v1, p0, Lnet/yostore/aws/ansytask/FolderRenameTask$2;->this$0:Lnet/yostore/aws/ansytask/FolderRenameTask;

    iget-object v1, v1, Lnet/yostore/aws/ansytask/FolderRenameTask;->task:Landroid/os/AsyncTask;

    invoke-virtual {v1, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
