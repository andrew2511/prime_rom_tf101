.class final Lcom/a/a/a/bh;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/a/a/a/aq;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 2760
    iput-object p1, p0, Lcom/a/a/a/bh;->a:Lcom/a/a/a/aq;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 2783
    iget-object v0, p0, Lcom/a/a/a/bh;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->clear()V

    .line 2784
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 2775
    iget-object v0, p0, Lcom/a/a/a/bh;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0, p1}, Lcom/a/a/a/aq;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 2771
    iget-object v0, p0, Lcom/a/a/a/bh;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 2763
    new-instance v0, Lcom/a/a/a/ad;

    iget-object v1, p0, Lcom/a/a/a/bh;->a:Lcom/a/a/a/aq;

    invoke-direct {v0, v1}, Lcom/a/a/a/ad;-><init>(Lcom/a/a/a/aq;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 1
    .parameter

    .prologue
    .line 2779
    iget-object v0, p0, Lcom/a/a/a/bh;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0, p1}, Lcom/a/a/a/aq;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 2767
    iget-object v0, p0, Lcom/a/a/a/bh;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->size()I

    move-result v0

    return v0
.end method
