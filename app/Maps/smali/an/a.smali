.class Lan/a;
.super Ljava/lang/Object;


# instance fields
.field private final a:LU/c;

.field private final b:Landroid/graphics/Paint;

.field private final c:I

.field private final d:I

.field private final e:LU/c;

.field private final f:Landroid/graphics/Bitmap;

.field private final g:LU/a;


# direct methods
.method public constructor <init>(IILandroid/graphics/Paint;Landroid/graphics/Bitmap;LU/c;)V
    .locals 7

    const-wide/high16 v5, 0x3fe0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lan/a;->c:I

    iput p2, p0, Lan/a;->d:I

    iput-object p3, p0, Lan/a;->b:Landroid/graphics/Paint;

    iput-object p4, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    new-instance v0, LU/c;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p5, LU/c;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p5, LU/c;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, LU/c;-><init>(DD)V

    iput-object v0, p0, Lan/a;->e:LU/c;

    new-instance v0, LU/a;

    invoke-direct {v0}, LU/a;-><init>()V

    iput-object v0, p0, Lan/a;->g:LU/a;

    new-instance v0, LU/c;

    iget-object v1, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    iget-object v4, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p1

    int-to-double v4, v4

    mul-double/2addr v2, v4

    double-to-float v2, v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    iget-object v5, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, p2

    int-to-double v5, v5

    mul-double/2addr v3, v5

    double-to-float v3, v3

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, LU/c;-><init>(FF)V

    iput-object v0, p0, Lan/a;->a:LU/c;

    iget-object v0, p0, Lan/a;->g:LU/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LU/a;->a(F)V

    iget-object v0, p0, Lan/a;->g:LU/a;

    const v1, 0x3f666666

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iget-object v0, p0, Lan/a;->g:LU/a;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lan/a;->g:LU/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    return-void
.end method

.method public a(LU/c;)V
    .locals 7

    const-wide/high16 v5, 0x3fe0

    iget-object v0, p0, Lan/a;->e:LU/c;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    add-double/2addr v1, v5

    iget v3, p1, LU/c;->a:F

    float-to-double v3, v3

    mul-double/2addr v1, v3

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    add-double/2addr v3, v5

    iget v5, p1, LU/c;->b:F

    float-to-double v5, v5

    mul-double/2addr v3, v5

    invoke-virtual {v0, v1, v2, v3, v4}, LU/c;->a(DD)V

    iget-object v0, p0, Lan/a;->g:LU/a;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, LU/a;->b(F)V

    iget-object v0, p0, Lan/a;->g:LU/a;

    const-wide/high16 v1, 0x402e

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4039

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-virtual {v0, v1}, LU/a;->a(I)V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 5

    const/high16 v4, 0x4120

    const/high16 v3, 0x4000

    iget-object v0, p0, Lan/a;->g:LU/a;

    invoke-virtual {v0}, LU/a;->a()V

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v1, v0, LU/c;->a:F

    iget-object v2, p0, Lan/a;->e:LU/c;

    iget v2, v2, LU/c;->a:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, LU/c;->a:F

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v1, v0, LU/c;->b:F

    iget-object v2, p0, Lan/a;->e:LU/c;

    iget v2, v2, LU/c;->b:F

    div-float/2addr v2, v4

    add-float/2addr v1, v2

    iput v1, v0, LU/c;->b:F

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v0, v0, LU/c;->a:F

    iget v1, p0, Lan/a;->c:I

    iget-object v2, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget-object v1, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    iput v1, v0, LU/c;->a:F

    :cond_0
    :goto_0
    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v0, v0, LU/c;->b:F

    iget v1, p0, Lan/a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget-object v1, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iput v1, v0, LU/c;->b:F

    :cond_1
    :goto_1
    iget-object v0, p0, Lan/a;->g:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    const v1, 0x3d4ccccd

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-object v0, p0, Lan/a;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v0, v0, LU/c;->a:F

    iget-object v1, p0, Lan/a;->a:LU/c;

    iget v1, v1, LU/c;->b:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lan/a;->g:LU/a;

    invoke-virtual {v0}, LU/a;->b()F

    move-result v0

    iget-object v1, p0, Lan/a;->g:LU/a;

    invoke-virtual {v1}, LU/a;->b()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    iget-object v0, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget-object v2, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    iget-object v3, p0, Lan/a;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v0, v0, LU/c;->a:F

    iget-object v1, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v1, p0, Lan/a;->c:I

    iget-object v2, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, v0, LU/c;->a:F

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v0, v0, LU/c;->b:F

    iget-object v1, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-object v0, p0, Lan/a;->a:LU/c;

    iget v1, p0, Lan/a;->d:I

    int-to-float v1, v1

    iget-object v2, p0, Lan/a;->f:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    add-float/2addr v1, v2

    iput v1, v0, LU/c;->b:F

    goto/16 :goto_1
.end method
