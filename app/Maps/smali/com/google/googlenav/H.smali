.class public Lcom/google/googlenav/H;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/google/googlenav/U;

.field private d:[Lcom/google/googlenav/U;


# direct methods
.method private constructor <init>([Lcom/google/googlenav/U;Lcom/google/googlenav/U;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/googlenav/H;->d:[Lcom/google/googlenav/U;

    iput-object p2, p0, Lcom/google/googlenav/H;->c:Lcom/google/googlenav/U;

    iput-object p3, p0, Lcom/google/googlenav/H;->a:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/googlenav/H;->b:Ljava/lang/String;

    return-void
.end method

.method public static a(Law/e;)Lcom/google/googlenav/H;
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v2, 0x1

    if-nez p0, :cond_0

    move-object v0, v8

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {p0, v1}, Law/b;->c(Law/e;I)Law/e;

    move-result-object v1

    invoke-static {v1, v2}, Law/b;->b(Law/e;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v6}, Law/e;->i(I)I

    move-result v2

    new-array v3, v2, [Lcom/google/googlenav/U;

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v6, v4}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-static {v5}, Lcom/google/googlenav/U;->a(Law/e;)Lcom/google/googlenav/U;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v7}, Law/e;->h(I)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, v7}, Law/e;->f(I)Law/e;

    move-result-object v2

    invoke-static {v2}, Lcom/google/googlenav/U;->a(Law/e;)Lcom/google/googlenav/U;

    move-result-object v2

    :goto_2
    new-instance v4, Lcom/google/googlenav/H;

    invoke-direct {v4, v3, v2, v0, v1}, Lcom/google/googlenav/H;-><init>([Lcom/google/googlenav/U;Lcom/google/googlenav/U;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    :cond_2
    move-object v2, v8

    goto :goto_2
.end method

.method public static a(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static b(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-ne p0, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()[Lcom/google/googlenav/U;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/H;->d:[Lcom/google/googlenav/U;

    return-object v0
.end method

.method public b()Lcom/google/googlenav/U;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/H;->c:Lcom/google/googlenav/U;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/H;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/H;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/H;->d:[Lcom/google/googlenav/U;

    array-length v0, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/googlenav/H;->d:[Lcom/google/googlenav/U;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/googlenav/U;->a:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/H;->a:Ljava/lang/String;

    invoke-static {v0}, LR/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public g()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/H;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()Z
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/H;->c:Lcom/google/googlenav/U;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
