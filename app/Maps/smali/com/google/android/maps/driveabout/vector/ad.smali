.class public Lcom/google/android/maps/driveabout/vector/ad;
.super Lcom/google/android/maps/driveabout/vector/cr;


# instance fields
.field private final a:Landroid/content/res/Resources;

.field private b:Lcom/google/android/maps/driveabout/vector/p;

.field private final c:Lcom/google/android/maps/driveabout/vector/q;

.field private d:LG/Q;

.field private e:F

.field private final f:I

.field private final g:I

.field private final h:I

.field private volatile i:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->i:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Landroid/content/res/Resources;

    const v1, 0x7f090036

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Landroid/content/res/Resources;

    const v1, 0x7f090037

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Landroid/content/res/Resources;

    const v1, 0x7f090038

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:I

    new-instance v0, Lcom/google/android/maps/driveabout/vector/q;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->c:Lcom/google/android/maps/driveabout/vector/q;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x900b0

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->i:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-gtz p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:LG/Q;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v0, :cond_2

    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0, v5}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->a:Landroid/content/res/Resources;

    const v2, 0x7f020145

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/content/res/Resources;I)V

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->l()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x2100

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const/16 v1, 0x303

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/az;->b:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:LG/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ad;->e:F

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->c:Lcom/google/android/maps/driveabout/vector/q;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/q;->a(Lcom/google/android/maps/driveabout/vector/u;)F

    move-result v1

    const/high16 v2, 0x3f80

    invoke-interface {v0, v1, v4, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->b:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/br;->e:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ad;->g:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ad;->h:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:LG/Q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:LG/Q;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ad;->f:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ad;->d:LG/Q;

    invoke-virtual {p1, v2, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;Z)F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->e:F

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ad;->i:Z

    return v0
.end method

.method public c_(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ad;->i:Z

    return-void
.end method
