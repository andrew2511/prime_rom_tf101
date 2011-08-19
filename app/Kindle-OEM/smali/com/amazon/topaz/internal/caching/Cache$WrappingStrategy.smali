.class public interface abstract Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;
.super Ljava/lang/Object;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/caching/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WrappingStrategy"
.end annotation


# virtual methods
.method public abstract disposeWrapper(Ljava/lang/Object;)V
.end method

.method public abstract unwrap(Ljava/lang/Object;)Lcom/amazon/topaz/internal/caching/Cacheable;
.end method

.method public abstract wrap(Lcom/amazon/topaz/internal/caching/Cache;Lcom/amazon/topaz/internal/caching/Cacheable;)Ljava/lang/Object;
.end method
