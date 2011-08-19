.class public Lcom/google/android/maps/driveabout/vector/aF;
.super Lcom/google/android/maps/driveabout/vector/cr;


# static fields
.field private static final a:F

.field private static final b:F


# instance fields
.field private c:LG/Q;

.field private d:I

.field private e:I

.field private f:Z

.field private final g:Lcom/google/android/maps/driveabout/vector/br;

.field private final h:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final i:Lcom/google/android/maps/driveabout/vector/cJ;

.field private final j:LG/Q;

.field private final k:LG/Q;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x3fb657184ae74487L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aF;->a:F

    const-wide v0, 0x3faacee9f37bebd6L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/google/android/maps/driveabout/vector/aF;->b:F

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {p0}, Lcom/google/android/maps/driveabout/vector/cr;-><init>()V

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->e:I

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->j:LG/Q;

    new-instance v0, LG/Q;

    invoke-direct {v0}, LG/Q;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->k:LG/Q;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/br;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/br;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->h:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-static {v1}, Lcom/google/android/maps/driveabout/vector/bj;->a(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aF;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->h:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/cJ;->a(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->h:Lcom/google/android/maps/driveabout/vector/cJ;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/cJ;->a(II)V

    new-instance v0, Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-direct {v0, v2}, Lcom/google/android/maps/driveabout/vector/cJ;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->i:Lcom/google/android/maps/driveabout/vector/cJ;

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bj;->a(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/aF;->a([I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->i:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, v0, v3}, Lcom/google/android/maps/driveabout/vector/cJ;->a(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->i:Lcom/google/android/maps/driveabout/vector/cJ;

    or-int/lit16 v0, v0, 0xff

    invoke-virtual {v1, v0, v4}, Lcom/google/android/maps/driveabout/vector/cJ;->a(II)V

    return-void
.end method

.method private static a([I)I
    .locals 3

    const v2, 0xff00

    const/4 v0, 0x0

    aget v0, p0, v0

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x10

    const/4 v1, 0x1

    aget v1, p0, v1

    and-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget v1, p0, v1

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    return v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/vector/br;->a(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v0, 0x6

    if-eq p3, v0, :cond_0

    const/4 v0, 0x5

    if-eq p3, v0, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v0

    invoke-virtual {v0}, LG/Q;->h()I

    move-result v0

    int-to-float v0, v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/vector/bF;->c(F)F

    move-result v0

    if-ne p3, v5, :cond_2

    const/high16 v1, 0x4040

    :goto_1
    sub-float/2addr v0, v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->j()F

    move-result v1

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->g()F

    move-result v2

    const/high16 v3, 0x3f00

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpg-float v1, v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    invoke-virtual {p2, v0}, Lcom/google/android/maps/driveabout/vector/bF;->d(F)LG/F;

    move-result-object v0

    invoke-virtual {v0}, LG/F;->c()LG/z;

    move-result-object v0

    check-cast v0, LG/v;

    invoke-virtual {v0}, LG/v;->g()LG/Q;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->c:LG/Q;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->j:LG/Q;

    invoke-virtual {v2, v4, v4}, LG/Q;->d(II)V

    invoke-virtual {v0}, LG/v;->f()LG/Q;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->c:LG/Q;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aF;->k:LG/Q;

    invoke-static {v0, v2, v3}, LG/Q;->b(LG/Q;LG/Q;LG/Q;)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->j:LG/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->k:LG/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->c:LG/Q;

    invoke-virtual {p2}, Lcom/google/android/maps/driveabout/vector/bF;->l()LG/Q;

    move-result-object v2

    invoke-virtual {v0, v2}, LG/Q;->c(LG/Q;)F

    move-result v0

    if-ne p3, v5, :cond_3

    sget v2, Lcom/google/android/maps/driveabout/vector/aF;->b:F

    :goto_2
    mul-float/2addr v0, v2

    float-to-int v0, v0

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->j:LG/Q;

    invoke-virtual {v2, v0}, LG/Q;->c(I)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->k:LG/Q;

    invoke-virtual {v2, v0}, LG/Q;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->j:LG/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->k:LG/Q;

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    invoke-virtual {v0, v2, v3}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->j:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->k:LG/Q;

    invoke-virtual {v0, v1}, LG/Q;->c(I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->j:LG/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->k:LG/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/br;->a(LG/Q;I)V

    goto/16 :goto_0

    :cond_2
    const/high16 v1, 0x40a0

    goto/16 :goto_1

    :cond_3
    sget v2, Lcom/google/android/maps/driveabout/vector/aF;->a:F

    goto :goto_2
.end method

.method private b(I)Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->f:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->e:I

    if-eq p1, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/google/android/maps/driveabout/vector/aF;->e:I

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->f:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const v0, 0x61a80

    return v0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 4

    invoke-direct {p0, p3}, Lcom/google/android/maps/driveabout/vector/aF;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/maps/driveabout/vector/aF;->a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;I)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->c:LG/Q;

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/aF;->d:I

    int-to-float v2, v2

    invoke-static {v0, p2, v1, v2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->k()V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/u;->o()V

    const/16 v1, 0x302

    const/16 v2, 0x303

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/br;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x3

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->i:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    :goto_1
    const/4 v1, 0x5

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/aF;->g:Lcom/google/android/maps/driveabout/vector/br;

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/vector/br;->c()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/aF;->h:Lcom/google/android/maps/driveabout/vector/cJ;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/cJ;->c(Lcom/google/android/maps/driveabout/vector/u;)V

    goto :goto_1
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/aF;->f:Z

    return v0
.end method
