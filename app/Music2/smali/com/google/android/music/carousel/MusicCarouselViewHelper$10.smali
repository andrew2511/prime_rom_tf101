.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;->onInvalidateTexture(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 652
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iput p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 655
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 656
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$id:I

    invoke-static {v2, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    .line 657
    .local v0, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_1

    .line 658
    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    if-eqz v2, :cond_0

    .line 661
    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v2, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v4, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v2, v3, v4}, Lcom/google/android/music/utils/AlbumArtUtils;->removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 663
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 665
    :cond_0
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->this$0:Lcom/google/android/music/carousel/MusicCarouselViewHelper;

    invoke-static {v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->access$1200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;

    move-result-object v2

    iget v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;->val$id:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 667
    :cond_1
    monitor-exit v1

    .line 668
    return-void

    .line 667
    .end local v0           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
