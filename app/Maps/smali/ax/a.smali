.class public Lax/a;
.super Ljava/lang/Object;


# instance fields
.field private a:[Lax/b;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Lax/b;

    iput-object v0, p0, Lax/a;->a:[Lax/b;

    iput v1, p0, Lax/a;->b:I

    iput v1, p0, Lax/a;->c:I

    return-void
.end method

.method private a(Lax/b;Lax/b;I)V
    .locals 4

    invoke-virtual {p2}, Lax/b;->k()I

    move-result v0

    invoke-virtual {p1}, Lax/b;->k()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p2}, Lax/b;->l()I

    move-result v1

    invoke-virtual {p1}, Lax/b;->l()I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lax/a;->d:I

    if-nez v2, :cond_1

    iget v2, p0, Lax/a;->e:I

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    iget v3, p0, Lax/a;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    div-int/2addr v0, p3

    add-int/2addr v0, v3

    iput v0, p0, Lax/a;->d:I

    iget v0, p0, Lax/a;->e:I

    mul-int/lit16 v1, v1, 0x3e8

    div-int/2addr v1, p3

    add-int/2addr v0, v1

    iput v0, p0, Lax/a;->e:I

    if-nez v2, :cond_0

    iget v0, p0, Lax/a;->d:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lax/a;->d:I

    iget v0, p0, Lax/a;->e:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lax/a;->e:I

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public a()V
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lax/a;->a:[Lax/b;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput v3, p0, Lax/a;->c:I

    iput v3, p0, Lax/a;->b:I

    return-void
.end method

.method public a(Lax/b;)V
    .locals 5

    const/4 v2, 0x1

    iget v0, p0, Lax/a;->b:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget v0, p0, Lax/a;->b:I

    sub-int/2addr v0, v2

    iput v0, p0, Lax/a;->b:I

    iget v0, p0, Lax/a;->c:I

    add-int/lit8 v0, v0, 0x1

    rem-int/lit8 v0, v0, 0x8

    iput v0, p0, Lax/a;->c:I

    :cond_0
    iget v0, p0, Lax/a;->b:I

    if-lez v0, :cond_2

    iget v0, p0, Lax/a;->c:I

    iget v1, p0, Lax/a;->b:I

    add-int/2addr v0, v1

    sub-int/2addr v0, v2

    rem-int/lit8 v0, v0, 0x8

    invoke-virtual {p1}, Lax/b;->n()J

    move-result-wide v1

    iget-object v3, p0, Lax/a;->a:[Lax/b;

    aget-object v0, v3, v0

    invoke-virtual {v0}, Lax/b;->n()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-ltz v0, :cond_1

    sub-long v0, v1, v3

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lax/a;->a()V

    :cond_2
    iget v0, p0, Lax/a;->c:I

    iget v1, p0, Lax/a;->b:I

    add-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lax/a;->a:[Lax/b;

    aput-object p1, v1, v0

    iget v0, p0, Lax/a;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lax/a;->b:I

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lax/a;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lax/a;->e:I

    return v0
.end method

.method public d()V
    .locals 13

    const/4 v4, 0x0

    const/4 v3, 0x0

    iput v3, p0, Lax/a;->d:I

    iput v3, p0, Lax/a;->e:I

    const-wide/16 v0, 0x0

    iget v2, p0, Lax/a;->b:I

    if-lez v2, :cond_0

    iget v0, p0, Lax/a;->c:I

    iget v1, p0, Lax/a;->b:I

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    rem-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lax/a;->a:[Lax/b;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lax/b;->n()J

    move-result-wide v0

    :cond_0
    move v2, v3

    move-object v5, v4

    :goto_0
    iget v6, p0, Lax/a;->b:I

    if-ge v2, v6, :cond_4

    iget-object v6, p0, Lax/a;->a:[Lax/b;

    iget v7, p0, Lax/a;->c:I

    add-int/2addr v7, v2

    rem-int/lit8 v7, v7, 0x8

    aget-object v6, v6, v7

    invoke-virtual {v6}, Lax/b;->n()J

    move-result-wide v7

    sub-long v9, v0, v7

    const-wide/16 v11, 0xc8

    cmp-long v9, v9, v11

    if-lez v9, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-nez v4, :cond_3

    move-object v4, v5

    move-object v5, v6

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Lax/b;->n()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-int v7, v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v4, v6, v7}, Lax/a;->a(Lax/b;Lax/b;I)V

    add-int/lit8 v3, v3, 0x1

    move-object v4, v5

    move-object v5, v6

    goto :goto_1

    :cond_4
    if-nez v3, :cond_5

    if-eqz v5, :cond_5

    if-eqz v4, :cond_5

    invoke-virtual {v5}, Lax/b;->n()J

    move-result-wide v0

    invoke-virtual {v4}, Lax/b;->n()J

    move-result-wide v2

    sub-long/2addr v0, v2

    long-to-int v0, v0

    if-lez v0, :cond_5

    invoke-direct {p0, v4, v5, v0}, Lax/a;->a(Lax/b;Lax/b;I)V

    :cond_5
    iget v0, p0, Lax/a;->d:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lax/a;->d:I

    iget v0, p0, Lax/a;->e:I

    mul-int/lit8 v0, v0, 0x5

    div-int/lit8 v0, v0, 0x9

    iput v0, p0, Lax/a;->e:I

    return-void
.end method
