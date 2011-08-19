.class final Lcom/google/android/music/QueryBrowserActivity$3;
.super Ljava/lang/Object;
.source "QueryBrowserActivity.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/QueryBrowserActivity;->handleSearchResult(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Landroid/content/Intent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final cols:[Ljava/lang/String;

.field playlistName:Ljava/lang/String;

.field final synthetic val$appManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$playlistId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 3
    .parameter
    .parameter
    .parameter

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$playlistId:J

    iput-object p4, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$appManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->cols:[Ljava/lang/String;

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 255
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$context:Landroid/content/Context;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$playlistId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Playlists;->getPlaylistUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/QueryBrowserActivity$3;->cols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 259
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 263
    :cond_0
    if-eqz v6, :cond_1

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 267
    :cond_1
    return-void

    .line 263
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 264
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public taskCompleted()V
    .locals 4

    .prologue
    .line 270
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$appManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$3;->val$playlistId:J

    iget-object v3, p0, Lcom/google/android/music/QueryBrowserActivity$3;->playlistName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/music/QueryBrowserActivity;->access$200(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;)V

    .line 271
    return-void
.end method
