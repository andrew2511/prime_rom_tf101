.class public Lf/t;
.super Ljava/lang/Object;

# interfaces
.implements Lf/i;


# static fields
.field private static final a:[F

.field private static final b:[F


# instance fields
.field private final c:Landroid/graphics/PathEffect;

.field private final d:Landroid/graphics/PathEffect;

.field private final e:Landroid/graphics/AvoidXfermode;

.field private f:Landroid/graphics/Canvas;

.field private final g:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x2

    new-array v0, v1, [F

    fill-array-data v0, :array_0

    sput-object v0, Lf/t;->a:[F

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    sput-object v0, Lf/t;->b:[F

    return-void

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x40t 0x41t
        0x0t 0x0t 0xc0t 0x40t
    .end array-data

    :array_1
    .array-data 0x4
        0x0t 0x0t 0xc0t 0x40t
        0x0t 0x0t 0x40t 0x41t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Lf/t;->a:[F

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lf/t;->c:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/DashPathEffect;

    sget-object v1, Lf/t;->b:[F

    const/high16 v2, 0x40c0

    invoke-direct {v0, v1, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    iput-object v0, p0, Lf/t;->d:Landroid/graphics/PathEffect;

    new-instance v0, Landroid/graphics/AvoidXfermode;

    const v1, -0xbfbfc0

    const/16 v2, 0xfd

    sget-object v3, Landroid/graphics/AvoidXfermode$Mode;->AVOID:Landroid/graphics/AvoidXfermode$Mode;

    invoke-direct {v0, v1, v2, v3}, Landroid/graphics/AvoidXfermode;-><init>(IILandroid/graphics/AvoidXfermode$Mode;)V

    iput-object v0, p0, Lf/t;->e:Landroid/graphics/AvoidXfermode;

    const/4 v0, 0x0

    iput-object v0, p0, Lf/t;->f:Landroid/graphics/Canvas;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public a()Lf/b;
    .locals 2

    new-instance v0, Lf/Q;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf/Q;-><init>(Lf/R;)V

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 2

    iput-object p1, p0, Lf/t;->f:Landroid/graphics/Canvas;

    iget-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    iget-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method public a(Lf/b;II)V
    .locals 5

    const/4 v4, 0x0

    shr-int/lit8 v0, p3, 0x8

    const v1, -0x2f000001

    if-ne p2, v1, :cond_3

    const/4 v1, -0x1

    add-int/lit8 v0, v0, 0x2

    :goto_0
    const/high16 v2, -0x64

    if-ne v1, v2, :cond_1

    const/4 v2, 0x1

    :goto_1
    iget-object v3, p0, Lf/t;->g:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    if-eqz v2, :cond_2

    iget-object v1, p0, Lf/t;->c:Landroid/graphics/PathEffect;

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v0, p0, Lf/t;->g:Landroid/graphics/Paint;

    iget-object v1, p0, Lf/t;->e:Landroid/graphics/AvoidXfermode;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    check-cast p1, Lf/Q;

    invoke-virtual {p1}, Lf/Q;->a()Landroid/graphics/Path;

    move-result-object v0

    iget-object v1, p0, Lf/t;->f:Landroid/graphics/Canvas;

    iget-object v3, p0, Lf/t;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v2, :cond_0

    iget-object v1, p0, Lf/t;->g:Landroid/graphics/Paint;

    iget-object v2, p0, Lf/t;->d:Landroid/graphics/PathEffect;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    iget-object v1, p0, Lf/t;->g:Landroid/graphics/Paint;

    const/high16 v2, -0x100

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lf/t;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    iget-object v1, p0, Lf/t;->f:Landroid/graphics/Canvas;

    iget-object v2, p0, Lf/t;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    move-object v1, v4

    goto :goto_2

    :cond_3
    move v1, p2

    goto :goto_0
.end method
