.class public LG/I;
.super Ljava/lang/Object;


# instance fields
.field private a:[LG/f;

.field private b:I

.field private c:LG/m;


# direct methods
.method public constructor <init>(LG/m;)V
    .locals 8

    const/4 v4, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG/I;->c:LG/m;

    invoke-virtual {p1}, LG/m;->b()I

    move-result v0

    add-int/lit8 v1, v0, 0x8

    sub-int/2addr v1, v4

    shr-int/lit8 v1, v1, 0x3

    iput v4, p0, LG/I;->b:I

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    iget v3, p0, LG/I;->b:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, LG/I;->b:I

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    iget v2, p0, LG/I;->b:I

    sub-int/2addr v2, v4

    invoke-static {v2}, LG/I;->a(I)I

    move-result v2

    add-int/2addr v1, v2

    new-array v1, v1, [LG/f;

    iput-object v1, p0, LG/I;->a:[LG/f;

    new-instance v1, LG/Q;

    invoke-direct {v1}, LG/Q;-><init>()V

    iget v2, p0, LG/I;->b:I

    sub-int/2addr v2, v4

    invoke-static {v2}, LG/I;->a(I)I

    move-result v2

    sub-int/2addr v2, v4

    const/4 v3, 0x0

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_1
    if-ge v2, v0, :cond_3

    invoke-virtual {p1, v2, v1}, LG/m;->a(ILG/Q;)V

    if-lez v2, :cond_1

    iget-object v4, p0, LG/I;->a:[LG/f;

    aget-object v4, v4, v3

    invoke-virtual {v4, v1}, LG/f;->a(LG/Q;)V

    :cond_1
    and-int/lit8 v4, v2, 0x7

    if-nez v4, :cond_2

    iget-object v4, p0, LG/I;->a:[LG/f;

    add-int/lit8 v3, v3, 0x1

    new-instance v5, LG/f;

    invoke-direct {v5, v1}, LG/f;-><init>(LG/Q;)V

    aput-object v5, v4, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    iget v0, p0, LG/I;->b:I

    const/4 v1, 0x2

    sub-int/2addr v0, v1

    :goto_2
    if-ltz v0, :cond_6

    invoke-static {v0}, LG/I;->a(I)I

    move-result v1

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, LG/I;->a(I)I

    move-result v2

    :goto_3
    if-ge v1, v2, :cond_4

    invoke-static {v1}, LG/I;->b(I)I

    move-result v3

    invoke-direct {p0, v3}, LG/I;->d(I)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    iget-object v3, p0, LG/I;->a:[LG/f;

    new-instance v4, LG/f;

    iget-object v5, p0, LG/I;->a:[LG/f;

    invoke-static {v1}, LG/I;->b(I)I

    move-result v6

    aget-object v5, v5, v6

    invoke-direct {v4, v5}, LG/f;-><init>(LG/f;)V

    aput-object v4, v3, v1

    invoke-static {v1}, LG/I;->c(I)I

    move-result v3

    invoke-direct {p0, v3}, LG/I;->d(I)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, LG/I;->a:[LG/f;

    aget-object v3, v3, v1

    iget-object v4, p0, LG/I;->a:[LG/f;

    invoke-static {v1}, LG/I;->c(I)I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, LG/f;->a(LG/f;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-void
.end method

.method private static a(I)I
    .locals 2

    const/4 v1, 0x1

    shl-int v0, v1, p0

    sub-int/2addr v0, v1

    return v0
.end method

.method private a(LG/S;ILjava/util/ArrayList;)V
    .locals 4

    invoke-direct {p0, p2}, LG/I;->d(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LG/I;->a:[LG/f;

    aget-object v0, v0, p2

    invoke-virtual {v0, p1}, LG/f;->a(LG/S;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, LG/I;->e(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p2}, LG/I;->f(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, LG/I;->c:LG/m;

    invoke-virtual {v2}, LG/m;->b()I

    move-result v2

    if-le v1, v2, :cond_0

    iget-object v1, p0, LG/I;->c:LG/m;

    invoke-virtual {v1}, LG/m;->b()I

    move-result v1

    :cond_0
    new-instance v2, LG/o;

    iget-object v3, p0, LG/I;->c:LG/m;

    invoke-direct {v2, v3, v0, v1}, LG/o;-><init>(LG/m;II)V

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {p2}, LG/I;->b(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, LG/I;->a(LG/S;ILjava/util/ArrayList;)V

    invoke-static {p2}, LG/I;->c(I)I

    move-result v0

    invoke-direct {p0, p1, v0, p3}, LG/I;->a(LG/S;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method private static b(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static c(I)I
    .locals 1

    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private d(I)Z
    .locals 1

    iget-object v0, p0, LG/I;->a:[LG/f;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, LG/I;->a:[LG/f;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private e(I)Z
    .locals 2

    const/4 v1, 0x1

    iget v0, p0, LG/I;->b:I

    sub-int/2addr v0, v1

    invoke-static {v0}, LG/I;->a(I)I

    move-result v0

    if-lt p1, v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private f(I)I
    .locals 2

    iget v0, p0, LG/I;->b:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-static {v0}, LG/I;->a(I)I

    move-result v0

    sub-int v0, p1, v0

    shl-int/lit8 v0, v0, 0x3

    return v0
.end method


# virtual methods
.method public a(LG/S;)Ljava/util/List;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, LG/I;->a(LG/S;ILjava/util/ArrayList;)V

    return-object v0
.end method
