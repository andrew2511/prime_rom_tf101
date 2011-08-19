.class public Lcom/google/android/maps/driveabout/vector/ag;
.super Lcom/google/android/maps/driveabout/vector/cq;


# instance fields
.field private final h:[I

.field private i:Lcom/google/android/maps/driveabout/vector/u;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->g:LaV/g;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->g:LaV/g;

    invoke-virtual {v1}, LaV/g;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->a:[S

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->a:[S

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    aput v1, v0, v1

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 6

    const v5, 0x8893

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ag;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/u;->c:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    aget v1, v1, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ag;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->f:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->f:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->c:I

    const/16 v2, 0x1403

    invoke-interface {v0, p2, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->i:Lcom/google/android/maps/driveabout/vector/u;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->i:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->i:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->h:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/ag;->f:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ag;->i:Lcom/google/android/maps/driveabout/vector/u;

    return-void
.end method

.method protected c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cD;->b()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->g:LaV/g;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->a:[S

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ag;->c:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :goto_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->c:I

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->g:LaV/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->g:LaV/g;

    invoke-virtual {v0}, LaV/g;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/ag;->g:LaV/g;

    :cond_0
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/ag;->a:[S

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/ag;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ag;->g:LaV/g;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ag;->d:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, LaV/g;->a(Ljava/nio/ShortBuffer;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/cq;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_1
.end method
