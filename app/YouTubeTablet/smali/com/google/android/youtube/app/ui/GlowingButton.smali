.class public final Lcom/google/android/youtube/app/ui/GlowingButton;
.super Landroid/widget/Button;
.source "GlowingButton.java"


# static fields
.field private static final BLUR_FILTERS:[Landroid/graphics/BlurMaskFilter;


# instance fields
.field private final clip:Landroid/graphics/Rect;

.field private final paint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 27
    const/4 v1, 0x5

    new-array v1, v1, [Landroid/graphics/BlurMaskFilter;

    sput-object v1, Lcom/google/android/youtube/app/ui/GlowingButton;->BLUR_FILTERS:[Landroid/graphics/BlurMaskFilter;

    .line 29
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v1, Lcom/google/android/youtube/app/ui/GlowingButton;->BLUR_FILTERS:[Landroid/graphics/BlurMaskFilter;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 30
    sget-object v1, Lcom/google/android/youtube/app/ui/GlowingButton;->BLUR_FILTERS:[Landroid/graphics/BlurMaskFilter;

    new-instance v2, Landroid/graphics/BlurMaskFilter;

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    invoke-direct {v2, v3, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    aput-object v2, v1, v0

    .line 29
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->clip:Landroid/graphics/Rect;

    .line 36
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/GlowingButton;->init(Landroid/content/Context;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 24
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    .line 25
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->clip:Landroid/graphics/Rect;

    .line 41
    invoke-direct {p0, p1}, Lcom/google/android/youtube/app/ui/GlowingButton;->init(Landroid/content/Context;)V

    .line 42
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 47
    .local v0, res:Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a0011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/GlowingButton;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 48
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object v1, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 50
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/google/android/youtube/app/ui/GlowingButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 52
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .parameter "canvas"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 57
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->isFocused()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->isSelected()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->isPressed()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 58
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 59
    .local v4, text:Ljava/lang/String;
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->clip:Landroid/graphics/Rect;

    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->getClipBounds(Landroid/graphics/Rect;)Z

    .line 60
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getTextSize()F

    move-result v8

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 61
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    const v8, -0x3ebdbe

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->clip:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getTotalPaddingLeft()I

    move-result v8

    add-int v5, v7, v8

    .line 63
    .local v5, x:I
    invoke-virtual {p0}, Lcom/google/android/youtube/app/ui/GlowingButton;->getBaseline()I

    move-result v6

    .line 64
    .local v6, y:I
    sget-object v0, Lcom/google/android/youtube/app/ui/GlowingButton;->BLUR_FILTERS:[Landroid/graphics/BlurMaskFilter;

    .local v0, arr$:[Landroid/graphics/BlurMaskFilter;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 65
    .local v1, blurFilter:Landroid/graphics/BlurMaskFilter;
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 66
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 64
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 68
    .end local v1           #blurFilter:Landroid/graphics/BlurMaskFilter;
    :cond_1
    iget-object v7, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setColor(I)V

    .line 69
    int-to-float v7, v5

    int-to-float v8, v6

    iget-object v9, p0, Lcom/google/android/youtube/app/ui/GlowingButton;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 71
    .end local v0           #arr$:[Landroid/graphics/BlurMaskFilter;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #text:Ljava/lang/String;
    .end local v5           #x:I
    .end local v6           #y:I
    :cond_2
    return-void
.end method
