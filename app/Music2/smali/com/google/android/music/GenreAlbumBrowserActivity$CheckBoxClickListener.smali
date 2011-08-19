.class Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;
.super Ljava/lang/Object;
.source "GenreAlbumBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/GenreAlbumBrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckBoxClickListener"
.end annotation


# instance fields
.field private isAlbum:Z

.field private mAlbumId:J

.field private mGenreId:J

.field final synthetic this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;


# direct methods
.method constructor <init>(Lcom/google/android/music/GenreAlbumBrowserActivity;)V
    .locals 2
    .parameter

    .prologue
    const-wide/16 v0, -0x1

    .line 748
    iput-object p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    iput-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    .line 750
    iput-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 751
    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .prologue
    .line 780
    iget-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    return-wide v0
.end method

.method public getGenreId()J
    .locals 2

    .prologue
    .line 784
    iget-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    return-wide v0
.end method

.method public isAlbum()Z
    .locals 1

    .prologue
    .line 788
    iget-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter "v"

    .prologue
    .line 754
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/KeepOnCheckBox;

    move-object v1, v0

    .line 755
    .local v1, checkbox:Lcom/google/android/music/KeepOnCheckBox;
    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isCheckBoxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 756
    iget-object v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->this$0:Lcom/google/android/music/GenreAlbumBrowserActivity;

    invoke-static {v3}, Lcom/google/android/music/GenreAlbumBrowserActivity;->access$100(Lcom/google/android/music/GenreAlbumBrowserActivity;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getOfflineMusicManager()Lcom/google/android/music/OfflineMusicManager;

    move-result-object v2

    .line 757
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    iget-boolean v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    if-eqz v3, :cond_0

    .line 758
    invoke-virtual {v1}, Lcom/google/android/music/KeepOnCheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 759
    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 765
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_0
    :goto_0
    return-void

    .line 761
    .restart local v2       #manager:Lcom/google/android/music/OfflineMusicManager;
    :cond_1
    iget-wide v3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    iget-wide v5, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_0
.end method

.method public setAlbumId(JJ)V
    .locals 1
    .parameter "albumId"
    .parameter "genreId"

    .prologue
    .line 774
    iput-wide p3, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    .line 775
    iput-wide p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 776
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 777
    return-void
.end method

.method public setGenreId(J)V
    .locals 2
    .parameter "genreId"

    .prologue
    .line 768
    iput-wide p1, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mGenreId:J

    .line 769
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->mAlbumId:J

    .line 770
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/GenreAlbumBrowserActivity$CheckBoxClickListener;->isAlbum:Z

    .line 771
    return-void
.end method
