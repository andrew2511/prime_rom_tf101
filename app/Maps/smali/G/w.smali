.class public LG/w;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(III)V
    .locals 1

    const-string v0, ""

    invoke-direct {p0, p1, p2, p3, v0}, LG/w;-><init>(IIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 3

    const/high16 v2, 0x2000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LG/w;->d:I

    iput p2, p0, LG/w;->e:I

    iput p3, p0, LG/w;->f:I

    if-nez p4, :cond_0

    const-string v0, ""

    :goto_0
    iput-object v0, p0, LG/w;->g:Ljava/lang/String;

    const/16 v0, 0x12

    sub-int/2addr v0, p1

    iput v0, p0, LG/w;->c:I

    const/high16 v0, 0x4000

    shr-int/2addr v0, p1

    iget v1, p0, LG/w;->e:I

    mul-int/2addr v1, v0

    sub-int/2addr v1, v2

    iput v1, p0, LG/w;->a:I

    iget v1, p0, LG/w;->f:I

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v0, v1

    sub-int/2addr v0, v2

    neg-int v0, v0

    iput v0, p0, LG/w;->b:I

    return-void

    :cond_0
    move-object v0, p4

    goto :goto_0
.end method

.method public static a(III)LG/w;
    .locals 4

    const/16 v1, 0x1e

    const/high16 v3, 0x2000

    if-ltz p0, :cond_0

    if-gt p0, v1, :cond_0

    const/high16 v0, -0x2000

    if-le p2, v0, :cond_0

    if-le p2, v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    sub-int v0, v1, p0

    add-int v1, p1, v3

    shr-int/2addr v1, v0

    neg-int v2, p2

    add-int/2addr v2, v3

    shr-int v0, v2, v0

    const/4 v2, 0x1

    shl-int/2addr v2, p0

    if-gez v1, :cond_3

    add-int/2addr v1, v2

    :cond_2
    :goto_1
    new-instance v2, LG/w;

    invoke-direct {v2, p0, v1, v0}, LG/w;-><init>(III)V

    move-object v0, v2

    goto :goto_0

    :cond_3
    if-lt v1, v2, :cond_2

    sub-int/2addr v1, v2

    goto :goto_1
.end method

.method public static a(ILG/Q;)LG/w;
    .locals 2

    invoke-virtual {p1}, LG/Q;->f()I

    move-result v0

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v1

    invoke-static {p0, v0, v1}, LG/w;->a(III)LG/w;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/io/DataInput;)LG/w;
    .locals 4

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v0

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v1

    invoke-static {p0}, LG/L;->a(Ljava/io/DataInput;)I

    move-result v2

    new-instance v3, LG/w;

    invoke-direct {v3, v0, v1, v2}, LG/w;-><init>(III)V

    return-object v3
.end method

.method public static a(LG/R;I)Ljava/util/ArrayList;
    .locals 11

    const/4 v10, 0x2

    const/4 v6, 0x1

    const/4 v9, 0x0

    if-gez p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v9}, Ljava/util/ArrayList;-><init>(I)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, LG/R;->f()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    invoke-virtual {p0}, LG/R;->g()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    invoke-static {p1, v0, v1}, LG/w;->b(III)LG/w;

    move-result-object v0

    invoke-virtual {p0}, LG/R;->g()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {p0}, LG/R;->f()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v1, v2}, LG/w;->b(III)LG/w;

    move-result-object v1

    invoke-virtual {v0}, LG/w;->c()I

    move-result v2

    invoke-virtual {v0}, LG/w;->d()I

    move-result v3

    invoke-virtual {v1}, LG/w;->c()I

    move-result v4

    invoke-virtual {v1}, LG/w;->d()I

    move-result v5

    shl-int/2addr v6, p1

    if-le v2, v4, :cond_1

    sub-int v7, v6, v2

    add-int/2addr v7, v4

    add-int/lit8 v7, v7, 0x1

    sub-int v8, v5, v3

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    :goto_1
    if-gez v7, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_1
    sub-int v7, v4, v2

    add-int/lit8 v7, v7, 0x1

    sub-int v8, v5, v3

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v7, v8

    goto :goto_1

    :cond_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    if-gt v7, v10, :cond_4

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v7, v10, :cond_3

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    move-object v0, v8

    goto :goto_0

    :cond_4
    if-le v2, v4, :cond_8

    move v0, v2

    :goto_2
    if-ge v0, v6, :cond_6

    move v1, v3

    :goto_3
    if-gt v1, v5, :cond_5

    new-instance v2, LG/w;

    invoke-direct {v2, p1, v0, v1}, LG/w;-><init>(III)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_6
    move v0, v9

    :goto_4
    if-gt v0, v4, :cond_3

    move v1, v3

    :goto_5
    if-gt v1, v5, :cond_7

    new-instance v2, LG/w;

    invoke-direct {v2, p1, v0, v1}, LG/w;-><init>(III)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    move v0, v2

    :goto_6
    if-gt v0, v4, :cond_3

    move v1, v3

    :goto_7
    if-gt v1, v5, :cond_9

    new-instance v2, LG/w;

    invoke-direct {v2, p1, v0, v1}, LG/w;-><init>(III)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_6
.end method

.method public static b(III)LG/w;
    .locals 7

    const/high16 v6, 0x2000

    const/4 v5, 0x1

    const/16 v1, 0x1e

    const/4 v4, 0x0

    if-gtz p0, :cond_0

    new-instance v0, LG/w;

    invoke-direct {v0, v4, v4, v4}, LG/w;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    if-le p0, v1, :cond_5

    move v0, v1

    :goto_1
    sub-int/2addr v1, v0

    add-int v2, p1, v6

    shr-int/2addr v2, v1

    neg-int v3, p2

    add-int/2addr v3, v6

    shr-int v1, v3, v1

    shl-int v3, v5, v0

    if-gez v2, :cond_3

    add-int/2addr v2, v3

    :cond_1
    :goto_2
    if-gez v1, :cond_4

    move v1, v4

    :cond_2
    :goto_3
    new-instance v3, LG/w;

    invoke-direct {v3, v0, v2, v1}, LG/w;-><init>(III)V

    move-object v0, v3

    goto :goto_0

    :cond_3
    if-lt v2, v3, :cond_1

    sub-int/2addr v2, v3

    goto :goto_2

    :cond_4
    if-lt v1, v3, :cond_2

    sub-int v1, v3, v5

    goto :goto_3

    :cond_5
    move v0, p0

    goto :goto_1
.end method

.method public static b(LG/R;I)Ljava/util/ArrayList;
    .locals 8

    const/4 v7, 0x1

    invoke-virtual {p0}, LG/R;->f()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v0

    invoke-virtual {p0}, LG/R;->g()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    invoke-static {p1, v0, v1}, LG/w;->c(III)LG/w;

    move-result-object v0

    invoke-virtual {p0}, LG/R;->g()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p0}, LG/R;->f()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {p1, v1, v2}, LG/w;->c(III)LG/w;

    move-result-object v1

    invoke-virtual {v0}, LG/w;->c()I

    move-result v2

    invoke-virtual {v0}, LG/w;->d()I

    move-result v3

    invoke-virtual {v1}, LG/w;->c()I

    move-result v4

    invoke-virtual {v1}, LG/w;->d()I

    move-result v5

    invoke-virtual {v0}, LG/w;->f()I

    move-result v6

    invoke-virtual {v0}, LG/w;->g()I

    move-result v0

    invoke-static {v6, v0}, LG/Q;->f(II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1}, LG/w;->f()I

    move-result v0

    invoke-virtual {v1}, LG/w;->g()I

    move-result v1

    invoke-static {v0, v1}, LG/Q;->f(II)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    shl-int v0, v7, p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-le v2, v4, :cond_7

    :goto_1
    if-ge v2, v0, :cond_3

    move v6, v3

    :goto_2
    if-gez v6, :cond_1

    new-instance v7, LG/w;

    invoke-direct {v7, p1, v2, v6}, LG/w;-><init>(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move v6, v0

    :goto_3
    if-gt v6, v5, :cond_2

    new-instance v7, LG/w;

    invoke-direct {v7, p1, v2, v6}, LG/w;-><init>(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_4
    if-gt v2, v4, :cond_9

    move v6, v3

    :goto_5
    if-gez v6, :cond_4

    new-instance v7, LG/w;

    invoke-direct {v7, p1, v2, v6}, LG/w;-><init>(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    move v6, v0

    :goto_6
    if-gt v6, v5, :cond_5

    new-instance v7, LG/w;

    invoke-direct {v7, p1, v2, v6}, LG/w;-><init>(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v2, v2, 0x1

    :cond_7
    if-gt v2, v4, :cond_9

    move v6, v3

    :goto_7
    if-gez v6, :cond_8

    new-instance v7, LG/w;

    invoke-direct {v7, p1, v2, v6}, LG/w;-><init>(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_8
    move v6, v0

    :goto_8
    if-gt v6, v5, :cond_6

    new-instance v7, LG/w;

    invoke-direct {v7, p1, v2, v6}, LG/w;-><init>(III)V

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_9
    move-object v0, v1

    goto :goto_0
.end method

.method private static c(III)LG/w;
    .locals 5

    const/high16 v4, 0x2000

    const/16 v2, 0x1e

    const/4 v1, 0x0

    if-gtz p0, :cond_0

    new-instance v0, LG/w;

    invoke-direct {v0, v1, v1, v1}, LG/w;-><init>(III)V

    :goto_0
    return-object v0

    :cond_0
    if-le p0, v2, :cond_1

    move v0, v2

    :goto_1
    sub-int v1, v2, v0

    add-int v2, p1, v4

    shr-int/2addr v2, v1

    neg-int v3, p2

    add-int/2addr v3, v4

    shr-int v1, v3, v1

    new-instance v3, LG/w;

    invoke-direct {v3, v0, v2, v1}, LG/w;-><init>(III)V

    move-object v0, v3

    goto :goto_0

    :cond_1
    move v0, p0

    goto :goto_1
.end method


# virtual methods
.method public a(LG/w;)I
    .locals 2

    iget v0, p0, LG/w;->d:I

    iget v1, p1, LG/w;->d:I

    if-ne v0, v1, :cond_2

    iget v0, p0, LG/w;->e:I

    iget v1, p1, LG/w;->e:I

    if-ne v0, v1, :cond_1

    iget v0, p0, LG/w;->f:I

    iget v1, p1, LG/w;->f:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LG/w;->g:Ljava/lang/String;

    iget-object v1, p1, LG/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, LG/w;->f:I

    iget v1, p1, LG/w;->f:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_1
    iget v0, p0, LG/w;->e:I

    iget v1, p1, LG/w;->e:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, LG/w;->d:I

    iget v1, p1, LG/w;->d:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)LG/w;
    .locals 4

    new-instance v0, LG/w;

    iget v1, p0, LG/w;->d:I

    iget v2, p0, LG/w;->e:I

    iget v3, p0, LG/w;->f:I

    invoke-direct {v0, v1, v2, v3, p1}, LG/w;-><init>(IIILjava/lang/String;)V

    return-object v0
.end method

.method public a(Ljava/io/DataOutput;)V
    .locals 1

    iget v0, p0, LG/w;->d:I

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/w;->e:I

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    iget v0, p0, LG/w;->f:I

    invoke-static {p1, v0}, LG/L;->a(Ljava/io/DataOutput;I)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, LG/w;->d:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, LG/w;->e:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, LG/w;

    invoke-virtual {p0, p1}, LG/w;->a(LG/w;)I

    move-result v0

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, LG/w;->f:I

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, LG/w;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, LG/w;->g:Ljava/lang/String;

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    check-cast p1, LG/w;

    iget v0, p0, LG/w;->e:I

    iget v1, p1, LG/w;->e:I

    if-eq v0, v1, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget v0, p0, LG/w;->f:I

    iget v1, p1, LG/w;->f:I

    if-eq v0, v1, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, LG/w;->d:I

    iget v1, p1, LG/w;->d:I

    if-eq v0, v1, :cond_5

    move v0, v2

    goto :goto_0

    :cond_5
    iget-object v0, p0, LG/w;->g:Ljava/lang/String;

    iget-object v1, p1, LG/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget v0, p0, LG/w;->a:I

    return v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, LG/w;->b:I

    return v0
.end method

.method public h()LG/Q;
    .locals 3

    new-instance v0, LG/Q;

    iget v1, p0, LG/w;->a:I

    iget v2, p0, LG/w;->b:I

    invoke-direct {v0, v1, v2}, LG/Q;-><init>(II)V

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LG/w;->d:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/w;->e:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LG/w;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LG/w;->g:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public i()LG/S;
    .locals 6

    const/high16 v0, 0x4000

    iget v1, p0, LG/w;->d:I

    shr-int/2addr v0, v1

    new-instance v1, LG/S;

    new-instance v2, LG/Q;

    iget v3, p0, LG/w;->a:I

    iget v4, p0, LG/w;->b:I

    invoke-direct {v2, v3, v4}, LG/Q;-><init>(II)V

    new-instance v3, LG/Q;

    iget v4, p0, LG/w;->a:I

    add-int/2addr v4, v0

    iget v5, p0, LG/w;->b:I

    add-int/2addr v0, v5

    invoke-direct {v3, v4, v0}, LG/Q;-><init>(II)V

    invoke-direct {v1, v2, v3}, LG/S;-><init>(LG/Q;LG/Q;)V

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, LG/w;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/w;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/w;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/w;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, LG/w;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/w;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
