.class final Lcom/a/a/a/au;
.super Ljava/util/AbstractSet;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/a/a/a/aq;


# direct methods
.method constructor <init>(Lcom/a/a/a/aq;)V
    .locals 0
    .parameter

    .prologue
    .line 2810
    iput-object p1, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->clear()V

    .line 2850
    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2817
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v3

    .line 2827
    :goto_0
    return v0

    .line 2820
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2821
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2822
    if-nez v0, :cond_1

    move v0, v3

    .line 2823
    goto :goto_0

    .line 2825
    :cond_1
    iget-object v1, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    invoke-virtual {v1, v0}, Lcom/a/a/a/aq;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2827
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    iget-object v1, v1, Lcom/a/a/a/aq;->c:Lcom/a/a/b/g;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/a/a/b/g;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public final isEmpty()Z
    .locals 1

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    .prologue
    .line 2813
    new-instance v0, Lcom/a/a/a/as;

    iget-object v1, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    invoke-direct {v0, v1}, Lcom/a/a/a/as;-><init>(Lcom/a/a/a/aq;)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2831
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    move v0, v3

    .line 2836
    :goto_0
    return v0

    .line 2834
    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    .line 2835
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    .line 2836
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/a/a/a/aq;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_0
.end method

.method public final size()I
    .locals 1

    .prologue
    .line 2841
    iget-object v0, p0, Lcom/a/a/a/au;->a:Lcom/a/a/a/aq;

    invoke-virtual {v0}, Lcom/a/a/a/aq;->size()I

    move-result v0

    return v0
.end method
