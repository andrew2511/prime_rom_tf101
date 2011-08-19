.class public final LG/F;
.super LG/ab;


# instance fields
.field private b:[LG/Q;

.field private c:[LG/Q;

.field private d:LG/v;

.field private e:LG/R;

.field private f:LG/S;

.field private g:[[LG/Q;


# direct methods
.method private constructor <init>([LG/Q;)V
    .locals 3

    invoke-direct {p0}, LG/ab;-><init>()V

    array-length v0, p1

    new-array v0, v0, [LG/Q;

    iput-object v0, p0, LG/F;->c:[LG/Q;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v1, p0, LG/F;->c:[LG/Q;

    new-instance v2, LG/Q;

    invoke-direct {v2}, LG/Q;-><init>()V

    aput-object v2, v1, v0

    aget-object v1, p1, v0

    iget-object v2, p0, LG/F;->c:[LG/Q;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, LG/Q;->i(LG/Q;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object p1, p0, LG/F;->b:[LG/Q;

    new-instance v0, LG/v;

    invoke-direct {v0, p1}, LG/v;-><init>([LG/Q;)V

    iput-object v0, p0, LG/F;->d:LG/v;

    iget-object v0, p0, LG/F;->d:LG/v;

    invoke-virtual {v0}, LG/v;->b()LG/S;

    move-result-object v0

    iput-object v0, p0, LG/F;->f:LG/S;

    iget-object v0, p0, LG/F;->f:LG/S;

    invoke-static {v0}, LG/R;->a(LG/S;)LG/R;

    move-result-object v0

    iput-object v0, p0, LG/F;->e:LG/R;

    iget-object v0, p0, LG/F;->e:LG/R;

    iget-boolean v0, v0, LG/R;->a:Z

    iput-boolean v0, p0, LG/F;->a:Z

    iget-boolean v0, p0, LG/F;->a:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, LG/F;->i()V

    :cond_1
    return-void
.end method

.method public static a(LG/Q;LG/Q;LG/Q;LG/Q;)LG/F;
    .locals 2

    const/4 v0, 0x4

    new-array v0, v0, [LG/Q;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    aput-object p3, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    new-instance v1, LG/F;

    invoke-direct {v1, v0}, LG/F;-><init>([LG/Q;)V

    return-object v1
.end method

.method private a(LG/Q;LG/Q;I)V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x20000001

    const v4, -0x20000001

    const/4 v3, 0x1

    iget v0, p2, LG/Q;->a:I

    if-lez v0, :cond_0

    move v0, v5

    :goto_0
    invoke-direct {p0, p1, p2, v0}, LG/F;->b(LG/Q;LG/Q;I)I

    move-result v0

    iget v1, p1, LG/Q;->a:I

    iget v2, p2, LG/Q;->a:I

    if-le v1, v2, :cond_1

    iget-object v1, p0, LG/F;->g:[[LG/Q;

    sub-int v2, p3, v3

    aget-object v1, v1, v2

    new-instance v2, LG/Q;

    invoke-direct {v2, v4, v0}, LG/Q;-><init>(II)V

    aput-object v2, v1, v3

    iget-object v1, p0, LG/F;->g:[[LG/Q;

    aget-object v1, v1, p3

    new-instance v2, LG/Q;

    invoke-direct {v2, v5, v0}, LG/Q;-><init>(II)V

    aput-object v2, v1, v6

    :goto_1
    return-void

    :cond_0
    move v0, v4

    goto :goto_0

    :cond_1
    iget-object v1, p0, LG/F;->g:[[LG/Q;

    sub-int v2, p3, v3

    aget-object v1, v1, v2

    new-instance v2, LG/Q;

    invoke-direct {v2, v5, v0}, LG/Q;-><init>(II)V

    aput-object v2, v1, v3

    iget-object v1, p0, LG/F;->g:[[LG/Q;

    aget-object v1, v1, p3

    new-instance v2, LG/Q;

    invoke-direct {v2, v4, v0}, LG/Q;-><init>(II)V

    aput-object v2, v1, v6

    goto :goto_1
.end method

.method private b(LG/Q;LG/Q;I)I
    .locals 4

    iget v0, p1, LG/Q;->a:I

    sub-int v0, p3, v0

    int-to-double v0, v0

    iget v2, p2, LG/Q;->a:I

    iget v3, p1, LG/Q;->a:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget v2, p2, LG/Q;->b:I

    iget v3, p1, LG/Q;->b:I

    sub-int/2addr v2, v3

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p1, LG/Q;->b:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method private i()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, 0x2

    filled-new-array {v7, v0}, [I

    move-result-object v0

    const-class v1, LG/Q;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[LG/Q;

    iput-object v0, p0, LG/F;->g:[[LG/Q;

    move v0, v5

    move v1, v5

    move v2, v5

    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_4

    iget-object v3, p0, LG/F;->c:[LG/Q;

    aget-object v3, v3, v0

    iget-object v4, p0, LG/F;->b:[LG/Q;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, LG/Q;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v6

    :goto_1
    if-eq v3, v2, :cond_1

    if-lez v0, :cond_0

    iget-object v2, p0, LG/F;->b:[LG/Q;

    sub-int v4, v0, v6

    aget-object v2, v2, v4

    iget-object v4, p0, LG/F;->b:[LG/Q;

    aget-object v4, v4, v0

    invoke-direct {p0, v2, v4, v1}, LG/F;->a(LG/Q;LG/Q;I)V

    add-int/lit8 v1, v1, 0x1

    :cond_0
    move v2, v3

    :cond_1
    if-lez v0, :cond_2

    iget-object v3, p0, LG/F;->g:[[LG/Q;

    sub-int v4, v1, v6

    aget-object v3, v3, v4

    iget-object v4, p0, LG/F;->c:[LG/Q;

    aget-object v4, v4, v0

    aput-object v4, v3, v6

    :cond_2
    iget-object v3, p0, LG/F;->g:[[LG/Q;

    aget-object v3, v3, v1

    iget-object v4, p0, LG/F;->c:[LG/Q;

    aget-object v4, v4, v0

    aput-object v4, v3, v5

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    move v3, v5

    goto :goto_1

    :cond_4
    if-ge v1, v7, :cond_5

    iget-object v0, p0, LG/F;->b:[LG/Q;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    iget-object v2, p0, LG/F;->b:[LG/Q;

    aget-object v2, v2, v5

    invoke-direct {p0, v0, v2, v1}, LG/F;->a(LG/Q;LG/Q;I)V

    add-int/lit8 v0, v1, 0x1

    :cond_5
    iget-object v0, p0, LG/F;->g:[[LG/Q;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    iget-object v1, p0, LG/F;->c:[LG/Q;

    aget-object v1, v1, v5

    aput-object v1, v0, v6

    return-void
.end method


# virtual methods
.method public a(I)LG/Q;
    .locals 1

    iget-object v0, p0, LG/F;->c:[LG/Q;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a()LG/R;
    .locals 1

    iget-object v0, p0, LG/F;->e:LG/R;

    return-object v0
.end method

.method public a(I[LG/Q;)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, LG/F;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, LG/F;->g:[[LG/Q;

    aget-object v0, v0, p1

    aget-object v0, v0, v1

    aput-object v0, p2, v1

    iget-object v0, p0, LG/F;->g:[[LG/Q;

    aget-object v0, v0, p1

    aget-object v0, v0, v2

    aput-object v0, p2, v2

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, LG/F;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v1

    add-int/lit8 v0, p1, 0x1

    rem-int/lit8 v0, v0, 0x4

    invoke-virtual {p0, v0}, LG/F;->a(I)LG/Q;

    move-result-object v0

    aput-object v0, p2, v2

    goto :goto_0
.end method

.method public a(LG/Q;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, LG/F;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, LG/F;->d:LG/v;

    invoke-virtual {v0, p1}, LG/v;->a(LG/Q;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, v4

    move v1, v4

    :goto_1
    const/4 v2, 0x6

    if-ge v0, v2, :cond_2

    iget-object v2, p0, LG/F;->g:[[LG/Q;

    aget-object v2, v2, v0

    aget-object v2, v2, v4

    iget-object v3, p0, LG/F;->g:[[LG/Q;

    aget-object v3, v3, v0

    aget-object v3, v3, v5

    invoke-static {v2, v3, p1}, LG/H;->b(LG/Q;LG/Q;LG/Q;)Z

    move-result v2

    if-eqz v2, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    if-ne v1, v5, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method public a(LG/z;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, LG/F;->a()LG/R;

    move-result-object v0

    invoke-virtual {p1}, LG/z;->b()LG/S;

    move-result-object v1

    invoke-virtual {v0, v1}, LG/R;->b(LG/z;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    invoke-virtual {p1}, LG/z;->a()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, LG/z;->a(I)LG/Q;

    move-result-object v1

    invoke-virtual {p0, v1}, LG/F;->a(LG/Q;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()LG/S;
    .locals 1

    iget-object v0, p0, LG/F;->f:LG/S;

    return-object v0
.end method

.method public c()LG/z;
    .locals 1

    iget-object v0, p0, LG/F;->d:LG/v;

    return-object v0
.end method

.method public d()LG/Q;
    .locals 2

    iget-object v0, p0, LG/F;->c:[LG/Q;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public e()LG/Q;
    .locals 2

    iget-object v0, p0, LG/F;->c:[LG/Q;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, LG/F;

    if-eqz v0, :cond_1

    check-cast p1, LG/F;

    iget-object v0, p0, LG/F;->b:[LG/Q;

    iget-object v1, p1, LG/F;->b:[LG/Q;

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()LG/Q;
    .locals 2

    iget-object v0, p0, LG/F;->c:[LG/Q;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public g()LG/Q;
    .locals 2

    iget-object v0, p0, LG/F;->c:[LG/Q;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-boolean v0, p0, LG/F;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, LG/F;->b:[LG/Q;

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/F;->b:[LG/Q;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/F;->b:[LG/Q;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/F;->b:[LG/Q;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LG/F;->b:[LG/Q;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
