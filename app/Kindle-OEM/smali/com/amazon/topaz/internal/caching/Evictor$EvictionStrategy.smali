.class public interface abstract Lcom/amazon/topaz/internal/caching/Evictor$EvictionStrategy;
.super Ljava/lang/Object;
.source "Evictor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/caching/Evictor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EvictionStrategy"
.end annotation


# virtual methods
.method public abstract canEvict()Z
.end method

.method public abstract evictOne()V
.end method

.method public abstract getWrappingStrategy()Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;
.end method
