.class public Lcom/google/android/gm/FadingListView;
.super Landroid/widget/ListView;
.source "FadingListView.java"


# instance fields
.field private mBottomMinStrength:F

.field private mTopMinStrength:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gm/FadingListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    iput v1, p0, Lcom/google/android/gm/FadingListView;->mTopMinStrength:F

    .line 28
    iput v1, p0, Lcom/google/android/gm/FadingListView;->mBottomMinStrength:F

    .line 36
    const-string v0, "minTopFadingEdge"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/FadingListView;->mTopMinStrength:F

    .line 38
    const-string v0, "minBottomFadingEdge"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeFloatValue(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lcom/google/android/gm/FadingListView;->mBottomMinStrength:F

    .line 40
    return-void
.end method


# virtual methods
.method protected getBottomFadingEdgeStrength()F
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 62
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getChildCount()I

    move-result v1

    .line 63
    .local v1, count:I
    invoke-super {p0}, Landroid/widget/ListView;->getBottomFadingEdgeStrength()F

    move-result v2

    .line 64
    .local v2, fadeEdge:F
    if-nez v1, :cond_0

    move v6, v2

    .line 75
    :goto_0
    return v6

    .line 67
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getFirstVisiblePosition()I

    move-result v6

    add-int/2addr v6, v1

    sub-int/2addr v6, v8

    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getCount()I

    move-result v7

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_1

    .line 68
    const/high16 v6, 0x3f80

    goto :goto_0

    .line 71
    :cond_1
    sub-int v6, v1, v8

    invoke-virtual {p0, v6}, Lcom/google/android/gm/FadingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 72
    .local v0, bottom:I
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getHeight()I

    move-result v4

    .line 73
    .local v4, height:I
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getPaddingBottom()I

    move-result v5

    .line 74
    .local v5, paddingBottom:I
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getVerticalFadingEdgeLength()I

    move-result v6

    int-to-float v3, v6

    .line 75
    .local v3, fadeLength:F
    sub-int v6, v4, v5

    if-le v0, v6, :cond_2

    iget v6, p0, Lcom/google/android/gm/FadingListView;->mBottomMinStrength:F

    sub-int v7, v0, v4

    add-int/2addr v7, v5

    int-to-float v7, v7

    div-float/2addr v7, v3

    add-float/2addr v6, v7

    goto :goto_0

    :cond_2
    move v6, v2

    goto :goto_0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 7

    .prologue
    .line 44
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getChildCount()I

    move-result v0

    .line 45
    .local v0, count:I
    invoke-super {p0}, Landroid/widget/ListView;->getTopFadingEdgeStrength()F

    move-result v1

    .line 46
    .local v1, fadeEdge:F
    if-nez v0, :cond_0

    move v5, v1

    .line 55
    :goto_0
    return v5

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getFirstVisiblePosition()I

    move-result v5

    if-lez v5, :cond_1

    move v5, v1

    .line 50
    goto :goto_0

    .line 52
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/google/android/gm/FadingListView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getTop()I

    move-result v4

    .line 53
    .local v4, top:I
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getVerticalFadingEdgeLength()I

    move-result v5

    int-to-float v2, v5

    .line 54
    .local v2, fadeLength:F
    invoke-virtual {p0}, Lcom/google/android/gm/FadingListView;->getPaddingTop()I

    move-result v3

    .line 55
    .local v3, paddingTop:I
    if-ge v4, v3, :cond_2

    iget v5, p0, Lcom/google/android/gm/FadingListView;->mTopMinStrength:F

    sub-int v6, v4, v3

    neg-int v6, v6

    int-to-float v6, v6

    div-float/2addr v6, v2

    add-float/2addr v5, v6

    goto :goto_0

    :cond_2
    move v5, v1

    goto :goto_0
.end method

.method public setBottomMinStrength(F)V
    .locals 0
    .parameter "minStrength"

    .prologue
    .line 95
    iput p1, p0, Lcom/google/android/gm/FadingListView;->mBottomMinStrength:F

    .line 96
    return-void
.end method

.method public setTopMinStrength(F)V
    .locals 0
    .parameter "minStrength"

    .prologue
    .line 86
    iput p1, p0, Lcom/google/android/gm/FadingListView;->mTopMinStrength:F

    .line 87
    return-void
.end method
