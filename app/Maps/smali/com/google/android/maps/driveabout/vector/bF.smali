.class public Lcom/google/android/maps/driveabout/vector/bF;
.super Ljava/lang/Object;


# static fields
.field static final a:F

.field public static final b:Lcom/google/android/maps/driveabout/vector/bI;

.field private static final c:F

.field private static final d:LG/Q;

.field private static final e:F


# instance fields
.field private A:[F

.field private final B:[F

.field private final C:LG/Q;

.field private final f:Ljava/lang/Thread;

.field private g:Lcom/google/android/maps/driveabout/vector/bI;

.field private h:LG/Q;

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:I

.field private n:I

.field private o:F

.field private p:Z

.field private q:LG/Q;

.field private r:LG/Q;

.field private s:LG/Q;

.field private t:LG/F;

.field private u:F

.field private v:[D

.field private w:[F

.field private x:[F

.field private y:[F

.field private z:[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    const-wide/high16 v0, 0x3ff0

    const-wide/high16 v4, 0x4000

    invoke-static {v4, v5}, Ljava/lang/Math;->log(D)D

    move-result-wide v4

    div-double/2addr v0, v4

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/bF;->c:F

    const/high16 v0, 0x4880

    const-wide v1, 0x3ff4f1a6c638d03fL

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr v0, v1

    sput v0, Lcom/google/android/maps/driveabout/vector/bF;->a:F

    new-instance v0, LG/Q;

    const/4 v1, 0x1

    invoke-direct {v0, v6, v6, v1}, LG/Q;-><init>(III)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bF;->d:LG/Q;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/bI;

    new-instance v1, LG/Q;

    invoke-direct {v1, v6, v6}, LG/Q;-><init>(II)V

    const/high16 v2, 0x41a0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bI;-><init>(LG/Q;FFFF)V

    sput-object v0, Lcom/google/android/maps/driveabout/vector/bF;->b:Lcom/google/android/maps/driveabout/vector/bI;

    const-wide/high16 v0, 0x3fe0

    const-wide v2, 0x3fd0c152382d7365L

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/bF;->e:F

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;IIF)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/maps/driveabout/vector/bF;-><init>(Lcom/google/android/maps/driveabout/vector/bI;IIFLjava/lang/Thread;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/vector/bI;IIFLjava/lang/Thread;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/google/android/maps/driveabout/vector/bF;->e:F

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->k:F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->z:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->B:[F

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->C:LG/Q;

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    iput p2, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    iput-object p5, p0, Lcom/google/android/maps/driveabout/vector/bF;->f:Ljava/lang/Thread;

    const/high16 v0, 0x41f0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(F)V

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bF;->b(Lcom/google/android/maps/driveabout/vector/bI;)V

    return-void
.end method

.method private A()V
    .locals 6

    const/high16 v5, 0x3f80

    const/high16 v4, 0x3f00

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    const/4 v1, 0x0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    const/4 v1, 0x5

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v2, v2

    const/high16 v3, -0x4100

    mul-float/2addr v2, v3

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    const/16 v1, 0xa

    aput v5, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    const/16 v1, 0xf

    aput v5, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    const/16 v1, 0xc

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    const/16 v1, 0xd

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v2, v2

    mul-float/2addr v2, v4

    aput v2, v0, v1

    return-void
.end method

.method private B()V
    .locals 8

    const/16 v2, 0x10

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->z()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->y()V

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->A()V

    :cond_2
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->z:[F

    new-array v0, v2, [F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    move v3, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->z:[F

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    move v3, v1

    move-object v4, v0

    move v5, v1

    move v7, v1

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->z:[F

    invoke-static {v0, v1, v2, v1}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    return-void
.end method

.method static a(F)F
    .locals 2

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    sget v1, Lcom/google/android/maps/driveabout/vector/bF;->c:F

    mul-float/2addr v0, v1

    return v0
.end method

.method private a(Z)V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->q:LG/Q;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->r:LG/Q;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->s:LG/Q;

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->t:LG/F;

    const/high16 v0, -0x4080

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->u:F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->z:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    if-eqz p1, :cond_0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->y:[F

    :cond_0
    return-void
.end method

.method private static a([FFFFFFF)V
    .locals 7

    neg-float v0, p1

    neg-float v1, p2

    neg-float v2, p3

    const/high16 v3, 0x3f80

    invoke-static {v0, v1, v2}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v4

    div-float/2addr v3, v4

    mul-float/2addr v0, v3

    mul-float/2addr v1, v3

    mul-float/2addr v2, v3

    mul-float v3, v1, p6

    mul-float v4, v2, p5

    sub-float/2addr v3, v4

    mul-float v4, v2, p4

    mul-float/2addr p6, v0

    sub-float p6, v4, p6

    mul-float/2addr p5, v0

    mul-float/2addr p4, v1

    sub-float p4, p5, p4

    const/high16 p5, 0x3f80

    invoke-static {v3, p6, p4}, Landroid/opengl/Matrix;->length(FFF)F

    move-result v4

    div-float/2addr p5, v4

    mul-float/2addr v3, p5

    mul-float/2addr p6, p5

    mul-float/2addr p4, p5

    mul-float p5, p6, v2

    mul-float v4, p4, v1

    sub-float/2addr p5, v4

    mul-float v4, p4, v0

    mul-float v5, v3, v2

    sub-float/2addr v4, v5

    mul-float v5, v3, v1

    mul-float v6, p6, v0

    sub-float/2addr v5, v6

    const/4 v6, 0x0

    aput v3, p0, v6

    const/4 v3, 0x1

    aput p5, p0, v3

    const/4 p5, 0x2

    neg-float v0, v0

    aput v0, p0, p5

    const/4 p5, 0x3

    const/4 v0, 0x0

    aput v0, p0, p5

    const/4 p5, 0x4

    aput p6, p0, p5

    const/4 p5, 0x5

    aput v4, p0, p5

    const/4 p5, 0x6

    neg-float p6, v1

    aput p6, p0, p5

    const/4 p5, 0x7

    const/4 p6, 0x0

    aput p6, p0, p5

    const/16 p5, 0x8

    aput p4, p0, p5

    const/16 p4, 0x9

    aput v5, p0, p4

    const/16 p4, 0xa

    neg-float p5, v2

    aput p5, p0, p4

    const/16 p4, 0xb

    const/4 p5, 0x0

    aput p5, p0, p4

    const/16 p4, 0xc

    const/4 p5, 0x0

    aput p5, p0, p4

    const/16 p4, 0xd

    const/4 p5, 0x0

    aput p5, p0, p4

    const/16 p4, 0xe

    const/4 p5, 0x0

    aput p5, p0, p4

    const/16 p4, 0xf

    const/high16 p5, 0x3f80

    aput p5, p0, p4

    const/4 p4, 0x0

    neg-float p1, p1

    neg-float p2, p2

    neg-float p3, p3

    invoke-static {p0, p4, p1, p2, p3}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    return-void
.end method

.method private b(Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/bI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->p:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v1

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->v:[D

    :cond_2
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->w()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->v()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    goto :goto_0
.end method

.method public static c(F)F
    .locals 2

    sget v0, Lcom/google/android/maps/driveabout/vector/bF;->a:F

    cmpg-float v0, p0, v0

    if-gez v0, :cond_0

    const/high16 v0, 0x4880

    div-float v0, p0, v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    const v1, 0x42652ee1

    mul-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x4296

    goto :goto_0
.end method

.method private v()V
    .locals 12

    const-wide v6, 0x3f91df46a2529d39L

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, v6

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v4

    const/high16 v5, 0x3f00

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    float-to-double v6, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->tan(D)D

    move-result-wide v2

    mul-double/2addr v2, v10

    sub-double v2, v8, v2

    mul-double/2addr v2, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v4, v2

    double-to-int v4, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v3

    add-int/2addr v3, v4

    invoke-virtual {v1}, LG/Q;->g()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {v2, v3, v0}, LG/Q;->d(II)V

    return-void
.end method

.method private w()V
    .locals 6

    const-wide/high16 v0, 0x4000

    const/high16 v2, 0x41f0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-double v2, v2

    const/high16 v4, 0x4380

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    mul-float/2addr v4, v5

    float-to-double v4, v4

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    double-to-float v0, v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->k:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    return-void
.end method

.method private x()[D
    .locals 10

    const-wide v6, 0x3f91df46a2529d39L

    const-wide v4, 0x4076800000000000L

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->v:[D

    if-nez v0, :cond_1

    const-wide v0, 0x4056800000000000L

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_2

    add-double/2addr v0, v4

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v2, v6

    mul-double/2addr v0, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    const/4 v6, 0x3

    new-array v6, v6, [D

    iput-object v6, p0, Lcom/google/android/maps/driveabout/vector/bF;->v:[D

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bF;->v:[D

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v4

    aput-wide v8, v6, v7

    iget-object v6, p0, Lcom/google/android/maps/driveabout/vector/bF;->v:[D

    const/4 v7, 0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v4

    aput-wide v0, v6, v7

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->v:[D

    const/4 v1, 0x2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    neg-double v2, v2

    aput-wide v2, v0, v1

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->v:[D

    return-object v0

    :cond_2
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_0

    sub-double/2addr v0, v4

    goto :goto_0
.end method

.method private y()V
    .locals 8

    const v6, 0x3dcccccd

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->p()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    float-to-double v1, v1

    const-wide v3, 0x3f91df46a2529d39L

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x3fe0

    mul-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->tan(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v5, v6, v1

    neg-float v4, v5

    mul-float v2, v4, v0

    mul-float v3, v5, v0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    const/4 v1, 0x0

    const/high16 v7, 0x41a0

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->frustumM([FIFFFFFF)V

    return-void
.end method

.method private z()V
    .locals 7

    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->o()F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v2

    invoke-virtual {v2, v1}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v3

    invoke-virtual {v3}, LG/Q;->f()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-virtual {v3}, LG/Q;->h()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->n()LG/Q;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    invoke-virtual {v6}, LG/Q;->f()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v6}, LG/Q;->g()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, LG/Q;->h()I

    move-result v6

    int-to-float v6, v6

    invoke-static/range {v0 .. v6}, Lcom/google/android/maps/driveabout/vector/bF;->a([FFFFFFF)V

    return-void
.end method


# virtual methods
.method public a(FF)F
    .locals 3

    mul-float v0, p2, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->j:F

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v2, v2

    mul-float/2addr v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public a(LG/Q;Z)F
    .locals 7

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->x()[D

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->C:LG/Q;

    invoke-static {p1, v1, v2}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->C:LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->C:LG/Q;

    invoke-virtual {v1, v2}, LG/Q;->i(LG/Q;)V

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->C:LG/Q;

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v1

    int-to-double v1, v1

    const/4 v3, 0x0

    aget-wide v3, v0, v3

    mul-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->C:LG/Q;

    invoke-virtual {v3}, LG/Q;->g()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->C:LG/Q;

    invoke-virtual {v3}, LG/Q;->h()I

    move-result v3

    int-to-double v3, v3

    const/4 v5, 0x2

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    add-double v0, v1, v3

    double-to-float v0, v0

    return v0
.end method

.method public a(FFFF)LG/v;
    .locals 21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    move-object v2, v0

    if-nez v2, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bF;->B()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v8

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v9

    invoke-virtual {v2}, LG/Q;->h()I

    move-result v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    move-object v2, v0

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    sub-int v11, v2, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    move-object v2, v0

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    sub-int v12, v2, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->B:[F

    move-object v2, v0

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x1

    aput p3, v2, v3

    const/4 v3, 0x2

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    const/4 v3, 0x3

    const/high16 v4, 0x3f80

    aput v4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v13, 0x6

    aget v13, v2, v13

    mul-float/2addr v3, v13

    float-to-double v13, v3

    const-wide/high16 v15, 0x3ff0

    cmpl-double v3, v13, v15

    if-ltz v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    return-object v2

    :cond_1
    const-wide/high16 v15, 0x3ff0

    const-wide/high16 v17, 0x3ff0

    sub-double v13, v17, v13

    div-double v13, v15, v13

    int-to-double v15, v10

    mul-double v3, v4, v15

    int-to-double v15, v11

    add-double/2addr v3, v15

    mul-double/2addr v3, v13

    int-to-double v15, v8

    add-double/2addr v3, v15

    int-to-double v15, v10

    mul-double v5, v6, v15

    int-to-double v15, v12

    add-double/2addr v5, v15

    mul-double/2addr v5, v13

    int-to-double v13, v9

    add-double/2addr v5, v13

    new-instance v13, LG/Q;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v13, v3, v4}, LG/Q;-><init>(II)V

    const/4 v3, 0x0

    aput p2, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v14, 0x6

    aget v14, v2, v14

    mul-float/2addr v3, v14

    float-to-double v14, v3

    const-wide/high16 v16, 0x3ff0

    cmpl-double v3, v14, v16

    if-ltz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const-wide/high16 v16, 0x3ff0

    const-wide/high16 v18, 0x3ff0

    sub-double v14, v18, v14

    div-double v14, v16, v14

    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v3, v4, v16

    move v0, v11

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v3, v3, v16

    mul-double/2addr v3, v14

    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v3, v3, v16

    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v5, v6, v16

    move v0, v12

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v5, v5, v16

    mul-double/2addr v5, v14

    int-to-double v14, v9

    add-double/2addr v5, v14

    new-instance v14, LG/Q;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v14, v3, v4}, LG/Q;-><init>(II)V

    const/4 v3, 0x1

    aput p4, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/4 v15, 0x6

    aget v15, v2, v15

    mul-float/2addr v3, v15

    float-to-double v15, v3

    const-wide/high16 v17, 0x3ff0

    cmpl-double v3, v15, v17

    if-ltz v3, :cond_3

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_3
    const-wide/high16 v17, 0x3ff0

    const-wide/high16 v19, 0x3ff0

    sub-double v15, v19, v15

    div-double v15, v17, v15

    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v3, v4, v17

    move v0, v11

    int-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v3, v3, v17

    mul-double/2addr v3, v15

    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v3, v3, v17

    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v17, v0

    mul-double v5, v6, v17

    move v0, v12

    int-to-double v0, v0

    move-wide/from16 v17, v0

    add-double v5, v5, v17

    mul-double/2addr v5, v15

    int-to-double v15, v9

    add-double/2addr v5, v15

    new-instance v15, LG/Q;

    double-to-int v3, v3

    double-to-int v4, v5

    invoke-direct {v15, v3, v4}, LG/Q;-><init>(II)V

    const/4 v3, 0x0

    aput p1, v2, v3

    const/4 v3, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    move-object v4, v0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v6, v2

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v3, 0x3f80

    const/4 v4, 0x7

    aget v4, v2, v4

    div-float/2addr v3, v4

    const/4 v4, 0x4

    aget v4, v2, v4

    mul-float/2addr v4, v3

    float-to-double v4, v4

    const/4 v6, 0x5

    aget v6, v2, v6

    mul-float/2addr v6, v3

    float-to-double v6, v6

    const/16 v16, 0x6

    aget v2, v2, v16

    mul-float/2addr v2, v3

    float-to-double v2, v2

    const-wide/high16 v16, 0x3ff0

    cmpl-double v16, v2, v16

    if-ltz v16, :cond_4

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    const-wide/high16 v16, 0x3ff0

    const-wide/high16 v18, 0x3ff0

    sub-double v2, v18, v2

    div-double v2, v16, v2

    move v0, v10

    int-to-double v0, v0

    move-wide/from16 v16, v0

    mul-double v4, v4, v16

    move v0, v11

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    mul-double/2addr v4, v2

    move v0, v8

    int-to-double v0, v0

    move-wide/from16 v16, v0

    add-double v4, v4, v16

    int-to-double v10, v10

    mul-double/2addr v6, v10

    int-to-double v10, v12

    add-double/2addr v6, v10

    mul-double/2addr v2, v6

    int-to-double v6, v9

    add-double/2addr v2, v6

    new-instance v6, LG/Q;

    double-to-int v4, v4

    double-to-int v2, v2

    invoke-direct {v6, v4, v2}, LG/Q;-><init>(II)V

    invoke-static {v6, v15, v13, v14}, LG/v;->a(LG/Q;LG/Q;LG/Q;LG/Q;)LG/v;

    move-result-object v2

    goto/16 :goto_0
.end method

.method public a(IIF)V
    .locals 2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->p:Z

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    iput p3, p0, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->w()V

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->v()V

    invoke-direct {p0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(Z)V

    return-void
.end method

.method public a(LG/Q;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {p1, v0}, LG/Q;->b(LG/Q;)V

    return-void
.end method

.method public a(LG/Q;[F)V
    .locals 7

    const/high16 v4, 0x4000

    const/4 v1, 0x4

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->z:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->B()V

    :cond_0
    invoke-virtual {p1}, LG/Q;->f()I

    move-result v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    sub-int/2addr v0, v2

    const/high16 v2, 0x2000

    if-lt v0, v2, :cond_2

    sub-int/2addr v0, v4

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->h()I

    move-result v2

    int-to-float v0, v0

    aput v0, p2, v3

    invoke-virtual {p1}, LG/Q;->g()I

    move-result v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v4}, LG/Q;->g()I

    move-result v4

    sub-int/2addr v0, v4

    int-to-float v0, v0

    aput v0, p2, v6

    const/4 v0, 0x2

    invoke-virtual {p1}, LG/Q;->h()I

    move-result v4

    int-to-float v4, v4

    aput v4, p2, v0

    const/4 v0, 0x3

    int-to-float v2, v2

    aput v2, p2, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->z:[F

    move-object v0, p2

    move-object v4, p2

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/high16 v0, 0x3f80

    const/4 v2, 0x7

    aget v2, p2, v2

    div-float/2addr v0, v2

    aget v1, p2, v1

    mul-float/2addr v1, v0

    aput v1, p2, v3

    const/4 v1, 0x5

    aget v1, p2, v1

    mul-float/2addr v0, v1

    aput v0, p2, v6

    return-void

    :cond_2
    const/high16 v2, -0x2000

    if-ge v0, v2, :cond_1

    add-int/2addr v0, v4

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bI;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/maps/driveabout/vector/bF;->b(Lcom/google/android/maps/driveabout/vector/bI;)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->p:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->p:Z

    return v0
.end method

.method public b(FF)F
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->j:F

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    div-float/2addr v0, p2

    return v0
.end method

.method public b()LG/Q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-static {v0}, LG/Q;->a(LG/Q;)LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public b(F)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/high16 v4, 0x3fe0

    invoke-static {v6, p1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x42b4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    iput-boolean v7, p0, Lcom/google/android/maps/driveabout/vector/bF;->p:Z

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    float-to-double v0, v0

    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    mul-double/2addr v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    div-double v0, v4, v0

    double-to-float v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->j:F

    invoke-direct {p0, v7}, Lcom/google/android/maps/driveabout/vector/bF;->a(Z)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->f()F

    move-result v0

    cmpl-float v0, v0, v6

    if-eqz v0, :cond_0

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->v()V

    :cond_0
    return-void
.end method

.method public b(LG/Q;)[I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x8

    new-array v0, v0, [F

    invoke-virtual {p0, p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;[F)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    aget v2, v0, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v1, v3

    aget v0, v0, v4

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, v1, v4

    return-object v1
.end method

.method public c(FF)F
    .locals 4

    const/high16 v0, 0x41f0

    div-float v1, p1, p2

    const/high16 v2, 0x4380

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    mul-float/2addr v2, v3

    mul-float/2addr v1, v2

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(F)F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method

.method public c()LG/Q;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->c()LG/Q;

    move-result-object v0

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    return v0
.end method

.method public d(F)LG/F;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bF;->c(F)F

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v1

    sub-float v1, v0, v1

    const v2, 0x3c8efa35

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->j:F

    mul-float/2addr v2, v3

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->tan(D)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v2, v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    sub-float v1, v2, v1

    invoke-static {v1}, Landroid/util/FloatMath;->ceil(F)F

    move-result v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v2, v2

    invoke-virtual {p0, v5, v2}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v4, v4

    invoke-virtual {p0, v3, v4}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v3

    invoke-virtual {p0, v5, v1}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v4

    iget v5, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    int-to-float v5, v5

    invoke-virtual {p0, v5, v1}, Lcom/google/android/maps/driveabout/vector/bF;->d(FF)LG/Q;

    move-result-object v5

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_1

    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/vector/bI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " farAngle: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "x"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " top:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    invoke-static {v2, v3, v4, v5}, LG/F;->a(LG/Q;LG/Q;LG/Q;LG/Q;)LG/F;

    move-result-object v0

    return-object v0
.end method

.method public d(FF)LG/Q;
    .locals 11

    const/4 v1, 0x4

    const/4 v3, 0x0

    const/high16 v6, 0x3f80

    const-wide/high16 v9, 0x3ff0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->B()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->B:[F

    aput p1, v0, v3

    const/4 v2, 0x1

    aput p2, v0, v2

    const/4 v2, 0x2

    aput v6, v0, v2

    const/4 v2, 0x3

    aput v6, v0, v2

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->A:[F

    move-object v4, v0

    move v5, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    const/4 v2, 0x7

    aget v2, v0, v2

    div-float v2, v6, v2

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v3, v1

    const/4 v1, 0x5

    aget v1, v0, v1

    mul-float/2addr v1, v2

    float-to-double v5, v1

    const/4 v1, 0x6

    aget v0, v0, v1

    mul-float/2addr v0, v2

    float-to-double v0, v0

    cmpl-double v2, v0, v9

    if-ltz v2, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v2

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v7

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v8

    invoke-virtual {v2}, LG/Q;->h()I

    move-result v2

    sub-double v0, v9, v0

    div-double v0, v9, v0

    int-to-double v9, v2

    mul-double/2addr v3, v9

    iget-object v9, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v9}, LG/Q;->f()I

    move-result v9

    int-to-double v9, v9

    add-double/2addr v3, v9

    int-to-double v9, v7

    sub-double/2addr v3, v9

    mul-double/2addr v3, v0

    int-to-double v9, v7

    add-double/2addr v3, v9

    int-to-double v9, v2

    mul-double/2addr v5, v9

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    int-to-double v9, v2

    add-double/2addr v5, v9

    int-to-double v9, v8

    sub-double/2addr v5, v9

    mul-double/2addr v0, v5

    int-to-double v5, v8

    add-double/2addr v0, v5

    new-instance v2, LG/Q;

    double-to-int v3, v3

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, LG/Q;-><init>(II)V

    move-object v0, v2

    goto :goto_0
.end method

.method public e()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/google/android/maps/driveabout/vector/bF;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/google/android/maps/driveabout/vector/bF;

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    iget-object v1, p1, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/bI;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public f()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    return v0
.end method

.method public g()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    return v0
.end method

.method public h()F
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    return v0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    mul-int/lit8 v0, v0, 0x1f

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->o:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v0

    return v0
.end method

.method public j()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    return v0
.end method

.method public k()F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->a()F

    move-result v0

    return v0
.end method

.method public l()LG/Q;
    .locals 8

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->q:LG/Q;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->x()[D

    move-result-object v0

    new-instance v1, LG/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    neg-float v2, v2

    float-to-double v2, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    neg-float v3, v3

    float-to-double v3, v3

    const/4 v5, 0x1

    aget-wide v5, v0, v5

    mul-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    long-to-int v3, v3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    neg-float v4, v4

    float-to-double v4, v4

    const/4 v6, 0x2

    aget-wide v6, v0, v6

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v0, v4

    invoke-direct {v1, v2, v3, v0}, LG/Q;-><init>(III)V

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->q:LG/Q;

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->q:LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->q:LG/Q;

    invoke-static {v0, v1, v2}, LG/Q;->a(LG/Q;LG/Q;LG/Q;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->q:LG/Q;

    return-object v0
.end method

.method public m()LG/Q;
    .locals 8

    const-wide/high16 v6, 0x40f0

    const-wide v4, 0x4076800000000000L

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->s:LG/Q;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, LG/Q;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v0

    neg-float v0, v0

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gez v2, :cond_3

    add-double/2addr v0, v4

    :cond_1
    :goto_0
    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    new-instance v2, LG/Q;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v6

    double-to-int v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, LG/Q;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->s:LG/Q;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->s:LG/Q;

    return-object v0

    :cond_3
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v1, v0}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v0

    sget-object v1, Lcom/google/android/maps/driveabout/vector/bF;->d:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->g(LG/Q;)LG/Q;

    move-result-object v0

    const/high16 v1, 0x4780

    invoke-static {v0, v1, v0}, LG/Q;->b(LG/Q;FLG/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->s:LG/Q;

    goto :goto_1
.end method

.method public n()LG/Q;
    .locals 10

    const-wide/high16 v8, 0x40f0

    const-wide/16 v6, 0x0

    const-wide v4, 0x4076800000000000L

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->r:LG/Q;

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v1

    float-to-double v1, v1

    cmpl-double v1, v1, v6

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LG/Q;->f()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v2}, LG/Q;->f()I

    move-result v2

    if-ne v1, v2, :cond_4

    invoke-virtual {v0}, LG/Q;->g()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    if-ne v1, v2, :cond_4

    :cond_0
    const-wide v0, 0x4056800000000000L

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    cmpg-double v2, v0, v6

    if-gez v2, :cond_3

    add-double/2addr v0, v4

    :cond_1
    :goto_0
    const-wide v2, 0x3f91df46a2529d39L

    mul-double/2addr v0, v2

    new-instance v2, LG/Q;

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v3, v8

    double-to-int v3, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v8

    double-to-int v0, v0

    invoke-direct {v2, v3, v0}, LG/Q;-><init>(II)V

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->r:LG/Q;

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->r:LG/Q;

    return-object v0

    :cond_3
    cmpl-double v2, v0, v4

    if-ltz v2, :cond_1

    sub-double/2addr v0, v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v1, v0}, LG/Q;->f(LG/Q;)LG/Q;

    move-result-object v0

    const/high16 v1, 0x4680

    invoke-static {v0, v1, v0}, LG/Q;->b(LG/Q;FLG/Q;)V

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->m()LG/Q;

    move-result-object v1

    invoke-virtual {v1, v0}, LG/Q;->g(LG/Q;)LG/Q;

    move-result-object v0

    const/high16 v1, 0x4780

    invoke-static {v0, v1, v0}, LG/Q;->b(LG/Q;FLG/Q;)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->r:LG/Q;

    goto :goto_1
.end method

.method public o()F
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->u:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/high16 v0, 0x3f80

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v1

    invoke-virtual {v1}, LG/Q;->h()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->u:F

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->u:F

    return v0
.end method

.method public p()F
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->m:I

    int-to-float v0, v0

    const/high16 v1, 0x3f80

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->n:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public q()F
    .locals 2

    const/high16 v0, 0x3f80

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    invoke-virtual {p0, v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v0

    return v0
.end method

.method public r()[F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->z()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->w:[F

    return-object v0
.end method

.method public s()[F
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/bF;->y()V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->x:[F

    return-object v0
.end method

.method public t()LG/F;
    .locals 3

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->t:LG/F;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    const/high16 v2, 0x3f00

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bF;->d(F)LG/F;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->t:LG/F;

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->t:LG/F;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, LG/Q;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v1}, LG/Q;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v2}, LG/Q;->g()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/bF;->h:LG/Q;

    invoke-virtual {v3}, LG/Q;->h()I

    move-result v3

    int-to-float v3, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-direct {v0, v1, v2, v3}, LG/Q;-><init>(III)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->i:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->e()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->l:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()LG/F;
    .locals 6

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v0

    const v1, 0x3c8efa35

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/bF;->j:F

    div-float/2addr v1, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    float-to-double v4, v1

    add-double v1, v2, v4

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->atan(D)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float v0, v1, v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/bF;->g:Lcom/google/android/maps/driveabout/vector/bI;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bI;->d()F

    move-result v1

    const v2, 0x42652ee1

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/bF;->d(F)LG/F;

    move-result-object v0

    goto :goto_0
.end method
