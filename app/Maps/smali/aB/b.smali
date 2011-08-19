.class public LaB/b;
.super Ljava/lang/Object;

# interfaces
.implements Lk/f;


# static fields
.field private static final g:Landroid/graphics/Paint;

.field private static final h:Z


# instance fields
.field private final a:I

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z

.field private f:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, LaB/b;->g:Landroid/graphics/Paint;

    invoke-static {}, Lac/m;->y()Lac/m;

    move-result-object v0

    invoke-virtual {v0}, Lac/m;->m()I

    move-result v0

    const/16 v1, 0xc8

    if-le v0, v1, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, LaB/b;->h:Z

    sget-object v0, LaB/b;->g:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(IZZIZZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, LaB/b;->f:I

    iput p1, p0, LaB/b;->a:I

    iput-boolean p2, p0, LaB/b;->b:Z

    iput-boolean p3, p0, LaB/b;->c:Z

    iput-boolean p5, p0, LaB/b;->d:Z

    iput p4, p0, LaB/b;->f:I

    iput-boolean p6, p0, LaB/b;->e:Z

    return-void
.end method

.method private static a(Lk/m;)Landroid/graphics/Canvas;
    .locals 1

    check-cast p0, LaB/h;

    invoke-virtual {p0}, LaB/h;->a()Landroid/graphics/Canvas;

    move-result-object v0

    return-object v0
.end method

.method private e()Landroid/graphics/Paint;
    .locals 3

    iget-boolean v0, p0, LaB/b;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, LaB/b;->e:Z

    if-eqz v0, :cond_1

    sget-object v0, LaB/b;->g:Landroid/graphics/Paint;

    iget v1, p0, LaB/b;->f:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    :goto_0
    sget-object v0, LaB/b;->g:Landroid/graphics/Paint;

    iget-boolean v1, p0, LaB/b;->b:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    sget-object v0, LaB/b;->g:Landroid/graphics/Paint;

    iget-boolean v1, p0, LaB/b;->c:Z

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    sget-object v0, LaB/b;->g:Landroid/graphics/Paint;

    invoke-virtual {p0}, LaB/b;->d()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, LaB/b;->g:Landroid/graphics/Paint;

    return-object v0

    :cond_1
    sget-object v0, LaB/b;->g:Landroid/graphics/Paint;

    iget v1, p0, LaB/b;->f:I

    const/high16 v2, -0x100

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 2

    invoke-direct {p0}, LaB/b;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    invoke-static {v0}, Landroid/util/FloatMath;->ceil(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(C)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-array v0, v4, [F

    invoke-direct {p0}, LaB/b;->e()Landroid/graphics/Paint;

    move-result-object v1

    new-array v2, v4, [C

    aput-char p1, v2, v3

    invoke-virtual {v1, v2, v3, v4, v0}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    aget v0, v0, v3

    float-to-int v0, v0

    return v0
.end method

.method public a(Ljava/lang/String;)I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, LaB/b;->a(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;II)I
    .locals 2

    invoke-direct {p0}, LaB/b;->e()Landroid/graphics/Paint;

    move-result-object v0

    add-int v1, p2, p3

    invoke-virtual {v0, p1, p2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public a(Lk/m;Ljava/lang/String;II)V
    .locals 4

    invoke-static {p1}, LaB/b;->a(Lk/m;)Landroid/graphics/Canvas;

    move-result-object v0

    int-to-float v1, p3

    invoke-direct {p0}, LaB/b;->e()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int v2, p4, v2

    int-to-float v2, v2

    invoke-direct {p0}, LaB/b;->e()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v0, p2, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, LaB/b;->f:I

    return v0
.end method

.method public c()I
    .locals 1

    invoke-direct {p0}, LaB/b;->e()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    return v0
.end method

.method public d()I
    .locals 2

    iget v0, p0, LaB/b;->a:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xc

    sget-boolean v1, LaB/b;->h:Z

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    :cond_0
    return v0
.end method
