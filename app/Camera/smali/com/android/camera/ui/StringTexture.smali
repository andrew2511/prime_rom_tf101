.class Lcom/android/camera/ui/StringTexture;
.super Lcom/android/camera/ui/CanvasTexture;
.source "StringTexture.java"


# static fields
.field private static DEFAULT_PADDING:I


# instance fields
.field private final mMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mText:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput v0, Lcom/android/camera/ui/StringTexture;->DEFAULT_PADDING:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;II)V
    .locals 0
    .parameter "text"
    .parameter "paint"
    .parameter "metrics"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 33
    invoke-direct {p0, p4, p5}, Lcom/android/camera/ui/CanvasTexture;-><init>(II)V

    .line 34
    iput-object p1, p0, Lcom/android/camera/ui/StringTexture;->mText:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcom/android/camera/ui/StringTexture;->mPaint:Landroid/graphics/Paint;

    .line 36
    iput-object p3, p0, Lcom/android/camera/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    .line 37
    return-void
.end method

.method public static newInstance(Ljava/lang/String;FI)Lcom/android/camera/ui/StringTexture;
    .locals 2
    .parameter "text"
    .parameter "textSize"
    .parameter "color"

    .prologue
    .line 49
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 50
    .local v0, paint:Landroid/graphics/Paint;
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 52
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-static {p0, v0}, Lcom/android/camera/ui/StringTexture;->newInstance(Ljava/lang/String;Landroid/graphics/Paint;)Lcom/android/camera/ui/StringTexture;

    move-result-object v1

    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Landroid/graphics/Paint;)Lcom/android/camera/ui/StringTexture;
    .locals 6
    .parameter "text"
    .parameter "paint"

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v3

    .line 42
    .local v3, metrics:Landroid/graphics/Paint$FontMetricsInt;
    const/high16 v0, 0x3f00

    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    sget v1, Lcom/android/camera/ui/StringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v4, v0, v1

    .line 43
    .local v4, width:I
    iget v0, v3, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    iget v1, v3, Landroid/graphics/Paint$FontMetricsInt;->top:I

    sub-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/StringTexture;->DEFAULT_PADDING:I

    mul-int/lit8 v1, v1, 0x2

    add-int v5, v0, v1

    .line 44
    .local v5, height:I
    new-instance v0, Lcom/android/camera/ui/StringTexture;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/StringTexture;-><init>(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint$FontMetricsInt;II)V

    return-object v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V
    .locals 4
    .parameter "canvas"
    .parameter "backing"

    .prologue
    const/4 v3, 0x0

    .line 59
    sget v0, Lcom/android/camera/ui/StringTexture;->DEFAULT_PADDING:I

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/StringTexture;->DEFAULT_PADDING:I

    iget-object v2, p0, Lcom/android/camera/ui/StringTexture;->mMetrics:Landroid/graphics/Paint$FontMetricsInt;

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->ascent:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 60
    iget-object v0, p0, Lcom/android/camera/ui/StringTexture;->mText:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/camera/ui/StringTexture;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v3, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 61
    return-void
.end method
