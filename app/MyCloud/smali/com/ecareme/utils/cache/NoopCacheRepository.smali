.class public Lcom/ecareme/utils/cache/NoopCacheRepository;
.super Lcom/ecareme/utils/cache/CacheRepository;
.source "NoopCacheRepository.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/ecareme/utils/cache/CacheRepository;-><init>()V

    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 0

    .prologue
    .line 26
    return-void
.end method

.method public getCache(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "key"

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public initialize(Ljava/util/Properties;)V
    .locals 0
    .parameter "props"

    .prologue
    .line 14
    invoke-super {p0, p1}, Lcom/ecareme/utils/cache/CacheRepository;->initialize(Ljava/util/Properties;)V

    .line 15
    return-void
.end method

.method public putCache(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "key"
    .parameter "value"

    .prologue
    .line 23
    return-void
.end method
