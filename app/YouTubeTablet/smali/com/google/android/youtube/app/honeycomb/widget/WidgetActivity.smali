.class public Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;
.super Landroid/app/Activity;
.source "WidgetActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 78
    const/4 v1, 0x0

    invoke-static {p0, p1, p2, p3, v1}, Lcom/google/android/youtube/core/utils/ExternalIntents;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    .line 80
    .local v0, launchedNewActivity:Z
    if-nez v0, :cond_0

    .line 83
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->finish()V

    .line 87
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v5, 0x0

    .line 47
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/app/YouTubeApplication;

    .line 49
    .local v1, application:Lcom/google/android/youtube/app/YouTubeApplication;
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 50
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, action:Ljava/lang/String;
    const-string v4, "com.google.android.youtube.action.widget_camera"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 55
    const-string v4, "WidgetCamera"

    invoke-virtual {v1, v4}, Lcom/google/android/youtube/app/YouTubeApplication;->trackEvent(Ljava/lang/String;)V

    .line 56
    invoke-static {p0}, Lcom/google/android/youtube/core/utils/ExternalIntents;->startVideoRecordActivity(Landroid/app/Activity;)V

    .line 74
    :goto_0
    return-void

    .line 57
    :cond_0
    const-string v4, "com.google.android.youtube.action.widget_search"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 58
    const-string v4, "WidgetSearch"

    invoke-virtual {v1, v4}, Lcom/google/android/youtube/app/YouTubeApplication;->trackEvent(Ljava/lang/String;)V

    .line 59
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createSearchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 61
    :cond_1
    const-string v4, "com.google.android.youtube.action.widget_home"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    const-string v4, "WidgetLogo"

    invoke-virtual {v1, v4}, Lcom/google/android/youtube/app/YouTubeApplication;->trackEvent(Ljava/lang/String;)V

    .line 63
    invoke-static {p0}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 65
    :cond_2
    const-string v4, "com.google.android.youtube.action.widget_play"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 66
    sget-object v4, Lcom/google/android/youtube/core/Analytics$VideoCategory;->Widget:Lcom/google/android/youtube/core/Analytics$VideoCategory;

    invoke-virtual {v1, v4, v5}, Lcom/google/android/youtube/app/YouTubeApplication;->trackPlaySelectedEvent(Lcom/google/android/youtube/core/Analytics$VideoCategory;I)V

    .line 67
    const-string v4, "video_id"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    .local v3, videoId:Ljava/lang/String;
    invoke-static {p0, v3}, Lcom/google/android/youtube/app/tablet/WatchActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4, v5}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 71
    .end local v3           #videoId:Ljava/lang/String;
    :cond_3
    const-string v4, "missing a widget launch action"

    invoke-static {v4}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/google/android/youtube/app/honeycomb/widget/WidgetActivity;->finish()V

    goto :goto_0
.end method
