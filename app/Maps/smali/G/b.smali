.class public LG/b;
.super Ljava/lang/Object;


# static fields
.field static final synthetic a:Z


# instance fields
.field private b:[I

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, LG/m;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, LG/b;->a:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, LG/b;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, LG/b;->a:Z

    if-nez v0, :cond_0

    if-gtz p1, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    mul-int/lit8 v0, p1, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, LG/b;->b:[I

    const/4 v0, 0x0

    iput v0, p0, LG/b;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, LG/b;->c:I

    return v0
.end method

.method public a(I)LG/Q;
    .locals 5

    mul-int/lit8 v0, p1, 0x3

    new-instance v1, LG/Q;

    iget-object v2, p0, LG/b;->b:[I

    aget v2, v2, v0

    iget-object v3, p0, LG/b;->b:[I

    add-int/lit8 v4, v0, 0x1

    aget v3, v3, v4

    iget-object v4, p0, LG/b;->b:[I

    add-int/lit8 v0, v0, 0x2

    aget v0, v4, v0

    invoke-direct {v1, v2, v3, v0}, LG/Q;-><init>(III)V

    return-object v1
.end method

.method public a(III)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget v0, p0, LG/b;->c:I

    mul-int/lit8 v0, v0, 0x3

    iget-object v1, p0, LG/b;->b:[I

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, LG/b;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, LG/b;->b:[I

    iget v2, p0, LG/b;->c:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, LG/b;->b:[I

    :cond_0
    iget v0, p0, LG/b;->c:I

    mul-int/lit8 v0, v0, 0x3

    iget v1, p0, LG/b;->c:I

    if-lez v1, :cond_1

    iget-object v1, p0, LG/b;->b:[I

    const/4 v2, 0x3

    sub-int v2, v0, v2

    aget v1, v1, v2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, LG/b;->b:[I

    const/4 v2, 0x2

    sub-int v2, v0, v2

    aget v1, v1, v2

    if-ne p2, v1, :cond_1

    iget-object v1, p0, LG/b;->b:[I

    sub-int v2, v0, v4

    aget v1, v1, v2

    if-ne p3, v1, :cond_1

    move v0, v3

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, LG/b;->b:[I

    aput p1, v1, v0

    iget-object v1, p0, LG/b;->b:[I

    add-int/lit8 v2, v0, 0x1

    aput p2, v1, v2

    iget-object v1, p0, LG/b;->b:[I

    add-int/lit8 v0, v0, 0x2

    aput p3, v1, v0

    iget v0, p0, LG/b;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, LG/b;->c:I

    move v0, v4

    goto :goto_0
.end method

.method public a(LG/Q;)Z
    .locals 3

    invoke-virtual {p1}, LG/Q;->f()I

    move-result v0

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v1

    invoke-virtual {p1}, LG/Q;->h()I

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, LG/b;->a(III)Z

    move-result v0

    return v0
.end method

.method public b()LG/Q;
    .locals 2

    iget v0, p0, LG/b;->c:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, LG/b;->a(I)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LG/b;->c:I

    return-void
.end method

.method public d()LG/m;
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, LG/b;->c:I

    mul-int/lit8 v0, v0, 0x3

    new-array v0, v0, [I

    iget-object v1, p0, LG/b;->b:[I

    iget v2, p0, LG/b;->c:I

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, LG/m;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LG/m;-><init>([ILG/N;)V

    return-object v1
.end method
