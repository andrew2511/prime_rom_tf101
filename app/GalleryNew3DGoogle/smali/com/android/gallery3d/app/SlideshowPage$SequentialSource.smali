.class Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;
.super Ljava/lang/Object;
.source "SlideshowPage.java"

# interfaces
.implements Lcom/android/gallery3d/app/SlideshowDataAdapter$SlideshowSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/gallery3d/app/SlideshowPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SequentialSource"
.end annotation


# instance fields
.field private mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/gallery3d/data/MediaItem;",
            ">;"
        }
    .end annotation
.end field

.field private mDataStart:I

.field private mDataVersion:J

.field private final mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private final mRepeat:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;Z)V
    .locals 2
    .parameter "mediaSet"
    .parameter "repeat"

    .prologue
    .line 299
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 293
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 294
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 295
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 300
    iput-object p1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 301
    iput-boolean p2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mRepeat:Z

    .line 302
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 332
    return-void
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 3
    .parameter "index"

    .prologue
    .line 305
    iget v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int v0, v1, v2

    .line 307
    .local v0, dataEnd:I
    iget-boolean v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mRepeat:Z

    if-eqz v1, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v1}, Lcom/android/gallery3d/data/MediaSet;->getMediaItemCount()I

    move-result v1

    rem-int/2addr p1, v1

    .line 310
    :cond_0
    iget v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v1, :cond_1

    if-lt p1, v0, :cond_2

    .line 311
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    const/16 v2, 0x20

    invoke-virtual {v1, p1, v2}, Lcom/android/gallery3d/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    .line 312
    iput p1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    .line 313
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int v0, p1, v1

    .line 316
    :cond_2
    iget v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    if-lt p1, v1, :cond_3

    if-lt p1, v0, :cond_4

    :cond_3
    const/4 v1, 0x0

    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_4
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataStart:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/gallery3d/data/MediaItem;

    move-object v1, p0

    goto :goto_0
.end method

.method public reload()J
    .locals 4

    .prologue
    .line 322
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v2}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v0

    .line 323
    .local v0, version:J
    iget-wide v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 324
    iput-wide v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    .line 325
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 327
    :cond_0
    iget-wide v2, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mDataVersion:J

    return-wide v2
.end method

.method public removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$SequentialSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 336
    return-void
.end method
