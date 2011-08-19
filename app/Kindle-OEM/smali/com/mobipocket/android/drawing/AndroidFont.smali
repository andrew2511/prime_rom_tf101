.class public Lcom/mobipocket/android/drawing/AndroidFont;
.super Ljava/lang/Object;
.source "AndroidFont.java"

# interfaces
.implements Lcom/amazon/system/drawing/Font;


# instance fields
.field paint:Landroid/graphics/Paint;

.field typefaceName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;FIZ)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    .line 32
    iput-object p1, p0, Lcom/mobipocket/android/drawing/AndroidFont;->typefaceName:Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-static {p1, p3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 35
    float-to-int v0, p2

    invoke-direct {p0, v0}, Lcom/mobipocket/android/drawing/AndroidFont;->getNearestSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 36
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 38
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setUnderlineText(Z)V

    .line 39
    return-void
.end method

.method private getNearestSize(I)I
    .locals 8
    .parameter "size"

    .prologue
    .line 235
    sget-object v6, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    const/4 v7, 0x0

    aget v4, v6, v7

    .line 236
    .local v4, nearestSize:I
    sub-int v6, v4, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 237
    .local v3, nearestDistance:I
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    .local v0, arr$:[I
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v5, v0, v1

    .line 239
    .local v5, tsize:I
    sub-int v6, p1, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-ge v6, v3, :cond_0

    .line 241
    move v4, v5

    .line 242
    sub-int v6, p1, v5

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 237
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 245
    .end local v5           #tsize:I
    :cond_1
    return v4
.end method


# virtual methods
.method public charsWidth([CII)I
    .locals 2
    .parameter "ch"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p1, p2, p3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    .line 57
    .local v0, width:F
    float-to-int v1, v0

    return v1
.end method

.method public derive(I)Lcom/amazon/system/drawing/Font;
    .locals 5
    .parameter "size"

    .prologue
    .line 97
    new-instance v0, Lcom/mobipocket/android/drawing/AndroidFont;

    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidFont;->getFamilyName()Ljava/lang/String;

    move-result-object v1

    int-to-float v2, p1

    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Typeface;->getStyle()I

    move-result v3

    iget-object v4, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/mobipocket/android/drawing/AndroidFont;-><init>(Ljava/lang/String;FIZ)V

    return-object v0
.end method

.method public derive(ZZZ)Lcom/amazon/system/drawing/Font;
    .locals 4
    .parameter "bold"
    .parameter "italic"
    .parameter "underlined"

    .prologue
    .line 73
    const/4 v0, 0x0

    .line 74
    .local v0, style:I
    if-eqz p1, :cond_0

    .line 76
    or-int/lit8 v0, v0, 0x1

    .line 78
    :cond_0
    if-eqz p2, :cond_1

    .line 80
    or-int/lit8 v0, v0, 0x2

    .line 83
    :cond_1
    new-instance v1, Lcom/mobipocket/android/drawing/AndroidFont;

    invoke-virtual {p0}, Lcom/mobipocket/android/drawing/AndroidFont;->getFamilyName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F

    move-result v3

    invoke-direct {v1, v2, v3, v0, p3}, Lcom/mobipocket/android/drawing/AndroidFont;-><init>(Ljava/lang/String;FIZ)V

    return-object v1
.end method

.method public getAvailableSizes()[I
    .locals 1

    .prologue
    .line 110
    sget-object v0, Lcom/mobipocket/android/drawing/AndroidFontFactory;->availableSizes:[I

    return-object v0
.end method

.method public getBaselinePosition()I
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->top:I

    neg-int v0, v0

    return v0
.end method

.method public getDescent()I
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetricsInt;->descent:I

    return v0
.end method

.method public getFamilyName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->typefaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontSpacing()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public getWhitespaceWidth()I
    .locals 3

    .prologue
    .line 189
    iget-object v1, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    const-string v2, " "

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 190
    .local v0, spaceLength:F
    float-to-int v1, v0

    return v1
.end method

.method public isBold()Z
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    return v0
.end method

.method public isUnderlined()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Lcom/mobipocket/android/drawing/AndroidFont;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v0

    return v0
.end method
