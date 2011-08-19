.class public Lcom/android/launcher2/AppWidgetResizeFrame;
.super Landroid/widget/FrameLayout;
.source "AppWidgetResizeFrame.java"


# instance fields
.field final BACKGROUND_PADDING:I

.field final DIMMED_HANDLE_ALPHA:F

.field final RESIZE_THRESHOLD:F

.field final SNAP_DURATION:I

.field private mBackgroundPadding:I

.field private mBaselineHeight:I

.field private mBaselineWidth:I

.field private mBaselineX:I

.field private mBaselineY:I

.field private mBottomBorderActive:Z

.field private mBottomHandle:Landroid/widget/ImageView;

.field private mCellLayout:Lcom/android/launcher2/CellLayout;

.field private mDeltaX:I

.field private mDeltaY:I

.field private mExpandability:[I

.field private mItemInfo:Lcom/android/launcher2/ItemInfo;

.field private mLeftBorderActive:Z

.field private mLeftHandle:Landroid/widget/ImageView;

.field private mMaxHSpan:I

.field private mMaxVSpan:I

.field private mMinHSpan:I

.field private mMinVSpan:I

.field private mNotifyResize:Z

.field private mResizeMode:I

.field private mRightBorderActive:Z

.field private mRightHandle:Landroid/widget/ImageView;

.field private mRunningHInc:I

.field private mRunningVInc:I

.field private mSkipHCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSkipVCells:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTopBorderActive:Z

.field private mTopHandle:Landroid/widget/ImageView;

.field private mTouchTargetWidth:I

.field private mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V
    .locals 14
    .parameter "context"
    .parameter "itemInfo"
    .parameter "widgetView"
    .parameter "cellLayout"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    const/4 v10, 0x4

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    .line 52
    const/16 v10, 0x96

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->SNAP_DURATION:I

    .line 53
    const/16 v10, 0x18

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->BACKGROUND_PADDING:I

    .line 54
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->DIMMED_HANDLE_ALPHA:F

    .line 55
    const v10, 0x3f28f5c3

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->RESIZE_THRESHOLD:F

    .line 64
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    .line 65
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    .line 72
    iput-object p1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    .line 73
    move-object/from16 v0, p2

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mItemInfo:Lcom/android/launcher2/ItemInfo;

    .line 74
    move-object/from16 v0, p4

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    .line 75
    move-object/from16 v0, p3

    move-object v1, p0

    iput-object v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    .line 76
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    iget v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    .line 77
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v10

    iget-boolean v10, v10, Landroid/appwidget/AppWidgetProviderInfo;->notifyResize:Z

    iput-boolean v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mNotifyResize:Z

    .line 79
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v7

    .line 80
    .local v7, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget v11, v7, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    iget v12, v7, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    const/4 v13, 0x0

    invoke-virtual {v10, v11, v12, v13}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v9

    .line 81
    .local v9, result:[I
    const/4 v10, 0x0

    aget v10, v9, v10

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    .line 82
    const/4 v10, 0x1

    aget v10, v9, v10

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    .line 84
    const v10, 0x7f0200d1

    invoke-virtual {p0, v10}, Lcom/android/launcher2/AppWidgetResizeFrame;->setBackgroundResource(I)V

    .line 85
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v10, v11, v12, v13}, Lcom/android/launcher2/AppWidgetResizeFrame;->setPadding(IIII)V

    .line 88
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    .line 89
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const v11, 0x7f0200d3

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x13

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 92
    .local v8, lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v10, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    .line 95
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const v11, 0x7f0200d4

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 96
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .end local v8           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x15

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 98
    .restart local v8       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v10, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 100
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    .line 101
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const v11, 0x7f0200d5

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 102
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .end local v8           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x31

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 104
    .restart local v8       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v10, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v10, Landroid/widget/ImageView;

    invoke-direct {v10, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    .line 107
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const v11, 0x7f0200d2

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 108
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .end local v8           #lp:Landroid/widget/FrameLayout$LayoutParams;
    const/4 v10, -0x2

    const/4 v11, -0x2

    const/16 v12, 0x51

    invoke-direct {v8, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 110
    .restart local v8       #lp:Landroid/widget/FrameLayout$LayoutParams;
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    invoke-virtual {p0, v10, v8}, Lcom/android/launcher2/AppWidgetResizeFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_1

    .line 113
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 120
    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v5, v10, Landroid/util/DisplayMetrics;->density:F

    .line 121
    .local v5, density:F
    const/high16 v10, 0x41c0

    mul-float/2addr v10, v5

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    .line 122
    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    mul-int/lit8 v10, v10, 0x2

    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    .line 124
    invoke-virtual/range {p3 .. p3}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 125
    .local v2, appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    iget-boolean v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->notifyResize:Z

    iput-boolean v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mNotifyResize:Z

    .line 126
    iget v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    if-eqz v10, :cond_2

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget v11, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxWidth:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayout;->sizeToSpan(I)I

    move-result v10

    :goto_1
    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    .line 128
    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    iget v11, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    if-lt v10, v11, :cond_3

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    :goto_2
    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    .line 129
    iget v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget v11, v2, Landroid/appwidget/AppWidgetProviderInfo;->maxHeight:I

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayout;->sizeToSpan(I)I

    move-result v10

    :goto_3
    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    .line 131
    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    iget v11, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    if-lt v10, v11, :cond_5

    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    :goto_4
    iput v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    .line 133
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .local v3, avaiHSpan:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    if-eqz v10, :cond_7

    iget-object v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    array-length v10, v10

    if-lez v10, :cond_7

    .line 135
    const/4 v6, 0x0

    .local v6, i:I
    :goto_5
    iget-object v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    array-length v10, v10

    if-ge v6, v10, :cond_6

    .line 136
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v11, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableWidths:[I

    aget v11, v11, v6

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayout;->sizeToSpan(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 115
    .end local v2           #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v3           #avaiHSpan:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v5           #density:F
    .end local v6           #i:I
    :cond_1
    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    const/4 v11, 0x2

    if-ne v10, v11, :cond_0

    .line 116
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 117
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    const/16 v11, 0x8

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 126
    .restart local v2       #appWidgetInfo:Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v5       #density:F
    :cond_2
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v10

    goto :goto_1

    .line 128
    :cond_3
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v10

    goto :goto_2

    .line 129
    :cond_4
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v10

    goto :goto_3

    .line 131
    :cond_5
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v10

    goto :goto_4

    .line 138
    .restart local v3       #avaiHSpan:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .restart local v6       #i:I
    :cond_6
    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    iget v11, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    invoke-direct {p0, v3, v10, v11}, Lcom/android/launcher2/AppWidgetResizeFrame;->getSkipSpans(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    .line 141
    .end local v6           #i:I
    :cond_7
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v4, avaiVSpan:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    if-eqz v10, :cond_9

    iget-object v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    array-length v10, v10

    if-lez v10, :cond_9

    .line 143
    const/4 v6, 0x0

    .restart local v6       #i:I
    :goto_6
    iget-object v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    array-length v10, v10

    if-ge v6, v10, :cond_8

    .line 144
    iget-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v11, v2, Landroid/appwidget/AppWidgetProviderInfo;->availableHeights:[I

    aget v11, v11, v6

    invoke-virtual {v10, v11}, Lcom/android/launcher2/CellLayout;->sizeToSpan(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 146
    :cond_8
    iget v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    iget v11, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    invoke-direct {p0, v4, v10, v11}, Lcom/android/launcher2/AppWidgetResizeFrame;->getSkipSpans(Ljava/util/ArrayList;II)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    .line 149
    .end local v6           #i:I
    :cond_9
    return-void
.end method

.method private getSkipSpans(Ljava/util/ArrayList;II)Ljava/util/ArrayList;
    .locals 4
    .parameter
    .parameter "minSpan"
    .parameter "maxSpan"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    .local p1, avaiSpan:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-ge p2, p3, :cond_0

    sub-int v2, p3, p2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 153
    :cond_0
    const/4 v2, 0x0

    .line 162
    :goto_0
    return-object v2

    .line 155
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 156
    .local v1, skipCells:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    add-int/lit8 v0, p2, 0x1

    .local v0, i:I
    :goto_1
    if-ge v0, p3, :cond_2

    .line 157
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 156
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 159
    :cond_2
    const/4 v0, 0x0

    :goto_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 160
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move-object v2, v1

    .line 162
    goto :goto_0
.end method

.method private resizeWidgetIfNeeded()V
    .locals 19

    .prologue
    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->getWidthGap()I

    move-result v17

    add-int v14, v16, v17

    .line 244
    .local v14, xThreshold:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->getHeightGap()I

    move-result v17

    add-int v15, v16, v17

    .line 246
    .local v15, yThreshold:I
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move v0, v14

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v6, v16, v17

    .line 247
    .local v6, hSpanIncF:F
    const/high16 v16, 0x3f80

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    mul-float v16, v16, v17

    move v0, v15

    int-to-float v0, v0

    move/from16 v17, v0

    div-float v16, v16, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    sub-float v13, v16, v17

    .line 249
    .local v13, vSpanIncF:F
    const/4 v5, 0x0

    .line 250
    .local v5, hSpanInc:I
    const/4 v12, 0x0

    .line 251
    .local v12, vSpanInc:I
    const/4 v3, 0x0

    .line 252
    .local v3, cellXInc:I
    const/4 v4, 0x0

    .line 254
    .local v4, cellYInc:I
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const v17, 0x3f28f5c3

    cmpl-float v16, v16, v17

    if-lez v16, :cond_0

    .line 255
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 257
    :cond_0
    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v16

    const v17, 0x3f28f5c3

    cmpl-float v16, v16, v17

    if-lez v16, :cond_1

    .line 258
    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v12

    .line 261
    :cond_1
    if-nez v5, :cond_3

    if-nez v12, :cond_3

    .line 337
    :cond_2
    :goto_0
    return-void

    .line 265
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 269
    .local v8, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v10, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 270
    .local v10, oldCellHSpan:I
    iget v11, v8, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 273
    .local v11, oldCellVSpan:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_11

    .line 274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 275
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 276
    mul-int/lit8 v5, v5, -0x1

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aget v16, v16, v17

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 278
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 279
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 280
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    add-int v17, v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_f

    :cond_4
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v3, v16

    .line 282
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    add-int v17, v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_10

    .line 284
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move/from16 v16, v0

    sub-int v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 294
    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_16

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 296
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 297
    mul-int/lit8 v12, v12, -0x1

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v16, v0

    const/16 v17, 0x1

    aget v16, v16, v17

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 299
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 300
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    add-int v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_14

    :cond_7
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v4, v16

    .line 303
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    add-int v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_15

    .line 305
    :cond_8
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move/from16 v16, v0

    sub-int v16, v16, v12

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 315
    :cond_9
    :goto_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    move/from16 v16, v0

    if-nez v16, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_b

    .line 316
    :cond_a
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v16, v0

    add-int v16, v16, v5

    move/from16 v0, v16

    move-object v1, v8

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 317
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v16, v0

    add-int v16, v16, v3

    move/from16 v0, v16

    move-object v1, v8

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 319
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    move/from16 v16, v0

    if-nez v16, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 320
    :cond_c
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v16, v0

    add-int v16, v16, v12

    move/from16 v0, v16

    move-object v1, v8

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 321
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v16, v0

    add-int v16, v16, v4

    move/from16 v0, v16

    move-object v1, v8

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 325
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v18, v0

    invoke-virtual/range {v16 .. v18}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 329
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mNotifyResize:Z

    move/from16 v16, v0

    if-eqz v16, :cond_2

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v11

    if-ne v0, v1, :cond_e

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v10

    if-eq v0, v1, :cond_2

    .line 330
    :cond_e
    new-instance v7, Landroid/content/Intent;

    const-string v16, "com.asus.appwidget.action.RESIZE"

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 331
    .local v7, intent:Landroid/content/Intent;
    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [I

    move-object v9, v0

    const/16 v16, 0x0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    aput v17, v9, v16

    const/16 v16, 0x1

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    aput v17, v9, v16

    .line 332
    .local v9, newSize:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v16, v0

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 333
    const-string v16, "appWidget_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v17

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const-string v16, "newSize"

    move-object v0, v7

    move-object/from16 v1, v16

    move-object v2, v9

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 335
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v7

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 280
    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #newSize:[I
    :cond_f
    const/16 v16, 0x0

    move/from16 v3, v16

    goto/16 :goto_1

    .line 282
    :cond_10
    const/16 v16, 0x0

    move/from16 v5, v16

    goto/16 :goto_2

    .line 285
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v16, v0

    const/16 v17, 0x2

    aget v16, v16, v17

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 287
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinHSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 288
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxHSpan:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipHCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    move/from16 v17, v0

    add-int v17, v17, v5

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_13

    .line 291
    :cond_12
    :goto_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    move/from16 v16, v0

    add-int v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    goto/16 :goto_3

    .line 289
    :cond_13
    const/16 v16, 0x0

    move/from16 v5, v16

    goto :goto_7

    .line 301
    :cond_14
    const/16 v16, 0x0

    move/from16 v4, v16

    goto/16 :goto_4

    .line 303
    :cond_15
    const/16 v16, 0x0

    move/from16 v12, v16

    goto/16 :goto_5

    .line 306
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    move/from16 v16, v0

    if-eqz v16, :cond_9

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    move-object/from16 v16, v0

    const/16 v17, 0x3

    aget v16, v16, v17

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 308
    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMinVSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    neg-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 309
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mMaxVSpan:I

    move/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    move/from16 v0, v16

    move v1, v12

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v12

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    if-eqz v16, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mSkipVCells:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    move-object v0, v8

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    move/from16 v17, v0

    add-int v17, v17, v12

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v16

    const/16 v17, -0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_18

    .line 311
    :cond_17
    :goto_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    move/from16 v16, v0

    add-int v16, v16, v12

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    goto/16 :goto_6

    .line 310
    :cond_18
    const/16 v16, 0x0

    move/from16 v12, v16

    goto :goto_8
.end method


# virtual methods
.method public beginResizeIfPointInRegion(II)Z
    .locals 9
    .parameter "x"
    .parameter "y"

    .prologue
    const/high16 v8, 0x3f80

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 165
    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    move v1, v6

    .line 166
    .local v1, horizontalActive:Z
    :goto_0
    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    move v2, v6

    .line 167
    .local v2, verticalActive:Z
    :goto_1
    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p1, v3, :cond_4

    if-eqz v1, :cond_4

    move v3, v6

    :goto_2
    iput-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    .line 168
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v3, v4

    if-le p1, v3, :cond_5

    if-eqz v1, :cond_5

    move v3, v6

    :goto_3
    iput-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    .line 169
    iget v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    if-ge p2, v3, :cond_6

    if-eqz v2, :cond_6

    move v3, v6

    :goto_4
    iput-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    .line 170
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    sub-int/2addr v3, v4

    if-le p2, v3, :cond_7

    if-eqz v2, :cond_7

    move v3, v6

    :goto_5
    iput-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    .line 172
    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v3, :cond_8

    :cond_0
    move v0, v6

    .line 175
    .local v0, anyBordersActive:Z
    :goto_6
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    .line 176
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    .line 177
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLeft()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    .line 178
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getTop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    .line 179
    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningHInc:I

    .line 180
    iput v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRunningVInc:I

    .line 182
    if-eqz v0, :cond_1

    .line 183
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v4, :cond_9

    move v4, v8

    :goto_7
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 184
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v4, :cond_a

    move v4, v8

    :goto_8
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 185
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v4, :cond_b

    move v4, v8

    :goto_9
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 186
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    iget-boolean v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v4, :cond_c

    move v4, v8

    :goto_a
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 188
    :cond_1
    iget-object v3, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    iget-object v4, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    iget-object v5, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mExpandability:[I

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/CellLayout;->getExpandabilityArrayForView(Landroid/view/View;[I)V

    .line 190
    return v0

    .end local v0           #anyBordersActive:Z
    .end local v1           #horizontalActive:Z
    .end local v2           #verticalActive:Z
    :cond_2
    move v1, v5

    .line 165
    goto/16 :goto_0

    .restart local v1       #horizontalActive:Z
    :cond_3
    move v2, v5

    .line 166
    goto/16 :goto_1

    .restart local v2       #verticalActive:Z
    :cond_4
    move v3, v5

    .line 167
    goto/16 :goto_2

    :cond_5
    move v3, v5

    .line 168
    goto/16 :goto_3

    :cond_6
    move v3, v5

    .line 169
    goto :goto_4

    :cond_7
    move v3, v5

    .line 170
    goto :goto_5

    :cond_8
    move v0, v5

    .line 172
    goto :goto_6

    .restart local v0       #anyBordersActive:Z
    :cond_9
    move v4, v7

    .line 183
    goto :goto_7

    :cond_a
    move v4, v7

    .line 184
    goto :goto_8

    :cond_b
    move v4, v7

    .line 185
    goto :goto_9

    :cond_c
    move v4, v7

    .line 186
    goto :goto_a
.end method

.method public commitResizeForDelta(II)V
    .locals 7
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 344
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->visualizeResizeForDelta(II)V

    .line 346
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 347
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mItemInfo:Lcom/android/launcher2/ItemInfo;

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v5, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;IIII)V

    .line 349
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherAppWidgetHostView;->requestLayout()V

    .line 352
    new-instance v0, Lcom/android/launcher2/AppWidgetResizeFrame$1;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AppWidgetResizeFrame$1;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AppWidgetResizeFrame;->post(Ljava/lang/Runnable;)Z

    .line 357
    return-void
.end method

.method public snapToWidget(Z)V
    .locals 23
    .parameter "animate"

    .prologue
    .line 360
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 362
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v8, v18, v19

    .line 363
    .local v8, newWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int v7, v18, v19

    .line 364
    .local v7, newHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getLeft()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 365
    .local v9, newX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mWidgetView:Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getTop()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBackgroundPadding:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    .line 368
    .local v10, newY:I
    if-gez v10, :cond_0

    .line 369
    move v0, v10

    neg-int v0, v0

    move/from16 v18, v0

    sub-int v7, v7, v18

    .line 370
    const/4 v10, 0x0

    .line 372
    :cond_0
    add-int v18, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_1

    .line 373
    add-int v18, v10, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v19

    sub-int v18, v18, v19

    sub-int v7, v7, v18

    .line 376
    :cond_1
    if-nez p1, :cond_2

    .line 377
    iput v8, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 378
    iput v7, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 379
    iput v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 380
    iput v10, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const/high16 v19, 0x3f80

    invoke-virtual/range {v18 .. v19}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 385
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 414
    :goto_0
    return-void

    .line 387
    :cond_2
    const-string v18, "width"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v6

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v8, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v15

    .line 388
    .local v15, width:Landroid/animation/PropertyValuesHolder;
    const-string v18, "height"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v6

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v7, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    .line 390
    .local v4, height:Landroid/animation/PropertyValuesHolder;
    const-string v18, "x"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v6

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v9, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v16

    .line 391
    .local v16, x:Landroid/animation/PropertyValuesHolder;
    const-string v18, "y"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object v0, v6

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    move/from16 v21, v0

    aput v21, v19, v20

    const/16 v20, 0x1

    aput v10, v19, v20

    invoke-static/range {v18 .. v19}, Landroid/animation/PropertyValuesHolder;->ofInt(Ljava/lang/String;[I)Landroid/animation/PropertyValuesHolder;

    move-result-object v17

    .line 392
    .local v17, y:Landroid/animation/PropertyValuesHolder;
    const/16 v18, 0x4

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v15, v18, v19

    const/16 v19, 0x1

    aput-object v4, v18, v19

    const/16 v19, 0x2

    aput-object v16, v18, v19

    const/16 v19, 0x3

    aput-object v17, v18, v19

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v11

    .line 393
    .local v11, oa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 394
    .local v5, leftOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    .line 395
    .local v12, rightOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    .line 396
    .local v14, topOa:Landroid/animation/ObjectAnimator;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomHandle:Landroid/widget/ImageView;

    move-object/from16 v18, v0

    const-string v19, "alpha"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const/high16 v22, 0x3f80

    aput v22, v20, v21

    invoke-static/range {v18 .. v20}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 397
    .local v3, bottomOa:Landroid/animation/ObjectAnimator;
    new-instance v18, Lcom/android/launcher2/AppWidgetResizeFrame$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/AppWidgetResizeFrame$2;-><init>(Lcom/android/launcher2/AppWidgetResizeFrame;)V

    move-object v0, v11

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 402
    new-instance v13, Landroid/animation/AnimatorSet;

    invoke-direct {v13}, Landroid/animation/AnimatorSet;-><init>()V

    .line 403
    .local v13, set:Landroid/animation/AnimatorSet;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v18, v0

    const/16 v19, 0x2

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    .line 404
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v14, v18, v19

    const/16 v19, 0x2

    aput-object v3, v18, v19

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 411
    :goto_1
    const-wide/16 v18, 0x96

    move-object v0, v13

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 412
    invoke-virtual {v13}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0

    .line 405
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AppWidgetResizeFrame;->mResizeMode:I

    move/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    .line 406
    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    const/16 v19, 0x2

    aput-object v12, v18, v19

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1

    .line 408
    :cond_4
    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Landroid/animation/Animator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aput-object v11, v18, v19

    const/16 v19, 0x1

    aput-object v5, v18, v19

    const/16 v19, 0x2

    aput-object v12, v18, v19

    const/16 v19, 0x3

    aput-object v14, v18, v19

    const/16 v19, 0x4

    aput-object v3, v18, v19

    move-object v0, v13

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_1
.end method

.method public updateDeltas(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 198
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v0, :cond_2

    .line 199
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    neg-int v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 200
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 206
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v0, :cond_3

    .line 207
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    neg-int v0, v0

    invoke-static {v0, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 208
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 213
    :cond_1
    :goto_1
    return-void

    .line 201
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    .line 203
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    goto :goto_0

    .line 209
    :cond_3
    iget-boolean v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mCellLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    .line 211
    iget v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    neg-int v0, v0

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTouchTargetWidth:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    goto :goto_1
.end method

.method public visualizeResizeForDelta(II)V
    .locals 3
    .parameter "deltaX"
    .parameter "deltaY"

    .prologue
    .line 219
    invoke-virtual {p0, p1, p2}, Lcom/android/launcher2/AppWidgetResizeFrame;->updateDeltas(II)V

    .line 220
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 221
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mLeftBorderActive:Z

    if-eqz v1, :cond_2

    .line 222
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineX:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    .line 223
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    .line 228
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mTopBorderActive:Z

    if-eqz v1, :cond_3

    .line 229
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineY:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    .line 230
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    .line 235
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->resizeWidgetIfNeeded()V

    .line 236
    invoke-virtual {p0}, Lcom/android/launcher2/AppWidgetResizeFrame;->requestLayout()V

    .line 237
    return-void

    .line 224
    :cond_2
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mRightBorderActive:Z

    if-eqz v1, :cond_0

    .line 225
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineWidth:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaX:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->width:I

    goto :goto_0

    .line 231
    :cond_3
    iget-boolean v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBottomBorderActive:Z

    if-eqz v1, :cond_1

    .line 232
    iget v1, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mBaselineHeight:I

    iget v2, p0, Lcom/android/launcher2/AppWidgetResizeFrame;->mDeltaY:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->height:I

    goto :goto_1
.end method
