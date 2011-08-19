.class Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "PlaylistBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/PlaylistBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private mPlaylistId:J

.field final synthetic this$0:Lcom/google/android/music/PlaylistBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/PlaylistBrowserActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 634
    iput-object p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 635
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 636
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 639
    iget-wide v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 640
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    move-object v1, v0

    .line 641
    .local v1, checkbox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 642
    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/PlaylistBrowserActivity;->access$100(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    .line 643
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 644
    iget-wide v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    .line 648
    :goto_0
    iget-object v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/PlaylistBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/PlaylistBrowserActivity;->access$300(Lcom/google/android/music/PlaylistBrowserActivity;)Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/PlaylistBrowserActivity$PlaylistListAdapter;->notifyDataSetChanged()V

    .line 651
    .end local v1           #checkbox:Lcom/google/android/music/KeepOnCheckBox;
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_0
    return-void

    .line 646
    .restart local v1       #checkbox:Lcom/google/android/music/KeepOnCheckBox;
    .restart local v2       #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_1
    iget-wide v3, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_0
.end method

.method public setPlaylistId(J)V
    .locals 0
    .parameter "playlistId"

    .prologue
    .line 654
    iput-wide p1, p0, Lcom/google/android/music/PlaylistBrowserActivity$CheckBoxClickListener;->mPlaylistId:J

    .line 655
    return-void
.end method
