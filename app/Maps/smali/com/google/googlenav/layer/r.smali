.class public Lcom/google/googlenav/layer/r;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private b:[Ljava/lang/String;

.field private final c:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 6

    const/4 v5, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/google/googlenav/layer/r;->c:Ljava/util/Hashtable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/layer/r;->a:Ljava/lang/String;

    new-instance v0, Lcom/google/googlenav/layer/b;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/google/googlenav/layer/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Law/e;->i(I)I

    move-result v1

    if-lez v1, :cond_0

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/googlenav/layer/r;->b:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/layer/r;->b:[Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Law/e;->f(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/google/googlenav/layer/r;->c:Ljava/util/Hashtable;

    iget-object v4, p0, Lcom/google/googlenav/layer/r;->b:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v3, v4, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Law/e;
    .locals 4

    new-instance v0, Law/e;

    sget-object v1, Ls/a;->c:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/layer/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/googlenav/layer/r;->b:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/googlenav/layer/r;->b:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v0, v2, v3}, Law/e;->a(ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/googlenav/layer/b;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/r;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/googlenav/layer/b;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/google/googlenav/layer/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/r;->c:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/layer/r;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/r;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numSubNodes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/layer/r;->b:[Ljava/lang/String;

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
