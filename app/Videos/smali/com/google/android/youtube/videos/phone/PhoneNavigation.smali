.class public Lcom/google/android/youtube/videos/phone/PhoneNavigation;
.super Ljava/lang/Object;
.source "PhoneNavigation.java"

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
    iput-object p1, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    .line 18
    return-void
.end method


# virtual methods
.method public toFullscreenWatch(Ljava/lang/String;)V
    .locals 0
    .parameter "videoId"

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->toWatch(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public toHome()V
    .locals 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 23
    return-void
.end method

.method public toLocalVideos()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/phone/VideosActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 28
    return-void
.end method

.method public toSettings()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/videos/phone/SettingsActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 32
    return-void
.end method

.method public toWatch(Ljava/lang/String;)V
    .locals 2
    .parameter "videoId"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/videos/phone/PhoneNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/videos/phone/WatchActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 36
    return-void
.end method
