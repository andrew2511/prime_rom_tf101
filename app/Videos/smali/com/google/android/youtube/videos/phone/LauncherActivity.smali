.class public Lcom/google/android/youtube/videos/phone/LauncherActivity;
.super Landroid/app/Activity;
.source "LauncherActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const-string v8, "authAccount"

    .line 23
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/LauncherActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 26
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "authAccount"

    invoke-virtual {v1, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, accountName:Ljava/lang/String;
    invoke-static {p0}, Lcom/google/android/youtube/videos/phone/VideosActivity;->createRentalsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "authAccount"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 30
    .local v3, videosIntent:Landroid/content/Intent;
    invoke-virtual {p0, v3}, Lcom/google/android/youtube/videos/phone/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 32
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 33
    .local v2, interceptedUri:Landroid/net/Uri;
    invoke-static {p0, v2}, Lcom/google/android/youtube/videos/phone/WatchActivity;->createUriIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "fullscreen"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "authAccount"

    invoke-virtual {v5, v8, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 36
    .local v4, watchIntent:Landroid/content/Intent;
    invoke-virtual {p0, v4}, Lcom/google/android/youtube/videos/phone/LauncherActivity;->startActivity(Landroid/content/Intent;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/android/youtube/videos/phone/LauncherActivity;->finish()V

    .line 39
    return-void
.end method
