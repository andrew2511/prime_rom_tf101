.class public Lnet/yostore/aws/view/debug/DebugListActivity;
.super Landroid/app/ListActivity;
.source "DebugListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "icicle"

    .prologue
    .line 11
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 12
    const-string v0, "aws"

    invoke-static {v0}, Landroid/os/Debug;->startMethodTracing(Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method protected onDestory()V
    .locals 0

    .prologue
    .line 17
    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    .line 18
    return-void
.end method
