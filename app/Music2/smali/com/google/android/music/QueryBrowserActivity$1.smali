.class final Lcom/google/android/music/QueryBrowserActivity$1;
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
.field mArtistName:Ljava/lang/String;

.field mSortAlbumArtistName:Ljava/lang/String;

.field final synthetic val$appManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$localArtistId:J


# direct methods
.method constructor <init>(Landroid/content/Context;JLcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 179
    iput-object p1, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$context:Landroid/content/Context;

    iput-wide p2, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$localArtistId:J

    iput-object p4, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$appManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 185
    const/4 v0, 0x2

    new-array v2, v0, [Ljava/lang/String;

    const-string v0, "artist"

    aput-object v0, v2, v1

    const-string v0, "artistSort"

    aput-object v0, v2, v3

    .line 189
    .local v2, cols:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 191
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$context:Landroid/content/Context;

    iget-wide v3, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$localArtistId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/music/store/MusicContent$Artists;->getArtistsUri(Ljava/lang/Long;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 194
    if-eqz v6, :cond_0

    .line 195
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 196
    invoke-interface {v6}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mArtistName:Ljava/lang/String;

    .line 198
    const/4 v0, 0x1

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mSortAlbumArtistName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :cond_0
    if-eqz v6, :cond_1

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 206
    :cond_1
    return-void

    .line 202
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 203
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public taskCompleted()V
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$appManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    iget-wide v1, p0, Lcom/google/android/music/QueryBrowserActivity$1;->val$localArtistId:J

    iget-object v3, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mArtistName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/android/music/QueryBrowserActivity$1;->mSortAlbumArtistName:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/QueryBrowserActivity;->access$000(Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;JLjava/lang/String;Ljava/lang/String;)V

    .line 210
    return-void
.end method
