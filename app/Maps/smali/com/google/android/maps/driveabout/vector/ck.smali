.class public Lcom/google/android/maps/driveabout/vector/ck;
.super Lcom/google/android/maps/driveabout/vector/cr;


# static fields
.field private static g:Lcom/google/android/maps/driveabout/vector/br;

.field private static h:Lcom/google/android/maps/driveabout/vector/cq;

.field private static i:Lcom/google/android/maps/driveabout/vector/cq;


# instance fields
.field private a:LG/Q;

.field private b:LG/S;

.field private c:I

.field private d:F

.field private e:I

.field private f:I

.field private j:F


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0x64

    const/4 v5, 0x0

    const/4 v8, 0x0

    const v0, 0x3d80adfd

    float-to-double v1, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    const/high16 v2, 0x3f80

    new-instance v3, Lcom/google/android/maps/driveabout/vector/br;

    const/16 v4, 0x65

    invoke-direct {v3, v4}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/ck;->g:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cq;

    invoke-direct {v3, v9}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/ck;->h:Lcom/google/android/maps/driveabout/vector/cq;

    new-instance v3, Lcom/google/android/maps/driveabout/vector/cq;

    const/16 v4, 0x66

    invoke-direct {v3, v4}, Lcom/google/android/maps/driveabout/vector/cq;-><init>(I)V

    sput-object v3, Lcom/google/android/maps/driveabout/vector/ck;->i:Lcom/google/android/maps/driveabout/vector/cq;

    sget-object v3, Lcom/google/android/maps/driveabout/vector/ck;->g:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v3, v8, v8, v8}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    sget-object v3, Lcom/google/android/maps/driveabout/vector/ck;->i:Lcom/google/android/maps/driveabout/vector/cq;

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    move v3, v8

    move v4, v2

    move v2, v5

    :goto_0
    if-ge v2, v9, :cond_0

    sget-object v5, Lcom/google/android/maps/driveabout/vector/ck;->g:Lcom/google/android/maps/driveabout/vector/br;

    add-float v6, v4, v8

    add-float v7, v3, v8

    invoke-virtual {v5, v6, v7, v8}, Lcom/google/android/maps/driveabout/vector/br;->a(FFF)V

    sget-object v5, Lcom/google/android/maps/driveabout/vector/ck;->h:Lcom/google/android/maps/driveabout/vector/cq;

    add-int/lit8 v6, v2, 0x1

    int-to-short v6, v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    sget-object v5, Lcom/google/android/maps/driveabout/vector/ck;->i:Lcom/google/android/maps/driveabout/vector/cq;

    add-int/lit8 v6, v2, 0x1

    int-to-short v6, v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    neg-float v5, v3

    mul-float/2addr v5, v1

    add-float/2addr v5, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    mul-float v4, v5, v0

    mul-float/2addr v3, v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/google/android/maps/driveabout/vector/ck;->i:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(S)V

    return-void
.end method

.method public constructor <init>(LG/Q;III)V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/ck;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ck;->d()V

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/ck;->e:I

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/ck;->f:I

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->j:F

    return-void
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;F)V
    .locals 3

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, p2, p2, p2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ck;->g:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->f:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/ck;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ck;->i:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v2, 0x6

    invoke-virtual {v1, p1, v2}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->e:I

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/vector/ck;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->j:F

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ck;->h:Lcom/google/android/maps/driveabout/vector/cq;

    const/4 v1, 0x2

    invoke-virtual {v0, p1, v1}, Lcom/google/android/maps/driveabout/vector/cq;->a(Lcom/google/android/maps/driveabout/vector/u;I)V

    return-void
.end method

.method private static a(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5

    const v4, 0xff00

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v4

    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    and-int v2, p1, v4

    shl-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v4

    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->c:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->d:F

    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->c:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    invoke-virtual {v1}, LG/Q;->e()D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->d:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->d:F

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, LG/S;->a(LG/Q;I)LG/S;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->b:LG/S;

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/ck;->j:F

    return-void
.end method

.method public a(LG/Q;I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->c:I

    if-eq v0, p2, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/ck;->c:I

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/ck;->d()V

    :cond_1
    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 3

    if-gtz p4, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ck;->d:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    invoke-virtual {v0}, LG/F;->a()LG/R;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ck;->b:LG/S;

    invoke-virtual {v0, v1}, LG/R;->b(LG/z;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->r()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->q()F

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ck;->a:LG/Q;

    invoke-static {v0, p2, v2, v1}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ck;->d:F

    div-float v1, v2, v1

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/ck;->a(Lcom/google/android/maps/driveabout/vector/u;F)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/ck;->e:I

    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/maps/driveabout/vector/ck;->f:I

    return-void
.end method
