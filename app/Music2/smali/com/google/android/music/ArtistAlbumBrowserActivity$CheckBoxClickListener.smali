.class Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "ArtistAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/ArtistAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private isAlbum:Z

.field private mAlbumId:J

.field private mArtistId:J

.field final synthetic this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/ArtistAlbumBrowserActivity;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 833
    iput-object p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 834
    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 835
    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 836
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 871
    iget-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    return-wide v0
.end method

.method public getArtistId()J
    .locals 2

    .prologue
    .line 875
    iget-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    return-wide v0
.end method

.method public isAlbum()Z
    .locals 1

    .prologue
    .line 879
    iget-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 839
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    move-object v1, v0

    .line 840
    .local v1, checkbox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 841
    iget-object v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/ArtistAlbumBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/ArtistAlbumBrowserActivity;->access$100(Lcom/google/android/music/ArtistAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    .line 842
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    iget-boolean v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    if-nez v3, :cond_2

    .line 843
    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 844
    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    .line 856
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_0
    :goto_0
    return-void

    .line 846
    .restart local v2       #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_1
    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_0

    .line 849
    :cond_2
    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 850
    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    goto :goto_0

    .line 852
    :cond_3
    iget-wide v3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_0
.end method

.method public setAlbumId(JJ)V
    .locals 1
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 865
    iput-wide p3, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 866
    iput-wide p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 867
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 868
    return-void
.end method

.method public setArtistId(J)V
    .locals 2
    .parameter "artistId"

    .prologue
    .line 859
    iput-wide p1, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mArtistId:J

    .line 860
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 861
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/ArtistAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 862
    return-void
.end method
