.class public Lcom/google/android/maps/driveabout/vector/f;
.super Lcom/google/android/maps/driveabout/vector/br;


# instance fields
.field private final m:[I

.field private n:Lcom/google/android/maps/driveabout/vector/u;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 2

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->l:LaV/c;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->l:LaV/c;

    invoke-virtual {v1}, LaV/c;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->g:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->g:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/br;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    aput v1, v0, v1

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->n:Lcom/google/android/maps/driveabout/vector/u;

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->n:Lcom/google/android/maps/driveabout/vector/u;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->n:Lcom/google/android/maps/driveabout/vector/u;

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/android/maps/driveabout/vector/f;->a:I

    :cond_1
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/f;->n:Lcom/google/android/maps/driveabout/vector/u;

    return-void
.end method

.method protected c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/u;->c:Z

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/f;->i:I

    mul-int/lit8 v0, v0, 0x3

    invoke-static {}, Lcom/google/android/maps/driveabout/vector/cD;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->l:LaV/c;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/f;->g:[I

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/android/maps/driveabout/vector/bc;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->l:LaV/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/f;->l:LaV/c;

    invoke-virtual {v0}, LaV/c;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/f;->l:LaV/c;

    :cond_0
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/f;->g:[I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/f;->b()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->l:LaV/c;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, LaV/c;->a(Ljava/nio/IntBuffer;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/br;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_1
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 6

    const v5, 0x8892

    const/4 v4, 0x0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/f;->n:Lcom/google/android/maps/driveabout/vector/u;

    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/vector/u;->c:Z

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    aget v1, v1, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/f;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/f;->a:I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/f;->a:I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->j:Ljava/nio/IntBuffer;

    :cond_3
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/f;->m:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x3

    const/16 v2, 0x140c

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method
