.class Landroid/webkit/WebTextView$OutlineDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "WebTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OutlineDrawable"
.end annotation


# instance fields
.field private mBackgroundPaint:Landroid/graphics/Paint;

.field private mLines:[F

.field private mOutlinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 958
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 959
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    .line 960
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 962
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    .line 963
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 964
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 966
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    .line 967
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 4
    .parameter "canvas"

    .prologue
    .line 997
    invoke-virtual {p0}, Landroid/webkit/WebTextView$OutlineDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 999
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    iget-object v1, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    .line 1000
    return-void
.end method

.method public getOpacity()I
    .registers 2

    .prologue
    .line 1004
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .registers 2
    .parameter "alpha"

    .prologue
    .line 1008
    return-void
.end method

.method public setBounds(IIII)V
    .registers 8
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 970
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 971
    add-int/lit8 p4, p4, -0x1

    .line 972
    add-int/lit8 p3, p3, -0x2

    .line 974
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    .line 975
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x1

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 976
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x2

    int-to-float v2, p3

    aput v2, v0, v1

    .line 977
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x3

    add-int/lit8 v2, p2, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 979
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x4

    int-to-float v2, p3

    aput v2, v0, v1

    .line 980
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x5

    int-to-float v2, p2

    aput v2, v0, v1

    .line 981
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x6

    int-to-float v2, p3

    aput v2, v0, v1

    .line 982
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/4 v1, 0x7

    int-to-float v2, p4

    aput v2, v0, v1

    .line 984
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0x8

    int-to-float v2, p1

    aput v2, v0, v1

    .line 985
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0x9

    int-to-float v2, p4

    aput v2, v0, v1

    .line 986
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0xa

    int-to-float v2, p3

    aput v2, v0, v1

    .line 987
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0xb

    int-to-float v2, p4

    aput v2, v0, v1

    .line 989
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0xc

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 990
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0xd

    int-to-float v2, p2

    aput v2, v0, v1

    .line 991
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0xe

    add-int/lit8 v2, p1, 0x1

    int-to-float v2, v2

    aput v2, v0, v1

    .line 992
    iget-object v0, p0, Landroid/webkit/WebTextView$OutlineDrawable;->mLines:[F

    const/16 v1, 0xf

    int-to-float v2, p4

    aput v2, v0, v1

    .line 993
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2
    .parameter "cf"

    .prologue
    .line 1010
    return-void
.end method
