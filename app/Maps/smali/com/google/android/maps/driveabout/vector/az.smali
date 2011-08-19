.class public Lcom/google/android/maps/driveabout/vector/az;
.super Ljava/lang/Object;


# static fields
.field public static final b:Lcom/google/android/maps/driveabout/vector/az;


# instance fields
.field protected a:I

.field c:[I

.field d:I

.field e:I

.field f:Ljava/nio/IntBuffer;

.field g:I

.field protected h:LaV/c;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/android/maps/driveabout/vector/L;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/L;-><init>([ILcom/google/android/maps/driveabout/vector/bo;)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/az;->b:Lcom/google/android/maps/driveabout/vector/az;

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t
        0x0t 0x0t 0x1t 0x0t
    .end array-data
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->a:I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/az;->d:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/az;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-ge v0, v1, :cond_1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    :cond_0
    :goto_0
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    return-void

    :cond_1
    new-instance v1, LaV/c;

    invoke-direct {v1, v0}, LaV/c;-><init>(I)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/az;->b()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    invoke-virtual {v0}, LaV/c;->a()V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/az;->b()V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    invoke-virtual {v1}, LaV/c;->b()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x10

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public a(FF)V
    .locals 4

    const/high16 v3, 0x4780

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    mul-float v2, p1, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    mul-float v2, p2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/az;->b()V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:I

    if-le p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->d:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    if-nez v2, :cond_2

    const/16 v2, 0x400

    if-ge v0, v2, :cond_1

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    :goto_0
    iput v1, p0, Lcom/google/android/maps/driveabout/vector/az;->d:I

    :cond_0
    return-void

    :cond_1
    new-instance v2, LaV/c;

    invoke-direct {v2, v0}, LaV/c;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    invoke-virtual {v0, v2, v3}, LaV/c;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget-object v0, v0, LaV/c;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget v0, v0, LaV/c;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    invoke-virtual {v2, v0}, LaV/c;->c(I)V

    goto :goto_0
.end method

.method public a(II)V
    .locals 3

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    aput p2, v0, v1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/az;->b()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/az;->e()V

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/az;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    sub-int/2addr v0, p2

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->a:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/16 v2, 0x140c

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public a([I)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/az;->a([III)V

    return-void
.end method

.method public a([III)V
    .locals 6

    const/16 v5, 0x400

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    add-int/2addr v0, p3

    if-ge v0, v5, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    return-void

    :cond_2
    add-int v0, p2, p3

    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_1

    sub-int v2, v0, v1

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    sub-int v3, v5, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    invoke-static {p1, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/az;->b()V

    goto :goto_0
.end method

.method protected b()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    invoke-virtual {v0, v1}, LaV/c;->b(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget-object v0, v0, LaV/c;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget v0, v0, LaV/c;->d:I

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->g:I

    :cond_0
    return-void
.end method

.method public b(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    return v0
.end method

.method protected c(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->e:I

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->i()Lcom/google/android/maps/driveabout/vector/x;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/google/android/maps/driveabout/vector/x;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :goto_0
    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/az;->b()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, LaV/c;->a(Ljava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    invoke-virtual {v0}, LaV/c;->c()V

    iput-object v4, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    goto :goto_0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/az;->a:I

    return v0
.end method

.method public d(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/az;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/az;->a:I

    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    const/4 v1, 0x2

    const/16 v2, 0x140c

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/az;->f:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public e(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/az;->b(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    invoke-virtual {v0}, LaV/c;->c()V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->h:LaV/c;

    :cond_0
    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/az;->c:[I

    return-void
.end method
