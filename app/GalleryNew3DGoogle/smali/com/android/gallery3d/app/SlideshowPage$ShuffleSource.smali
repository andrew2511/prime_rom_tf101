.class Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;
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
    name = "ShuffleSource"
.end annotation


# instance fields
.field private mLastIndex:I

.field private final mMediaSet:Lcom/android/gallery3d/data/MediaSet;

.field private mOrder:[I

.field private final mRandom:Ljava/util/Random;

.field private mRepeat:Z

.field private mSourceVersion:J


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/data/MediaSet;Z)V
    .locals 2
    .parameter "mediaSet"
    .parameter "repeat"

    .prologue
    .line 239
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 233
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    .line 234
    const/4 v0, 0x0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    .line 236
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    .line 237
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 240
    invoke-static {p1}, Lcom/android/gallery3d/util/Utils;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/gallery3d/data/MediaSet;

    iput-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    .line 241
    iput-boolean p2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    .line 242
    return-void
.end method

.method private generateOrderArray(I)V
    .locals 6
    .parameter "totalCount"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 267
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v1, v1

    if-eq v1, p1, :cond_0

    .line 268
    new-array v1, p1, [I

    iput-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    .line 269
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aput v0, v1, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 273
    .end local v0           #i:I
    :cond_0
    sub-int v0, p1, v4

    .restart local v0       #i:I
    :goto_1
    if-lez v0, :cond_1

    .line 274
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/android/gallery3d/util/Utils;->swap([III)V

    .line 273
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 276
    :cond_1
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    aget v1, v1, v5

    iget v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    if-ne v1, v2, :cond_2

    if-le p1, v4, :cond_2

    .line 277
    iget-object v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    sub-int v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v5, v2}, Lcom/android/gallery3d/util/Utils;->swap([III)V

    .line 279
    :cond_2
    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 282
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->addContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 283
    return-void
.end method

.method public getMediaItem(I)Lcom/android/gallery3d/data/MediaItem;
    .locals 5
    .parameter "index"

    .prologue
    .line 245
    iget-boolean v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRepeat:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v2, v2

    if-lt p1, v2, :cond_0

    const/4 v2, 0x0

    .line 253
    :goto_0
    return-object v2

    .line 246
    :cond_0
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    rem-int v3, p1, v3

    aget v2, v2, v3

    iput v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 247
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/SlideshowPage;->access$500(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 248
    .local v1, item:Lcom/android/gallery3d/data/MediaItem;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    const/4 v2, 0x5

    if-ge v0, v2, :cond_1

    if-nez v1, :cond_1

    .line 249
    const-string v2, "SlideshowPage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to find image: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mRandom:Ljava/util/Random;

    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    iput v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    .line 251
    iget-object v2, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    iget v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mLastIndex:I

    invoke-static {v2, v3}, Lcom/android/gallery3d/app/SlideshowPage;->access$500(Lcom/android/gallery3d/data/MediaSet;I)Lcom/android/gallery3d/data/MediaItem;

    move-result-object v1

    .line 248
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v2, v1

    .line 253
    goto :goto_0
.end method

.method public reload()J
    .locals 5

    .prologue
    .line 257
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->reload()J

    move-result-wide v1

    .line 258
    .local v1, version:J
    iget-wide v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    .line 259
    iput-wide v1, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mSourceVersion:J

    .line 260
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v3}, Lcom/android/gallery3d/data/MediaSet;->getTotalMediaItemCount()I

    move-result v0

    .line 261
    .local v0, count:I
    iget-object v3, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mOrder:[I

    array-length v3, v3

    if-eq v0, v3, :cond_0

    invoke-direct {p0, v0}, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->generateOrderArray(I)V

    .line 263
    .end local v0           #count:I
    :cond_0
    return-wide v1
.end method

.method public removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/gallery3d/app/SlideshowPage$ShuffleSource;->mMediaSet:Lcom/android/gallery3d/data/MediaSet;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/data/MediaSet;->removeContentListener(Lcom/android/gallery3d/data/ContentListener;)V

    .line 287
    return-void
.end method
