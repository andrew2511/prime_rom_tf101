.class public Lcom/android/launcher2/CustomizePagedView;
.super Lcom/android/launcher2/PagedViewWithDraggableItems;
.source "CustomizePagedView.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/launcher2/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CustomizePagedView$9;,
        Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;,
        Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;,
        Lcom/android/launcher2/CustomizePagedView$CustomizationType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final ANIMATION_SCALE:F

.field private final DROP_ANIM_DURATION:I

.field private final TRANSLATE_ANIM_DURATION:I

.field private mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

.field private mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCanvas:Landroid/graphics/Canvas;

.field private mChoiceModeTitleText:I

.field private mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

.field private mDragBitmap:Landroid/graphics/Bitmap;

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragViewOrigin:[I

.field private mFirstMeasure:Z

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mMaxCellCountY:I

.field private mMaxWallpaperCellHSpan:I

.field private mMaxWidgetPreviewDim:I

.field private mMaxWidgetWidth:I

.field private mMaxWidgetsCellHSpan:I

.field private mMinPageWidth:I

.field private mMinWidgetPreviewDim:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPageContentHeight:I

.field private mPageContentWidth:I

.field private mQuintEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mShortcutList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpFloatPos:[F

.field private mWaitingToDetermineRowsAndColumns:Z

.field private mWaitingToInitPages:Z

.field private mWallpaperCellHSpan:I

.field private mWallpaperList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWidgetPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/appwidget/AppWidgetProviderInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/launcher2/CustomizePagedView;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 165
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher2/CustomizePagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 166
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 169
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CustomizePagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 170
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v8, -0x1

    const/16 v7, 0x8

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/PagedViewWithDraggableItems;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    .line 138
    iput-boolean v4, p0, Lcom/android/launcher2/CustomizePagedView;->mFirstMeasure:Z

    .line 140
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mTmpFloatPos:[F

    .line 141
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/launcher2/CustomizePagedView;->ANIMATION_SCALE:F

    .line 144
    const/16 v2, 0x190

    iput v2, p0, Lcom/android/launcher2/CustomizePagedView;->TRANSLATE_ANIM_DURATION:I

    .line 147
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/launcher2/CustomizePagedView;->DROP_ANIM_DURATION:I

    .line 149
    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x4020

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mQuintEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 154
    new-array v2, v6, [I

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    .line 156
    iput v8, p0, Lcom/android/launcher2/CustomizePagedView;->mPageContentWidth:I

    .line 157
    iput v8, p0, Lcom/android/launcher2/CustomizePagedView;->mPageContentHeight:I

    .line 161
    iput-boolean v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWaitingToInitPages:Z

    .line 162
    iput-boolean v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWaitingToDetermineRowsAndColumns:Z

    .line 176
    sget-object v2, Lcom/android/launcher/R$styleable;->CustomizePagedView:[I

    invoke-virtual {p1, p2, v2, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 177
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v5, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperCellHSpan:I

    .line 178
    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWallpaperCellHSpan:I

    .line 179
    invoke-virtual {v0, v6, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetsCellHSpan:I

    .line 180
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 182
    sget-object v2, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WidgetCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetPages:Ljava/util/ArrayList;

    .line 184
    new-instance v2, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-direct {v2, p1}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    .line 185
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mInflater:Landroid/view/LayoutInflater;

    .line 187
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 188
    .local v1, r:Landroid/content/res/Resources;
    const v2, 0x7f0a0024

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x42c8

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/android/launcher2/CustomizePagedView;->setDragSlopeThreshold(F)V

    .line 191
    const v2, 0x7f0a0028

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxCellCountY:I

    .line 193
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CustomizePagedView;->setVisibility(I)V

    .line 194
    invoke-virtual {p0, v5}, Lcom/android/launcher2/CustomizePagedView;->setSoundEffectsEnabled(Z)V

    .line 195
    invoke-direct {p0}, Lcom/android/launcher2/CustomizePagedView;->setupWorkspaceLayout()V

    .line 196
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher2/CustomizePagedView;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher2/CustomizePagedView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->resetCheckedItem(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher2/CustomizePagedView;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/CustomizePagedView;Landroid/view/View;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/CustomizePagedView;->animateItemOntoScreen(Landroid/view/View;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher2/CustomizePagedView;Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->getWidgetPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/CustomizePagedView;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/CustomizePagedView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 73
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetWidth:I

    return v0
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
    .line 279
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-boolean v4, Lcom/android/launcher2/CustomizePagedView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CustomizeWorkspace"

    const-string v5, "addAppsWithoutInvalidate()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    if-nez v4, :cond_2

    .line 282
    sget-boolean v4, Lcom/android/launcher2/CustomizePagedView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "CustomizeWorkspace"

    const-string v5, "addAppsWithoutInvalidate(): mApps = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    :cond_1
    return-void

    .line 287
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 288
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 289
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 290
    .local v3, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 291
    .local v2, index:I
    if-gez v2, :cond_3

    .line 292
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    add-int/lit8 v5, v2, 0x1

    neg-int v5, v5

    invoke-interface {v4, v5, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 288
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private animateDropOntoScreen(Landroid/view/View;Lcom/android/launcher2/ItemInfo;II)V
    .locals 10
    .parameter "view"
    .parameter "info"
    .parameter "duration"
    .parameter "delay"

    .prologue
    const/4 v9, 0x2

    const/high16 v8, 0x3f00

    const/4 v7, 0x1

    const/4 v4, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/DragLayer;

    .line 531
    .local v2, dragLayer:Lcom/android/launcher2/DragLayer;
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v5

    .line 533
    .local v5, layout:Lcom/android/launcher2/CellLayout;
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/animation/PropertyValuesHolder;

    const-string v1, "alpha"

    new-array v3, v9, [F

    fill-array-data v3, :array_0

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "scaleX"

    new-array v3, v7, [F

    aput v8, v3, v4

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v7

    const-string v1, "scaleY"

    new-array v3, v7, [F

    aput v8, v3, v4

    invoke-static {v1, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    aput-object v1, v0, v9

    invoke-static {p1, v0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 537
    .local v6, anim:Landroid/animation/ObjectAnimator;
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 538
    if-lez p4, :cond_0

    .line 539
    int-to-long v0, p4

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 541
    :cond_0
    int-to-long v0, p3

    invoke-virtual {v6, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 542
    new-instance v0, Lcom/android/launcher2/CustomizePagedView$4;

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CustomizePagedView$4;-><init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/DragLayer;Landroid/view/View;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v6, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 549
    invoke-virtual {v6}, Landroid/animation/ObjectAnimator;->start()V

    .line 550
    return-void

    .line 533
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private animateIntoPosition(Landroid/view/View;FFLjava/lang/Runnable;)V
    .locals 6
    .parameter "view"
    .parameter "toX"
    .parameter "toY"
    .parameter "endRunnable"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 557
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/PropertyValuesHolder;

    const-string v2, "x"

    new-array v3, v5, [F

    aput p2, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "y"

    new-array v3, v5, [F

    aput p3, v3, v4

    invoke-static {v2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p1, v1}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 560
    .local v0, anim:Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mQuintEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 561
    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 562
    if-eqz p4, :cond_0

    .line 563
    new-instance v1, Lcom/android/launcher2/CustomizePagedView$5;

    invoke-direct {v1, p0, p4}, Lcom/android/launcher2/CustomizePagedView$5;-><init>(Lcom/android/launcher2/CustomizePagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 570
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 571
    return-void
.end method

.method private animateItemOntoScreen(Landroid/view/View;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;)V
    .locals 22
    .parameter "dragView"
    .parameter "layout"
    .parameter "info"

    .prologue
    .line 485
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mTmpFloatPos:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 486
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mTmpFloatPos:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    aput v20, v18, v19

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mTmpFloatPos:[F

    move-object/from16 v19, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 489
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 490
    .local v9, dragViewWidth:I
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    .line 491
    .local v8, dragViewHeight:I
    const/4 v12, 0x0

    .line 492
    .local v12, heightOffset:F
    const/16 v17, 0x0

    .line 494
    .local v17, widthOffset:F
    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/ImageView;

    move/from16 v18, v0

    if-eqz v18, :cond_0

    .line 495
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/ImageView;

    move-object/from16 p2, v0

    .end local p2
    invoke-virtual/range {p2 .. p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 496
    .local v5, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v16

    .line 497
    .local v16, width:I
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    .line 499
    .local v11, height:I
    const-wide/high16 v18, 0x3ff0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    move v0, v11

    int-to-double v0, v0

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const/high16 v20, 0x3f80

    move v0, v9

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move v0, v8

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v18, v18, v20

    if-ltz v18, :cond_1

    .line 500
    move v0, v9

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f80

    mul-float v19, v19, v20

    div-float v10, v18, v19

    .line 501
    .local v10, f:F
    const/high16 v18, 0x3f00

    move v0, v8

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v11

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v10

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v12, v18, v19

    .line 507
    .end local v5           #d:Landroid/graphics/drawable/Drawable;
    .end local v10           #f:F
    .end local v11           #height:I
    .end local v16           #width:I
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mTmpFloatPos:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    aget v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    add-float v14, v18, v17

    .line 508
    .local v14, toX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mTmpFloatPos:[F

    move-object/from16 v18, v0

    const/16 v19, 0x1

    aget v18, v18, v19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v19

    div-int/lit8 v19, v19, 0x2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    sub-float v18, v18, v19

    add-float v15, v18, v12

    .line 510
    .local v15, toY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v18, v0

    const v19, 0x7f080022

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/DragLayer;

    .line 511
    .local v7, dragLayer:Lcom/android/launcher2/DragLayer;
    move-object v0, v7

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragLayer;->createDragView(Landroid/view/View;)Landroid/view/View;

    move-result-object v6

    .line 512
    .local v6, dragCopy:Landroid/view/View;
    const/high16 v18, 0x3f80

    move-object v0, v6

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 515
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move v2, v14

    move v3, v15

    move-object/from16 v4, v18

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CustomizePagedView;->animateIntoPosition(Landroid/view/View;FFLjava/lang/Runnable;)V

    .line 518
    const/16 v13, 0xc8

    .line 521
    .local v13, startDelay:I
    const/16 v18, 0xc8

    const/16 v19, 0xc8

    move-object/from16 v0, p0

    move-object v1, v6

    move-object/from16 v2, p3

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/CustomizePagedView;->animateDropOntoScreen(Landroid/view/View;Lcom/android/launcher2/ItemInfo;II)V

    .line 522
    return-void

    .line 503
    .end local v6           #dragCopy:Landroid/view/View;
    .end local v7           #dragLayer:Lcom/android/launcher2/DragLayer;
    .end local v13           #startDelay:I
    .end local v14           #toX:F
    .end local v15           #toY:F
    .restart local v5       #d:Landroid/graphics/drawable/Drawable;
    .restart local v11       #height:I
    .restart local v16       #width:I
    :cond_1
    move v0, v8

    int-to-float v0, v0

    move/from16 v18, v0

    move v0, v11

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x3f80

    mul-float v19, v19, v20

    div-float v10, v18, v19

    .line 504
    .restart local v10       #f:F
    const/high16 v18, 0x3f00

    move v0, v9

    int-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v10

    sub-float v19, v19, v20

    mul-float v18, v18, v19

    const/high16 v19, 0x4000

    div-float v17, v18, v19

    goto/16 :goto_0
.end method

.method private drawableToBitmap(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "d"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    const/4 v3, 0x0

    .line 646
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 647
    .local v9, bounds:Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v5

    .line 648
    .local v5, w:I
    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v6

    .line 649
    .local v6, h:I
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, b:Landroid/graphics/Bitmap;
    move-object v0, p0

    move-object v1, p1

    move v4, v3

    move v7, p2

    move v8, p3

    .line 650
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V

    .line 651
    return-object v2
.end method

.method private findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I
    .locals 5
    .parameter
    .parameter "item"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;",
            "Lcom/android/launcher2/ApplicationInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p2, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    .line 362
    .local v3, removeComponent:Landroid/content/ComponentName;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 363
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 364
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 365
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    .line 369
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v4

    .line 363
    .restart local v1       #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    .end local v1           #info:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private getDragView(Landroid/view/View;)Landroid/view/View;
    .locals 2
    .parameter "v"

    .prologue
    .line 655
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    sget-object v1, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->WidgetCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    if-ne v0, v1, :cond_0

    const v0, 0x7f08001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private getWallpaperPreview(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/FastBitmapDrawable;
    .locals 13
    .parameter

    .prologue
    const/4 v10, 0x1

    const/high16 v4, 0x3f40

    const/high16 v7, 0x3f80

    const/4 v3, 0x0

    .line 860
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v9

    .line 861
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperCellHSpan:I

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v0

    .line 862
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 865
    int-to-float v2, v0

    mul-float/2addr v2, v4

    float-to-int v5, v2

    .line 866
    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v6, v0

    .line 867
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 869
    new-instance v0, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v4, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/CustomizePagedView;->parseWallpaperPreviewXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 871
    if-eqz v0, :cond_1

    .line 873
    :goto_0
    if-nez v10, :cond_2

    .line 874
    const v0, 0x7f02001a

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v1, v0

    :goto_1
    move-object v0, p0

    move v4, v3

    move v8, v7

    .line 877
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V

    .line 880
    if-nez v10, :cond_0

    .line 882
    :try_start_0
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v0

    .line 884
    new-instance v5, Lcom/android/launcher2/FastBitmapDrawable;

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 887
    div-int/lit8 v9, v9, 0x2

    .line 888
    div-int/lit8 v7, v9, 0x4

    .line 889
    const/4 v6, 0x0

    const/high16 v11, 0x3f80

    const/high16 v12, 0x3f80

    move-object v4, p0

    move v8, v7

    move v10, v9

    invoke-direct/range {v4 .. v12}, Lcom/android/launcher2/CustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    :goto_2
    new-instance v0, Lcom/android/launcher2/FastBitmapDrawable;

    invoke-direct {v0, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 896
    invoke-virtual {v0}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher2/FastBitmapDrawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Lcom/android/launcher2/FastBitmapDrawable;->setBounds(IIII)V

    .line 897
    return-object v0

    :cond_1
    move v10, v3

    .line 871
    goto :goto_0

    .line 890
    :catch_0
    move-exception v0

    goto :goto_2

    :cond_2
    move-object v1, v0

    goto :goto_1
.end method

.method private getWidgetPreview(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/graphics/Bitmap;
    .locals 14
    .parameter

    .prologue
    const/4 v3, 0x0

    const/high16 v13, 0x3f40

    const/4 v12, 0x0

    const/high16 v7, 0x3f80

    .line 908
    iget-object v9, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 909
    iget-object v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 911
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    if-eqz v0, :cond_5

    .line 912
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->previewImage:I

    invoke-virtual {v9, v10, v0, v12}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 913
    if-nez v0, :cond_0

    .line 914
    const-string v1, "CustomizeWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t load icon drawable 0x"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " for provider: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v1, v0

    .line 920
    :goto_0
    if-nez v1, :cond_1

    .line 921
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    .line 924
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mMinWidgetPreviewDim:I

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetPreviewDim:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-int v5, v0

    .line 926
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mMinWidgetPreviewDim:I

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetPreviewDim:I

    iget v2, p1, Landroid/appwidget/AppWidgetProviderInfo;->minHeight:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v13

    float-to-int v6, v0

    .line 928
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 929
    const v0, 0x7f02001a

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v0, p0

    move v4, v3

    move v8, v7

    .line 930
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V

    .line 935
    :try_start_0
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    if-lez v0, :cond_4

    .line 936
    iget v0, p1, Landroid/appwidget/AppWidgetProviderInfo;->icon:I

    const/4 v1, 0x0

    invoke-virtual {v9, v10, v0, v1}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 938
    :goto_1
    if-nez v0, :cond_3

    .line 939
    const v0, 0x7f020064

    invoke-virtual {v11, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v4, v0

    .line 942
    :goto_2
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mMinWidgetPreviewDim:I

    div-int/lit8 v8, v0, 0x2

    .line 943
    div-int/lit8 v6, v8, 0x4

    .line 944
    const/4 v5, 0x0

    const/high16 v10, 0x3f80

    const/high16 v11, 0x3f80

    move-object v3, p0

    move v7, v6

    move v9, v8

    invoke-direct/range {v3 .. v11}, Lcom/android/launcher2/CustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    move-object v0, v2

    .line 972
    :goto_4
    return-object v0

    .line 952
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    .line 953
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    int-to-float v2, v2

    .line 954
    div-float v4, v0, v2

    .line 955
    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mMinWidgetPreviewDim:I

    int-to-float v5, v5

    iget v6, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetPreviewDim:I

    int-to-float v6, v6

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v5, v13

    float-to-int v5, v5

    .line 957
    iget v6, p0, Lcom/android/launcher2/CustomizePagedView;->mMinWidgetPreviewDim:I

    int-to-float v6, v6

    iget v8, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetPreviewDim:I

    int-to-float v8, v8

    invoke-static {v8, v2}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    mul-float/2addr v6, v13

    float-to-int v6, v6

    .line 961
    cmpl-float v4, v4, v7

    if-ltz v4, :cond_2

    .line 963
    int-to-float v4, v5

    div-float v0, v4, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v6, v0

    .line 969
    :goto_5
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v0, p0

    move v4, v3

    move v8, v7

    .line 970
    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/CustomizePagedView;->renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V

    move-object v0, v2

    .line 972
    goto :goto_4

    .line 966
    :cond_2
    int-to-float v4, v6

    div-float v2, v4, v2

    mul-float/2addr v0, v2

    float-to-int v0, v0

    move v5, v0

    goto :goto_5

    .line 945
    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    move-object v4, v0

    goto :goto_2

    :cond_4
    move-object v0, v12

    goto :goto_1

    :cond_5
    move-object v1, v12

    goto/16 :goto_0
.end method

.method private parseWallpaperPreviewXml(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x0

    .line 806
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.wallpaper.preview"

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 811
    if-nez v1, :cond_2

    .line 812
    :try_start_1
    const-string v0, "CustomizeWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No android.wallpaper.preview meta-data for wallpaper provider \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 849
    if-eqz v1, :cond_0

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    move-object v0, v5

    :cond_1
    :goto_0
    return-object v0

    .line 817
    :cond_2
    :try_start_2
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v2

    .line 821
    :cond_3
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 825
    :cond_4
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 826
    const-string v4, "wallpaper-preview"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 827
    const-string v0, "CustomizeWorkspace"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Meta-data does not start with wallpaper-preview tag for wallpaper provider \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x27

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 849
    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    move-object v0, v5

    goto :goto_0

    .line 834
    :cond_6
    :try_start_3
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v0

    .line 837
    sget-object v3, Lcom/android/internal/R$styleable;->WallpaperPreviewInfo:[I

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 840
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v2

    .line 842
    if-nez v2, :cond_8

    .line 849
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    move-object v0, v5

    goto :goto_0

    .line 844
    :cond_8
    :try_start_4
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    move-result-object v0

    .line 849
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    .line 845
    :catch_0
    move-exception v0

    move-object v1, v5

    .line 846
    :goto_1
    :try_start_5
    const-string v2, "CustomizeWorkspace"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML parsing failed for wallpaper provider \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 849
    if-eqz v1, :cond_9

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_9
    move-object v0, v5

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v5

    :goto_2
    if-eqz v1, :cond_a

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    throw v0

    :catchall_1
    move-exception v0

    goto :goto_2

    .line 845
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private relayoutWidgets()I
    .locals 11

    .prologue
    .line 750
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v7, 0x0

    .line 780
    :goto_0
    return v7

    .line 753
    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v4, newPage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 755
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 758
    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetsCellHSpan:I

    .line 759
    .local v3, maxNumCellsPerRow:I
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v6

    .line 760
    .local v6, widgetCount:I
    const/4 v5, 0x0

    .line 761
    .local v5, numCellsInRow:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v6, :cond_2

    .line 762
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetList:Ljava/util/List;

    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    .line 765
    .local v2, info:Landroid/appwidget/AppWidgetProviderInfo;
    const/4 v7, 0x2

    const/4 v8, 0x4

    iget-object v9, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v10, v2, Landroid/appwidget/AppWidgetProviderInfo;->minWidth:I

    invoke-virtual {v9, v10}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellHSpan(I)I

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 769
    .local v0, cellSpanX:I
    add-int v7, v5, v0

    if-le v7, v3, :cond_1

    .line 770
    const/4 v5, 0x0

    .line 771
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #newPage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 772
    .restart local v4       #newPage:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/appwidget/AppWidgetProviderInfo;>;"
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetPages:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    :cond_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    add-int/2addr v5, v0

    .line 761
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 780
    .end local v0           #cellSpanX:I
    .end local v2           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_2
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetPages:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    goto :goto_0
.end method

.method private removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V
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
    .line 313
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-boolean v4, Lcom/android/launcher2/CustomizePagedView;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "CustomizeWorkspace"

    const-string v5, "removeAppsWithoutInvalidate()"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    if-nez v4, :cond_2

    .line 316
    sget-boolean v4, Lcom/android/launcher2/CustomizePagedView;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "CustomizeWorkspace"

    const-string v5, "removeAppsWithoutInvalidate(): mApps = null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    :cond_1
    return-void

    .line 321
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 322
    .local v2, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 323
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 324
    .local v1, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    invoke-direct {p0, v4, v1}, Lcom/android/launcher2/CustomizePagedView;->findAppByComponent(Ljava/util/List;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v3

    .line 325
    .local v3, removeIndex:I
    const/4 v4, -0x1

    if-le v3, v4, :cond_3

    .line 326
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 327
    sget-object v4, Lcom/android/launcher2/CustomizePagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    new-instance v5, Lcom/android/launcher2/PagedViewIconCache$Key;

    invoke-direct {v5, v1}, Lcom/android/launcher2/PagedViewIconCache$Key;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    invoke-virtual {v4, v5}, Lcom/android/launcher2/PagedViewIconCache;->removeOutline(Lcom/android/launcher2/PagedViewIconCache$Key;)V

    .line 322
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private renderDrawableToBitmap(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;IIIIFF)V
    .locals 3
    .parameter "d"
    .parameter "bitmap"
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "scaleX"
    .parameter "scaleY"

    .prologue
    .line 788
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p2}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 789
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->save()I

    .line 790
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1, p7, p8}, Landroid/graphics/Canvas;->scale(FF)V

    .line 791
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 792
    .local v0, oldBounds:Landroid/graphics/Rect;
    add-int v1, p3, p5

    add-int v2, p4, p6

    invoke-virtual {p1, p3, p4, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 793
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 794
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 795
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCanvas:Landroid/graphics/Canvas;

    invoke-virtual {v1}, Landroid/graphics/Canvas;->restore()V

    .line 796
    return-void
.end method

.method private resetCheckedItem(Z)V
    .locals 3
    .parameter "animated"

    .prologue
    const/4 v2, 0x0

    .line 439
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getSingleCheckedGrandchild()Landroid/widget/Checkable;

    move-result-object v0

    .line 440
    .local v0, checkable:Landroid/widget/Checkable;
    if-eqz v0, :cond_0

    .line 441
    instance-of v1, v0, Lcom/android/launcher2/PagedViewWidget;

    if-eqz v1, :cond_1

    .line 442
    check-cast v0, Lcom/android/launcher2/PagedViewWidget;

    .end local v0           #checkable:Landroid/widget/Checkable;
    invoke-virtual {v0, v2, p1}, Lcom/android/launcher2/PagedViewWidget;->setChecked(ZZ)V

    .line 447
    :cond_0
    :goto_0
    return-void

    .line 444
    .restart local v0       #checkable:Landroid/widget/Checkable;
    :cond_1
    check-cast v0, Lcom/android/launcher2/PagedViewIcon;

    .end local v0           #checkable:Landroid/widget/Checkable;
    invoke-virtual {v0, v2, p1}, Lcom/android/launcher2/PagedViewIcon;->setChecked(ZZ)V

    goto :goto_0
.end method

.method private setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V
    .locals 4
    .parameter "layout"

    .prologue
    .line 977
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 978
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingTop:I

    iget v2, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingRight:I

    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 980
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutWidthGap:I

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutHeightGap:I

    invoke-virtual {p1, v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->setGap(II)V

    .line 981
    return-void
.end method

.method private setupWorkspaceLayout()V
    .locals 4

    .prologue
    const/16 v3, 0x14

    .line 984
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    iget v2, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setCellCount(II)V

    .line 985
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/android/launcher2/PagedViewCellLayout;->setPadding(IIII)V

    .line 987
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetWidth:I

    .line 988
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CustomizePagedView;->mMinWidgetPreviewDim:I

    .line 989
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWorkspaceWidgetLayout:Lcom/android/launcher2/PagedViewCellLayout;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/PagedViewCellLayout;->estimateCellWidth(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetPreviewDim:I

    .line 990
    return-void
.end method

.method private syncAppPageItems(I)V
    .locals 12
    .parameter

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 1204
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1229
    :cond_0
    return-void

    .line 1207
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getPageCount()I

    move-result v3

    .line 1208
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    .line 1209
    mul-int v4, p1, v0

    .line 1210
    add-int/2addr v0, v4

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1211
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1213
    invoke-virtual {v0}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    move v6, v4

    .line 1214
    :goto_0
    if-ge v6, v5, :cond_0

    .line 1215
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/ApplicationInfo;

    .line 1216
    iget-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mInflater:Landroid/view/LayoutInflater;

    const v7, 0x7f030005

    invoke-virtual {v2, v7, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/PagedViewIcon;

    .line 1218
    sget-object v7, Lcom/android/launcher2/CustomizePagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    if-le v3, v10, :cond_2

    move v8, v10

    :goto_1
    invoke-virtual {v2, v1, v7, v10, v8}, Lcom/android/launcher2/PagedViewIcon;->applyFromApplicationInfo(Lcom/android/launcher2/ApplicationInfo;Lcom/android/launcher2/PagedViewIconCache;ZZ)V

    .line 1219
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1220
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1221
    invoke-virtual {v2, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1223
    sub-int v1, v6, v4

    .line 1224
    iget v7, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    rem-int v7, v1, v7

    .line 1225
    iget v8, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    div-int/2addr v1, v8

    .line 1226
    invoke-direct {p0, v0}, Lcom/android/launcher2/CustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1227
    const/4 v8, -0x1

    new-instance v9, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    invoke-direct {v9, v7, v1, v10, v10}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {v0, v2, v8, v6, v9}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 1214
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto :goto_0

    :cond_2
    move v8, v11

    .line 1218
    goto :goto_1
.end method

.method private syncAppPages()V
    .locals 6

    .prologue
    .line 1189
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1201
    :cond_0
    return-void

    .line 1192
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->removeAllViews()V

    .line 1195
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 1196
    .local v2, numPages:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1197
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1198
    .local v1, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher2/CustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1199
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CustomizePagedView;->addView(Landroid/view/View;)V

    .line 1196
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private syncListPageItems(ILjava/util/List;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getPageCount()I

    move-result v6

    .line 1148
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    iget v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    mul-int/2addr v0, v1

    .line 1149
    mul-int v7, p1, v0

    .line 1150
    add-int/2addr v0, v7

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1151
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1153
    invoke-virtual {p1}, Lcom/android/launcher2/PagedViewCellLayout;->removeAllViewsOnPage()V

    move v9, v7

    .line 1154
    :goto_0
    if-ge v9, v8, :cond_1

    .line 1155
    invoke-interface {p2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 1156
    new-instance v10, Lcom/android/launcher2/PendingAddItemInfo;

    invoke-direct {v10}, Lcom/android/launcher2/PendingAddItemInfo;-><init>()V

    .line 1158
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f03000d

    const/4 v3, 0x0

    invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/PagedViewIcon;

    .line 1160
    iget-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    sget-object v3, Lcom/android/launcher2/CustomizePagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getApplication()Landroid/app/Application;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/LauncherApplication;

    invoke-virtual {v4}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v4

    const/4 v5, 0x1

    if-le v6, v5, :cond_0

    const/4 v5, 0x1

    :goto_1
    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/PagedViewIcon;->applyFromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher2/PagedViewIconCache;Lcom/android/launcher2/IconCache;Z)V

    .line 1163
    sget-object v2, Lcom/android/launcher2/CustomizePagedView$9;->$SwitchMap$com$android$launcher2$CustomizePagedView$CustomizationType:[I

    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-virtual {v3}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1180
    :goto_2
    sub-int v1, v9, v7

    .line 1181
    iget v2, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    rem-int v2, v1, v2

    .line 1182
    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    div-int/2addr v1, v3

    .line 1183
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1184
    const/4 v3, -0x1

    new-instance v4, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;

    const/4 v5, 0x1

    const/4 v10, 0x1

    invoke-direct {v4, v2, v1, v5, v10}, Lcom/android/launcher2/PagedViewCellLayout$LayoutParams;-><init>(IIII)V

    invoke-virtual {p1, v0, v3, v9, v4}, Lcom/android/launcher2/PagedViewCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/PagedViewCellLayout$LayoutParams;)Z

    .line 1154
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_0

    .line 1160
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 1165
    :pswitch_0
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 1168
    :pswitch_1
    const/4 v2, 0x1

    iput v2, v10, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    .line 1169
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v10, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    .line 1171
    invoke-virtual {v0, v10}, Lcom/android/launcher2/PagedViewIcon;->setTag(Ljava/lang/Object;)V

    .line 1172
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1174
    invoke-virtual {v0, p0}, Lcom/android/launcher2/PagedViewIcon;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_2

    .line 1186
    :cond_1
    return-void

    .line 1163
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private syncListPages(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1134
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->removeAllViews()V

    .line 1137
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    mul-int/2addr v4, v5

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 1138
    .local v2, numPages:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1139
    new-instance v1, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 1140
    .local v1, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v1}, Lcom/android/launcher2/CustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 1141
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CustomizePagedView;->addView(Landroid/view/View;)V

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1143
    .end local v1           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_0
    return-void
.end method

.method private syncWallpaperPageItems(I)V
    .locals 14
    .parameter

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1110
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object v8, v0

    .line 1111
    invoke-virtual {v8}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1112
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1113
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getPageCount()I

    move-result v9

    .line 1114
    iget v2, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWallpaperCellHSpan:I

    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperCellHSpan:I

    div-int/2addr v2, v3

    .line 1115
    mul-int v3, p1, v2

    .line 1116
    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v11, v3

    .line 1117
    :goto_0
    if-ge v11, v10, :cond_1

    .line 1118
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperList:Ljava/util/List;

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 1119
    invoke-direct {p0, v2}, Lcom/android/launcher2/CustomizePagedView;->getWallpaperPreview(Landroid/content/pm/ResolveInfo;)Lcom/android/launcher2/FastBitmapDrawable;

    move-result-object v4

    .line 1121
    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f03000e

    invoke-virtual {v1, v3, v8, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/PagedViewWidget;

    .line 1123
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWidgetWidth:I

    sget-object v6, Lcom/android/launcher2/CustomizePagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    if-le v9, v13, :cond_0

    move v7, v13

    :goto_1
    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher2/PagedViewWidget;->applyFromWallpaperInfo(Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;Lcom/android/launcher2/FastBitmapDrawable;ILcom/android/launcher2/PagedViewIconCache;Z)V

    .line 1125
    invoke-virtual {v1, v2}, Lcom/android/launcher2/PagedViewWidget;->setTag(Ljava/lang/Object;)V

    .line 1126
    invoke-virtual {v1, p0}, Lcom/android/launcher2/PagedViewWidget;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1128
    invoke-virtual {v8, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1117
    add-int/lit8 v1, v11, 0x1

    move v11, v1

    goto :goto_0

    :cond_0
    move v7, v12

    .line 1123
    goto :goto_1

    .line 1130
    :cond_1
    return-void
.end method

.method private syncWallpaperPages()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 1087
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1106
    :cond_0
    return-void

    .line 1090
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->removeAllViews()V

    .line 1091
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperCellHSpan:I

    mul-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxWallpaperCellHSpan:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v2, v3

    .line 1093
    .local v2, numPages:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1094
    new-instance v1, Lcom/android/launcher2/PagedViewExtendedLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/launcher2/PagedViewExtendedLayout;-><init>(Landroid/content/Context;)V

    .line 1095
    .local v1, layout:Lcom/android/launcher2/PagedViewExtendedLayout;
    invoke-virtual {v1, v7}, Lcom/android/launcher2/PagedViewExtendedLayout;->setGravity(I)V

    .line 1096
    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingTop:I

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingRight:I

    iget v6, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/launcher2/PagedViewExtendedLayout;->setPadding(IIII)V

    .line 1098
    sub-int v3, v2, v7

    if-ge v0, v3, :cond_2

    .line 1099
    invoke-virtual {v1, v7}, Lcom/android/launcher2/PagedViewExtendedLayout;->setHasFixedWidth(Z)V

    .line 1100
    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mMinPageWidth:I

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PagedViewExtendedLayout;->setMinimumWidth(I)V

    .line 1102
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/CustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1093
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private syncWidgetPageItems(I)V
    .locals 5
    .parameter "page"

    .prologue
    .line 1027
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 1028
    .local v0, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1029
    new-instance v1, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;

    iget-object v2, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetPages:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-direct {v1, v0, v2}, Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;-><init>(Landroid/widget/LinearLayout;Ljava/util/ArrayList;)V

    .line 1033
    .local v1, pageToSync:Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;
    new-instance v2, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;-><init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/CustomizePagedView$1;)V

    const/4 v3, 0x1

    new-array v3, v3, [Lcom/android/launcher2/CustomizePagedView$AppWidgetsPageToSync;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CustomizePagedView$SyncWidgetPageItemsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1034
    return-void
.end method

.method private syncWidgetPages()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 993
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetList:Ljava/util/List;

    if-nez v3, :cond_1

    .line 1011
    :cond_0
    return-void

    .line 996
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->removeAllViews()V

    .line 997
    invoke-direct {p0}, Lcom/android/launcher2/CustomizePagedView;->relayoutWidgets()I

    move-result v2

    .line 998
    .local v2, numPages:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 999
    new-instance v1, Lcom/android/launcher2/PagedViewExtendedLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/launcher2/PagedViewExtendedLayout;-><init>(Landroid/content/Context;)V

    .line 1000
    .local v1, layout:Lcom/android/launcher2/PagedViewExtendedLayout;
    invoke-virtual {v1, v7}, Lcom/android/launcher2/PagedViewExtendedLayout;->setGravity(I)V

    .line 1001
    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingLeft:I

    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingTop:I

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingRight:I

    iget v6, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingBottom:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lcom/android/launcher2/PagedViewExtendedLayout;->setPadding(IIII)V

    .line 1003
    sub-int v3, v2, v7

    if-ge v0, v3, :cond_2

    .line 1004
    invoke-virtual {v1, v7}, Lcom/android/launcher2/PagedViewExtendedLayout;->setHasFixedWidth(Z)V

    .line 1005
    iget v3, p0, Lcom/android/launcher2/CustomizePagedView;->mMinPageWidth:I

    invoke-virtual {v1, v3}, Lcom/android/launcher2/PagedViewExtendedLayout;->setMinimumWidth(I)V

    .line 1007
    :cond_2
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v3}, Lcom/android/launcher2/CustomizePagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 998
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
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
    .line 301
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->invalidatePageData()V

    .line 305
    return-void
.end method

.method protected beginDragging(Landroid/view/View;)Z
    .locals 26
    .parameter "v"

    .prologue
    .line 660
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v5, 0x0

    .line 742
    :goto_0
    return v5

    .line 661
    :cond_0
    invoke-super/range {p0 .. p1}, Lcom/android/launcher2/PagedViewWithDraggableItems;->beginDragging(Landroid/view/View;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 664
    :cond_1
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CustomizePagedView;->isChoiceMode(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 665
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CustomizePagedView;->endChoiceMode()V

    .line 667
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v25

    .line 668
    .local v25, workspace:Lcom/android/launcher2/Workspace;
    const/16 v21, 0x0

    .line 669
    .local v21, result:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 670
    sget-object v5, Lcom/android/launcher2/CustomizePagedView$9;->$SwitchMap$com$android$launcher2$CustomizePagedView$CustomizationType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 728
    :cond_3
    :goto_1
    if-eqz v21, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/widget/Checkable;

    move v5, v0

    if-eqz v5, :cond_4

    .line 731
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CustomizePagedView;->resetCheckedGrandchildren()V

    .line 734
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/Checkable;

    move-object/from16 v17, v0

    .line 739
    .local v17, checkable:Landroid/widget/Checkable;
    invoke-interface/range {v17 .. v17}, Landroid/widget/Checkable;->toggle()V

    .end local v17           #checkable:Landroid/widget/Checkable;
    :cond_4
    move/from16 v5, v21

    .line 742
    goto :goto_0

    .line 672
    :pswitch_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/PagedViewWidget;

    move v5, v0

    if-eqz v5, :cond_3

    .line 674
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/LinearLayout;

    move-object/from16 v20, v0

    .line 675
    .local v20, l:Landroid/widget/LinearLayout;
    const v5, 0x7f08001d

    move-object/from16 v0, v20

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 678
    .local v6, i:Landroid/widget/ImageView;
    new-instance v23, Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x3f80

    const/high16 v9, 0x3f80

    move-object/from16 v0, v23

    move v1, v5

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 679
    .local v23, tmpScaleRect:Landroid/graphics/RectF;
    invoke-virtual {v6}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 681
    invoke-virtual {v6}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move v7, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move v8, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move v2, v7

    move v3, v8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CustomizePagedView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    move-object v5, v0

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->getLocationOnScreen([I)V

    .line 684
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/PendingAddWidgetInfo;

    .line 686
    .local v9, createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CustomizePagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    iget v7, v9, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    iget v8, v9, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    const/4 v10, 0x0

    invoke-static {v5, v7, v8, v10}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v22

    .line 688
    .local v22, spanXY:[I
    const/4 v5, 0x0

    aget v5, v22, v5

    iput v5, v9, Lcom/android/launcher2/PendingAddWidgetInfo;->spanX:I

    .line 689
    const/4 v5, 0x1

    aget v5, v22, v5

    iput v5, v9, Lcom/android/launcher2/PendingAddWidgetInfo;->spanY:I

    .line 690
    const/4 v5, 0x0

    aget v5, v22, v5

    const/4 v7, 0x1

    aget v7, v22, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v8, v0

    move-object/from16 v0, v25

    move v1, v5

    move v2, v7

    move-object v3, v8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->onDragStartedWithItemSpans(IILandroid/graphics/Bitmap;)V

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v7, v0

    sget v10, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    const/4 v11, 0x0

    move-object/from16 v8, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/DragController;->startDrag(Landroid/view/View;Landroid/graphics/Bitmap;Lcom/android/launcher2/DragSource;Ljava/lang/Object;ILandroid/graphics/Rect;)V

    .line 693
    const/16 v21, 0x1

    .line 694
    goto/16 :goto_1

    .line 699
    .end local v6           #i:Landroid/widget/ImageView;
    .end local v9           #createWidgetInfo:Lcom/android/launcher2/PendingAddWidgetInfo;
    .end local v20           #l:Landroid/widget/LinearLayout;
    .end local v22           #spanXY:[I
    .end local v23           #tmpScaleRect:Landroid/graphics/RectF;
    :pswitch_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/PagedViewIcon;

    move v5, v0

    if-eqz v5, :cond_3

    .line 701
    move-object/from16 v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object/from16 v24, v0

    .line 702
    .local v24, tv:Landroid/widget/TextView;
    invoke-virtual/range {v24 .. v24}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v19, v5, v6

    .line 703
    .local v19, icon:Landroid/graphics/drawable/Drawable;
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CustomizePagedView;->drawableToBitmap(Landroid/graphics/drawable/Drawable;FF)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 705
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v15

    .line 706
    .local v15, dragInfo:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ApplicationCustomization:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    if-ne v5, v6, :cond_5

    .line 708
    new-instance v18, Lcom/android/launcher2/ApplicationInfo;

    check-cast v15, Lcom/android/launcher2/ApplicationInfo;

    .end local v15           #dragInfo:Ljava/lang/Object;
    move-object/from16 v0, v18

    move-object v1, v15

    invoke-direct {v0, v1}, Lcom/android/launcher2/ApplicationInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .local v18, dragInfo:Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v15, v18

    .line 710
    .end local v18           #dragInfo:Lcom/android/launcher2/ApplicationInfo;
    .restart local v15       #dragInfo:Ljava/lang/Object;
    :cond_5
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v7, v0

    move-object/from16 v0, v25

    move v1, v5

    move v2, v6

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->onDragStartedWithItemSpans(IILandroid/graphics/Bitmap;)V

    .line 714
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    move-object v5, v0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v7, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v7, v5, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getPaddingTop()I

    move-result v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    move-object v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v12, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v13, v5, v6

    sget v16, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    move-object/from16 v14, p0

    invoke-virtual/range {v10 .. v16}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    .line 720
    const/16 v21, 0x1

    goto/16 :goto_1

    .line 670
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method protected getAssociatedLowerPageBound(I)I
    .locals 2
    .parameter "page"

    .prologue
    .line 1322
    const/4 v0, 0x0

    const/4 v1, 0x2

    sub-int v1, p1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method protected getAssociatedUpperPageBound(I)I
    .locals 3
    .parameter "page"

    .prologue
    .line 1326
    add-int/lit8 v0, p1, 0x2

    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public getCustomizationFilter()Lcom/android/launcher2/CustomizePagedView$CustomizationType;
    .locals 1

    .prologue
    .line 432
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    return-object v0
.end method

.method getPageContentWidth()I
    .locals 1

    .prologue
    .line 1317
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mPageContentWidth:I

    return v0
.end method

.method protected init()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->init()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCenterPagesVertically:Z

    .line 202
    return-void
.end method

.method protected invalidatePageData()V
    .locals 1

    .prologue
    .line 1233
    iget-boolean v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWaitingToDetermineRowsAndColumns:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWaitingToInitPages:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    if-gtz v0, :cond_1

    .line 1239
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    invoke-super {p0}, Lcom/android/launcher2/PagedViewWithDraggableItems;->invalidatePageData()V

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "mode"
    .parameter "item"

    .prologue
    .line 1347
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9
    .parameter "v"

    .prologue
    .line 576
    invoke-virtual {p1}, Landroid/view/View;->isInTouchMode()Z

    move-result v7

    if-nez v7, :cond_1

    .line 643
    :cond_0
    :goto_0
    return-void

    .line 578
    :cond_1
    iget v7, p0, Lcom/android/launcher2/CustomizePagedView;->mNextPage:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    .line 582
    const/4 v4, 0x0

    .line 583
    .local v4, enterChoiceMode:Z
    sget-object v7, Lcom/android/launcher2/CustomizePagedView$9;->$SwitchMap$com$android$launcher2$CustomizePagedView$CustomizationType:[I

    iget-object v8, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-virtual {v8}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 600
    :goto_1
    if-eqz v4, :cond_2

    .line 601
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ItemInfo;

    .line 603
    .local v5, itemInfo:Lcom/android/launcher2/ItemInfo;
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v6

    .line 604
    .local v6, w:Lcom/android/launcher2/Workspace;
    iget-object v7, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getCurrentWorkspaceScreen()I

    move-result v2

    .line 605
    .local v2, currentWorkspaceScreen:I
    invoke-virtual {v6, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 606
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->getDragView(Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    .line 608
    .local v3, dragView:Landroid/view/View;
    new-instance v7, Lcom/android/launcher2/CustomizePagedView$6;

    invoke-direct {v7, p0, v0, v5, v3}, Lcom/android/launcher2/CustomizePagedView$6;-><init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/ItemInfo;Landroid/view/View;)V

    invoke-virtual {p0, p1, v7}, Lcom/android/launcher2/CustomizePagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 585
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    .end local v2           #currentWorkspaceScreen:I
    .end local v3           #dragView:Landroid/view/View;
    .end local v5           #itemInfo:Lcom/android/launcher2/ItemInfo;
    .end local v6           #w:Lcom/android/launcher2/Workspace;
    :pswitch_0
    const v7, 0x7f0e003f

    iput v7, p0, Lcom/android/launcher2/CustomizePagedView;->mChoiceModeTitleText:I

    .line 586
    const/4 v4, 0x1

    .line 587
    goto :goto_1

    .line 589
    :pswitch_1
    const v7, 0x7f0e003e

    iput v7, p0, Lcom/android/launcher2/CustomizePagedView;->mChoiceModeTitleText:I

    .line 590
    const/4 v4, 0x1

    .line 591
    goto :goto_1

    .line 593
    :pswitch_2
    const v7, 0x7f0e0041

    iput v7, p0, Lcom/android/launcher2/CustomizePagedView;->mChoiceModeTitleText:I

    .line 594
    const/4 v4, 0x1

    .line 595
    goto :goto_1

    .line 623
    :cond_2
    sget-object v7, Lcom/android/launcher2/CustomizePagedView$9;->$SwitchMap$com$android$launcher2$CustomizePagedView$CustomizationType:[I

    iget-object v8, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-virtual {v8}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_1

    goto :goto_0

    .line 626
    :pswitch_3
    move-object v1, p1

    .line 627
    .local v1, clickView:Landroid/view/View;
    new-instance v7, Lcom/android/launcher2/CustomizePagedView$7;

    invoke-direct {v7, p0, v1}, Lcom/android/launcher2/CustomizePagedView$7;-><init>(Lcom/android/launcher2/CustomizePagedView;Landroid/view/View;)V

    invoke-virtual {p0, p1, v7}, Lcom/android/launcher2/CustomizePagedView;->animateClickFeedback(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 583
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 623
    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_3
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1337
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 1342
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->endChoiceMode()V

    .line 1343
    return-void
.end method

.method public onDragViewVisible()V
    .locals 0

    .prologue
    .line 477
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 9
    .parameter "target"
    .parameter "dragInfo"
    .parameter "success"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 450
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    const v4, 0x7f080022

    invoke-virtual {v3, v4}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/DragLayer;

    .line 454
    .local v1, dragLayer:Lcom/android/launcher2/DragLayer;
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v3}, Lcom/android/launcher2/DragController;->getDragView()Lcom/android/launcher2/DragView;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/android/launcher2/DragView;->getPosition([I)[I

    move-result-object v2

    .line 455
    .local v2, pos:[I
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    aget v4, v2, v6

    aget v5, v2, v7

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/launcher2/DragLayer;->createDragView(Landroid/graphics/Bitmap;II)Landroid/view/View;

    move-result-object v0

    .line 456
    .local v0, animView:Landroid/view/View;
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 458
    if-eqz p3, :cond_0

    .line 459
    invoke-direct {p0, v7}, Lcom/android/launcher2/CustomizePagedView;->resetCheckedItem(Z)V

    .line 460
    check-cast p2, Lcom/android/launcher2/ItemInfo;

    .end local p2
    const/16 v3, 0xc8

    invoke-direct {p0, v0, p2, v3, v6}, Lcom/android/launcher2/CustomizePagedView;->animateDropOntoScreen(Landroid/view/View;Lcom/android/launcher2/ItemInfo;II)V

    .line 470
    :goto_0
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/android/launcher2/Workspace;->onDragStopped(Z)V

    .line 471
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation()V

    .line 472
    iput-object v8, p0, Lcom/android/launcher2/CustomizePagedView;->mDragBitmap:Landroid/graphics/Bitmap;

    .line 473
    return-void

    .line 463
    .restart local p2
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    aget v3, v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mDragViewOrigin:[I

    aget v4, v4, v7

    int-to-float v4, v4

    new-instance v5, Lcom/android/launcher2/CustomizePagedView$3;

    invoke-direct {v5, p0, v1, v0}, Lcom/android/launcher2/CustomizePagedView$3;-><init>(Lcom/android/launcher2/CustomizePagedView;Lcom/android/launcher2/DragLayer;Landroid/view/View;)V

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/android/launcher2/CustomizePagedView;->animateIntoPosition(Landroid/view/View;FFLjava/lang/Runnable;)V

    goto :goto_0
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

    .line 234
    iget-boolean v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWaitingToDetermineRowsAndColumns:Z

    if-eqz v0, :cond_0

    .line 235
    iput-boolean v1, p0, Lcom/android/launcher2/CustomizePagedView;->mWaitingToDetermineRowsAndColumns:Z

    .line 236
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CustomizePagedView;->postInvalidatePageData(Z)V

    .line 238
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onLayout(ZIIII)V

    .line 239
    iput-boolean v1, p0, Lcom/android/launcher2/CustomizePagedView;->mFirstLayout:Z

    .line 240
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6
    .parameter "widthSpec"
    .parameter "heightSpec"

    .prologue
    .line 207
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/AllAppsPagedView;->getCellCountX()I

    move-result v0

    .line 208
    .local v0, cellCountX:I
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher2/AllAppsPagedView;->getCellCountY()I

    move-result v4

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mMaxCellCountY:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 210
    .local v1, cellCountY:I
    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    if-ne v0, v4, :cond_0

    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    if-eq v1, v4, :cond_1

    .line 211
    :cond_0
    iput v0, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountX:I

    .line 212
    iput v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCellCountY:I

    .line 216
    new-instance v3, Lcom/android/launcher2/PagedViewCellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/launcher2/PagedViewCellLayout;-><init>(Landroid/content/Context;)V

    .line 217
    .local v3, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-direct {p0, v3}, Lcom/android/launcher2/CustomizePagedView;->setupPage(Lcom/android/launcher2/PagedViewCellLayout;)V

    .line 218
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewCellLayout;->getContentWidth()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPageContentWidth:I

    .line 219
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewCellLayout;->getContentHeight()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPageContentHeight:I

    .line 220
    invoke-virtual {v3}, Lcom/android/launcher2/PagedViewCellLayout;->getWidthBeforeFirstLayout()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/CustomizePagedView;->mMinPageWidth:I

    .line 221
    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher2/CustomizePagedView;->postInvalidatePageData(Z)V

    .line 223
    .end local v3           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_1
    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPageContentHeight:I

    if-lez v4, :cond_2

    .line 225
    iget v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPageContentHeight:I

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingTop:I

    add-int/2addr v4, v5

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mPageLayoutPaddingBottom:I

    add-int v2, v4, v5

    .line 226
    .local v2, h:I
    const/high16 v4, 0x4000

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 228
    .end local v2           #h:I
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/PagedViewWithDraggableItems;->onMeasure(II)V

    .line 229
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/CustomizePagedView;->mFirstMeasure:Z

    .line 230
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 1331
    iget v0, p0, Lcom/android/launcher2/CustomizePagedView;->mChoiceModeTitleText:I

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 1332
    const/4 v0, 0x1

    return v0
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
    .line 336
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 339
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->invalidatePageData()V

    .line 340
    return-void
.end method

.method public setAllAppsPagedView(Lcom/android/launcher2/AllAppsPagedView;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 249
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView;->mAllAppsPagedView:Lcom/android/launcher2/AllAppsPagedView;

    .line 250
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
    .line 257
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    sget-boolean v0, Lcom/android/launcher2/CustomizePagedView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CustomizeWorkspace"

    const-string v1, "setApps()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_0
    if-nez p1, :cond_2

    .line 260
    sget-boolean v0, Lcom/android/launcher2/CustomizePagedView;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "CustomizeWorkspace"

    const-string v1, "setApps(): mApps = null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    .line 265
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mApps:Ljava/util/List;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    sget-object v0, Lcom/android/launcher2/CustomizePagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/PagedViewIconCache;->retainAllApps(Ljava/util/ArrayList;)V

    .line 269
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/CustomizePagedView;->mWaitingToInitPages:Z

    .line 270
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->invalidatePageData()V

    goto :goto_0
.end method

.method public setCustomizationFilter(Lcom/android/launcher2/CustomizePagedView$CustomizationType;)V
    .locals 1
    .parameter "filterType"

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->cancelDragging()V

    .line 420
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    .line 421
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CustomizePagedView;->setCurrentPage(I)V

    .line 423
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->updateCurrentPageScroll()V

    .line 424
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->invalidatePageData()V

    .line 427
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->endChoiceMode()V

    .line 429
    :cond_0
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView;->mDragController:Lcom/android/launcher2/DragController;

    .line 416
    return-void
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 2
    .parameter "launcher"

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 244
    .local v0, context:Landroid/content/Context;
    iput-object p1, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 245
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 246
    return-void
.end method

.method public syncPageItems(I)V
    .locals 2
    .parameter "page"

    .prologue
    .line 1300
    sget-object v0, Lcom/android/launcher2/CustomizePagedView$9;->$SwitchMap$com$android$launcher2$CustomizePagedView$CustomizationType:[I

    iget-object v1, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-virtual {v1}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1314
    :goto_0
    return-void

    .line 1302
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->syncWidgetPageItems(I)V

    goto :goto_0

    .line 1305
    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher2/CustomizePagedView;->mShortcutList:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CustomizePagedView;->syncListPageItems(ILjava/util/List;)V

    goto :goto_0

    .line 1308
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->syncWallpaperPageItems(I)V

    goto :goto_0

    .line 1311
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->syncAppPageItems(I)V

    goto :goto_0

    .line 1300
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public syncPages()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1243
    const/4 v2, 0x0

    .line 1244
    .local v2, enforceMinimumPagedWidths:Z
    const/4 v0, 0x0

    .line 1245
    .local v0, centerPagedViewCellLayouts:Z
    sget-object v5, Lcom/android/launcher2/CustomizePagedView$9;->$SwitchMap$com$android$launcher2$CustomizePagedView$CustomizationType:[I

    iget-object v6, p0, Lcom/android/launcher2/CustomizePagedView;->mCustomizationType:Lcom/android/launcher2/CustomizePagedView$CustomizationType;

    invoke-virtual {v6}, Lcom/android/launcher2/CustomizePagedView$CustomizationType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1263
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->removeAllViews()V

    .line 1264
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CustomizePagedView;->setCurrentPage(I)V

    .line 1269
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->getChildCount()I

    move-result v1

    .line 1270
    .local v1, childCount:I
    if-eqz v0, :cond_0

    .line 1271
    if-ne v1, v8, :cond_2

    .line 1272
    invoke-virtual {p0, v7}, Lcom/android/launcher2/CustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1273
    .local v4, layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v4, v8}, Lcom/android/launcher2/PagedViewCellLayout;->enableCenteredContent(Z)V

    .line 1283
    .end local v4           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_0
    if-eqz v2, :cond_1

    .line 1284
    if-le v1, v8, :cond_3

    iget v5, p0, Lcom/android/launcher2/CustomizePagedView;->mMinPageWidth:I

    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/launcher2/CustomizePagedView;->setMinimumWidthOverride(I)V

    .line 1288
    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->requestLayout()V

    .line 1289
    new-instance v5, Lcom/android/launcher2/CustomizePagedView$8;

    invoke-direct {v5, p0, v1}, Lcom/android/launcher2/CustomizePagedView$8;-><init>(Lcom/android/launcher2/CustomizePagedView;I)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/CustomizePagedView;->post(Ljava/lang/Runnable;)Z

    .line 1296
    return-void

    .line 1247
    .end local v1           #childCount:I
    :pswitch_0
    invoke-direct {p0}, Lcom/android/launcher2/CustomizePagedView;->syncWidgetPages()V

    .line 1248
    const/4 v2, 0x1

    .line 1249
    goto :goto_0

    .line 1251
    :pswitch_1
    iget-object v5, p0, Lcom/android/launcher2/CustomizePagedView;->mShortcutList:Ljava/util/List;

    invoke-direct {p0, v5}, Lcom/android/launcher2/CustomizePagedView;->syncListPages(Ljava/util/List;)V

    .line 1252
    const/4 v0, 0x1

    .line 1253
    goto :goto_0

    .line 1255
    :pswitch_2
    invoke-direct {p0}, Lcom/android/launcher2/CustomizePagedView;->syncWallpaperPages()V

    .line 1256
    const/4 v2, 0x1

    .line 1257
    goto :goto_0

    .line 1259
    :pswitch_3
    invoke-direct {p0}, Lcom/android/launcher2/CustomizePagedView;->syncAppPages()V

    .line 1260
    const/4 v0, 0x0

    .line 1261
    goto :goto_0

    .line 1275
    .restart local v1       #childCount:I
    :cond_2
    const/4 v3, 0x0

    .local v3, i:I
    :goto_2
    if-ge v3, v1, :cond_0

    .line 1276
    invoke-virtual {p0, v3}, Lcom/android/launcher2/CustomizePagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher2/PagedViewCellLayout;

    .line 1277
    .restart local v4       #layout:Lcom/android/launcher2/PagedViewCellLayout;
    invoke-virtual {v4, v7}, Lcom/android/launcher2/PagedViewCellLayout;->enableCenteredContent(Z)V

    .line 1275
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .end local v3           #i:I
    .end local v4           #layout:Lcom/android/launcher2/PagedViewCellLayout;
    :cond_3
    move v5, v7

    .line 1284
    goto :goto_1

    .line 1245
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public update()V
    .locals 6

    .prologue
    .line 374
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v4}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetList:Ljava/util/List;

    .line 375
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetList:Ljava/util/List;

    new-instance v5, Lcom/android/launcher2/CustomizePagedView$1;

    invoke-direct {v5, p0}, Lcom/android/launcher2/CustomizePagedView$1;-><init>(Lcom/android/launcher2/CustomizePagedView;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 382
    new-instance v0, Lcom/android/launcher2/CustomizePagedView$2;

    invoke-direct {v0, p0}, Lcom/android/launcher2/CustomizePagedView$2;-><init>(Lcom/android/launcher2/CustomizePagedView;)V

    .line 391
    .local v0, resolveInfoComparator:Ljava/util/Comparator;,"Ljava/util/Comparator<Landroid/content/pm/ResolveInfo;>;"
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.CREATE_SHORTCUT"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 392
    .local v2, shortcutsIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mShortcutList:Ljava/util/List;

    .line 393
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mShortcutList:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 396
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 397
    .local v3, wallpapersIntent:Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperList:Ljava/util/List;

    .line 399
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperList:Ljava/util/List;

    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 401
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mShortcutList:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 402
    .local v1, retainShortcutList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mWallpaperList:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    sget-object v4, Lcom/android/launcher2/CustomizePagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    invoke-virtual {v4, v1}, Lcom/android/launcher2/PagedViewIconCache;->retainAllShortcuts(Ljava/util/List;)V

    .line 404
    sget-object v4, Lcom/android/launcher2/CustomizePagedView;->mPageViewIconCache:Lcom/android/launcher2/PagedViewIconCache;

    iget-object v5, p0, Lcom/android/launcher2/CustomizePagedView;->mWidgetList:Ljava/util/List;

    invoke-virtual {v4, v5}, Lcom/android/launcher2/PagedViewIconCache;->retainAllAppWidgets(Ljava/util/List;)V

    .line 410
    iget-object v4, p0, Lcom/android/launcher2/CustomizePagedView;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->isCustomizeState()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 411
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->invalidatePageData()V

    .line 412
    :cond_0
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
    .line 350
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->removeAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 351
    invoke-direct {p0, p1}, Lcom/android/launcher2/CustomizePagedView;->addAppsWithoutInvalidate(Ljava/util/ArrayList;)V

    .line 354
    invoke-virtual {p0}, Lcom/android/launcher2/CustomizePagedView;->invalidatePageData()V

    .line 355
    return-void
.end method
