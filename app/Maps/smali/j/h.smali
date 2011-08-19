.class final Lj/h;
.super Lj/ao;


# instance fields
.field final transient a:Ljava/lang/Object;

.field final transient b:Ljava/lang/Object;

.field private transient c:Ljava/util/Map$Entry;

.field private transient d:Lj/O;

.field private transient e:Lj/O;

.field private transient f:Lj/Z;


# direct methods
.method constructor <init>(Ljava/util/Map$Entry;)V
    .locals 1

    invoke-direct {p0}, Lj/ao;-><init>()V

    iput-object p1, p0, Lj/h;->c:Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj/h;->a:Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj/h;->b:Ljava/lang/Object;

    return-void
.end method

.method private e()Ljava/util/Map$Entry;
    .locals 2

    iget-object v0, p0, Lj/h;->c:Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/h;->a:Ljava/lang/Object;

    iget-object v1, p0, Lj/h;->b:Ljava/lang/Object;

    invoke-static {v0, v1}, Lj/u;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    iput-object v0, p0, Lj/h;->c:Ljava/util/Map$Entry;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lj/O;
    .locals 1

    iget-object v0, p0, Lj/h;->d:Lj/O;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lj/h;->e()Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lj/O;->e(Ljava/lang/Object;)Lj/O;

    move-result-object v0

    iput-object v0, p0, Lj/h;->d:Lj/O;

    :cond_0
    return-object v0
.end method

.method public b()Lj/O;
    .locals 1

    iget-object v0, p0, Lj/h;->e:Lj/O;

    if-nez v0, :cond_0

    iget-object v0, p0, Lj/h;->a:Ljava/lang/Object;

    invoke-static {v0}, Lj/O;->e(Ljava/lang/Object;)Lj/O;

    move-result-object v0

    iput-object v0, p0, Lj/h;->e:Lj/O;

    :cond_0
    return-object v0
.end method

.method public c()Lj/Z;
    .locals 2

    iget-object v0, p0, Lj/h;->f:Lj/Z;

    if-nez v0, :cond_0

    new-instance v0, Lj/aG;

    iget-object v1, p0, Lj/h;->b:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lj/aG;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lj/h;->f:Lj/Z;

    :cond_0
    return-object v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/h;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lj/h;->b:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic entrySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj/h;->a()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-ne p1, p0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v0, v4, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lj/h;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lj/h;->b:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj/h;->a:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj/h;->b:Ljava/lang/Object;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lj/h;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lj/h;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic keySet()Ljava/util/Set;
    .locals 1

    invoke-virtual {p0}, Lj/h;->b()Lj/O;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x7b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/h;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lj/h;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic values()Ljava/util/Collection;
    .locals 1

    invoke-virtual {p0}, Lj/h;->c()Lj/Z;

    move-result-object v0

    return-object v0
.end method
