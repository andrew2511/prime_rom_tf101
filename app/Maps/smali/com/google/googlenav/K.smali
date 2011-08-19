.class public Lcom/google/googlenav/K;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:[Lcom/google/googlenav/aZ;

.field private final c:Z


# direct methods
.method public constructor <init>(Law/e;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1, v7}, Law/e;->i(I)I

    move-result v0

    new-array v1, v0, [Lcom/google/googlenav/aZ;

    iput-object v1, p0, Lcom/google/googlenav/K;->b:[Lcom/google/googlenav/aZ;

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v3, p0, Lcom/google/googlenav/K;->b:[Lcom/google/googlenav/aZ;

    new-instance v4, Lcom/google/googlenav/aZ;

    invoke-virtual {p1, v7, v1}, Law/e;->e(II)Law/e;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/google/googlenav/aZ;-><init>(Law/e;)V

    aput-object v4, v3, v1

    iget-object v3, p0, Lcom/google/googlenav/K;->b:[Lcom/google/googlenav/aZ;

    aget-object v3, v3, v1

    invoke-static {v3}, Lcom/google/googlenav/aZ;->a(Lcom/google/googlenav/aZ;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v6

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iput-boolean v2, p0, Lcom/google/googlenav/K;->c:Z

    invoke-virtual {p1, v6}, Law/e;->g(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/K;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/google/googlenav/K;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/googlenav/K;->c:Z

    return v0
.end method


# virtual methods
.method public a()Lcom/google/googlenav/aZ;
    .locals 5

    iget-object v0, p0, Lcom/google/googlenav/K;->b:[Lcom/google/googlenav/aZ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->a()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(I)Lcom/google/googlenav/aZ;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/K;->b:[Lcom/google/googlenav/aZ;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public b()J
    .locals 2

    invoke-virtual {p0}, Lcom/google/googlenav/K;->a()Lcom/google/googlenav/aZ;

    move-result-object v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/googlenav/aZ;->g()J

    move-result-wide v0

    goto :goto_0
.end method

.method public c()Lcom/google/googlenav/aZ;
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/google/googlenav/K;->c:Z

    if-nez v0, :cond_0

    move-object v0, v5

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/googlenav/K;->b:[Lcom/google/googlenav/aZ;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lcom/google/googlenav/aZ;->b()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v5

    goto :goto_0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/K;->a:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/K;->b:[Lcom/google/googlenav/aZ;

    array-length v0, v0

    return v0
.end method
