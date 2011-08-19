.class public Lcom/android/launcher2/AllAppsPagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "AllAppsPagedView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/AllAppsView;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mAllowHardwareLayerCreation:Z

.field private mAppFilter:I

.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mFilteredApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLastMeasureHeight:I

.field private mLastMeasureWidth:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxCellCountY:I

.field private mPageContentWidth:I

.field private mWaitingToDetermineRowsAndColumns:Z

.field private mWaitingToInitPages:Z

.field private mZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 49
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/AllAppsPagedView;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/AllAppsPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/AllAppsPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 89
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mAppFilter:I

    .line 73
    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mLastMeasureWidth:I

    .line 74
    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mLastMeasureHeight:I

    .line 75
    iput-boolean v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mWaitingToInitPages:Z

    .line 76
    iput-boolean v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mWaitingToDetermineRowsAndColumns:Z

    .line 90
    sget-object v3, Lcom/android/launcher/R$styleable;->PagedView:[I

    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 92
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 93
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsPagedView;->setSoundEffectsEnabled(Z)V

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 98
    .local v2, r:Landroid/content/res/Resources;
    const v3, 0x7f0a0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x42c8

    div-float/2addr v3, v4

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AllAppsPagedView;->setDragSlopeThreshold(F)V

    .line 102
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 103
    .local v1, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher2/AllAppsPagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 104
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageContentWidth:I

    .line 105
    const v3, 0x7f0a002a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mMaxCellCountY:I

    .line 106
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/AllAppsPagedView;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method private addAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-boolean v4, Lcom/android/launcher2/AllAppsPagedView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "AllAppsPagedView"

    const-string v5, "addAppsWithoutInvalidate()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    if-nez v4, :cond_2

    .line 477
    sget-boolean v4, Lcom/android/launcher2/AllAppsPagedView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "AllAppsPagedView"

    const-string v5, "addAppsWithoutInvalidate(): mApps = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :cond_1
    :goto_0
    return-void

    .line 482
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 483
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 484
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 485
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 486
    .local v2, index:I
    if-gez v2, :cond_3

    .line 487
    iget-object v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 483
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 489
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 492
    .end local v2           #index:I
    .end local v3           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_4
    iget-object v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/android/launcher2/AllAppsPagedView;->rebuildFilteredApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private determineCellCountX(ILcom/android/launcher2/PagedViewCellLayout;)I
    .locals 8
    .parameter "availableWidth"
    .parameter "layout"

    .prologue
    .line 146
    const/4 v0, 0x0

    .line 147
    .local v0, cellCountX:I
    invoke-virtual {p2}, Lcom/android/launcher2/PagedViewCellLayout;->getCellWidth()I

    move-result v1

    .line 150
    .local v1, cellWidth:I
    iget v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingLeft:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingRight:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    sub-int/2addr p1, v4

    .line 152
    sub-int/2addr p1, v1

    .line 153
    iget v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutWidthGap:I

    add-int/2addr v4, v1

    div-int v4, p1, v4

    add-int/lit8 v0, v4, 0x1

    .line 154
    iget v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutWidthGap:I

    add-int/2addr v4, v1

    rem-int/2addr p1, v4

    .line 157
    int-to-float v4, v1

    const v5, 0x3f19999a

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 160
    .local v2, minLeftoverWidth:I
    const/4 v4, 0x4

    if-gt v0, v4, :cond_1

    .line 162
    sub-int v3, v2, p1

    .line 163
    .local v3, missingWidth:I
    if-lez v3, :cond_0

    .line 164
    iget v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutWidthGap:I

    int-to-double v4, v4

    int-to-float v6, v3

    const/high16 v7, 0x3f80

    mul-float/2addr v6, v7

    const/4 v7, 0x1

    sub-int v7, v0, v7

    int-to-float v7, v7

    div-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutWidthGap:I

    .line 174
    .end local v3           #missingWidth:I
    :cond_0
    :goto_0
    return v0

    .line 167
    :cond_1
    const/16 v4, 0x8

    if-lt v0, v4, :cond_2

    .line 169
    int-to-float v4, v0

    const v5, 0x3f666666

    mul-float/2addr v4, v5

    float-to-int v0, v4

    goto :goto_0

    .line 170
    :cond_2
    if-ge p1, v2, :cond_0

    .line 171
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method private determineCellCountY(ILcom/android/launcher2/PagedViewCellLayout;)I
    .locals 6
    .parameter "availableHeight"
    .parameter "layout"

    .prologue
    .line 178
    invoke-virtual {p2}, Lcom/android/launcher2/PagedViewCellLayout;->getCellHeight()I

    move-result v0

    .line 179
    .local v0, cellHeight:I
    iget-object v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v3, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 181
    .local v3, screenHeight:I
    iget v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingTop:I

    iget v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingBottom:I

    add-int/2addr v4, v5

    sub-int/2addr p1, v4

    .line 182
    sub-int/2addr p1, v0

    .line 183
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 184
    .local v1, r:Landroid/content/res/Resources;
    const v4, 0x7f0a0014

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x42c8

    div-float v2, v4, v5

    .line 185
    .local v2, scaleFactor:F
    int-to-float v4, p1

    int-to-float v5, v3

    mul-float/2addr v5, v2

    sub-float/2addr v4, v5

    float-to-int p1, v4

    .line 186
    if-lez p1, :cond_0

    .line 187
    iget v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mMaxCellCountY:I

    iget v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutHeightGap:I

    add-int/2addr v5, v0

    div-int v5, p1, v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 190
    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private findAppByComponent(Ljava/util/ArrayList;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 551
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    if-eqz p2, :cond_1

    iget-object v4, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_1

    .line 552
    iget-object v4, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 553
    .local v3, removeComponent:Landroid/content/ComponentName;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 554
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 555
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 556
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    .line 561
    .end local v0           #i:I
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v2           #length:I
    .end local v3           #removeComponent:Landroid/content/ComponentName;
    :goto_1
    return v4

    .line 554
    .restart local v0       #i:I
    .restart local v1       #info:Lcom/android/launcher2/ApplicationInfo;
    .restart local v2       #length:I
    .restart local v3       #removeComponent:Landroid/content/ComponentName;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 561
    .end local v0           #i:I
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v2           #length:I
    .end local v3           #removeComponent:Landroid/content/ComponentName;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getChildIndexForGrandChild(Landroid/view/View;)I
    .locals 5
    .parameter "v"

    .prologue
    const/4 v4, -0x1

    .line 273
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getChildCount()I

    move-result v0

    .line 274
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 275
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AllAppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/Page;

    .line 276
    .local v2, layout:Lcom/android/launcher2/Page;
    invoke-interface {v2, p1}, Lcom/android/launcher2/Page;->indexOfChildOnPage(Landroid/view/View;)I

    move-result v3

    if-le v3, v4, :cond_0

    move v3, v1

    .line 280
    .end local v2           #layout:Lcom/android/launcher2/Page;
    :goto_1
    return v3

    .line 274
    .restart local v2       #layout:Lcom/android/launcher2/Page;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v2           #layout:Lcom/android/launcher2/Page;
    :cond_1
    move v3, v4

    .line 280
    goto :goto_1
.end method

.method private rebuildFilteredApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 438
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 439
    .local v0, filteredApps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget v4, p0, Lcom/android/launcher2/AllAppsPagedView;->mAppFilter:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    move-object v4, p1

    .line 451
    :goto_0
    return-object v4

    .line 442
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 443
    .local v3, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 444
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 445
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget v4, v2, Lcom/android/launcher2/ApplicationInfo;->flags:I

    iget v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mAppFilter:I

    and-int/2addr v4, v5

    if-lez v4, :cond_1

    .line 446
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 449
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_2
    sget-object v4, Lcom/android/launcher2/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v4, v0

    .line 451
    goto :goto_0
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 502
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-boolean v10, Lcom/android/launcher2/AllAppsPagedView;->DEBUG:Z

    if-eqz v10, :cond_0

    const-string v10, "AllAppsPagedView"

    const-string v11, "removeAppsWithoutInvalidate()"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :cond_0
    iget-object v10, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    if-nez v10, :cond_2

    .line 505
    sget-boolean v10, Lcom/android/launcher2/AllAppsPagedView;->DEBUG:Z

    if-eqz v10, :cond_1

    const-string v10, "AllAppsPagedView"

    const-string v11, "removeAppsWithoutInvalidate(): mApps = null"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_1
    :goto_0
    return-void

    .line 511
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getCheckedGrandchildren()Ljava/util/ArrayList;

    move-result-object v3

    .line 512
    .local v3, checkedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/widget/Checkable;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 513
    .local v2, checkedAppInfos:Ljava/util/HashSet;,"Ljava/util/HashSet<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/Checkable;

    .line 514
    .local v1, checked:Landroid/widget/Checkable;
    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/PagedViewIcon;

    move-object v6, v0

    .line 515
    .local v6, icon:Lcom/android/launcher2/PagedViewIcon;
    invoke-virtual {v6}, Lcom/android/launcher2/PagedViewIcon;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/ApplicationInfo;

    invoke-virtual {v2, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 517
    .end local v1           #checked:Landroid/widget/Checkable;
    .end local v6           #icon:Lcom/android/launcher2/PagedViewIcon;
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ApplicationInfo;

    .line 518
    .local v7, info:Lcom/android/launcher2/ApplicationInfo;
    invoke-virtual {v2, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 519
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->endChoiceMode()V

    .line 525
    .end local v7           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 526
    .local v8, length:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v8, :cond_7

    .line 527
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/ApplicationInfo;

    .line 528
    .restart local v7       #info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v10, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v10, v7}, Lcom/android/launcher2/AllAppsPagedView;->findAppByComponent(Ljava/util/ArrayList;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v9

    .line 529
    .local v9, removeIndex:I
    const/4 v10, -0x1

    if-le v9, v10, :cond_6

    .line 530
    iget-object v10, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 531
    sget-object v10, Lcom/android/launcher2/AllAppsPagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    new-instance v11, Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-direct {v11, v7}, Lcom/android/launcher2/PagedViewIconCache$Key;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    invoke-virtual {v10, v11}, Lcom/android/launcher2/PagedViewIconCache;->removeOutline(Lcom/android/launcher2/PagedViewIconCache$Key;)V

    .line 526
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 534
    .end local v7           #info:Lcom/android/launcher2/ApplicationInfo;
    .end local v9           #removeIndex:I
    :cond_7
    iget-object v10, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v10}, Lcom/android/launcher2/AllAppsPagedView;->rebuildFilteredApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v10

    iput-object v10, p0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method private setupDragMode(Lcom/android/launcher2/ApplicationInfo;)V
    .locals 5
    .parameter "info"

    .prologue
    const/4 v4, 0x1

    .line 323
    iget-object v2, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    sget-object v3, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Workspace;->shrink(Lcom/android/launcher2/Workspace$ShrinkState;)V

    .line 326
    iget v2, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 327
    iget-object v2, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/DeleteZone;

    .line 329
    .local v0, allAppsDeleteZone:Lcom/android/launcher2/DeleteZone;
    invoke-virtual {v0, v4}, Lcom/android/launcher2/DeleteZone;->setDragAndDropEnabled(Z)V

    .line 331
    iget v2, p1, Lcom/android/launcher2/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 332
    const v2, 0x7f0e0034

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DeleteZone;->setText(I)V

    .line 338
    .end local v0           #allAppsDeleteZone:Lcom/android/launcher2/DeleteZone;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v3, 0x7f08000a

    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfoDropTarget;

    .line 340
    .local v1, allAppsInfoButton:Lcom/android/launcher2/ApplicationInfoDropTarget;
    invoke-virtual {v1, v4}, Lcom/android/launcher2/ApplicationInfoDropTarget;->setDragAndDropEnabled(Z)V

    .line 341
    return-void

    .line 334
    .end local v1           #allAppsInfoButton:Lcom/android/launcher2/ApplicationInfoDropTarget;
    .restart local v0       #allAppsDeleteZone:Lcom/android/launcher2/DeleteZone;
    :cond_1
    const v2, 0x7f0e0033

    invoke-virtual {v0, v2}, Lcom/android/launcher2/DeleteZone;->setText(I)V

    goto :goto_0
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 4
    .parameter "layout"

    .prologue
    .line 575
    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 576
    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingLeft:I

    iget v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingRight:I

    iget v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 578
    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutWidthGap:I

    iget v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 579
    return-void
.end method

.method private tearDownDragMode()V
    .locals 1

    .prologue
    .line 344
    new-instance v0, Lcom/android/launcher2/AllAppsPagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AllAppsPagedView$2;-><init>(Lcom/android/launcher2/AllAppsPagedView;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllAppsPagedView;->post(Ljava/lang/Runnable;)Z

    .line 360
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->resetCheckedGrandchildren()V

    .line 361
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 362
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 705
    const/4 v0, 0x0

    return v0
.end method

.method public addApps(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllAppsPagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 497
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->invalidatePageData()V

    .line 498
    return-void
.end method

.method allowHardwareLayerCreation()V
    .locals 4

    .prologue
    .line 206
    iget-boolean v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mAllowHardwareLayerCreation:Z

    if-eqz v3, :cond_1

    .line 215
    :cond_0
    return-void

    .line 209
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mAllowHardwareLayerCreation:Z

    .line 210
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getChildCount()I

    move-result v0

    .line 211
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 212
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AllAppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewCellLayout;

    .line 213
    .local v2, page:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v2}, Lcom/android/launcher2/PagedViewCellLayout;->allowHardwareLayerCreation()V

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 14
    .parameter "v"

    .prologue
    const/4 v2, 0x0

    const/4 v13, 0x1

    .line 366
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    .line 405
    :goto_0
    return v1

    .line 367
    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 369
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher2/ApplicationInfo;

    .line 370
    .local v8, app:Lcom/android/launcher2/ApplicationInfo;
    new-instance v5, Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {v5, v8}, Lcom/android/launcher2/ApplicationInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .line 373
    .end local v8           #app:Lcom/android/launcher2/ApplicationInfo;
    .local v5, app:Lcom/android/launcher2/ApplicationInfo;
    invoke-direct {p0, v5}, Lcom/android/launcher2/AllAppsPagedView;->setupDragMode(Lcom/android/launcher2/ApplicationInfo;)V

    .line 376
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v12, v0

    .line 377
    .local v12, tv:Landroid/widget/TextView;
    invoke-virtual {v12}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v11, v1, v13

    .line 378
    .local v11, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 380
    .local v3, b:Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 381
    .local v9, c:Landroid/graphics/Canvas;
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 382
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 386
    instance-of v1, p1, Landroid/widget/Checkable;

    if-eqz v1, :cond_2

    .line 389
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->resetCheckedGrandchildren()V

    .line 392
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object v10, v0

    .line 397
    .local v10, checkable:Landroid/widget/Checkable;
    invoke-interface {v10}, Landroid/widget/Checkable;->toggle()V

    .line 401
    .end local v10           #checkable:Landroid/widget/Checkable;
    :cond_2
    iget-object v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 402
    iget-object v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v1

    invoke-virtual {v1, v13, v13, v3}, Lcom/android/launcher2/Workspace;->onDragStartedWithItemSpans(IILandroid/graphics/Bitmap;)V

    .line 403
    iget-object v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mDragController:Lcom/android/launcher2/DragController;

    sget v6, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    const/4 v7, 0x0

    move-object v2, p1

    move-object v4, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 404
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    move v1, v13

    .line 405
    goto :goto_0
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 566
    const-string v0, "AllAppsPagedView"

    const-string v1, "mApps"

    iget-object v2, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 567
    return-void
.end method

.method getCellCountX()I
    .locals 1

    .prologue
    .line 194
    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    return v0
.end method

.method getCellCountY()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountY:I

    return v0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Lcom/android/launcher2/DropTarget;
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 710
    const/4 v0, 0x0

    return-object v0
.end method

.method getPageContentWidth()I
    .locals 1

    .prologue
    .line 424
    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageContentWidth:I

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 110
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->init()V

    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mCenterPagesVertically:Z

    .line 112
    return-void
.end method

.method protected invalidatePageData()V
    .locals 1

    .prologue
    .line 583
    iget-boolean v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mWaitingToDetermineRowsAndColumns:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mWaitingToInitPages:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountY:I

    if-gtz v0, :cond_1

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 589
    :cond_1
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->invalidatePageData()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 726
    const/4 v0, 0x1

    return v0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 429
    iget v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mZoom:F

    const v1, 0x3a83126f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAnimationEnd()V
    .locals 2

    .prologue
    .line 260
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 261
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mZoom:F

    .line 263
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->endChoiceMode()V

    .line 268
    :goto_0
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mZoom:F

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->zoomed(F)V

    .line 270
    :cond_0
    return-void

    .line 265
    :cond_1
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mZoom:F

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 286
    instance-of v5, p1, Landroid/widget/Checkable;

    if-eqz v5, :cond_3

    .line 287
    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllAppsPagedView;->isChoiceMode(I)Z

    move-result v5

    if-nez v5, :cond_3

    .line 288
    move-object v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object v2, v0

    .line 289
    .local v2, c:Landroid/widget/Checkable;
    invoke-virtual {p0, v7}, Lcom/android/launcher2/AllAppsPagedView;->isChoiceMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 291
    invoke-interface {v2}, Landroid/widget/Checkable;->isChecked()Z

    move-result v4

    .line 292
    .local v4, wasChecked:Z
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->resetCheckedGrandchildren()V

    .line 293
    if-nez v4, :cond_1

    move v5, v7

    :goto_0
    invoke-interface {v2, v5}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 297
    .end local v4           #wasChecked:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getCheckedGrandchildren()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->endChoiceMode()V

    .line 320
    .end local v2           #c:Landroid/widget/Checkable;
    :cond_0
    :goto_2
    return-void

    .restart local v2       #c:Landroid/widget/Checkable;
    .restart local v4       #wasChecked:Z
    :cond_1
    move v5, v6

    .line 293
    goto :goto_0

    .line 295
    .end local v4           #wasChecked:Z
    :cond_2
    invoke-interface {v2}, Landroid/widget/Checkable;->toggle()V

    goto :goto_1

    .line 306
    .end local v2           #c:Landroid/widget/Checkable;
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllAppsPagedView;->getChildIndexForGrandChild(Landroid/view/View;)I

    move-result v3

    .line 307
    .local v3, childIndex:I
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getCurrentPage()I

    move-result v5

    if-ne v3, v5, :cond_0

    .line 308
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 311
    .local v1, app:Lcom/android/launcher2/ApplicationInfo;
    new-instance v5, Lcom/android/launcher2/AllAppsPagedView$1;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/AllAppsPagedView$1;-><init>(Lcom/android/launcher2/AllAppsPagedView;Lcom/android/launcher2/ApplicationInfo;)V

    invoke-virtual {p0, p1, v5}, Lcom/android/launcher2/AllAppsPagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->endChoiceMode()V

    goto :goto_2
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 714
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 717
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 720
    return-void
.end method

.method public onDragViewVisible()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 0
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 723
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 1
    .parameter "target"
    .parameter "dragInfo"
    .parameter "success"

    .prologue
    .line 415
    if-eq p1, p0, :cond_0

    .line 416
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->endChoiceMode()V

    .line 418
    :cond_0
    invoke-direct {p0}, Lcom/android/launcher2/AllAppsPagedView;->tearDownDragMode()V

    .line 419
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher2/Workspace;->onDragStopped(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation()V

    .line 421
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-boolean v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mWaitingToDetermineRowsAndColumns:Z

    if-eqz v0, :cond_0

    .line 139
    iput-boolean v1, p0, Lcom/android/launcher2/AllAppsPagedView;->mWaitingToDetermineRowsAndColumns:Z

    .line 140
    invoke-virtual {p0, v1}, Lcom/android/launcher2/AllAppsPagedView;->postInvalidatePageData(Z)V

    .line 142
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onLayout(ZIIII)V

    .line 143
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 117
    .local v2, width:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 119
    .local v0, height:I
    iget v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mLastMeasureWidth:I

    if-ne v3, v2, :cond_0

    iget v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mLastMeasureHeight:I

    if-eq v3, v0, :cond_1

    .line 121
    :cond_0
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 123
    .local v1, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v2, v1}, Lcom/android/launcher2/AllAppsPagedView;->determineCellCountX(ILcom/android/launcher2/PagedViewCellLayout;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    .line 124
    invoke-direct {p0, v0, v1}, Lcom/android/launcher2/AllAppsPagedView;->determineCellCountY(ILcom/android/launcher2/PagedViewCellLayout;)I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountY:I

    .line 126
    invoke-direct {p0, v1}, Lcom/android/launcher2/AllAppsPagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 127
    invoke-virtual {v1}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v3

    iput v3, p0, Lcom/android/launcher2/AllAppsPagedView;->mPageContentWidth:I

    .line 129
    iput v2, p0, Lcom/android/launcher2/AllAppsPagedView;->mLastMeasureWidth:I

    .line 130
    iput v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mLastMeasureHeight:I

    .line 131
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher2/AllAppsPagedView;->postInvalidatePageData(Z)V

    .line 133
    .end local v1           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 134
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllAppsPagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 540
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->invalidatePageData()V

    .line 541
    return-void
.end method

.method public setAppFilter(I)V
    .locals 1
    .parameter "filterType"

    .prologue
    .line 229
    iput p1, p0, Lcom/android/launcher2/AllAppsPagedView;->mAppFilter:I

    .line 230
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AllAppsPagedView;->rebuildFilteredApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllAppsPagedView;->setCurrentPage(I)V

    .line 233
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->invalidatePageData()V

    .line 235
    :cond_0
    return-void
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 457
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-boolean v0, Lcom/android/launcher2/AllAppsPagedView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "AllAppsPagedView"

    const-string v1, "setApps()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_0
    if-nez p1, :cond_2

    .line 460
    sget-boolean v0, Lcom/android/launcher2/AllAppsPagedView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "AllAppsPagedView"

    const-string v1, "setApps(): mApps = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    :cond_1
    :goto_0
    return-void

    .line 464
    :cond_2
    iput-object p1, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    .line 465
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 466
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher2/AllAppsPagedView;->rebuildFilteredApps(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    .line 467
    sget-object v0, Lcom/android/launcher2/AllAppsPagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewIconCache;->retainAllApps(Ljava/util/ArrayList;)V

    .line 468
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mWaitingToInitPages:Z

    .line 469
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->invalidatePageData()V

    goto :goto_0
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 225
    iput-object p1, p0, Lcom/android/launcher2/AllAppsPagedView;->mDragController:Lcom/android/launcher2/DragController;

    .line 226
    return-void
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 1
    .parameter "launcher"

    .prologue
    .line 219
    iput-object p1, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 220
    iget-object v0, p0, Lcom/android/launcher2/AllAppsPagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p0}, Lcom/android/launcher2/Launcher;->setAllAppsPagedView(Lcom/android/launcher2/AllAppsPagedView;)V

    .line 221
    return-void
.end method

.method public surrender()V
    .locals 0

    .prologue
    .line 572
    return-void
.end method

.method public syncPageItems(I)V
    .locals 27
    .parameter "page"

    .prologue
    .line 620
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountY:I

    move/from16 v21, v0

    mul-int v5, v20, v21

    .line 621
    .local v5, cellsPerPage:I
    mul-int v17, p1, v5

    .line 622
    .local v17, startIndex:I
    add-int v20, v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v21

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 623
    .local v7, endIndex:I
    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher2/AllAppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/android/launcher2/PagedViewCellLayout;

    .line 625
    .local v13, layout:Lcom/android/launcher2/PagedViewCellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_6

    .line 626
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewCellLayout;->getPageChildCount()I

    move-result v6

    .line 627
    .local v6, curNumPageItems:I
    sub-int v14, v7, v17

    .line 630
    .local v14, numPageItems:I
    const/16 v19, 0x0

    .line 631
    .local v19, wasEmptyPage:Z
    const/16 v20, 0x1

    move v0, v6

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 632
    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v10

    .line 633
    .local v10, icon:Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    if-nez v20, :cond_0

    .line 634
    const/16 v19, 0x1

    .line 638
    .end local v10           #icon:Landroid/view/View;
    :cond_0
    if-eqz v19, :cond_2

    .line 640
    const/4 v6, 0x0

    .line 641
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 651
    :cond_1
    move v9, v6

    .local v9, i:I
    :goto_0
    if-ge v9, v14, :cond_3

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f030005

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v13

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 654
    .local v18, text:Landroid/widget/TextView;
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 656
    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 658
    const/16 v20, -0x1

    new-instance v21, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x1

    invoke-direct/range {v21 .. v25}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    move-object v0, v13

    move-object/from16 v1, v18

    move/from16 v2, v20

    move v3, v9

    move-object/from16 v4, v21

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 651
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 644
    .end local v9           #i:I
    .end local v18           #text:Landroid/widget/TextView;
    :cond_2
    sub-int v8, v6, v14

    .line 645
    .local v8, extraPageItemsDiff:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_1
    if-ge v9, v8, :cond_1

    .line 646
    invoke-virtual {v13, v14}, Lcom/android/launcher2/PagedViewCellLayout;->removeViewOnPageAt(I)V

    .line 645
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 663
    .end local v8           #extraPageItemsDiff:I
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AllAppsPagedView;->getPageCount()I

    move-result v15

    .line 664
    .local v15, numPages:I
    move/from16 v9, v17

    :goto_2
    if-ge v9, v7, :cond_5

    .line 665
    sub-int v11, v9, v17

    .line 666
    .local v11, index:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/ApplicationInfo;

    .line 667
    .local v12, info:Lcom/android/launcher2/ApplicationInfo;
    invoke-virtual {v13, v11}, Lcom/android/launcher2/PagedViewCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher2/PagedViewIcon;

    .line 668
    .local v10, icon:Lcom/android/launcher2/PagedViewIcon;
    sget-object v20, Lcom/android/launcher2/AllAppsPagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    const/16 v21, 0x1

    const/16 v22, 0x1

    move v0, v15

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    const/16 v22, 0x1

    :goto_3
    move-object v0, v10

    move-object v1, v12

    move-object/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/PagedViewIconCache;ZZ)V

    .line 670
    invoke-virtual {v10}, Lcom/android/launcher2/PagedViewIcon;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    .line 672
    .local v16, params:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    move/from16 v20, v0

    rem-int v20, v11, v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellX:I

    .line 673
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    move/from16 v20, v0

    div-int v20, v11, v20

    move/from16 v0, v20

    move-object/from16 v1, v16

    iput v0, v1, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;->cellY:I

    .line 664
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 668
    .end local v16           #params:Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;
    :cond_4
    const/16 v22, 0x0

    goto :goto_3

    .line 677
    .end local v10           #icon:Lcom/android/launcher2/PagedViewIcon;
    .end local v11           #index:I
    .end local v12           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_5
    const/16 v20, 0x0

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->enableCenteredContent(Z)V

    .line 695
    .end local v6           #curNumPageItems:I
    .end local v9           #i:I
    .end local v14           #numPageItems:I
    .end local v15           #numPages:I
    .end local v19           #wasEmptyPage:Z
    :goto_4
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewCellLayout;->createHardwareLayers()V

    .line 696
    return-void

    .line 680
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f030004

    const/16 v22, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v21

    move-object v2, v13

    move/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TextView;

    .line 682
    .local v10, icon:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mAppFilter:I

    move/from16 v20, v0

    packed-switch v20, :pswitch_data_0

    .line 690
    :goto_5
    const/16 v20, 0x1

    move-object v0, v13

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->enableCenteredContent(Z)V

    .line 691
    invoke-virtual {v13}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    .line 692
    const/16 v20, -0x1

    const/16 v21, 0x0

    new-instance v22, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x4

    const/16 v26, 0x1

    invoke-direct/range {v22 .. v26}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    move-object v0, v13

    move-object v1, v10

    move/from16 v2, v20

    move/from16 v3, v21

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    goto :goto_4

    .line 684
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllAppsPagedView;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0e0015

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object v0, v10

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 682
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public syncPages()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 595
    iget-object v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mFilteredApps:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountX:I

    iget v7, p0, Lcom/android/launcher2/AllAppsPagedView;->mCellCountY:I

    mul-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 597
    .local v4, numPages:I
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getChildCount()I

    move-result v0

    .line 599
    .local v0, curNumPages:I
    sub-int v1, v0, v4

    .line 600
    .local v1, extraPageDiff:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 601
    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllAppsPagedView;->removeViewAt(I)V

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 604
    :cond_0
    move v2, v0

    :goto_1
    if-ge v2, v4, :cond_2

    .line 605
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 606
    .local v3, layout:Lcom/android/launcher2/PagedViewCellLayout;
    iget-boolean v5, p0, Lcom/android/launcher2/AllAppsPagedView;->mAllowHardwareLayerCreation:Z

    if-eqz v5, :cond_1

    .line 607
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewCellLayout;->allowHardwareLayerCreation()V

    .line 609
    :cond_1
    invoke-direct {p0, v3}, Lcom/android/launcher2/AllAppsPagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 610
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AllAppsPagedView;->addView(Landroid/view/View;)V

    .line 604
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 614
    .end local v3           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_2
    const/4 v5, 0x0

    sub-int v6, v4, v8

    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getCurrentPage()I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/launcher2/AllAppsPagedView;->setCurrentPage(I)V

    .line 615
    return-void
.end method

.method public updateApps(Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 545
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllAppsPagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 546
    invoke-direct {p0, p1}, Lcom/android/launcher2/AllAppsPagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 547
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->invalidatePageData()V

    .line 548
    return-void
.end method

.method public zoom(FZ)V
    .locals 2
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 239
    iput p1, p0, Lcom/android/launcher2/AllAppsPagedView;->mZoom:F

    .line 240
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->cancelLongPress()V

    .line 242
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    if-eqz p2, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x7f04

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllAppsPagedView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 257
    :goto_0
    return-void

    .line 247
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->onAnimationEnd()V

    goto :goto_0

    .line 250
    :cond_1
    if-eqz p2, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f040001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllAppsPagedView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 254
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/AllAppsPagedView;->onAnimationEnd()V

    goto :goto_0
.end method
