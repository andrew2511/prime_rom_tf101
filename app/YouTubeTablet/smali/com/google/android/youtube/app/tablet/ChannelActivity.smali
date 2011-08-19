.class public Lcom/google/android/youtube/app/tablet/ChannelActivity;
.super Lcom/google/android/youtube/core/tablet/SingleControllerActivity;
.source "ChannelActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 22
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/app/tablet/ChannelController;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/ChannelActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2, p3}, Lcom/google/android/youtube/app/tablet/ChannelController;->createArguments(Ljava/lang/String;ILandroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected newController(Landroid/os/Bundle;)Lcom/google/android/youtube/core/tablet/Controller;
    .locals 3
    .parameter "launchBundle"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/ChannelActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 41
    .local v0, application:Lcom/google/android/youtube/app/YouTubeApplication;
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 45
    .restart local p1
    :cond_0
    const-string v1, "username"

    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/ChannelActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/youtube/core/utils/ExternalIntents;->parseYouTubeChannelUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_1
    new-instance v1, Lcom/google/android/youtube/app/tablet/ChannelController;

    new-instance v2, Lcom/google/android/youtube/app/tablet/TabletNavigation;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/tablet/TabletNavigation;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/google/android/youtube/app/tablet/ChannelController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 35
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/ChannelActivity;->enableUpNavigation(Z)V

    .line 36
    return-void
.end method

.method protected onUpPressed()V
    .locals 1

    .prologue
    .line 53
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/ChannelActivity;->startActivity(Landroid/content/Intent;)V

    .line 54
    return-void
.end method
