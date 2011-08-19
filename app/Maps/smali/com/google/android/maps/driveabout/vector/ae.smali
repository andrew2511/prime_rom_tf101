.class public Lcom/google/android/maps/driveabout/vector/ae;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/maps/driveabout/vector/cA;
.implements Ljava/lang/Comparable;


# static fields
.field private static D:[F


# instance fields
.field private A:Z

.field private B:LG/F;

.field private C:Lcom/google/android/maps/driveabout/vector/cf;

.field private E:Lcom/google/android/maps/driveabout/vector/Z;

.field protected final a:Landroid/graphics/Bitmap;

.field protected final b:I

.field protected final c:I

.field private d:LG/Q;

.field private final e:Landroid/graphics/Bitmap;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private h:Lcom/google/android/maps/driveabout/vector/bq;

.field private i:Lcom/google/android/maps/driveabout/vector/p;

.field private j:Lcom/google/android/maps/driveabout/vector/p;

.field private k:Lcom/google/android/maps/driveabout/vector/az;

.field private l:Lcom/google/android/maps/driveabout/vector/az;

.field private m:F

.field private n:I

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private final s:Z

.field private final t:F

.field private final u:I

.field private final v:I

.field private final w:I

.field private final x:I

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [F

    sput-object v0, Lcom/google/android/maps/driveabout/vector/ae;->D:[F

    return-void
.end method

.method public constructor <init>(LG/Q;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;IILjava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;

    iput-object p2, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/android/maps/driveabout/vector/ae;->e:Landroid/graphics/Bitmap;

    iput p4, p0, Lcom/google/android/maps/driveabout/vector/ae;->b:I

    iput p5, p0, Lcom/google/android/maps/driveabout/vector/ae;->c:I

    iput-object p6, p0, Lcom/google/android/maps/driveabout/vector/ae;->f:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/maps/driveabout/vector/ae;->g:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->q:Z

    iput-boolean p8, p0, Lcom/google/android/maps/driveabout/vector/ae;->s:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->s:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->M()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->m()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x4370

    div-float/2addr v0, v1

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->t:F

    :goto_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->b:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->u:I

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->c:I

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->v:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->w:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->x:I

    :goto_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->e:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->y:I

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/android/maps/driveabout/vector/ae;->a(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->z:I

    :goto_2
    return-void

    :cond_0
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->t:F

    goto :goto_0

    :cond_1
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->w:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->x:I

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->y:I

    iput v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->z:I

    goto :goto_2
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/p;)Lcom/google/android/maps/driveabout/vector/az;
    .locals 4

    const/4 v3, 0x0

    new-instance v0, Lcom/google/android/maps/driveabout/vector/az;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Lcom/google/android/maps/driveabout/vector/az;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/p;->a()F

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/p;->b()F

    move-result v2

    invoke-virtual {v0, v3, v3}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    invoke-virtual {v0, v3, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    invoke-virtual {v0, v1, v3}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/maps/driveabout/vector/az;->a(FF)V

    return-object v0
.end method

.method private a(Lcom/google/android/maps/driveabout/vector/u;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/p;
    .locals 2

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->h:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/bq;->i()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->d()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {v0, p1}, Lcom/google/android/maps/driveabout/vector/p;-><init>(Lcom/google/android/maps/driveabout/vector/u;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/vector/p;->c(Z)V

    invoke-virtual {v0, p2}, Lcom/google/android/maps/driveabout/vector/p;->a(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->h:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/vector/bq;->i()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized a(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->u:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->w:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    const/4 v2, 0x1

    aget v0, v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->v:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->x:I

    div-int/lit8 v2, v2, 0x2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v0, v2

    int-to-float v2, v1

    sub-float v2, p1, v2

    int-to-float v1, v1

    sub-float v1, p1, v1

    mul-float/2addr v1, v2

    int-to-float v2, v0

    sub-float v2, p2, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected a(I)I
    .locals 2

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->s:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->M()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float v0, p1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->t:F

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    move v0, p1

    goto :goto_0
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/ae;)I
    .locals 2

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->n:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/ae;->n:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->n:I

    iget v1, p1, Lcom/google/android/maps/driveabout/vector/ae;->n:I

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public declared-synchronized a(LG/Q;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method a(Lcom/google/android/maps/driveabout/vector/bq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->h:Lcom/google/android/maps/driveabout/vector/bq;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/cf;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->C:Lcom/google/android/maps/driveabout/vector/cf;

    return-void
.end method

.method public a(Lcom/google/android/maps/driveabout/vector/u;Lcom/google/android/maps/driveabout/vector/bF;II)V
    .locals 10

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/high16 v7, 0x1

    if-gt p4, v5, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->h:Lcom/google/android/maps/driveabout/vector/bq;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->m:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p1, Lcom/google/android/maps/driveabout/vector/u;->a:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->e:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;

    if-nez p4, :cond_4

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    invoke-direct {p0, p1, v1}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/p;)Lcom/google/android/maps/driveabout/vector/az;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->l:Lcom/google/android/maps/driveabout/vector/az;

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->m:F

    invoke-static {v0, p2, v3, v4}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;LG/Q;F)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p4, :cond_5

    const/high16 v2, -0x2d

    invoke-interface {v0, v2, v8, v8, v7}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    const/high16 v2, -0x5a

    invoke-interface {v0, v2, v7, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->l:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v2, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->y:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->z:I

    move v9, v3

    move-object v3, v1

    move v1, v9

    :goto_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->E:Lcom/google/android/maps/driveabout/vector/Z;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->E:Lcom/google/android/maps/driveabout/vector/Z;

    invoke-virtual {v4, p1}, Lcom/google/android/maps/driveabout/vector/Z;->a(Lcom/google/android/maps/driveabout/vector/u;)I

    move-result v4

    if-ne v4, v7, :cond_3

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/google/android/maps/driveabout/vector/ae;->E:Lcom/google/android/maps/driveabout/vector/Z;

    :cond_3
    mul-int/2addr v2, v4

    mul-int/2addr v1, v4

    :goto_3
    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->b:I

    shl-int/lit8 v4, v4, 0x10

    neg-int v4, v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    const/high16 v5, -0x1

    iget v6, p0, Lcom/google/android/maps/driveabout/vector/ae;->c:I

    shl-int/lit8 v6, v6, 0x10

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    div-int v3, v6, v3

    add-int/2addr v3, v5

    invoke-interface {v0, v2, v7, v1}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    invoke-interface {v0, v4, v8, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    const/4 v1, 0x5

    const/4 v2, 0x4

    invoke-interface {v0, v1, v8, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    if-nez v3, :cond_2

    invoke-direct {p0, p1, v2}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/u;Landroid/graphics/Bitmap;)Lcom/google/android/maps/driveabout/vector/p;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    iget-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    invoke-direct {p0, v3}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/p;)Lcom/google/android/maps/driveabout/vector/az;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->k:Lcom/google/android/maps/driveabout/vector/az;

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    invoke-static {v0, p2}, Lcom/google/android/maps/driveabout/vector/Y;->a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/maps/driveabout/vector/bF;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->k:Lcom/google/android/maps/driveabout/vector/az;

    invoke-virtual {v1, p1}, Lcom/google/android/maps/driveabout/vector/az;->d(Lcom/google/android/maps/driveabout/vector/u;)V

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v1, v0}, Lcom/google/android/maps/driveabout/vector/p;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->w:I

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->x:I

    if-ne p4, v5, :cond_6

    const/16 v4, 0x302

    const/16 v5, 0x303

    invoke-interface {v0, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v4, 0x2300

    const/16 v5, 0x2200

    const/16 v6, 0x2100

    invoke-interface {v0, v4, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const v4, 0xcccc

    invoke-interface {v0, v7, v7, v7, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    :cond_6
    move v9, v3

    move-object v3, v2

    move v2, v1

    move v1, v9

    goto :goto_2

    :cond_7
    shl-int/lit8 v2, v2, 0x10

    shl-int/lit8 v1, v1, 0x10

    goto :goto_3
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->q:Z

    return-void
.end method

.method public declared-synchronized a(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 3

    const/4 v2, 0x1

    monitor-enter p0

    const/high16 v0, 0x3f80

    :try_start_0
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->h()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(FF)F

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->m:F

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;

    sget-object v1, Lcom/google/android/maps/driveabout/vector/ae;->D:[F

    invoke-virtual {p1, v0, v1}, Lcom/google/android/maps/driveabout/vector/bF;->a(LG/Q;[F)V

    sget-object v0, Lcom/google/android/maps/driveabout/vector/ae;->D:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    const/high16 v1, 0x4780

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->n:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method aj_()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->f()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->i:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    return v0
.end method

.method ak_()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->e()V

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/vector/p;->f()I

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->j:Lcom/google/android/maps/driveabout/vector/p;

    :cond_0
    return v0
.end method

.method public as_()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->o:Z

    return-void
.end method

.method public at_()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->o:Z

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->p:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->p:Z

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->h:Lcom/google/android/maps/driveabout/vector/bq;

    invoke-virtual {v0, p0}, Lcom/google/android/maps/driveabout/vector/bq;->c(Lcom/google/android/maps/driveabout/vector/ae;)V

    :cond_0
    return-void
.end method

.method public declared-synchronized au_()LG/Q;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public av_()I
    .locals 1

    iget v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->v:I

    return v0
.end method

.method public aw_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->q:Z

    return v0
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->r:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->r:Z

    return v0
.end method

.method public declared-synchronized b(FFLG/Q;Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;

    invoke-virtual {p4, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->u:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->w:I

    add-int/2addr v2, v1

    const/high16 v3, 0x4140

    invoke-virtual {p4}, Lcom/google/android/maps/driveabout/vector/bF;->f()F

    move-result v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-ltz v1, :cond_1

    add-int v1, v2, v3

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_2

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->v:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->x:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v1, v0

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_3

    add-int v0, v1, v3

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    move v0, v5

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized b(Lcom/google/android/maps/driveabout/vector/bF;)Z
    .locals 8

    const/4 v6, 0x1

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    move v0, v5

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/maps/driveabout/vector/ae;->B:LG/F;

    invoke-virtual {v0, v1}, LG/F;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->A:Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->d:LG/Q;

    invoke-virtual {p1, v0}, Lcom/google/android/maps/driveabout/vector/bF;->b(LG/Q;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->u:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/maps/driveabout/vector/ae;->w:I

    add-int/2addr v2, v1

    const/4 v3, 0x1

    aget v0, v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->v:I

    sub-int/2addr v0, v3

    iget v3, p0, Lcom/google/android/maps/driveabout/vector/ae;->x:I

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->e:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->y:I

    add-int/2addr v4, v1

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v4, p0, Lcom/google/android/maps/driveabout/vector/ae;->z:I

    add-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    move v7, v3

    move v3, v2

    move v2, v7

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->d()I

    move-result v4

    if-ge v1, v4, :cond_2

    if-ltz v3, :cond_2

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->e()I

    move-result v1

    if-ge v0, v1, :cond_2

    if-ltz v2, :cond_2

    move v0, v6

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->A:Z

    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/vector/bF;->t()LG/F;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->B:LG/F;

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->A:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_3
    move v7, v3

    move v3, v2

    move v2, v7

    goto :goto_1
.end method

.method public c()Lcom/google/android/maps/driveabout/vector/cf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->C:Lcom/google/android/maps/driveabout/vector/cf;

    return-object v0
.end method

.method public c(Z)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->E:Lcom/google/android/maps/driveabout/vector/Z;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/maps/driveabout/vector/Z;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/vector/Z;-><init>()V

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->E:Lcom/google/android/maps/driveabout/vector/Z;

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->E:Lcom/google/android/maps/driveabout/vector/Z;

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/google/android/maps/driveabout/vector/ae;

    invoke-virtual {p0, p1}, Lcom/google/android/maps/driveabout/vector/ae;->a(Lcom/google/android/maps/driveabout/vector/ae;)I

    move-result v0

    return v0
.end method

.method d()Lcom/google/android/maps/driveabout/vector/bq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->h:Lcom/google/android/maps/driveabout/vector/bq;

    return-object v0
.end method

.method d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/maps/driveabout/vector/ae;->p:Z

    return-void
.end method

.method e()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->a:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method f()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->e:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->o:Z

    return v0
.end method

.method public m()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->f:Ljava/lang/String;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/maps/driveabout/vector/ae;->g:Ljava/lang/String;

    return-object v0
.end method
