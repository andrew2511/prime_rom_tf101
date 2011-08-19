.class public abstract Lcom/google/android/gm/GmailBaseListActivity;
.super Landroid/app/ListActivity;
.source "GmailBaseListActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 12
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    invoke-static {p0}, Lcom/google/android/gm/InternalActivityStack;->pushActivity(Landroid/app/Activity;)V

    .line 14
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 19
    invoke-static {p0}, Lcom/google/android/gm/InternalActivityStack;->removeActivity(Landroid/app/Activity;)V

    .line 20
    return-void
.end method
