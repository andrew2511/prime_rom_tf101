.class public Lcom/google/android/maps/driveabout/vector/cl;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private a:I

.field private b:[I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->b:[I

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->a:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->a:I

    return v0
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->b:[I

    aput p2, v0, p1

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 6

    const/4 v3, 0x0

    const v5, 0xff00

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->b:[I

    aget v0, v0, p3

    if-gtz p4, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v2, -0x4080

    invoke-interface {v1, v3, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    shr-int/lit8 v2, v0, 0x10

    and-int/2addr v2, v5

    shr-int/lit8 v3, v0, 0x8

    and-int/2addr v3, v5

    and-int v4, v0, v5

    shl-int/lit8 v0, v0, 0x8

    and-int/2addr v0, v5

    invoke-interface {v1, v3, v4, v0, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/br;->d:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/cl;->b:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/cl;->a:I

    return-void
.end method
