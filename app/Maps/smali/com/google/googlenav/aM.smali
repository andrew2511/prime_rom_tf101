.class public Lcom/google/googlenav/aM;
.super Lak/m;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/google/googlenav/bE;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/googlenav/bE;)V
    .locals 0

    invoke-direct {p0}, Lak/m;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/aM;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/googlenav/aM;->b:Lcom/google/googlenav/bE;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/16 v0, 0x6b

    return v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 3

    new-instance v0, Law/e;

    sget-object v1, Ls/m;->a:Law/f;

    invoke-direct {v0, v1}, Law/e;-><init>(Law/f;)V

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlenav/aM;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Law/e;->b(ILjava/lang/String;)V

    check-cast p1, Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Law/e;->a(Ljava/io/OutputStream;)V

    return-void
.end method

.method public a(Ljava/io/DataInput;)Z
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    sget-object v0, Ls/m;->c:Law/f;

    invoke-static {v0, p1}, Law/b;->a(Law/f;Ljava/io/DataInput;)Law/e;

    move-result-object v0

    invoke-virtual {v0, v7}, Law/e;->d(I)I

    move-result v1

    if-ne v1, v7, :cond_0

    invoke-virtual {v0, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/googlenav/aM;->b:Lcom/google/googlenav/bE;

    invoke-interface {v1, v0}, Lcom/google/googlenav/bE;->a(Ljava/lang/String;)V

    move v0, v7

    :goto_0
    return v0

    :cond_0
    if-nez v1, :cond_3

    invoke-virtual {v0, v9}, Law/e;->i(I)I

    move-result v2

    if-lez v2, :cond_2

    invoke-static {v2}, Lj/X;->b(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v9, v3}, Law/e;->e(II)Law/e;

    move-result-object v4

    invoke-virtual {v4, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Lcom/google/googlenav/av;

    invoke-direct {v6, v5, v4}, Lcom/google/googlenav/av;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v8}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/googlenav/aM;->b:Lcom/google/googlenav/bE;

    invoke-interface {v2, v1, v0}, Lcom/google/googlenav/bE;->a(Ljava/util/List;Ljava/lang/String;)V

    move v0, v7

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/googlenav/aM;->b:Lcom/google/googlenav/bE;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bE;->a(I)V

    move v0, v7

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/googlenav/aM;->b:Lcom/google/googlenav/bE;

    invoke-interface {v0, v1}, Lcom/google/googlenav/bE;->a(I)V

    move v0, v7

    goto :goto_0
.end method

.method public m_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n_()V
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/aM;->b:Lcom/google/googlenav/bE;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Lcom/google/googlenav/bE;->a(I)V

    return-void
.end method
