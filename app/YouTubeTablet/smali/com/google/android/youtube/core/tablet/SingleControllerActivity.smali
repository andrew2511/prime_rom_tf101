.class public abstract Lcom/google/android/youtube/core/tablet/SingleControllerActivity;
.super Lcom/google/android/youtube/core/tablet/ControllerActivity;
.source "SingleControllerActivity.java"


# instance fields
.field private controller:Lcom/google/android/youtube/core/tablet/Controller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/ControllerActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract newController(Landroid/os/Bundle;)Lcom/google/android/youtube/core/tablet/Controller;
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 20
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/ControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 23
    .local v0, actionBar:Landroid/app/ActionBar;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 24
    const/16 v1, 0x18

    .line 25
    .local v1, displayOptions:I
    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 27
    invoke-virtual {p0}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->newController(Landroid/os/Bundle;)Lcom/google/android/youtube/core/tablet/Controller;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->controller:Lcom/google/android/youtube/core/tablet/Controller;

    .line 28
    iget-object v2, p0, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->controller:Lcom/google/android/youtube/core/tablet/Controller;

    invoke-virtual {p0, v2, p1}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->addController(Lcom/google/android/youtube/core/tablet/Controller;Landroid/os/Bundle;)V

    .line 29
    return-void
.end method
