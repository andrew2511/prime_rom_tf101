.class public interface abstract Lcom/amazon/topaz/internal/caching/Cacheable;
.super Ljava/lang/Object;
.source "Cacheable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;
    }
.end annotation


# virtual methods
.method public abstract getAllocSize()I
.end method

.method public abstract getCacheKey()Ljava/lang/Integer;
.end method

.method public abstract setSizeObserver(Lcom/amazon/topaz/internal/caching/Cacheable$SizeObserver;)I
.end method
