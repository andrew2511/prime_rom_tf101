.class Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Lcom/google/android/music/utils/async/AsyncRunner;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/OfflineMusicManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeselectArtistsOfAlbumTask"
.end annotation


# instance fields
.field private final mAlbumId:J

.field private final mArtistId:J

.field private mNotify:Z

.field final synthetic this$0:Lcom/google/android/music/OfflineMusicManager;


# direct methods
.method public constructor <init>(Lcom/google/android/music/OfflineMusicManager;JJ)V
    .locals 1
    .parameter
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 195
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mNotify:Z

    .line 196
    iput-wide p2, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mAlbumId:J

    .line 197
    iput-wide p4, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mArtistId:J

    .line 198
    return-void
.end method


# virtual methods
.method public backgroundTask()V
    .locals 5

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mAlbumId:J

    iget-wide v3, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mArtistId:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/google/android/music/OfflineMusicManager;->access$400(Lcom/google/android/music/OfflineMusicManager;JJ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mNotify:Z

    .line 202
    return-void
.end method

.method public taskCompleted()V
    .locals 1

    .prologue
    .line 207
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->mNotify:Z

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;->this$0:Lcom/google/android/music/OfflineMusicManager;

    invoke-static {v0}, Lcom/google/android/music/OfflineMusicManager;->access$200(Lcom/google/android/music/OfflineMusicManager;)V

    .line 213
    :cond_0
    return-void
.end method
