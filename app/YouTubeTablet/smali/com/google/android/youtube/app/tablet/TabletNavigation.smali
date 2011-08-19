.class public Lcom/google/android/youtube/app/tablet/TabletNavigation;
.super Ljava/lang/Object;
.source "TabletNavigation.java"

# interfaces
.implements Lcom/google/android/youtube/app/Navigation;


# instance fields
.field private final activity:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    .line 21
    return-void
.end method


# virtual methods
.method public toBrowse()V
    .locals 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createBrowseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public toChannel(Ljava/lang/String;)V
    .locals 2
    .parameter "user"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/tablet/ChannelActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 37
    return-void
.end method

.method public toChannel(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 2
    .parameter "user"
    .parameter "selectedTabId"
    .parameter "unsubscribeUri"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/tablet/ChannelActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;ILandroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 42
    return-void
.end method

.method public toHome()V
    .locals 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createHomeIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 25
    return-void
.end method

.method public toMyChannel()V
    .locals 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/google/android/youtube/app/tablet/HomeActivity;->createMyChannelIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method public toPlaylist(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 8
    .parameter "playlistUri"
    .parameter "title"
    .parameter "summary"
    .parameter "author"
    .parameter "size"
    .parameter "authenticate"

    .prologue
    .line 46
    iget-object v7, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/google/android/youtube/app/tablet/PlaylistActivity;->createIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 48
    return-void
.end method

.method public toPlaylist(Landroid/net/Uri;Ljava/lang/String;Z)V
    .locals 2
    .parameter "playlistUri"
    .parameter "title"
    .parameter "authenticate"

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1, p2, p3}, Lcom/google/android/youtube/app/tablet/PlaylistActivity;->createIntent(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 53
    return-void
.end method

.method public toSearch(Ljava/lang/String;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/tablet/ResultsActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 57
    return-void
.end method

.method public toSearch(Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)V
    .locals 2
    .parameter "query"
    .parameter "selectedTimeFilter"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/tablet/ResultsActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/youtube/core/async/GDataRequests$TimeFilter;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 61
    return-void
.end method

.method public toSettings()V
    .locals 4

    .prologue
    .line 80
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    const-class v3, Lcom/google/android/youtube/app/tablet/SettingsActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 81
    return-void
.end method

.method public toWatch(Ljava/lang/String;)V
    .locals 2
    .parameter "videoId"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1}, Lcom/google/android/youtube/app/tablet/WatchActivity;->createIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 65
    return-void
.end method

.method public toWatchFavorite(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .parameter "videoId"
    .parameter "unfavoriteUri"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/tablet/WatchActivity;->createFavoriteIntent(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 73
    return-void
.end method

.method public toWatchPlaylist(Landroid/net/Uri;Z)V
    .locals 2
    .parameter "playlistUri"
    .parameter "authenticate"

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/youtube/app/tablet/TabletNavigation;->activity:Landroid/app/Activity;

    invoke-static {v1, p1, p2}, Lcom/google/android/youtube/app/tablet/WatchActivity;->createPlaylistIntent(Landroid/content/Context;Landroid/net/Uri;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 77
    return-void
.end method
