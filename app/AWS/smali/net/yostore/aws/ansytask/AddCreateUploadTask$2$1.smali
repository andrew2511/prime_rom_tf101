.class Lnet/yostore/aws/ansytask/AddCreateUploadTask$2$1;
.super Ljava/lang/Object;
.source "AddCreateUploadTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->onClick(Landroid/content/DialogInterface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2$1;->this$1:Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 130
    iget-object v0, p0, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2$1;->this$1:Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;

    invoke-static {v0}, Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;->access$0(Lnet/yostore/aws/ansytask/AddCreateUploadTask$2;)Lnet/yostore/aws/ansytask/AddCreateUploadTask;

    move-result-object v0

    invoke-static {v0}, Lnet/yostore/aws/ansytask/AddCreateUploadTask;->access$4(Lnet/yostore/aws/ansytask/AddCreateUploadTask;)V

    .line 131
    return-void
.end method
