.class public Lcom/google/android/youtube/videos/tablet/WatchActivity;
.super Lcom/google/android/youtube/core/tablet/SingleControllerActivity;
.source "WatchActivity.java"


# instance fields
.field private controller:Lcom/google/android/youtube/videos/tablet/WatchController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static createFullscreenIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "videoId"

    .prologue
    .line 32
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/google/android/youtube/videos/tablet/WatchController;->createArguments(Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "videoId"

    .prologue
    .line 27
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/videos/tablet/WatchController;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createUriIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "uri"

    .prologue
    .line 37
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/videos/tablet/WatchActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1}, Lcom/google/android/youtube/videos/tablet/WatchController;->createArgumentsForUri(Landroid/net/Uri;)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected newController(Landroid/os/Bundle;)Lcom/google/android/youtube/core/tablet/Controller;
    .locals 7
    .parameter "launchBundle"

    .prologue
    const-string v6, "fullscreen"

    const-string v5, "authAccount"

    .line 51
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/videos/VideosApplication;

    .line 52
    .local v1, application:Lcom/google/android/youtube/videos/VideosApplication;
    if-eqz p1, :cond_2

    move-object v2, p1

    .line 53
    .local v2, bundle:Landroid/os/Bundle;
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 54
    const-string v3, "intercepted_uri"

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 56
    :cond_0
    const-string v3, "fullscreen"

    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "fullscreen"

    const/4 v4, 0x0

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v6, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "authAccount"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, accountName:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 59
    const-string v3, "authAccount"

    invoke-virtual {v2, v5, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    :cond_1
    new-instance v3, Lcom/google/android/youtube/videos/tablet/WatchController;

    new-instance v4, Lcom/google/android/youtube/videos/tablet/TabletNavigation;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/videos/tablet/TabletNavigation;-><init>(Landroid/app/Activity;)V

    invoke-direct {v3, v1, p0, v4, v2}, Lcom/google/android/youtube/videos/tablet/WatchController;-><init>(Lcom/google/android/youtube/videos/VideosApplication;Landroid/app/Activity;Lcom/google/android/youtube/videos/Navigation;Landroid/os/Bundle;)V

    iput-object v3, p0, Lcom/google/android/youtube/videos/tablet/WatchActivity;->controller:Lcom/google/android/youtube/videos/tablet/WatchController;

    .line 62
    iget-object v3, p0, Lcom/google/android/youtube/videos/tablet/WatchActivity;->controller:Lcom/google/android/youtube/videos/tablet/WatchController;

    return-object v3

    .line 52
    .end local v0           #accountName:Ljava/lang/String;
    .end local v2           #bundle:Landroid/os/Bundle;
    :cond_2
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    move-object v2, v3

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 68
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchActivity;->controller:Lcom/google/android/youtube/videos/tablet/WatchController;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchController;->onOrientationChanged(Z)V

    .line 69
    return-void

    .line 68
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 44
    invoke-super {p0, p1}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->enableUpNavigation(Z)V

    .line 46
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchActivity;->controller:Lcom/google/android/youtube/videos/tablet/WatchController;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->addPaddingForActionBar(Lcom/google/android/youtube/core/tablet/Controller;)V

    .line 47
    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchActivity;->controller:Lcom/google/android/youtube/videos/tablet/WatchController;

    const-string v1, "authAccount"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/videos/tablet/WatchController;->reset(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method protected onUpPressed()V
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/WatchActivity;->controller:Lcom/google/android/youtube/videos/tablet/WatchController;

    invoke-virtual {v0}, Lcom/google/android/youtube/videos/tablet/WatchController;->onBackPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    invoke-static {p0}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->startActivity(Landroid/content/Intent;)V

    .line 83
    :cond_0
    return-void
.end method
