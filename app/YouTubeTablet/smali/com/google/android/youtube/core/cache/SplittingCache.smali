.class public Lcom/google/android/youtube/core/cache/SplittingCache;
.super Ljava/lang/Object;
.source "SplittingCache.java"

# interfaces
.implements Lcom/google/android/youtube/core/cache/Cache;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "C:",
        "Ljava/lang/Object;",
        "S:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/cache/Cache",
        "<TK;TC;>;"
    }
.end annotation


# instance fields
.field private final compoundCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;TC;>;"
        }
    .end annotation
.end field

.field private final singleElementsCache:Lcom/google/android/youtube/core/cache/Cache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TS;TE;>;"
        }
    .end annotation
.end field

.field private final splitter:Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/youtube/core/cache/SplittingCache$Splitter",
            "<TK;TC;TS;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/Cache;Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TK;TC;>;",
            "Lcom/google/android/youtube/core/cache/Cache",
            "<TS;TE;>;",
            "Lcom/google/android/youtube/core/cache/SplittingCache$Splitter",
            "<TK;TC;TS;TE;>;)V"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, this:Lcom/google/android/youtube/core/cache/SplittingCache;,"Lcom/google/android/youtube/core/cache/SplittingCache<TK;TC;TS;TE;>;"
    .local p1, compoundCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TK;TC;>;"
    .local p2, singleElementsCache:Lcom/google/android/youtube/core/cache/Cache;,"Lcom/google/android/youtube/core/cache/Cache<TS;TE;>;"
    .local p3, splitter:Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;,"Lcom/google/android/youtube/core/cache/SplittingCache$Splitter<TK;TC;TS;TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const-string v0, "compoundCache may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/Cache;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->compoundCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 56
    const-string v0, "singleElementsCache may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/Cache;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->singleElementsCache:Lcom/google/android/youtube/core/cache/Cache;

    .line 58
    const-string v0, "splitter may not be null"

    invoke-static {p3, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->splitter:Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;

    .line 59
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 71
    .local p0, this:Lcom/google/android/youtube/core/cache/SplittingCache;,"Lcom/google/android/youtube/core/cache/SplittingCache<TK;TC;TS;TE;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->compoundCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v0}, Lcom/google/android/youtube/core/cache/Cache;->clear()V

    .line 72
    return-void
.end method

.method public filter(Lcom/google/android/youtube/core/utils/Predicate;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, this:Lcom/google/android/youtube/core/cache/SplittingCache;,"Lcom/google/android/youtube/core/cache/SplittingCache<TK;TC;TS;TE;>;"
    .local p1, predicate:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<TK;>;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->compoundCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/Cache;->filter(Lcom/google/android/youtube/core/utils/Predicate;)V

    .line 84
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TC;"
        }
    .end annotation

    .prologue
    .line 67
    .local p0, this:Lcom/google/android/youtube/core/cache/SplittingCache;,"Lcom/google/android/youtube/core/cache/SplittingCache<TK;TC;TS;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->compoundCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v0, p1}, Lcom/google/android/youtube/core/cache/Cache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TC;)V"
        }
    .end annotation

    .prologue
    .line 62
    .local p0, this:Lcom/google/android/youtube/core/cache/SplittingCache;,"Lcom/google/android/youtube/core/cache/SplittingCache<TK;TC;TS;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, value:Ljava/lang/Object;,"TC;"
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->splitter:Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->singleElementsCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v0, p1, p2, v1}, Lcom/google/android/youtube/core/cache/SplittingCache$Splitter;->split(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/android/youtube/core/cache/Cache;)V

    .line 63
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/SplittingCache;->compoundCache:Lcom/google/android/youtube/core/cache/Cache;

    invoke-interface {v0, p1, p2}, Lcom/google/android/youtube/core/cache/Cache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    return-void
.end method
