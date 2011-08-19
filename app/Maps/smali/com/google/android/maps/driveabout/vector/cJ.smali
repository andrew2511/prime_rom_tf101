.class public Lcom/google/android/maps/driveabout/vector/cJ;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:I

.field protected c:I

.field d:Ljava/nio/ByteBuffer;

.field protected e:I

.field protected f:LaV/h;

.field private g:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->e:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->b:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cJ;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->b:I

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x1000

    if-ge v0, v1, :cond_1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    :cond_0
    :goto_0
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->c:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    return-void

    :cond_1
    new-instance v1, LaV/h;

    invoke-direct {v1, v0}, LaV/h;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cJ;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    invoke-virtual {v0}, LaV/h;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cJ;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    invoke-virtual {v1}, LaV/h;->b()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    array-length v1, v1

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->b:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->b:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    if-nez v2, :cond_2

    const/16 v2, 0x1000

    if-ge v0, v2, :cond_1

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    :goto_0
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->b:I

    :cond_0
    return-void

    :cond_1
    new-instance v2, LaV/h;

    invoke-direct {v2, v0}, LaV/h;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    invoke-virtual {v0, v2, v3}, LaV/h;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget-object v0, v0, LaV/h;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget v0, v0, LaV/h;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    invoke-virtual {v2, v0}, LaV/h;->c(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 8

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    int-to-byte v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_1

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v0, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v1, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v2, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v3, v5, v6

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cJ;->b()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->c:I

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    return-void
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    invoke-virtual {v0, v1}, LaV/h;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget-object v0, v0, LaV/h;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget v0, v0, LaV/h;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    :cond_0
    return-void
.end method

.method public b(II)V
    .locals 8

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v0, v0

    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    ushr-int/lit8 v2, p1, 0x8

    int-to-byte v2, v2

    int-to-byte v3, p1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p2, :cond_1

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v1, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v2, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v3, v5, v6

    iget-object v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    aput-byte v0, v5, v6

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/cJ;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cJ;->b()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->c:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->c:I

    return-void
.end method

.method protected b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->c:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/x;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/cJ;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, LaV/h;->a(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    invoke-virtual {v0}, LaV/h;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    goto :goto_0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->e:I

    return v0
.end method

.method public c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->e:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x4

    const/16 v2, 0x1401

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/cJ;->d:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    invoke-virtual {v0}, LaV/h;->c()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->f:LaV/h;

    :cond_0
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/cJ;->a:[B

    return-void
.end method
