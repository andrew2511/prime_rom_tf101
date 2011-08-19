.class public Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
.super Ljava/lang/Object;
.source "LayoutRect.java"


# instance fields
.field public height:I

.field public width:I

.field public x:I

.field public y:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 2
    .parameter "values"

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, vals:[Ljava/lang/String;
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    .line 15
    const/4 v1, 0x1

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    .line 16
    const/4 v1, 0x2

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    .line 17
    const/4 v1, 0x3

    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    .line 18
    return-void
.end method

.method public static create(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;
    .locals 2
    .parameter "values"

    .prologue
    .line 26
    :try_start_0
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;

    invoke-direct {v1, p0}, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :goto_0
    return-object v1

    .line 28
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 29
    .local v0, e:Ljava/lang/Exception;
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public contains(II)Z
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 42
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    if-lt p1, v0, :cond_0

    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    if-lt p2, v0, :cond_0

    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 34
    new-instance v0, Landroid/graphics/Rect;

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    add-int/2addr v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public getRectF(F)Landroid/graphics/RectF;
    .locals 6
    .parameter "scale"

    .prologue
    .line 38
    new-instance v0, Landroid/graphics/RectF;

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    int-to-float v1, v1

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    iget v3, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->x:I

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, p1

    iget v4, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->y:I

    iget v5, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getSize()I
    .locals 2

    .prologue
    .line 21
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->width:I

    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/layout/LayoutRect;->height:I

    mul-int/2addr v0, v1

    return v0
.end method
