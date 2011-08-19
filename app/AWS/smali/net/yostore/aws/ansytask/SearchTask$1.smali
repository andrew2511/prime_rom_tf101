.class Lnet/yostore/aws/ansytask/SearchTask$1;
.super Ljava/lang/Object;
.source "SearchTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/SearchTask;->onProgressUpdate([Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/SearchTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/SearchTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/SearchTask$1;->this$0:Lnet/yostore/aws/ansytask/SearchTask;

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 92
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask$1;->this$0:Lnet/yostore/aws/ansytask/SearchTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/SearchTask;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 93
    iget-object v0, p0, Lnet/yostore/aws/ansytask/SearchTask$1;->this$0:Lnet/yostore/aws/ansytask/SearchTask;

    invoke-virtual {v0}, Lnet/yostore/aws/ansytask/SearchTask;->onBack()V

    .line 94
    return-void
.end method
