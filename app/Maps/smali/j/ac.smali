.class Lj/ac;
.super Ljava/util/AbstractSet;


# instance fields
.field final synthetic a:Lj/j;


# direct methods
.method constructor <init>(Lj/j;)V
    .locals 0

    iput-object p1, p0, Lj/ac;->a:Lj/j;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/ac;->a:Lj/j;

    iget-object v0, v0, Lj/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lj/aq;->a(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2

    new-instance v0, Lj/P;

    iget-object v1, p0, Lj/ac;->a:Lj/j;

    invoke-direct {v0, v1}, Lj/P;-><init>(Lj/j;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0, p1}, Lj/ac;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    iget-object v0, p0, Lj/ac;->a:Lj/j;

    iget-object v0, v0, Lj/j;->c:Lj/f;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lj/f;->a(Lj/f;Ljava/lang/Object;)I

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj/ac;->a:Lj/j;

    iget-object v0, v0, Lj/j;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method
