.class public abstract Lcom/ecareme/utils/cache/CacheRepository;
.super Ljava/lang/Object;
.source "CacheRepository.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    .local p0, this:Lcom/ecareme/utils/cache/CacheRepository;,"Lcom/ecareme/utils/cache/CacheRepository<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cleanup()V
.end method

.method public abstract getCache(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation
.end method

.method public initialize(Ljava/util/Properties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 15
    .local p0, this:Lcom/ecareme/utils/cache/CacheRepository;,"Lcom/ecareme/utils/cache/CacheRepository<TK;TV;>;"
    return-void
.end method

.method public abstract putCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method
