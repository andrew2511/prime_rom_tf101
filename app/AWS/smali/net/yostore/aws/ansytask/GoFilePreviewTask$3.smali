.class Lnet/yostore/aws/ansytask/GoFilePreviewTask$3;
.super Ljava/lang/Object;
.source "GoFilePreviewTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/yostore/aws/ansytask/GoFilePreviewTask;->onPostExecute(Ljava/lang/Integer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/yostore/aws/ansytask/GoFilePreviewTask;


# direct methods
.method constructor <init>(Lnet/yostore/aws/ansytask/GoFilePreviewTask;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask$3;->this$0:Lnet/yostore/aws/ansytask/GoFilePreviewTask;

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 136
    iget-object v0, p0, Lnet/yostore/aws/ansytask/GoFilePreviewTask$3;->this$0:Lnet/yostore/aws/ansytask/GoFilePreviewTask;

    iget-object v0, v0, Lnet/yostore/aws/ansytask/GoFilePreviewTask;->ctx:Landroid/content/Context;

    invoke-static {v0}, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->goHome(Landroid/content/Context;)V

    .line 137
    return-void
.end method
