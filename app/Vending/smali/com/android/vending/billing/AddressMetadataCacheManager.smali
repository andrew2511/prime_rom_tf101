.class public Lcom/android/vending/billing/AddressMetadataCacheManager;
.super Ljava/lang/Object;
.source "AddressMetadataCacheManager.java"

# interfaces
.implements Lcom/android/i18n/addressinput/ClientCacheManager;


# instance fields
.field private final mCacheManager:Lcom/android/vending/cache/CacheManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getCacheManager()Lcom/android/vending/cache/CacheManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/billing/AddressMetadataCacheManager;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "key"

    .prologue
    const/4 v7, 0x1

    .line 24
    new-instance v3, Lcom/android/vending/billing/AddressMetadataKey;

    invoke-direct {v3, p1, v7}, Lcom/android/vending/billing/AddressMetadataKey;-><init>(Ljava/lang/String;Z)V

    .line 26
    .local v3, metadataKey:Lcom/android/vending/billing/AddressMetadataKey;
    iget-object v6, p0, Lcom/android/vending/billing/AddressMetadataCacheManager;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    invoke-interface {v6, v3, v7}, Lcom/android/vending/cache/CacheManager;->get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;

    move-result-object v0

    .line 27
    .local v0, cacheResult:Lcom/android/vending/cache/CacheManager$CacheResult;
    if-nez v0, :cond_0

    .line 28
    const-string v6, ""

    .line 36
    .end local p0
    :goto_0
    return-object v6

    .line 30
    .restart local p0
    :cond_0
    sget-object v6, Lcom/android/vending/compat/VendingGservicesKeys;->INVALIDATE_ADDRESS_METADATA_CACHE_BEFORE:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v6}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 32
    .local v1, invalidateBefore:J
    iget-wide v4, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->modifiedTime:J

    .line 33
    .local v4, modifiedTime:J
    cmp-long v6, v4, v1

    if-ltz v6, :cond_1

    iget-boolean v6, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->isExpired:Z

    if-eqz v6, :cond_2

    .line 34
    :cond_1
    const-string v6, ""

    goto :goto_0

    .line 36
    :cond_2
    iget-object p0, v0, Lcom/android/vending/cache/CacheManager$CacheResult;->serializable:Ljava/io/Serializable;

    check-cast p0, Ljava/lang/String;

    move-object v6, p0

    goto :goto_0
.end method

.method public getAddressServerUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/vending/compat/VendingGservicesKeys;->VENDING_ADDRESS_SERVER_URL:Lcom/android/vending/util/GservicesValue;

    invoke-virtual {v0}, Lcom/android/vending/util/GservicesValue;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .parameter "key"
    .parameter "data"

    .prologue
    const v5, 0x93a80

    .line 42
    new-instance v1, Lcom/android/vending/billing/AddressMetadataKey;

    const/4 v0, 0x1

    invoke-direct {v1, p1, v0}, Lcom/android/vending/billing/AddressMetadataKey;-><init>(Ljava/lang/String;Z)V

    .line 44
    .local v1, metadataKey:Lcom/android/vending/billing/AddressMetadataKey;
    iget-object v0, p0, Lcom/android/vending/billing/AddressMetadataCacheManager;->mCacheManager:Lcom/android/vending/cache/CacheManager;

    const/4 v2, 0x0

    const-string v4, ""

    move-object v3, p2

    move v6, v5

    invoke-interface/range {v0 .. v6}, Lcom/android/vending/cache/CacheManager;->put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V

    .line 46
    return-void
.end method
