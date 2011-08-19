.class public abstract Lcom/google/android/gm/GmailBaseActivity;
.super Landroid/app/Activity;
.source "GmailBaseActivity.java"

# interfaces
.implements Lcom/google/android/gm/MenuHandler$HelpCallback;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpContext()Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    const-string v0, "gm"

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "icicle"

    .prologue
    .line 15
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-static {p0}, Lcom/google/android/gm/InternalActivityStack;->pushActivity(Landroid/app/Activity;)V

    .line 18
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 23
    invoke-static {p0}, Lcom/google/android/gm/InternalActivityStack;->removeActivity(Landroid/app/Activity;)V

    .line 24
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 28
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 37
    invoke-static {p1, p0, p0}, Lcom/google/android/gm/ApplicationMenuHandler;->handleApplicationMenu(Landroid/view/MenuItem;Landroid/content/Context;Lcom/google/android/gm/MenuHandler$HelpCallback;)Z

    move-result v0

    :goto_0
    return v0

    .line 30
    :sswitch_0
    invoke-static {}, Lcom/google/android/gm/Persistence;->getInstance()Lcom/google/android/gm/Persistence;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/android/gm/Persistence;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/Utils;->startSync(Ljava/lang/String;)V

    move v0, v1

    .line 31
    goto :goto_0

    .line 33
    :sswitch_1
    invoke-virtual {p0}, Lcom/google/android/gm/GmailBaseActivity;->onSearchRequested()Z

    move v0, v1

    .line 34
    goto :goto_0

    .line 28
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0e0074 -> :sswitch_1
        0x7f0e00ab -> :sswitch_0
    .end sparse-switch
.end method
