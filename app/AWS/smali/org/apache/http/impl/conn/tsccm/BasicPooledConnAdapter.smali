.class public Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;
.super Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;
.source "BasicPooledConnAdapter.java"


# direct methods
.method protected constructor <init>(Lorg/apache/http/impl/conn/tsccm/ThreadSafeClientConnManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V
    .locals 0
    .parameter "tsccm"
    .parameter "entry"

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/impl/conn/AbstractPoolEntry;)V

    .line 54
    invoke-virtual {p0}, Lorg/apache/http/impl/conn/tsccm/BasicPooledConnAdapter;->markReusable()V

    .line 55
    return-void
.end method


# virtual methods
.method protected detach()V
    .locals 0

    .prologue
    .line 79
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->detach()V

    .line 80
    return-void
.end method

.method protected getManager()Lorg/apache/http/conn/ClientConnectionManager;
    .locals 1

    .prologue
    .line 61
    invoke-super {p0}, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->getManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    return-object v0
.end method

.method protected getPoolEntry()Lorg/apache/http/impl/conn/AbstractPoolEntry;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/http/impl/conn/AbstractPooledConnAdapter;->poolEntry:Lorg/apache/http/impl/conn/AbstractPoolEntry;

    return-object v0
.end method
