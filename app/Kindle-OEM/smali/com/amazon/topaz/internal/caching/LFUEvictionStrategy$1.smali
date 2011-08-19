.class Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$1;
.super Ljava/lang/Object;
.source "LFUEvictionStrategy.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;


# direct methods
.method constructor <init>(Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$1;->this$0:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public disposeWrapper(Ljava/lang/Object;)V
    .locals 1
    .parameter

    .prologue
    .line 93
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$1;->this$0:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;

    invoke-static {v0}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->access$000(Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 94
    return-void
.end method

.method public unwrap(Ljava/lang/Object;)Lcom/amazon/topaz/internal/caching/Cacheable;
    .locals 3
    .parameter "o"

    .prologue
    .line 101
    if-nez p1, :cond_0

    .line 103
    const/4 v2, 0x0

    .line 109
    :goto_0
    return-object v2

    .line 106
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;

    move-object v1, v0

    .line 108
    .local v1, node:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->incrementAccessCount()V

    .line 109
    invoke-virtual {v1}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;->getItem()Lcom/amazon/topaz/internal/caching/Cacheable;

    move-result-object v2

    goto :goto_0
.end method

.method public wrap(Lcom/amazon/topaz/internal/caching/Cache;Lcom/amazon/topaz/internal/caching/Cacheable;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 117
    new-instance v0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;

    invoke-direct {v0, p1, p2}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$Node;-><init>(Lcom/amazon/topaz/internal/caching/Cache;Lcom/amazon/topaz/internal/caching/Cacheable;)V

    .line 118
    iget-object v1, p0, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy$1;->this$0:Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;

    invoke-static {v1}, Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;->access$000(Lcom/amazon/topaz/internal/caching/LFUEvictionStrategy;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method
