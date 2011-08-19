.class public abstract Lcom/google/android/youtube/core/cache/AbstractCache;
.super Ljava/lang/Object;
.source "AbstractCache.java"

# interfaces
.implements Lcom/google/android/youtube/core/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/cache/Cache",
        "<TK;TE;>;"
    }
.end annotation


# instance fields
.field private hits:I

.field private misses:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/cache/AbstractCache;,"Lcom/google/android/youtube/core/cache/AbstractCache<TK;TE;>;"
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->hits:I

    .line 19
    iput v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->misses:I

    return-void
.end method


# virtual methods
.method protected final hit()V
    .locals 1

    .prologue
    .line 25
    .local p0, this:Lcom/google/android/youtube/core/cache/AbstractCache;,"Lcom/google/android/youtube/core/cache/AbstractCache<TK;TE;>;"
    iget v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->hits:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->hits:I

    .line 26
    return-void
.end method

.method protected final miss()V
    .locals 1

    .prologue
    .line 32
    .local p0, this:Lcom/google/android/youtube/core/cache/AbstractCache;,"Lcom/google/android/youtube/core/cache/AbstractCache<TK;TE;>;"
    iget v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->misses:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->misses:I

    .line 33
    return-void
.end method

.method public final ratio()I
    .locals 3

    .prologue
    .line 47
    .local p0, this:Lcom/google/android/youtube/core/cache/AbstractCache;,"Lcom/google/android/youtube/core/cache/AbstractCache<TK;TE;>;"
    iget v1, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->hits:I

    iget v2, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->misses:I

    add-int v0, v1, v2

    .line 48
    .local v0, total:I
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget v1, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->hits:I

    mul-int/lit8 v1, v1, 0x64

    div-int/2addr v1, v0

    goto :goto_0
.end method

.method protected final resetRatio()V
    .locals 1

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/cache/AbstractCache;,"Lcom/google/android/youtube/core/cache/AbstractCache<TK;TE;>;"
    const/4 v0, 0x0

    .line 39
    iput v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->hits:I

    .line 40
    iput v0, p0, Lcom/google/android/youtube/core/cache/AbstractCache;->misses:I

    .line 41
    return-void
.end method
