.class public Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;
.super Ljava/lang/Object;
.source "WeakReferenceWrappingStrategy.java"

# interfaces
.implements Lcom/amazon/topaz/internal/caching/Cache$WrappingStrategy;


# static fields
.field private static final MIN_INSERTS_BETWEEN_CLEANUPS:I = 0x3e8


# instance fields
.field private caches:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/amazon/topaz/internal/caching/Cache;",
            ">;"
        }
    .end annotation
.end field

.field private canary:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private insertionCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->caches:Ljava/util/Set;

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->insertionCount:I

    .line 32
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->canary:Ljava/lang/ref/WeakReference;

    .line 33
    return-void
.end method


# virtual methods
.method public disposeWrapper(Ljava/lang/Object;)V
    .locals 0
    .parameter "wrapper"

    .prologue
    .line 38
    return-void
.end method

.method public unwrap(Ljava/lang/Object;)Lcom/amazon/topaz/internal/caching/Cacheable;
    .locals 3
    .parameter "wrapper"

    .prologue
    .line 42
    move-object v0, p1

    check-cast v0, Ljava/lang/ref/WeakReference;

    move-object v1, v0

    .line 44
    .local v1, weakRef:Ljava/lang/ref/WeakReference;,"Ljava/lang/ref/WeakReference<*>;"
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/amazon/topaz/internal/caching/Cacheable;

    move-object v2, p0

    .line 50
    :goto_0
    return-object v2

    .restart local p0
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public wrap(Lcom/amazon/topaz/internal/caching/Cache;Lcom/amazon/topaz/internal/caching/Cacheable;)Ljava/lang/Object;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 56
    iget v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->insertionCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->insertionCount:I

    .line 57
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->caches:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 60
    iget v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->insertionCount:I

    const/16 v1, 0x3e8

    if-le v0, v1, :cond_3

    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->canary:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    .line 63
    iget-object v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->caches:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 68
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/topaz/internal/caching/Cache;

    .line 71
    invoke-virtual {v0}, Lcom/amazon/topaz/internal/caching/Cache;->entryIterator()Ljava/util/Iterator;

    move-result-object v2

    .line 72
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 77
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/ref/WeakReference;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->canary:Ljava/lang/ref/WeakReference;

    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/amazon/topaz/internal/caching/WeakReferenceWrappingStrategy;->insertionCount:I

    .line 86
    :cond_3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method
