.class public final Lcom/zinio/mobile/android/view/bh;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Bitmap;

.field private b:I

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 24
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/zinio/mobile/android/view/bh;->a:Landroid/graphics/Bitmap;

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/bh;->b:I

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/zinio/mobile/android/view/bh;->c:I

    .line 28
    iget v0, p0, Lcom/zinio/mobile/android/view/bh;->b:I

    iget v1, p0, Lcom/zinio/mobile/android/view/bh;->c:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/zinio/mobile/android/view/bh;->setBounds(IIII)V

    .line 29
    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 4
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/zinio/mobile/android/view/bh;->a:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/zinio/mobile/android/view/bh;->d:I

    int-to-float v1, v1

    iget v2, p0, Lcom/zinio/mobile/android/view/bh;->e:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 45
    return-void
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/zinio/mobile/android/view/bh;->c:I

    return v0
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/zinio/mobile/android/view/bh;->b:I

    return v0
.end method

.method public final getMinimumHeight()I
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/zinio/mobile/android/view/bh;->c:I

    return v0
.end method

.method public final getMinimumWidth()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/zinio/mobile/android/view/bh;->b:I

    return v0
.end method

.method public final getOpacity()I
    .locals 1

    .prologue
    .line 49
    const/4 v0, -0x1

    return v0
.end method

.method public final setAlpha(I)V
    .locals 0
    .parameter

    .prologue
    .line 66
    return-void
.end method

.method public final setBounds(IIII)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 54
    sub-int v0, p3, p1

    iget v1, p0, Lcom/zinio/mobile/android/view/bh;->b:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iput v0, p0, Lcom/zinio/mobile/android/view/bh;->d:I

    .line 55
    sub-int v0, p4, p2

    iget v1, p0, Lcom/zinio/mobile/android/view/bh;->c:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p2

    iput v0, p0, Lcom/zinio/mobile/android/view/bh;->e:I

    .line 56
    return-void
.end method

.method public final setBounds(Landroid/graphics/Rect;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 61
    return-void
.end method

.method public final setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .parameter

    .prologue
    .line 71
    return-void
.end method

.method public final setDither(Z)V
    .locals 0
    .parameter

    .prologue
    .line 76
    return-void
.end method

.method public final setFilterBitmap(Z)V
    .locals 0
    .parameter

    .prologue
    .line 81
    return-void
.end method
