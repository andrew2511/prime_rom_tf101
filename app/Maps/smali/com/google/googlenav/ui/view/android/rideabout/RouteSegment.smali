.class public Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;
.super Landroid/view/View;


# static fields
.field protected static final h:Landroid/graphics/Rect;

.field protected static final i:Landroid/graphics/Rect;

.field private static final m:Landroid/graphics/Paint;

.field private static final n:Landroid/graphics/Rect;


# instance fields
.field protected a:I

.field protected final b:I

.field protected final c:I

.field protected d:Lcom/google/googlenav/ui/view/android/rideabout/j;

.field protected e:Lcom/google/googlenav/ui/view/android/rideabout/j;

.field protected f:I

.field protected g:I

.field private final j:Landroid/graphics/Bitmap;

.field private final k:I

.field private final l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LB/l;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumWidth(I)V

    const v1, 0x7f090045

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b:I

    const v1, 0x7f090046

    invoke-virtual {p0, v1}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(I)I

    move-result v1

    iput v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c:I

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b:I

    add-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->l:I

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020171

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    return-void
.end method

.method private a(Landroid/graphics/Canvas;IILcom/google/googlenav/ui/view/android/rideabout/j;I)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-ne p4, v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->b(Landroid/graphics/Canvas;II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->b:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-ne p4, v1, :cond_0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v0, v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->c:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v0, p3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;II)V
    .locals 7

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    add-int/2addr v1, v2

    move v2, p2

    :goto_0
    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/2addr v3, v2

    if-gt v3, p3, :cond_0

    iget-object v3, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    int-to-float v4, v0

    int-to-float v5, v2

    sget-object v6, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    add-int/2addr v2, v1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method protected a(I)I
    .locals 1

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(IIF)I
    .locals 3

    const/high16 v2, 0x3f80

    const/4 v1, 0x0

    cmpl-float v0, p3, v1

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getHeight()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/2addr v1, p2

    int-to-float v1, v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v0, p1

    return v0

    :cond_0
    cmpl-float v0, p3, v2

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const v0, 0x3e4ccccd

    const v1, 0x3f19999a

    mul-float/2addr v1, p3

    add-float/2addr v0, v1

    goto :goto_0
.end method

.method protected a(Landroid/graphics/Canvas;II)V
    .locals 6

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->d:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(Landroid/graphics/Canvas;IILcom/google/googlenav/ui/view/android/rideabout/j;I)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;III)V
    .locals 6

    iget-object v4, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e:Lcom/google/googlenav/ui/view/android/rideabout/j;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a(Landroid/graphics/Canvas;IILcom/google/googlenav/ui/view/android/rideabout/j;I)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;IILandroid/graphics/Bitmap;)V
    .locals 5

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v3, v2

    sub-int v2, p2, v2

    sget-object v4, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    add-int/2addr v0, v3

    add-int/2addr v1, v2

    invoke-virtual {v4, v3, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->n:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->m:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    int-to-float v0, v3

    int-to-float v1, v2

    const/4 v2, 0x0

    invoke-virtual {p1, p4, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 5

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    invoke-virtual {p0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    sget-object v3, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->i:Landroid/graphics/Rect;

    const/4 v4, 0x4

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v3, v2, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->h:Landroid/graphics/Rect;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->i:Landroid/graphics/Rect;

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->g:I

    return v0
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->setMinimumHeight(I)V

    return-void
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    add-int/2addr v0, v1

    return v0
.end method

.method public e()I
    .locals 1

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->j:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    return v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->k:I

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->e:Lcom/google/googlenav/ui/view/android/rideabout/j;

    sget-object v1, Lcom/google/googlenav/ui/view/android/rideabout/j;->c:Lcom/google/googlenav/ui/view/android/rideabout/j;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->a:I

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/google/googlenav/ui/view/android/rideabout/RouteSegment;->l:I

    return v0
.end method
