.class public Lcom/android/launcher2/PagedViewCellLayout;
.super Landroid/view/ViewGroup;
.source "PagedViewCellLayout.java"

# interfaces
.implements Lcom/android/launcher2/Page;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static sDefaultCellDimensions:I


# instance fields
.field private mAllowHardwareLayerCreation:Z

.field private mCellCountX:I

.field private mCellCountY:I

.field private mCellHeight:I

.field private mCellWidth:I

.field protected mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

.field private mCreateHardwareLayersIfAllowed:Z

.field private mHeightGap:I

.field private mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

.field private mWidthGap:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const/16 v0, 0x60

    sput v0, Lcom/android/launcher2/PagedViewCellLayout;->sDefaultCellDimensions:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 51
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v0, 0x0

    .line 55
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mAllowHardwareLayerCreation:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCreateHardwareLayersIfAllowed:Z

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewCellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 60
    sget v0, Lcom/android/launcher2/PagedViewCellLayout;->sDefaultCellDimensions:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    .line 61
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 62
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 63
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    iput v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 65
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    .line 66
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 67
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 69
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewCellLayout;->addView(Landroid/view/View;)V

    .line 70
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    .line 71
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setAlpha(F)V

    .line 72
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setCellDimensions(II)V

    .line 73
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 75
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {p0, v0}, Lcom/android/launcher2/PagedViewCellLayout;->addView(Landroid/view/View;)V

    .line 76
    return-void
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z
    .locals 6
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"

    .prologue
    const/4 v5, 0x1

    .line 137
    move-object v1, p4

    .line 141
    .local v1, lp:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    iget v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    if-ltz v3, :cond_4

    iget v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_4

    iget v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    if-ltz v3, :cond_4

    iget v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    sub-int/2addr v4, v5

    if-gt v3, v4, :cond_4

    .line 145
    iget v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    if-gez v3, :cond_0

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iput v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellHSpan:I

    .line 146
    :cond_0
    iget v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    if-gez v3, :cond_1

    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iput v3, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellVSpan:I

    .line 148
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 149
    iget-object v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v3, p1, p2, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 151
    instance-of v3, p1, Lcom/android/launcher2/PagedViewIcon;

    if-eqz v3, :cond_3

    .line 152
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PagedViewIcon;

    move-object v2, v0

    .line 153
    .local v2, pagedViewIcon:Lcom/android/launcher2/PagedViewIcon;
    iget-boolean v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mAllowHardwareLayerCreation:Z

    if-eqz v3, :cond_2

    .line 154
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewIcon;->disableCache()V

    .line 156
    :cond_2
    iget-object v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewIcon;->getHolographicOutlineView()Lcom/android/launcher2/HolographicPagedViewIcon;

    move-result-object v4

    invoke-virtual {v3, v4, p2, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .end local v2           #pagedViewIcon:Lcom/android/launcher2/PagedViewIcon;
    :cond_3
    move v3, v5

    .line 160
    :goto_0
    return v3

    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public allowHardwareLayerCreation()V
    .locals 1

    .prologue
    .line 91
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mAllowHardwareLayerCreation:Z

    if-nez v0, :cond_0

    .line 92
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mAllowHardwareLayerCreation:Z

    .line 93
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCreateHardwareLayersIfAllowed:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    .line 97
    :cond_0
    return-void
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 125
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 128
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 129
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 130
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 131
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 129
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 373
    instance-of v0, p1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    return v0
.end method

.method createHardwareLayers()V
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCreateHardwareLayersIfAllowed:Z

    .line 117
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mAllowHardwareLayerCreation:Z

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->createHardwareLayer()V

    .line 119
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->createHardwareLayer()V

    .line 121
    :cond_0
    return-void
.end method

.method destroyHardwareLayers()V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCreateHardwareLayersIfAllowed:Z

    .line 109
    iget-boolean v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mAllowHardwareLayerCreation:Z

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->destroyHardwareLayer()V

    .line 111
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->destroyHardwareLayer()V

    .line 113
    :cond_0
    return-void
.end method

.method public enableCenteredContent(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    .line 290
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->enableCenteredContent(Z)V

    .line 291
    return-void
.end method

.method public estimateCellHSpan(I)I
    .locals 2
    .parameter "width"

    .prologue
    .line 339
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    div-int/2addr v0, v1

    return v0
.end method

.method public estimateCellWidth(I)I
    .locals 1
    .parameter "hSpan"

    .prologue
    .line 355
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, p1

    return v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 368
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 378
    new-instance v0, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getCellHeight()I
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    return v0
.end method

.method public getCellWidth()I
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildOnPageAt(I)Landroid/view/View;
    .locals 1
    .parameter "i"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method getContentHeight()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 260
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    if-lez v0, :cond_0

    .line 261
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 263
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method getContentWidth()I
    .locals 3

    .prologue
    .line 256
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    invoke-static {}, Lcom/android/launcher2/Utilities;->getIconContentSize()I

    move-result v2

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    return v0
.end method

.method public getPageChildCount()I
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->getChildCount()I

    move-result v0

    return v0
.end method

.method getWidthBeforeFirstLayout()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 267
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    if-lez v0, :cond_0

    .line 268
    iget v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 270
    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public indexOfChildOnPage(Landroid/view/View;)I
    .locals 1
    .parameter "v"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v1

    .line 276
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 277
    invoke-virtual {p0, v2}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 278
    .local v0, child:Landroid/view/View;
    iget v3, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    iget v4, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    sub-int v5, p4, p2

    iget v6, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    sub-int/2addr v5, v6

    sub-int v6, p5, p3

    iget v7, p0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    sub-int/2addr v6, v7

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 276
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 281
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 192
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v21

    .line 193
    .local v21, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 195
    .local v22, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    .line 196
    .local v11, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v12

    .line 198
    .local v12, heightSpecSize:I
    if-eqz v21, :cond_0

    if-nez v11, :cond_1

    .line 199
    :cond_0
    new-instance v23, Ljava/lang/RuntimeException;

    const-string v24, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v23 .. v24}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v23

    .line 202
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellWidth:I

    move v4, v0

    .line 203
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellHeight:I

    move v3, v0

    .line 205
    .local v3, cellHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v18, v23, v24

    .line 206
    .local v18, numWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v23, v0

    const/16 v24, 0x1

    sub-int v17, v23, v24

    .line 208
    .local v17, numHeightGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v23, v0

    sub-int v23, v12, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v24, v0

    mul-int v24, v24, v3

    sub-int v19, v23, v24

    .line 210
    .local v19, vSpaceLeft:I
    div-int v10, v19, v17

    .line 212
    .local v10, heightGap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v23, v0

    sub-int v23, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v24, v0

    sub-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v24, v0

    mul-int v24, v24, v4

    sub-int v9, v23, v24

    .line 214
    .local v9, hSpaceLeft:I
    div-int v20, v9, v18

    .line 217
    .local v20, widthGap:I
    move/from16 v0, v20

    move v1, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 227
    .local v14, minGap:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move/from16 v23, v0

    const/16 v24, -0x1

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_2

    .line 228
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    move/from16 v20, v0

    .line 229
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    move v10, v0

    .line 234
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v23, v0

    mul-int v23, v23, v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    mul-int v24, v24, v20

    add-int v16, v23, v24

    .line 235
    .local v16, newWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v23, v0

    mul-int v23, v23, v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    move/from16 v24, v0

    const/16 v25, 0x1

    sub-int v24, v24, v25

    mul-int v24, v24, v10

    add-int v15, v23, v24

    .line 237
    .local v15, newHeight:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/PagedViewCellLayout;->getChildCount()I

    move-result v8

    .line 238
    .local v8, count:I
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    if-ge v13, v8, :cond_3

    .line 239
    move-object/from16 v0, p0

    move v1, v13

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 240
    .local v5, child:Landroid/view/View;
    const/high16 v23, 0x4000

    move/from16 v0, v16

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 242
    .local v6, childWidthMeasureSpec:I
    const/high16 v23, 0x4000

    move v0, v15

    move/from16 v1, v23

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 244
    .local v7, childheightMeasureSpec:I
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 238
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 231
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childWidthMeasureSpec:I
    .end local v7           #childheightMeasureSpec:I
    .end local v8           #count:I
    .end local v13           #i:I
    .end local v15           #newHeight:I
    .end local v16           #newWidth:I
    :cond_2
    move v10, v14

    move/from16 v20, v14

    goto :goto_0

    .line 247
    .restart local v8       #count:I
    .restart local v13       #i:I
    .restart local v15       #newHeight:I
    .restart local v16       #newWidth:I
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v23, v23, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingRight:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingTop:I

    move/from16 v24, v0

    add-int v24, v24, v15

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/PagedViewCellLayout;->mPaddingBottom:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setMeasuredDimension(II)V

    .line 249
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 285
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public removeAllViewsOnPage()V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeAllViews()V

    .line 166
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeAllViews()V

    .line 167
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->destroyHardwareLayers()V

    .line 168
    return-void
.end method

.method public removeViewOnPageAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeViewAt(I)V

    .line 173
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->removeViewAt(I)V

    .line 174
    return-void
.end method

.method public setAlpha(F)V
    .locals 2
    .parameter "alpha"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setAlpha(F)V

    .line 102
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    const/high16 v1, 0x3f80

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setAlpha(F)V

    .line 103
    return-void
.end method

.method public setCellCount(II)V
    .locals 0
    .parameter "xCount"
    .parameter "yCount"

    .prologue
    .line 300
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountX:I

    .line 301
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mCellCountY:I

    .line 302
    invoke-virtual {p0}, Lcom/android/launcher2/PagedViewCellLayout;->requestLayout()V

    .line 303
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 296
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 297
    return-void
.end method

.method public setGap(II)V
    .locals 1
    .parameter "widthGap"
    .parameter "heightGap"

    .prologue
    .line 306
    iput p1, p0, Lcom/android/launcher2/PagedViewCellLayout;->mWidthGap:I

    .line 307
    iput p2, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHeightGap:I

    .line 308
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 309
    iget-object v0, p0, Lcom/android/launcher2/PagedViewCellLayout;->mHolographicChildren:Lcom/android/launcher2/PagedViewCellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/PagedViewCellLayoutChildren;->setGap(II)V

    .line 310
    return-void
.end method
