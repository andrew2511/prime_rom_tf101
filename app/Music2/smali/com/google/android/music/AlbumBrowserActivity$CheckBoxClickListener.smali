.class Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "AlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/AlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private mAlbumId:J

.field private mArtistId:J

.field final synthetic this$0:Lcom/google/android/music/AlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/AlbumBrowserActivity;)V
    .locals 2
    .parameter

    .prologue
    .line 657
    iput-object p1, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 659
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 681
    iget-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    return-wide v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 685
    iget-wide v0, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    return-wide v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 662
    iget-wide v3, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    .line 663
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    move-object v2, v0

    .line 664
    .local v2, selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v2}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 665
    iget-object v3, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/AlbumBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/AlbumBrowserActivity;->access$100(Lcom/google/android/music/AlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v1

    .line 666
    .local v1, manager:Lcom/google/android/music/OfflineMusicManager;
    invoke-virtual {v2}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 667
    iget-wide v3, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 673
    .end local v1           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v2           #selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_0
    :goto_0
    return-void

    .line 669
    .restart local v1       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v2       #selectionBox:Lcom/google/android/music/KeepOnCheckBox;
    :cond_1
    iget-wide v3, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_0
.end method

.method public setAlbumId(JJ)V
    .locals 0
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 676
    iput-wide p1, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 677
    iput-wide p3, p0, Lcom/google/android/music/AlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 678
    return-void
.end method
