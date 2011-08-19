.class Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "RecentBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/RecentBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mArtistId:J

.field private mPlaylistId:J

.field final synthetic this$0:Lcom/google/android/music/RecentBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/RecentBrowserActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 266
    iput-object p1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 268
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 305
    iget-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    return-wide v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 309
    iget-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    return-wide v0
.end method

.method public getPlaylistId()J
    .locals 2

    .prologue
    .line 313
    iget-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 271
    iget-wide v3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 272
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    move-object v2, v0

    .line 273
    .local v2, selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v2}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 274
    iget-object v3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/RecentBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/RecentBrowserActivity;->access$100(Lcom/google/android/music/RecentBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    .line 275
    .local v1, manager:Lcom/google/android/music/OfflineMusicManager;
    iget-wide v3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_2

    .line 276
    invoke-virtual {v2}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    iget-wide v3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    .line 290
    .end local v1           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v2           #selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_0
    :goto_0
    return-void

    .line 279
    .restart local v1       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v2       #selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_1
    iget-wide v3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v1, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_0

    .line 282
    :cond_2
    invoke-virtual {v2}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 283
    iget-wide v3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    goto :goto_0

    .line 285
    :cond_3
    iget-wide v3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_0
.end method

.method public setAlbumId(JJ)V
    .locals 2
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 293
    iput-wide p1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 294
    iput-wide p3, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 295
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 296
    return-void
.end method

.method public setPlaylistId(J)V
    .locals 2
    .parameter "playlistId"

    .prologue
    const-wide/16 v0, -0x1

    .line 299
    iput-wide p1, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 300
    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 301
    iput-wide v0, p0, Lcom/google/android/music/RecentBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 302
    return-void
.end method
