.class public final Lcom/amazon/foundation/internal/performance/CacheCounter;
.super Ljava/lang/Object;
.source "CacheCounter.java"


# static fields
.field public static final CACHE_HIT:Z = true

.field public static final CACHE_MISS:Z = true


# instance fields
.field private final hits:Lcom/amazon/foundation/internal/performance/Counter;

.field private final misses:Lcom/amazon/foundation/internal/performance/Counter;

.field private final size:Lcom/amazon/foundation/internal/performance/Counter;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/amazon/foundation/internal/performance/Counter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - HIT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Counter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->hits:Lcom/amazon/foundation/internal/performance/Counter;

    .line 27
    new-instance v0, Lcom/amazon/foundation/internal/performance/Counter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - MISS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Counter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->misses:Lcom/amazon/foundation/internal/performance/Counter;

    .line 28
    new-instance v0, Lcom/amazon/foundation/internal/performance/Counter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " - SIZE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amazon/foundation/internal/performance/Counter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->size:Lcom/amazon/foundation/internal/performance/Counter;

    .line 29
    return-void
.end method


# virtual methods
.method public getCounter(Z)Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1
    .parameter "returnHitCounter"

    .prologue
    .line 158
    if-eqz p1, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getHitCounter()Lcom/amazon/foundation/internal/performance/Counter;

    move-result-object v0

    .line 164
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getMissCounter()Lcom/amazon/foundation/internal/performance/Counter;

    move-result-object v0

    goto :goto_0
.end method

.method public getHitCounter()Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->hits:Lcom/amazon/foundation/internal/performance/Counter;

    return-object v0
.end method

.method public getMissCounter()Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->misses:Lcom/amazon/foundation/internal/performance/Counter;

    return-object v0
.end method

.method public getNumHits()I
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->hits:Lcom/amazon/foundation/internal/performance/Counter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/Counter;->getValue()I

    move-result v0

    return v0
.end method

.method public getNumMisses()I
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->misses:Lcom/amazon/foundation/internal/performance/Counter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/Counter;->getValue()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->size:Lcom/amazon/foundation/internal/performance/Counter;

    invoke-virtual {v0}, Lcom/amazon/foundation/internal/performance/Counter;->getValue()I

    move-result v0

    return v0
.end method

.method public getSizeCounter()Lcom/amazon/foundation/internal/performance/Counter;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/amazon/foundation/internal/performance/CacheCounter;->size:Lcom/amazon/foundation/internal/performance/Counter;

    return-object v0
.end method

.method public getValue(Z)I
    .locals 1
    .parameter "returnHits"

    .prologue
    .line 114
    if-eqz p1, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getNumHits()I

    move-result v0

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/amazon/foundation/internal/performance/CacheCounter;->getNumMisses()I

    move-result v0

    goto :goto_0
.end method

.method public increment(Z)V
    .locals 0
    .parameter

    .prologue
    .line 72
    return-void
.end method

.method public increment(ZI)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 38
    return-void
.end method

.method public incrementHits()V
    .locals 0

    .prologue
    .line 87
    return-void
.end method

.method public incrementHits(I)V
    .locals 0
    .parameter

    .prologue
    .line 54
    return-void
.end method

.method public incrementMisses()V
    .locals 0

    .prologue
    .line 95
    return-void
.end method

.method public incrementMisses(I)V
    .locals 0
    .parameter

    .prologue
    .line 63
    return-void
.end method

.method public setSize(I)V
    .locals 0
    .parameter

    .prologue
    .line 104
    return-void
.end method
