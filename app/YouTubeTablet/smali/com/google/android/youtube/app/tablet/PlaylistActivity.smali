.class public Lcom/google/android/youtube/app/tablet/PlaylistActivity;
.super Lcom/google/android/youtube/core/tablet/SingleControllerActivity;
.source "PlaylistActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/android/youtube/core/tablet/SingleControllerActivity;-><init>()V

    return-void
.end method

.method public static createIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 21
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/PlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static/range {p1 .. p6}, Lcom/google/android/youtube/app/tablet/PlaylistController;->createArguments(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/google/android/youtube/app/tablet/PlaylistActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p1, p2, p3}, Lcom/google/android/youtube/app/tablet/PlaylistController;->createArguments(Landroid/net/Uri;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected newController(Landroid/os/Bundle;)Lcom/google/android/youtube/core/tablet/Controller;
    .locals 4
    .parameter "arguments"

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/PlaylistActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 41
    .local v0, application:Lcom/google/android/youtube/app/YouTubeApplication;
    new-instance v1, Lcom/google/android/youtube/app/tablet/PlaylistController;

    new-instance v2, Lcom/google/android/youtube/app/tablet/TabletNavigation;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/app/tablet/TabletNavigation;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/google/android/youtube/app/tablet/PlaylistActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v0, p0, v2, v3}, Lcom/google/android/youtube/app/tablet/PlaylistController;-><init>(Lcom/google/android/youtube/app/YouTubeApplication;Landroid/app/Activity;Lcom/google/android/youtube/app/Navigation;Landroid/os/Bundle;)V

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

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/PlaylistActivity;->enableUpNavigation(Z)V

    .line 36
    return-void
.end method

.method protected onUpPressed()V
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/app/tablet/PlaylistActivity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method
