.class Lnet/yostore/aws/ansytask/FileRenameTask$1;
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


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/FileRenameTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/FileRenameTask$1;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 104
    iget-object v0, p0, Lnet/yostore/aws/ansytask/FileRenameTask$1;->this$0:Lnet/yostore/aws/ansytask/FileRenameTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/FileRenameTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 105
    return-void
.end method
