.class public Lal/a;
.super Ljava/lang/Object;

# interfaces
.implements LW/f;


# instance fields
.field private final a:Lal/i;

.field private final b:LW/f;

.field private final c:LW/f;

.field private final d:Lal/g;


# direct methods
.method public constructor <init>(ILW/f;LW/f;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lal/a;->b:LW/f;

    iput-object p3, p0, Lal/a;->c:LW/f;

    new-instance v0, Lal/g;

    invoke-direct {v0}, Lal/g;-><init>()V

    iput-object v0, p0, Lal/a;->d:Lal/g;

    new-instance v0, Lal/i;

    iget-object v1, p0, Lal/a;->d:Lal/g;

    invoke-direct {v0, p1, v1}, Lal/i;-><init>(ILal/g;)V

    iput-object v0, p0, Lal/a;->a:Lal/i;

    return-void
.end method

.method private a(Ljava/lang/Object;JZ)Lal/h;
    .locals 2

    iget-object v0, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v0, p1}, Lal/i;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lal/h;

    if-nez v0, :cond_1

    new-instance v0, Lal/h;

    invoke-direct {v0, p2, p3}, Lal/h;-><init>(J)V

    if-eqz p4, :cond_0

    iget-object v1, p0, Lal/a;->d:Lal/g;

    invoke-virtual {v1}, Lal/g;->c()V

    :cond_0
    :goto_0
    iget-object v1, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v1, p1, v0}, Lal/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_1
    invoke-virtual {v0, p2, p3}, Lal/h;->a(J)V

    goto :goto_0
.end method

.method private a(Lal/h;)V
    .locals 1

    invoke-virtual {p1}, Lal/h;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lal/a;->d:Lal/g;

    invoke-virtual {v0}, Lal/g;->b()V

    invoke-virtual {p1}, Lal/h;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/io/DataInput;)Lal/a;
    .locals 5

    :try_start_0
    invoke-interface {p1}, Ljava/io/DataInput;->readInt()I

    move-result v1

    invoke-virtual {p0}, Lal/a;->a()V

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v0, p0, Lal/a;->b:LW/f;

    invoke-interface {v0, p1}, LW/f;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v3

    iget-object v0, p0, Lal/a;->c:LW/f;

    invoke-interface {v0, p1}, LW/f;->b(Ljava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lal/h;

    iget-object v4, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v4, v3, v0}, Lal/i;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lal/a;->a()V

    throw v0

    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/Object;Z)Lal/h;
    .locals 3

    iget-object v0, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v0, p1}, Lal/i;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lal/h;

    if-eqz p2, :cond_0

    iget-object v1, p0, Lal/a;->d:Lal/g;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lal/h;->d()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Lal/g;->a(Z)V

    :cond_0
    return-object v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v0}, Lal/i;->clear()V

    return-void
.end method

.method public a(JJ)V
    .locals 4

    iget-object v0, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v0}, Lal/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lal/h;

    invoke-virtual {v0}, Lal/h;->b()J

    move-result-wide v2

    cmp-long v2, v2, p3

    if-gez v2, :cond_1

    invoke-direct {p0, v0}, Lal/a;->a(Lal/h;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lal/h;->a()J

    move-result-wide v2

    cmp-long v2, v2, p1

    if-gez v2, :cond_0

    invoke-direct {p0, v0}, Lal/a;->a(Lal/h;)V

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public a(Lal/a;Ljava/io/DataOutput;)V
    .locals 4

    iget-object v0, p1, Lal/a;->a:Lal/i;

    invoke-virtual {v0}, Lal/i;->size()I

    move-result v0

    invoke-interface {p2, v0}, Ljava/io/DataOutput;->writeInt(I)V

    iget-object v0, p1, Lal/a;->a:Lal/i;

    invoke-virtual {v0}, Lal/i;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v2, p0, Lal/a;->b:LW/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3, p2}, LW/f;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    iget-object v2, p0, Lal/a;->c:LW/f;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v0, p2}, LW/f;->a(Ljava/lang/Object;Ljava/io/DataOutput;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .locals 0

    check-cast p1, Lal/a;

    invoke-virtual {p0, p1, p2}, Lal/a;->a(Lal/a;Ljava/io/DataOutput;)V

    return-void
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, p3, p4, v0}, Lal/a;->a(Ljava/lang/Object;JZ)Lal/h;

    move-result-object v0

    const/high16 v1, -0x4080

    invoke-virtual {v0, p2, p3, p4, v1}, Lal/h;->a(Ljava/lang/Object;JF)V

    return-void
.end method

.method public b()Law/e;
    .locals 3

    iget-object v0, p0, Lal/a;->d:Lal/g;

    iget-object v1, p0, Lal/a;->a:Lal/i;

    iget v1, v1, Lal/i;->a:I

    iget-object v2, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v2}, Lal/i;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lal/g;->a(II)Law/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b(Ljava/io/DataInput;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lal/a;->a(Ljava/io/DataInput;)Lal/a;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lal/a;->a:Lal/i;

    invoke-virtual {v0}, Lal/i;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
