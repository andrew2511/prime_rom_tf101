.class public Lcom/google/android/youtube/app/tablet/WatchActivity;
.super Lcom/google/android/youtube/core/tablet/SingleControllerActivity;
.source "WatchActivity.java"


# instance fields
.field private controller:Lcom/google/android/youtube/app/tablet/WatchController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static createFavoriteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 35
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/google/android/youtube/app/tablet/WatchController;->createArgumentsForFavourite(Ljava/lang/String;Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 25
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/app/tablet/WatchController;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createPlaylistIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2}, Lcom/google/android/youtube/app/tablet/WatchController;->createArgumentsForPlaylist(Landroid/net/Uri;Z)Landroid/os/Bundle;

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
    .line 55
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/WatchActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 56
    .local v0, application:Lcom/google/android/youtube/app/YouTubeApplication;
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 57
    if-nez p1, :cond_0

    .line 58
    new-instance p1, Landroid/os/Bundle;

    .end local p1
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 60
    .restart local p1
    :cond_0
    const-string v1, "intercepted_uri"

    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 62
    :cond_1
    new-instance v1, Lcom/google/android/youtube/app/tablet/WatchController;

    new-instance v2, Lcom/google/android/youtube/app/tablet/TabletNavigation;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/tablet/TabletNavigation;-><init>(Landroid/app/Activity;)V

    invoke-direct {v1, v0, p0, v2, p1}, Lcom/google/android/youtube/app/tablet/WatchController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

    iput-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchActivity;->controller:Lcom/google/android/youtube/app/tablet/WatchController;

    .line 63
    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/WatchActivity;->controller:Lcom/google/android/youtube/app/tablet/WatchController;

    return-object v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 69
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchActivity;->controller:Lcom/google/android/youtube/app/tablet/WatchController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/app/tablet/WatchController;->onOrientationChanged(Z)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 47
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 48
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 49
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/WatchActivity;->enableUpNavigation(Z)V

    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchActivity;->controller:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/WatchActivity;->addPaddingForActionBar(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 51
    return-void
.end method

.method protected onUpPressed()V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/WatchActivity;->controller:Lcom/google/android/youtube/app/tablet/WatchController;

    invoke-virtual {v0}, Lcom/google/android/youtube/app/tablet/WatchController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/WatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 79
    :cond_0
    return-void
.end method
