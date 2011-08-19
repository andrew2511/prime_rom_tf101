.class public LaB/h;
.super Ljava/lang/Object;

# interfaces
.implements Lk/m;


# static fields
.field private static final d:Landroid/graphics/Rect;

.field private static final e:Landroid/graphics/Rect;

.field private static final f:Landroid/graphics/Rect;

.field private static final g:Landroid/graphics/RectF;


# instance fields
.field private a:Landroid/graphics/Canvas;

.field private final b:Landroid/graphics/Paint;

.field private c:Lk/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LaB/h;->d:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LaB/h;->e:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, LaB/h;->f:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    sput-object v0, LaB/h;->g:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iput-object p1, p0, LaB/h;->a:Landroid/graphics/Canvas;

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    or-int/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(IIII)V
    .locals 4

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    new-instance v1, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    invoke-direct {v1, p1, p2, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sget-object v2, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    return-void
.end method

.method public a(IIIIII)V
    .locals 7

    const/4 v4, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LaB/h;->a(Z)Z

    sget-object v0, LaB/h;->g:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v5, p2, p4

    int-to-float v5, v5

    invoke-virtual {v0, v1, v2, v3, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    sget-object v1, LaB/h;->g:Landroid/graphics/RectF;

    const/16 v2, 0x5a

    sub-int v2, p5, v2

    sub-int/2addr v2, p6

    int-to-float v2, v2

    int-to-float v3, p6

    iget-object v5, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0, v4}, LaB/h;->a(Z)Z

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 0

    iput-object p1, p0, LaB/h;->a:Landroid/graphics/Canvas;

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, LaB/h;->c:Lk/f;

    invoke-interface {v0, p0, p1, p2, p3}, Lk/f;->a(Lk/m;Ljava/lang/String;II)V

    return-void
.end method

.method public a(Lk/f;)V
    .locals 0

    iput-object p1, p0, LaB/h;->c:Lk/f;

    return-void
.end method

.method public a(Lk/l;II)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2, p3}, Lk/l;->a(Lk/m;II)V

    :cond_0
    return-void
.end method

.method public a(Lk/l;IIIIIIII)Z
    .locals 5

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    check-cast p1, LaB/f;

    invoke-virtual {p1}, LaB/f;->c()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    sget-object v1, LaB/h;->d:Landroid/graphics/Rect;

    add-int v2, p6, p8

    add-int v3, p7, p9

    invoke-virtual {v1, p6, p7, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    sget-object v1, LaB/h;->e:Landroid/graphics/Rect;

    add-int v2, p2, p4

    add-int v3, p3, p5

    invoke-virtual {v1, p2, p3, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v1, p0, LaB/h;->a:Landroid/graphics/Canvas;

    sget-object v2, LaB/h;->d:Landroid/graphics/Rect;

    sget-object v3, LaB/h;->e:Landroid/graphics/Rect;

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Z)Z
    .locals 1

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v0, 0x1

    return v0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    sget-object v1, LaB/h;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LaB/h;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(IIII)V
    .locals 6

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b(IIIIII)V
    .locals 6

    new-instance v1, Landroid/graphics/RectF;

    int-to-float v0, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    invoke-direct {v1, v0, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    const/16 v2, 0x5a

    sub-int v2, p5, v2

    sub-int/2addr v2, p6

    int-to-float v2, v2

    int-to-float v3, p6

    const/4 v4, 0x0

    iget-object v5, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    return-void
.end method

.method public b(I)Z
    .locals 1

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v0, 0x1

    return v0
.end method

.method public c()I
    .locals 2

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    sget-object v1, LaB/h;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LaB/h;->f:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c(IIII)V
    .locals 6

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    int-to-float v1, p1

    int-to-float v2, p2

    add-int v3, p1, p3

    int-to-float v3, v3

    add-int v4, p2, p4

    int-to-float v4, v4

    iget-object v5, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public d()I
    .locals 2

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    sget-object v1, LaB/h;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LaB/h;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public e()I
    .locals 2

    iget-object v0, p0, LaB/h;->a:Landroid/graphics/Canvas;

    sget-object v1, LaB/h;->f:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, LaB/h;->f:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, LaB/h;->b:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public g()Lk/f;
    .locals 1

    iget-object v0, p0, LaB/h;->c:Lk/f;

    return-object v0
.end method
