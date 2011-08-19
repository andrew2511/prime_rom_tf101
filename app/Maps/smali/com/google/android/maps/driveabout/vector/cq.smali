.class public Lcom/google/android/maps/driveabout/vector/cq;
.super Ljava/lang/Object;


# instance fields
.field protected a:[S

.field protected b:I

.field c:I

.field d:Ljava/nio/ShortBuffer;

.field e:I

.field protected f:I

.field protected g:LaV/g;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->f:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cq;->f()V

    return-void
.end method

.method private a([SII)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    return-void

    :cond_1
    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_0

    sub-int v2, v0, v1

    const/16 v3, 0x800

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cq;->e()V

    goto :goto_0
.end method

.method private e()V
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    :cond_0
    return-void
.end method

.method private f()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:I

    const/16 v1, 0x800

    if-ge v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:I

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    :cond_0
    :goto_0
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    return-void

    :cond_1
    new-instance v0, LaV/g;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:I

    invoke-direct {v0, v1}, LaV/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    invoke-virtual {v0}, LaV/g;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    invoke-virtual {v1}, LaV/g;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-nez v0, :cond_2

    const/16 v0, 0x800

    if-ge v1, v0, :cond_1

    new-array v0, v1, [S

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    :goto_0
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->b:I

    :cond_0
    return-void

    :cond_1
    new-instance v0, LaV/g;

    invoke-direct {v0, v1}, LaV/g;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    invoke-virtual {v0, v2, v3}, LaV/g;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget-object v0, v0, LaV/g;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget v0, v0, LaV/g;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    invoke-virtual {v0, v1}, LaV/g;->c(I)V

    goto :goto_0
.end method

.method public a(III)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    :cond_0
    return-void
.end method

.method public a(IIII)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p1

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p3

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    int-to-short v2, p4

    aput-short v2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    add-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cq;II)V
    .locals 7

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/16 v5, 0x800

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    if-ge v0, v5, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/2addr v1, p3

    if-gt v1, v5, :cond_4

    :cond_1
    move v1, v2

    :goto_1
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    invoke-static {v0, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    if-lt v0, v5, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    :cond_2
    :goto_2
    return-void

    :cond_3
    move v0, v6

    goto :goto_0

    :cond_4
    move v1, v6

    goto :goto_1

    :cond_5
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-nez v0, :cond_6

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    invoke-direct {p0, v0, p2, p3}, Lcom/google/android/maps/driveabout/vector/cq;->a([SII)V

    goto :goto_2

    :cond_6
    invoke-direct {p1}, Lcom/google/android/maps/driveabout/vector/cq;->e()V

    shr-int/lit8 v0, p2, 0xb

    and-int/lit16 v1, p2, 0x7ff

    move v2, v0

    move v3, p3

    :goto_3
    if-lez v3, :cond_2

    sub-int v0, v5, v1

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    invoke-virtual {v0, v2}, LaV/g;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    invoke-direct {p0, v0, v1, v4}, Lcom/google/android/maps/driveabout/vector/cq;->a([SII)V

    add-int/lit8 v0, v2, 0x1

    sub-int v1, v3, v4

    move v2, v0

    move v3, v1

    move v1, v6

    goto :goto_3
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cq;->f()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->f:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    invoke-interface {v0, p2, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public a(S)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    aput-short p1, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    :cond_0
    return-void
.end method

.method public a(SS)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    aput-short p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    aput-short p2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    :cond_0
    return-void
.end method

.method public a(SSS)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    aput-short p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    aput-short p2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    aput-short p3, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    const/16 v1, 0x800

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    :cond_0
    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    invoke-virtual {v0, v1}, LaV/g;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget-object v0, v0, LaV/g;->c:Ljava/lang/Object;

    check-cast v0, [S

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget v0, v0, LaV/g;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->e:I

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    return v0
.end method

.method protected c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/x;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/cq;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cq;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, LaV/g;->a(Ljava/nio/ShortBuffer;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    invoke-virtual {v0}, LaV/g;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->f:I

    return v0
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    invoke-virtual {v0}, LaV/g;->c()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->g:LaV/g;

    :cond_0
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cq;->a:[S

    return-void
.end method
