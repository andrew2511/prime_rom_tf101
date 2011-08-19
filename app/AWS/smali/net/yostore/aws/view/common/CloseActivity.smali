.class public Lnet/yostore/aws/view/common/CloseActivity;
.super Landroid/app/Activity;
.source "CloseActivity.java"


# static fields
.field static ctx:Landroid/content/Context;


# instance fields
.field private handler:Landroid/os/Handler;

.field private pid:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    sput-object v0, Lnet/yostore/aws/view/common/CloseActivity;->ctx:Landroid/content/Context;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/view/common/CloseActivity;->handler:Landroid/os/Handler;

    .line 20
    sget v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->closePid:I

    iput v0, p0, Lnet/yostore/aws/view/common/CloseActivity;->pid:I

    .line 33
    new-instance v0, Lnet/yostore/aws/view/common/CloseActivity$1;

    invoke-direct {v0, p0}, Lnet/yostore/aws/view/common/CloseActivity$1;-><init>(Lnet/yostore/aws/view/common/CloseActivity;)V

    iput-object v0, p0, Lnet/yostore/aws/view/common/CloseActivity;->runnable:Ljava/lang/Runnable;

    .line 15
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    .line 24
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f030018

    invoke-virtual {p0, v0}, Lnet/yostore/aws/view/common/CloseActivity;->setContentView(I)V

    .line 26
    sget v0, Lcom/ecareme/asuswebstorage/ASUSWebstorage;->closePid:I

    iput v0, p0, Lnet/yostore/aws/view/common/CloseActivity;->pid:I

    .line 27
    iget v0, p0, Lnet/yostore/aws/view/common/CloseActivity;->pid:I

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    .line 28
    iget-object v0, p0, Lnet/yostore/aws/view/common/CloseActivity;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/yostore/aws/view/common/CloseActivity;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 31
    return-void
.end method
