.class public Lcom/google/android/youtube/videos/tablet/TabletNavigation;
.super Ljava/lang/Object;
.source "TabletNavigation.java"

# interfaces
.implements Lcom/google/android/youtube/videos/Navigation;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    .line 18
    return-void
.end method


# virtual methods
.method public toFullscreenWatch(Ljava/lang/String;)V
    .locals 2
    .parameter "videoId"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->createFullscreenIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 38
    return-void
.end method

.method public toHome()V
    .locals 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->createRentalsIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 22
    return-void
.end method

.method public toLocalVideos()V
    .locals 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/tablet/VideosActivity;->createLocalVideosIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 26
    return-void
.end method

.method public toSettings()V
    .locals 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/tablet/SettingsActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 30
    return-void
.end method

.method public toWatch(Ljava/lang/String;)V
    .locals 2
    .parameter "videoId"

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/videos/tablet/WatchActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 34
    return-void
.end method
