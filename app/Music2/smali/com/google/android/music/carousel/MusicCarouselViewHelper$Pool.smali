.class Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;
.super Ljava/lang/Object;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Pool"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mAllocator:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator",
            "<TE;>;"
        }
    .end annotation
.end field

.field private final mFreeList:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private mFreeListIndex:I


# direct methods
.method public constructor <init>(ILcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;)V
    .locals 1
    .parameter "size"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 263
    .local p0, this:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;,"Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool<TE;>;"
    .local p2, allocator:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;,"Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeList:[Ljava/lang/Object;

    .line 265
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeListIndex:I

    .line 266
    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mAllocator:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;

    .line 267
    return-void
.end method


# virtual methods
.method public declared-synchronized create()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .prologue
    .line 270
    .local p0, this:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;,"Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool<TE;>;"
    monitor-enter p0

    :try_start_0
    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeListIndex:I

    if-nez v2, :cond_0

    .line 271
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mAllocator:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;

    invoke-interface {v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;->allocate()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 276
    :goto_0
    monitor-exit p0

    return-object v2

    .line 273
    :cond_0
    :try_start_1
    iget v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeListIndex:I

    const/4 v3, 0x1

    sub-int v0, v2, v3

    iput v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeListIndex:I

    .line 274
    .local v0, index:I
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeList:[Ljava/lang/Object;

    aget-object v1, v2, v0

    .line 275
    .local v1, object:Ljava/lang/Object;,"TE;"
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeList:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v2, v1

    .line 276
    goto :goto_0

    .line 270
    .end local v0           #index:I
    .end local v1           #object:Ljava/lang/Object;,"TE;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized delete(Ljava/lang/Object;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 280
    .local p0, this:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;,"Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool<TE;>;"
    .local p1, object:Ljava/lang/Object;,"TE;"
    monitor-enter p0

    if-nez p1, :cond_0

    .line 290
    :goto_0
    monitor-exit p0

    return-void

    .line 283
    :cond_0
    :try_start_0
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeListIndex:I

    .line 284
    .local v0, index:I
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeList:[Ljava/lang/Object;

    array-length v1, v1

    if-ne v0, v1, :cond_1

    .line 285
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mAllocator:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;

    invoke-interface {v1, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;->destroy(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 280
    .end local v0           #index:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 287
    .restart local v0       #index:I
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeList:[Ljava/lang/Object;

    aput-object p1, v1, v0

    .line 288
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeListIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->mFreeListIndex:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
