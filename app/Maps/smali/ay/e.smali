.class public Lay/e;
.super Ljava/lang/Object;


# instance fields
.field private final a:I

.field private final b:LU/c;

.field private final c:Lay/f;

.field private d:F


# direct methods
.method public constructor <init>(II[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU/c;

    invoke-direct {v0}, LU/c;-><init>()V

    iput-object v0, p0, Lay/e;->b:LU/c;

    int-to-float v0, p1

    const/high16 v1, 0x4000

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lay/e;->a:I

    sget-object v0, Lay/c;->a:Lay/c;

    invoke-virtual {v0}, Lay/c;->a()F

    move-result v0

    sget-object v1, Lay/c;->b:Lay/c;

    invoke-virtual {v1}, Lay/c;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lay/e;->a(FF)V

    new-instance v0, Lay/f;

    const/high16 v1, 0x3f00

    iget-object v6, p0, Lay/e;->b:LU/c;

    move v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lay/f;-><init>(FII[Landroid/graphics/Bitmap;[Landroid/graphics/Bitmap;LU/c;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lay/e;->c:Lay/f;

    return-void
.end method

.method private a(FF)V
    .locals 10

    const/high16 v9, 0x3f80

    new-instance v0, LU/c;

    float-to-double v1, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    sub-float v5, p2, p1

    float-to-double v5, v5

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    float-to-double v3, p1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v5

    sub-float v7, p2, p1

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, LU/c;-><init>(DD)V

    iget-object v1, p0, Lay/e;->b:LU/c;

    iget v2, v0, LU/c;->a:F

    mul-float/2addr v2, v9

    iput v2, v1, LU/c;->a:F

    iget-object v1, p0, Lay/e;->b:LU/c;

    iget v0, v0, LU/c;->b:F

    mul-float/2addr v0, v9

    iput v0, v1, LU/c;->b:F

    return-void
.end method

.method private b(F)F
    .locals 3

    const/high16 v0, -0x4080

    iget v1, p0, Lay/e;->d:F

    const/high16 v2, 0x3f00

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lay/e;->a:I

    int-to-float v1, v1

    mul-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, Lay/e;->c:Lay/f;

    invoke-virtual {v0}, Lay/f;->a()V

    return-void
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lay/e;->d:F

    return-void
.end method

.method public a(Landroid/graphics/Canvas;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lay/e;->b(Landroid/graphics/Canvas;Z)V

    return-void
.end method

.method public a(Lay/c;Lay/a;Lay/d;Z)V
    .locals 2

    invoke-virtual {p1}, Lay/c;->a()F

    move-result v0

    invoke-virtual {p1}, Lay/c;->b()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lay/e;->a(FF)V

    iget-object v0, p0, Lay/e;->c:Lay/f;

    iget-object v1, p0, Lay/e;->b:LU/c;

    invoke-virtual {v0, v1, p2, p3, p4}, Lay/f;->a(LU/c;Lay/a;Lay/d;Z)V

    return-void
.end method

.method public a(Lay/c;Lay/a;Z)V
    .locals 1

    sget-object v0, Lay/d;->d:Lay/d;

    invoke-virtual {p0, p1, p2, v0, p3}, Lay/e;->a(Lay/c;Lay/a;Lay/d;Z)V

    return-void
.end method

.method public b(Landroid/graphics/Canvas;Z)V
    .locals 2

    if-eqz p2, :cond_0

    const/high16 v0, 0x3f00

    iput v0, p0, Lay/e;->d:F

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lay/e;->c:Lay/f;

    invoke-virtual {v0}, Lay/f;->b()F

    move-result v0

    invoke-direct {p0, v0}, Lay/e;->b(F)F

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lay/e;->c:Lay/f;

    invoke-virtual {v0, p1, p2}, Lay/f;->a(Landroid/graphics/Canvas;Z)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
