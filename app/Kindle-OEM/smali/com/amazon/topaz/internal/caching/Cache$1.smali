.class final Lcom/amazon/topaz/internal/caching/Cache$1;
.super Ljava/lang/Object;
.source "Cache.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/caching/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disposeWrapper(Ljava/lang/Object;)V
    .locals 0
    .parameter "o"

    .prologue
    .line 74
    return-void
.end method

.method public unwrap(Ljava/lang/Object;)Lcom/amazon/topaz/internal/caching/Cacheable;
    .locals 0
    .parameter "o"

    .prologue
    .line 81
    check-cast p1, Lcom/amazon/topaz/internal/caching/Cacheable;

    .end local p1
    return-object p1
.end method

.method public wrap(Lcom/amazon/topaz/internal/caching/Cache;Lcom/amazon/topaz/internal/caching/Cacheable;)Ljava/lang/Object;
    .locals 0
    .parameter "cache"
    .parameter "item"

    .prologue
    .line 89
    return-object p2
.end method
