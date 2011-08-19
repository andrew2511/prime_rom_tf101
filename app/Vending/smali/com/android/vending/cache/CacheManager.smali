.class public interface abstract Lcom/android/vending/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/cache/CacheManager$CacheResult;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Lcom/android/vending/cache/Cacheable;)V
.end method

.method public abstract get(Lcom/android/vending/cache/Cacheable;Z)Lcom/android/vending/cache/CacheManager$CacheResult;
.end method

.method public abstract invalidate(Lcom/android/vending/cache/Cacheable;)Z
.end method

.method public abstract invalidate(Lcom/android/vending/cache/Cacheable;Z)Z
.end method

.method public abstract put(Lcom/android/vending/cache/Cacheable;Lcom/google/common/io/protocol/ProtoBuf;Ljava/io/Serializable;Ljava/lang/String;II)V
.end method
