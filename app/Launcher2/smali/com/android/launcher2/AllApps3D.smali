.class public Lcom/android/launcher2/AllApps3D;
.super Landroid/renderscript/RSSurfaceView;
.source "AllApps3D.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/launcher2/AllAppsView;
.implements Lcom/android/launcher2/DragSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/AllApps3D$RolloRS;,
        Lcom/android/launcher2/AllApps3D$AAMessage;,
        Lcom/android/launcher2/AllApps3D$Defines;
    }
.end annotation


# static fields
.field private static sAnimateNextZoom:Z

.field private static sNextZoom:F

.field private static sRS:Landroid/renderscript/RenderScriptGL;

.field private static sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

.field private static sZoomDirty:Z


# instance fields
.field private mAllAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mArrowNavigation:Z

.field private mColumnsPerPage:I

.field private mCurrentIconIndex:I

.field private mDefines:Lcom/android/launcher2/AllApps3D$Defines;

.field private mDownIconIndex:I

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mHaveSurface:Z

.field private mLastSelectedIcon:I

.field private mLastSelection:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private mLocks:I

.field private mMaxFlingVelocity:I

.field private mMessageProc:Lcom/android/launcher2/AllApps3D$AAMessage;

.field private mMotionDownRawX:I

.field private mMotionDownRawY:I

.field private mRestoreFocusIndex:I

.field private mRowsPerPage:I

.field private mShouldGainFocus:Z

.field private mSlop:I

.field private mStartedScrolling:Z

.field private mSurrendered:Z

.field private mTouchTracking:I

.field private mTouchXBorders:[I

.field private mTouchYBorders:[I

.field private mVelocity:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mZoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher2/AllApps3D;->sZoomDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x4

    const/4 v5, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 136
    invoke-direct {p0, p1, p2}, Landroid/renderscript/RSSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    iput v6, p0, Lcom/android/launcher2/AllApps3D;->mLocks:I

    .line 74
    new-instance v4, Lcom/android/launcher2/AllApps3D$Defines;

    invoke-direct {v4}, Lcom/android/launcher2/AllApps3D$Defines;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/AllApps3D;->mDefines:Lcom/android/launcher2/AllApps3D$Defines;

    .line 87
    iput-boolean v7, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    .line 105
    iput v5, p0, Lcom/android/launcher2/AllApps3D;->mDownIconIndex:I

    .line 106
    iput v5, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    .line 112
    iput-boolean v7, p0, Lcom/android/launcher2/AllApps3D;->mHaveSurface:Z

    .line 121
    iput v5, p0, Lcom/android/launcher2/AllApps3D;->mRestoreFocusIndex:I

    .line 137
    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllApps3D;->setFocusable(Z)V

    .line 138
    invoke-virtual {p0, v7}, Lcom/android/launcher2/AllApps3D;->setSoundEffectsEnabled(Z)V

    .line 139
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 140
    .local v0, config:Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AllApps3D;->mSlop:I

    .line 141
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/AllApps3D;->mMaxFlingVelocity:I

    .line 143
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AllApps3D;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    invoke-virtual {p0, p0}, Lcom/android/launcher2/AllApps3D;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 145
    invoke-virtual {p0, v6}, Lcom/android/launcher2/AllApps3D;->setZOrderOnTop(Z)V

    .line 146
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v4

    const/4 v5, -0x3

    invoke-interface {v4, v5}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 148
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    if-nez v4, :cond_1

    .line 149
    new-instance v3, Landroid/renderscript/RenderScriptGL$SurfaceConfig;

    invoke-direct {v3}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;-><init>()V

    .line 150
    .local v3, sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    const/16 v4, 0x10

    const/16 v5, 0x10

    invoke-virtual {v3, v4, v5}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->setDepth(II)V

    .line 151
    invoke-virtual {v3, v9, v9}, Landroid/renderscript/RenderScriptGL$SurfaceConfig;->setAlpha(II)V

    .line 152
    invoke-virtual {p0, v3}, Lcom/android/launcher2/AllApps3D;->createRenderScriptGL(Landroid/renderscript/RenderScriptGL$SurfaceConfig;)Landroid/renderscript/RenderScriptGL;

    move-result-object v4

    sput-object v4, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    .line 158
    .end local v3           #sc:Landroid/renderscript/RenderScriptGL$SurfaceConfig;
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 159
    .local v2, metrics:Landroid/util/DisplayMetrics;
    iget v4, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    if-ge v4, v5, :cond_2

    move v1, v6

    .line 160
    .local v1, isPortrait:Z
    :goto_1
    if-eqz v1, :cond_3

    move v4, v8

    :goto_2
    iput v4, p0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    .line 162
    if-eqz v1, :cond_4

    move v4, v8

    :goto_3
    iput v4, p0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    .line 165
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v4, :cond_0

    .line 166
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iput-object p0, v4, Lcom/android/launcher2/AllApps3D$RolloRS;->mAllApps:Lcom/android/launcher2/AllApps3D;

    .line 167
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$002(Lcom/android/launcher2/AllApps3D$RolloRS;Landroid/content/res/Resources;)Landroid/content/res/Resources;

    .line 168
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iput-boolean v6, v4, Lcom/android/launcher2/AllApps3D$RolloRS;->mInitialize:Z

    .line 170
    :cond_0
    return-void

    .line 155
    .end local v1           #isPortrait:Z
    .end local v2           #metrics:Landroid/util/DisplayMetrics;
    :cond_1
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/AllApps3D;->setRenderScriptGL(Landroid/renderscript/RenderScriptGL;)V

    goto :goto_0

    .restart local v2       #metrics:Landroid/util/DisplayMetrics;
    :cond_2
    move v1, v7

    .line 159
    goto :goto_1

    .line 160
    .restart local v1       #isPortrait:Z
    :cond_3
    const/4 v4, 0x6

    goto :goto_2

    .line 162
    :cond_4
    const/4 v4, 0x3

    goto :goto_3
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/android/launcher2/AllApps3D;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 175
    return-void
.end method

.method static synthetic access$1000()Lcom/android/launcher2/AllApps3D$RolloRS;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/AllApps3D;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mVelocity:F

    return v0
.end method

.method static synthetic access$1102(Lcom/android/launcher2/AllApps3D;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/launcher2/AllApps3D;->mVelocity:F

    return p1
.end method

.method static synthetic access$1202(Lcom/android/launcher2/AllApps3D;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/launcher2/AllApps3D;->mZoom:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher2/AllApps3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->showSurface()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher2/AllApps3D;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->hideSurface()V

    return-void
.end method

.method static synthetic access$1500()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/launcher2/AllApps3D;->sZoomDirty:Z

    return v0
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-boolean p0, Lcom/android/launcher2/AllApps3D;->sZoomDirty:Z

    return p0
.end method

.method static synthetic access$1600()Landroid/renderscript/RenderScriptGL;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    return-object v0
.end method

.method static synthetic access$1700()F
    .locals 1

    .prologue
    .line 45
    sget v0, Lcom/android/launcher2/AllApps3D;->sNextZoom:F

    return v0
.end method

.method static synthetic access$1800()Z
    .locals 1

    .prologue
    .line 45
    sget-boolean v0, Lcom/android/launcher2/AllApps3D;->sAnimateNextZoom:Z

    return v0
.end method

.method static synthetic access$1900(Lcom/android/launcher2/AllApps3D;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/launcher2/AllApps3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/launcher2/AllApps3D;->mRestoreFocusIndex:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/launcher2/AllApps3D;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    return v0
.end method

.method static synthetic access$2102(Lcom/android/launcher2/AllApps3D;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    iput p1, p0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    return p1
.end method

.method private static findAppByComponent(Ljava/util/ArrayList;Lcom/android/launcher2/ApplicationInfo;)I
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
    .line 893
    .local p0, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p1, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 894
    .local v1, component:Landroid/content/ComponentName;
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 895
    .local v0, N:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 896
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 897
    .local v3, x:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, v3, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    .line 901
    .end local v3           #x:Lcom/android/launcher2/ApplicationInfo;
    :goto_1
    return v4

    .line 895
    .restart local v3       #x:Lcom/android/launcher2/ApplicationInfo;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 901
    .end local v3           #x:Lcom/android/launcher2/ApplicationInfo;
    :cond_1
    const/4 v4, -0x1

    goto :goto_1
.end method

.method private gainFocus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 332
    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v0}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 334
    iput-boolean v3, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    .line 335
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    sget-object v1, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v1}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$300(Lcom/android/launcher2/AllApps3D$RolloRS;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    mul-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher2/AllApps3D$RolloRS;->selectIcon(II)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/ArrayList;)V
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
    .line 822
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 854
    :cond_0
    :goto_0
    return-void

    .line 826
    :cond_1
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v4, :cond_0

    .line 831
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 832
    .local v0, N:I
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v4, :cond_2

    .line 833
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->pause()V

    .line 834
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    sget-object v5, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-object v5, v5, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v5}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v5

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$600(Lcom/android/launcher2/AllApps3D$RolloRS;I)V

    .line 837
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 838
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 839
    .local v3, item:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    sget-object v5, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v4, v3, v5}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v2

    .line 841
    .local v2, index:I
    if-gez v2, :cond_3

    .line 842
    add-int/lit8 v4, v2, 0x1

    neg-int v2, v4

    .line 844
    :cond_3
    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 845
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v4, :cond_4

    .line 846
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v4, v2, v3}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$700(Lcom/android/launcher2/AllApps3D$RolloRS;ILcom/android/launcher2/ApplicationInfo;)V

    .line 837
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 850
    .end local v2           #index:I
    .end local v3           #item:Lcom/android/launcher2/ApplicationInfo;
    :cond_5
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v4, :cond_0

    .line 851
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$800(Lcom/android/launcher2/AllApps3D$RolloRS;)V

    .line 852
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->resume()V

    goto :goto_0
.end method

.method chooseTappedIcon(II)I
    .locals 13
    .parameter "x"
    .parameter "y"

    .prologue
    .line 512
    sget-object v8, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v8, :cond_3

    sget-object v8, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v8}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$300(Lcom/android/launcher2/AllApps3D$RolloRS;)F

    move-result v8

    move v5, v8

    .line 514
    .local v5, pos:F
    :goto_0
    move v4, p2

    .line 517
    .local v4, oldY:I
    int-to-float v8, p2

    float-to-int v9, v5

    int-to-float v9, v9

    sub-float v9, v5, v9

    iget-object v10, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    const/4 v11, 0x1

    aget v10, v10, v11

    iget-object v11, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    float-to-int p2, v8

    .line 519
    const/4 v0, -0x1

    .line 520
    .local v0, col:I
    const/4 v6, -0x1

    .line 521
    .local v6, row:I
    iget v1, p0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    .line 522
    .local v1, columnsCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_0

    .line 523
    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    aget v8, v8, v2

    if-lt p1, v8, :cond_4

    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    if-ge p1, v8, :cond_4

    .line 524
    move v0, v2

    .line 528
    :cond_0
    iget v7, p0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    .line 529
    .local v7, rowsCount:I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_1

    .line 530
    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    aget v8, v8, v2

    if-lt p2, v8, :cond_5

    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    add-int/lit8 v9, v2, 0x1

    aget v8, v8, v9

    if-ge p2, v8, :cond_5

    .line 531
    move v6, v2

    .line 536
    :cond_1
    if-ltz v6, :cond_2

    if-gez v0, :cond_6

    .line 537
    :cond_2
    const/4 v8, -0x1

    .line 545
    :goto_3
    return v8

    .line 512
    .end local v0           #col:I
    .end local v1           #columnsCount:I
    .end local v2           #i:I
    .end local v4           #oldY:I
    .end local v5           #pos:F
    .end local v6           #row:I
    .end local v7           #rowsCount:I
    :cond_3
    const/4 v8, 0x0

    move v5, v8

    goto :goto_0

    .line 522
    .restart local v0       #col:I
    .restart local v1       #columnsCount:I
    .restart local v2       #i:I
    .restart local v4       #oldY:I
    .restart local v5       #pos:F
    .restart local v6       #row:I
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 529
    .restart local v7       #rowsCount:I
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 540
    :cond_6
    float-to-int v8, v5

    mul-int/2addr v8, v1

    mul-int v9, v6, v1

    add-int/2addr v8, v9

    add-int v3, v8, v0

    .line 542
    .local v3, index:I
    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v3, v8, :cond_7

    .line 543
    const/4 v8, -0x1

    goto :goto_3

    :cond_7
    move v8, v3

    .line 545
    goto :goto_3
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 704
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_2

    .line 705
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v7

    .line 736
    :goto_0
    return v5

    .line 708
    :cond_0
    const/4 v4, 0x0

    .line 710
    .local v4, text:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v0, v5, 0x1

    .line 711
    .local v0, count:I
    const/4 v3, -0x1

    .line 712
    .local v3, pos:I
    iget v5, p0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    packed-switch v5, :pswitch_data_0

    .line 728
    :cond_1
    :goto_1
    if-eqz v4, :cond_2

    .line 729
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Landroid/view/accessibility/AccessibilityEvent;->setEnabled(Z)V

    .line 730
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 732
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 733
    invoke-virtual {p1, v3}, Landroid/view/accessibility/AccessibilityEvent;->setCurrentItemIndex(I)V

    .end local v0           #count:I
    .end local v3           #pos:I
    .end local v4           #text:Ljava/lang/String;
    :cond_2
    move v5, v7

    .line 736
    goto :goto_0

    .line 714
    .restart local v0       #count:I
    .restart local v3       #pos:I
    .restart local v4       #text:Ljava/lang/String;
    :pswitch_0
    sget-object v5, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-object v5, v5, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v5}, Lcom/android/launcher2/ScriptC_allapps;->get_gSelectedIconIndex()I

    move-result v1

    .line 715
    .local v1, index:I
    if-ltz v1, :cond_1

    .line 716
    iget-object v5, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/ApplicationInfo;

    .line 717
    .local v2, info:Lcom/android/launcher2/ApplicationInfo;
    iget-object v5, v2, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    .line 718
    iget-object v5, v2, Lcom/android/launcher2/ApplicationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 719
    move v3, v1

    goto :goto_1

    .line 724
    .end local v1           #index:I
    .end local v2           #info:Lcom/android/launcher2/ApplicationInfo;
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f0e0031

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 725
    move v3, v0

    goto :goto_1

    .line 712
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1444
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sRS="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sRollo="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1446
    const-string v0, "Launcher.AllApps3D"

    const-string v1, "mAllAppsList"

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1447
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTouchXBorders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTouchYBorders="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1449
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mArrowNavigation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1450
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mStartedScrolling="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AllApps3D;->mStartedScrolling:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastSelection="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLastSelectedIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mLastSelectedIcon:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1453
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVelocityTracker="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1454
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTouchTracking="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1455
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mShouldGainFocus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher2/AllApps3D;->mShouldGainFocus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sZoomDirty="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/AllApps3D;->sZoomDirty:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1457
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sAnimateNextZoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/launcher2/AllApps3D;->sAnimateNextZoom:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mZoom="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mZoom:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mScrollPos="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v2}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$300(Lcom/android/launcher2/AllApps3D$RolloRS;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mVelocity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mVelocity:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessageProc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D;->mMessageProc:Lcom/android/launcher2/AllApps3D$AAMessage;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v0, :cond_0

    .line 1463
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v0}, Lcom/android/launcher2/AllApps3D$RolloRS;->dumpState()V

    .line 1465
    :cond_0
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_1

    .line 1466
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0}, Landroid/renderscript/RenderScriptGL;->contextDump()V

    .line 1468
    :cond_1
    return-void
.end method

.method initTouchState(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    .line 482
    if-ge p1, p2, :cond_2

    const/4 v9, 0x1

    move v6, v9

    .line 484
    .local v6, isPortrait:Z
    :goto_0
    const/4 v9, 0x2

    new-array v7, v9, [I

    .line 485
    .local v7, viewPos:[I
    invoke-virtual {p0, v7}, Lcom/android/launcher2/AllApps3D;->getLocationOnScreen([I)V

    .line 487
    iget v9, p0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    .line 488
    iget v9, p0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    add-int/lit8 v9, v9, 0x1

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    .line 491
    const/16 v0, 0x91

    .line 492
    .local v0, cellHeight:I
    if-nez v6, :cond_0

    add-int/lit8 v0, v0, -0xc

    .line 493
    :cond_0
    int-to-float v9, p2

    if-eqz v6, :cond_3

    const/high16 v10, 0x3f00

    :goto_1
    mul-float/2addr v9, v10

    float-to-int v1, v9

    .line 494
    .local v1, centerY:I
    if-nez v6, :cond_1

    div-int/lit8 v9, v0, 0x2

    add-int/2addr v1, v9

    .line 495
    :cond_1
    iget v9, p0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    add-int/lit8 v9, v9, 0x1

    div-int/lit8 v9, v9, 0x2

    int-to-double v9, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    double-to-int v4, v9

    .line 496
    .local v4, half:I
    iget-object v9, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    array-length v9, v9

    add-int/lit8 v10, v4, 0x1

    sub-int v3, v9, v10

    .line 498
    .local v3, end:I
    neg-int v5, v4

    .local v5, i:I
    :goto_2
    if-gt v5, v3, :cond_4

    .line 499
    iget-object v9, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    add-int v10, v5, v4

    mul-int v11, v5, v0

    add-int/2addr v11, v1

    const/4 v12, 0x1

    aget v12, v7, v12

    sub-int/2addr v11, v12

    aput v11, v9, v10

    .line 498
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 482
    .end local v0           #cellHeight:I
    .end local v1           #centerY:I
    .end local v3           #end:I
    .end local v4           #half:I
    .end local v5           #i:I
    .end local v6           #isPortrait:Z
    .end local v7           #viewPos:[I
    :cond_2
    const/4 v9, 0x0

    move v6, v9

    goto :goto_0

    .line 493
    .restart local v0       #cellHeight:I
    .restart local v6       #isPortrait:Z
    .restart local v7       #viewPos:[I
    :cond_3
    const v10, 0x3ef0a3d7

    goto :goto_1

    .line 502
    .restart local v1       #centerY:I
    .restart local v3       #end:I
    .restart local v4       #half:I
    .restart local v5       #i:I
    :cond_4
    const/4 v8, 0x0

    .line 504
    .local v8, x:I
    const/16 v2, 0x78

    .line 505
    .local v2, columnWidth:I
    const/4 v5, 0x0

    :goto_3
    iget v9, p0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    add-int/lit8 v9, v9, 0x1

    if-ge v5, v9, :cond_5

    .line 506
    iget-object v9, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    const/4 v10, 0x0

    aget v10, v7, v10

    sub-int v10, v8, v10

    aput v10, v9, v5

    .line 507
    add-int/2addr v8, v2

    .line 505
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 509
    :cond_5
    return-void
.end method

.method public isAnimating()Z
    .locals 2

    .prologue
    .line 780
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mZoom:F

    const v1, 0x3f7fbe77

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 2

    .prologue
    .line 776
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mZoom:F

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

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 664
    iget v1, p0, Lcom/android/launcher2/AllApps3D;->mLocks:I

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 667
    :cond_1
    sget-object v1, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v1}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$400(Lcom/android/launcher2/AllApps3D$RolloRS;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mDownIconIndex:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    iget-object v2, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 669
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AllApps3D;->reallyPlaySoundEffect(I)V

    .line 670
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    .line 671
    .local v0, app:Lcom/android/launcher2/ApplicationInfo;
    iget-object v1, p0, Lcom/android/launcher2/AllApps3D;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 190
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 191
    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mSurrendered:Z

    if-nez v0, :cond_0

    .line 192
    const-string v0, "Launcher.AllApps3D"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->destroyRenderScriptGL()V

    .line 194
    sput-object v2, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    .line 195
    sput-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    .line 196
    invoke-super {p0}, Landroid/renderscript/RSSurfaceView;->onDetachedFromWindow()V

    .line 198
    :cond_0
    return-void
.end method

.method public onDragViewVisible()V
    .locals 0

    .prologue
    .line 746
    return-void
.end method

.method public onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 0
    .parameter "target"
    .parameter "dragInfo"
    .parameter "success"

    .prologue
    .line 750
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 305
    invoke-super {p0, p1, p2, p3}, Landroid/renderscript/RSSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 307
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mSurrendered:Z

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 311
    :cond_1
    if-eqz p1, :cond_3

    .line 312
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v0, :cond_2

    .line 313
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D;->gainFocus()V

    goto :goto_0

    .line 315
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mShouldGainFocus:Z

    goto :goto_0

    .line 318
    :cond_3
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v0, :cond_4

    .line 319
    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    if-eqz v0, :cond_0

    .line 321
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v0}, Lcom/android/launcher2/AllApps3D$RolloRS;->clearSelectedIcon()V

    .line 322
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 323
    iput-boolean v1, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    goto :goto_0

    .line 326
    :cond_4
    iput-boolean v1, p0, Lcom/android/launcher2/AllApps3D;->mShouldGainFocus:Z

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 20
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 342
    const/4 v9, 0x0

    .line 344
    .local v9, handled:Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v17

    if-nez v17, :cond_0

    .line 345
    const/16 v17, 0x0

    .line 478
    :goto_0
    return v17

    .line 347
    :cond_0
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v10

    .line 349
    .local v10, iconCount:I
    const/16 v17, 0x17

    move/from16 v0, p1

    move/from16 v1, v17

    if-eq v0, v1, :cond_1

    const/16 v17, 0x42

    move/from16 v0, p1

    move/from16 v1, v17

    if-ne v0, v1, :cond_2

    .line 350
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    move/from16 v17, v0

    if-eqz v17, :cond_2

    .line 351
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    .line 352
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/launcher2/AllApps3D;->reallyPlaySoundEffect(I)V

    .line 353
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/Launcher;->closeAllApps(Z)V

    .line 365
    :cond_2
    :goto_1
    if-lez v10, :cond_3

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AllApps3D;->getWidth()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/AllApps3D;->getHeight()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_5

    const/16 v17, 0x1

    move/from16 v11, v17

    .line 368
    .local v11, isPortrait:Z
    :goto_2
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    .line 370
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/ScriptC_allapps;->get_gSelectedIconIndex()I

    move-result v7

    .line 371
    .local v7, currentSelection:I
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$300(Lcom/android/launcher2/AllApps3D$RolloRS;)F

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 374
    .local v8, currentTopRow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    rem-int v4, v7, v17

    .line 377
    .local v4, currentPageCol:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    mul-int v17, v17, v8

    sub-int v17, v7, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    move/from16 v18, v0

    div-int v5, v17, v18

    .line 380
    .local v5, currentPageRow:I
    move v13, v7

    .line 382
    .local v13, newSelection:I
    packed-switch p1, :pswitch_data_0

    .line 474
    :goto_3
    if-eq v13, v7, :cond_3

    .line 475
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move v1, v13

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllApps3D$RolloRS;->selectIcon(II)V

    .end local v4           #currentPageCol:I
    .end local v5           #currentPageRow:I
    .end local v7           #currentSelection:I
    .end local v8           #currentTopRow:I
    .end local v11           #isPortrait:Z
    .end local v13           #newSelection:I
    :cond_3
    move/from16 v17, v9

    .line 478
    goto/16 :goto_0

    .line 355
    :cond_4
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/ScriptC_allapps;->get_gSelectedIconIndex()I

    move-result v16

    .line 356
    .local v16, whichApp:I
    if-ltz v16, :cond_2

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 358
    .local v3, app:Lcom/android/launcher2/ApplicationInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/AllApps3D;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v17, v0

    move-object v0, v3

    iget-object v0, v0, Lcom/android/launcher2/ApplicationInfo;->intent:Landroid/content/Intent;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Launcher;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 359
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 366
    .end local v3           #app:Lcom/android/launcher2/ApplicationInfo;
    .end local v16           #whichApp:I
    :cond_5
    const/16 v17, 0x0

    move/from16 v11, v17

    goto/16 :goto_2

    .line 384
    .restart local v4       #currentPageCol:I
    .restart local v5       #currentPageRow:I
    .restart local v7       #currentSelection:I
    .restart local v8       #currentTopRow:I
    .restart local v11       #isPortrait:Z
    .restart local v13       #newSelection:I
    :pswitch_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 385
    if-eqz v11, :cond_9

    .line 386
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 387
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    rem-int v12, v10, v17

    .line 388
    .local v12, lastRowCount:I
    if-nez v12, :cond_6

    .line 389
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move v12, v0

    .line 391
    :cond_6
    sub-int v17, v10, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    add-int v13, v17, v18

    .line 392
    if-lt v13, v10, :cond_7

    .line 393
    const/16 v17, 0x1

    sub-int v13, v10, v17

    .line 395
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    div-int v17, v13, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    move/from16 v18, v0

    const/16 v19, 0x1

    sub-int v18, v18, v19

    sub-int v15, v17, v18

    .line 396
    .local v15, target:I
    if-gez v15, :cond_8

    .line 397
    const/4 v15, 0x0

    .line 399
    :cond_8
    if-eq v8, v15, :cond_9

    .line 400
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    move v0, v15

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->moveTo(F)V

    .line 416
    .end local v12           #lastRowCount:I
    .end local v15           #target:I
    :cond_9
    :goto_4
    const/4 v9, 0x1

    .line 417
    goto/16 :goto_3

    .line 404
    :cond_a
    if-lez v5, :cond_b

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    sub-int v13, v7, v17

    .line 406
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    div-int v17, v13, v17

    move v0, v8

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 407
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v18, v0

    div-int v18, v13, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->moveTo(F)V

    goto :goto_4

    .line 409
    :cond_b
    if-lez v8, :cond_c

    .line 410
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    sub-int v13, v7, v17

    .line 411
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v18, v0

    div-int v18, v13, v18

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->moveTo(F)V

    goto :goto_4

    .line 412
    :cond_c
    if-eqz v5, :cond_9

    .line 413
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    move/from16 v17, v0

    mul-int v13, v8, v17

    goto :goto_4

    .line 420
    :pswitch_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    div-int v17, v10, v17

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v18, v0

    rem-int v18, v10, v18

    if-nez v18, :cond_f

    const/16 v18, 0x0

    :goto_5
    add-int v14, v17, v18

    .line 422
    .local v14, rowCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    div-int v6, v7, v17

    .line 423
    .local v6, currentRow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_e

    .line 424
    const/16 v17, 0x1

    sub-int v17, v14, v17

    move v0, v6

    move/from16 v1, v17

    if-ge v0, v1, :cond_11

    .line 425
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 426
    if-gez v7, :cond_10

    .line 427
    const/4 v13, 0x0

    .line 431
    :goto_6
    if-lt v13, v10, :cond_d

    .line 435
    const/16 v17, 0x1

    sub-int v13, v10, v17

    .line 437
    :cond_d
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move v0, v5

    move/from16 v1, v17

    if-lt v0, v1, :cond_e

    .line 438
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v18, v0

    div-int v18, v13, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->moveTo(F)V

    .line 445
    :cond_e
    :goto_7
    const/4 v9, 0x1

    .line 446
    goto/16 :goto_3

    .line 420
    .end local v6           #currentRow:I
    .end local v14           #rowCount:I
    :cond_f
    const/16 v18, 0x1

    goto :goto_5

    .line 429
    .restart local v6       #currentRow:I
    .restart local v14       #rowCount:I
    :cond_10
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    add-int v13, v7, v17

    goto :goto_6

    .line 440
    :cond_11
    if-eqz v11, :cond_e

    .line 441
    const/4 v13, -0x1

    .line 442
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    goto :goto_7

    .line 449
    .end local v6           #currentRow:I
    .end local v14           #rowCount:I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_13

    .line 450
    if-lez v4, :cond_12

    .line 451
    const/16 v17, 0x1

    sub-int v13, v7, v17

    .line 458
    :cond_12
    :goto_8
    const/4 v9, 0x1

    .line 459
    goto/16 :goto_3

    .line 453
    :cond_13
    if-nez v11, :cond_12

    .line 454
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$300(Lcom/android/launcher2/AllApps3D$RolloRS;)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v18, v0

    mul-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    move/from16 v18, v0

    div-int/lit8 v18, v18, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v19, v0

    mul-int v18, v18, v19

    add-int v17, v17, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v18, v0

    add-int v17, v17, v18

    const/16 v18, 0x1

    sub-int v13, v17, v18

    .line 456
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    goto :goto_8

    .line 461
    :pswitch_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    move/from16 v17, v0

    const/16 v18, 0x2

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_15

    .line 462
    if-nez v11, :cond_16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move v0, v4

    move/from16 v1, v17

    if-eq v0, v1, :cond_14

    const/16 v17, 0x1

    sub-int v17, v10, v17

    move v0, v7

    move/from16 v1, v17

    if-ne v0, v1, :cond_16

    .line 464
    :cond_14
    const/4 v13, -0x1

    .line 465
    sget-object v17, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 471
    :cond_15
    :goto_9
    const/4 v9, 0x1

    goto/16 :goto_3

    .line 466
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    move/from16 v17, v0

    const/16 v18, 0x1

    sub-int v17, v17, v18

    move v0, v4

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    const/16 v17, 0x1

    sub-int v17, v10, v17

    move v0, v7

    move/from16 v1, v17

    if-ge v0, v1, :cond_15

    .line 468
    add-int/lit8 v13, v7, 0x1

    goto :goto_9

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 8
    .parameter "v"

    .prologue
    const/4 v7, 0x1

    .line 681
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/AllApps3D;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isWorkspaceLocked()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mLocks:I

    if-eqz v0, :cond_1

    :cond_0
    move v0, v7

    .line 699
    :goto_0
    return v0

    .line 684
    :cond_1
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v0}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$400(Lcom/android/launcher2/AllApps3D$RolloRS;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    iget v4, p0, Lcom/android/launcher2/AllApps3D;->mDownIconIndex:I

    if-ne v0, v4, :cond_2

    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 686
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/ApplicationInfo;

    .line 688
    .local v5, app:Lcom/android/launcher2/ApplicationInfo;
    iget-object v1, v5, Lcom/android/launcher2/ApplicationInfo;->iconBitmap:Landroid/graphics/Bitmap;

    .line 691
    .local v1, bmp:Landroid/graphics/Bitmap;
    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mMotionDownRawX:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int v2, v0, v4

    .line 692
    .local v2, screenX:I
    iget v0, p0, Lcom/android/launcher2/AllApps3D;->mMotionDownRawY:I

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sub-int v3, v0, v4

    .line 694
    .local v3, screenY:I
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D;->mDragController:Lcom/android/launcher2/DragController;

    sget v6, Lcom/android/launcher2/DragController;->DRAG_ACTION_COPY:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    .line 697
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, v7}, Lcom/android/launcher2/Launcher;->closeAllApps(Z)V

    .end local v1           #bmp:Landroid/graphics/Bitmap;
    .end local v2           #screenX:I
    .end local v3           #screenY:I
    .end local v5           #app:Lcom/android/launcher2/ApplicationInfo;
    :cond_2
    move v0, v7

    .line 699
    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12
    .parameter "ev"

    .prologue
    const/4 v8, -0x1

    const/4 v9, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 552
    iput-boolean v11, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    .line 554
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    move v6, v10

    .line 660
    :goto_0
    return v6

    .line 558
    :cond_0
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mLocks:I

    if-eqz v6, :cond_1

    move v6, v10

    .line 559
    goto :goto_0

    .line 562
    :cond_1
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 564
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v4, v6

    .line 565
    .local v4, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v5, v6

    .line 567
    .local v5, y:I
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getHeight()I

    move-result v7

    if-ge v6, v7, :cond_3

    move v1, v10

    .line 568
    .local v1, isPortrait:Z
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 569
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    :cond_2
    :goto_2
    move v6, v10

    .line 660
    goto :goto_0

    .end local v0           #action:I
    .end local v1           #isPortrait:Z
    :cond_3
    move v1, v11

    .line 567
    goto :goto_1

    .line 571
    .restart local v0       #action:I
    .restart local v1       #isPortrait:Z
    :pswitch_0
    if-eqz v1, :cond_4

    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    array-length v7, v7

    sub-int/2addr v7, v10

    aget v6, v6, v7

    if-gt v5, v6, :cond_5

    :cond_4
    if-nez v1, :cond_6

    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    array-length v7, v7

    sub-int/2addr v7, v10

    aget v6, v6, v7

    if-le v4, v6, :cond_6

    .line 573
    :cond_5
    iput v9, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    .line 574
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v6, v9}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 575
    iput v8, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    goto :goto_2

    .line 577
    :cond_6
    iput v10, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    .line 579
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AllApps3D;->mMotionDownRawX:I

    .line 580
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Lcom/android/launcher2/AllApps3D;->mMotionDownRawY:I

    .line 582
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v6}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$400(Lcom/android/launcher2/AllApps3D$RolloRS;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 583
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v6}, Lcom/android/launcher2/AllApps3D$RolloRS;->clearSelectedIcon()V

    .line 592
    :cond_7
    :goto_3
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllApps3D$RolloRS;->move(F)V

    .line 593
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 594
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 595
    iput-boolean v11, p0, Lcom/android/launcher2/AllApps3D;->mStartedScrolling:Z

    goto :goto_2

    .line 585
    :cond_8
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v6, v4, v5, v9}, Lcom/android/launcher2/AllApps3D$RolloRS;->selectIcon(III)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    iput v6, p0, Lcom/android/launcher2/AllApps3D;->mDownIconIndex:I

    .line 587
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mDownIconIndex:I

    if-gez v6, :cond_7

    .line 589
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->cancelLongPress()V

    goto :goto_3

    .line 600
    :pswitch_1
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    if-ne v6, v9, :cond_c

    .line 601
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v1, :cond_9

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    array-length v8, v8

    sub-int/2addr v8, v10

    aget v7, v7, v8

    if-gt v5, v7, :cond_a

    :cond_9
    if-nez v1, :cond_b

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    array-length v8, v8

    sub-int/2addr v8, v10

    aget v7, v7, v8

    if-le v4, v7, :cond_b

    :cond_a
    move v7, v9

    :goto_4
    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    goto/16 :goto_2

    :cond_b
    move v7, v11

    goto :goto_4

    .line 605
    :cond_c
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    if-ne v6, v10, :cond_2

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v6

    float-to-int v2, v6

    .line 608
    .local v2, rawY:I
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mMotionDownRawY:I

    sub-int v6, v2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 610
    .local v3, slop:I
    iget-boolean v6, p0, Lcom/android/launcher2/AllApps3D;->mStartedScrolling:Z

    if-nez v6, :cond_d

    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mSlop:I

    if-ge v3, v6, :cond_d

    .line 613
    invoke-virtual {p0, v4, v5}, Lcom/android/launcher2/AllApps3D;->chooseTappedIcon(II)I

    move-result v6

    iput v6, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    .line 614
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mDownIconIndex:I

    iget v7, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    if-eq v6, v7, :cond_2

    .line 617
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->cancelLongPress()V

    .line 618
    iput v8, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    goto/16 :goto_2

    .line 621
    :cond_d
    iget-boolean v6, p0, Lcom/android/launcher2/AllApps3D;->mStartedScrolling:Z

    if-nez v6, :cond_e

    .line 622
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->cancelLongPress()V

    .line 623
    iput v8, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    .line 625
    :cond_e
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    invoke-virtual {v6, v7}, Lcom/android/launcher2/AllApps3D$RolloRS;->move(F)V

    .line 627
    iput-boolean v10, p0, Lcom/android/launcher2/AllApps3D;->mStartedScrolling:Z

    .line 628
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v6}, Lcom/android/launcher2/AllApps3D$RolloRS;->clearSelectedIcon()V

    .line 629
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_2

    .line 635
    .end local v2           #rawY:I
    .end local v3           #slop:I
    :pswitch_2
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    if-ne v6, v9, :cond_14

    .line 636
    if-ne v0, v10, :cond_12

    .line 637
    if-eqz v1, :cond_f

    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D;->mTouchYBorders:[I

    array-length v7, v7

    sub-int/2addr v7, v10

    aget v6, v6, v7

    if-gt v5, v6, :cond_10

    :cond_f
    if-nez v1, :cond_11

    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    iget-object v7, p0, Lcom/android/launcher2/AllApps3D;->mTouchXBorders:[I

    array-length v7, v7

    sub-int/2addr v7, v10

    aget v6, v6, v7

    if-le v4, v6, :cond_11

    .line 639
    :cond_10
    invoke-virtual {p0, v11}, Lcom/android/launcher2/AllApps3D;->reallyPlaySoundEffect(I)V

    .line 640
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v10}, Lcom/android/launcher2/Launcher;->closeAllApps(Z)V

    .line 642
    :cond_11
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v6, v11}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 644
    :cond_12
    iput v8, p0, Lcom/android/launcher2/AllApps3D;->mCurrentIconIndex:I

    .line 656
    :cond_13
    :goto_5
    iput v11, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    goto/16 :goto_2

    .line 645
    :cond_14
    iget v6, p0, Lcom/android/launcher2/AllApps3D;->mTouchTracking:I

    if-ne v6, v10, :cond_13

    .line 646
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v7, 0x3e8

    iget v8, p0, Lcom/android/launcher2/AllApps3D;->mMaxFlingVelocity:I

    int-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 647
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v6}, Lcom/android/launcher2/AllApps3D$RolloRS;->clearSelectedIcon()V

    .line 648
    sget-object v6, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v7

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getHeight()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v8}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getHeight()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher2/AllApps3D$RolloRS;->fling(FF)V

    .line 651
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v6, :cond_13

    .line 652
    iget-object v6, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v6}, Landroid/view/VelocityTracker;->recycle()V

    .line 653
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/launcher2/AllApps3D;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_5

    .line 569
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 5
    .parameter "hasWindowFocus"

    .prologue
    const/4 v4, 0x1

    .line 270
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->onWindowFocusChanged(Z)V

    .line 272
    iget-boolean v2, p0, Lcom/android/launcher2/AllApps3D;->mSurrendered:Z

    if-eqz v2, :cond_1

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 274
    :cond_1
    iget-boolean v2, p0, Lcom/android/launcher2/AllApps3D;->mArrowNavigation:Z

    if-eqz v2, :cond_0

    .line 275
    if-nez p1, :cond_2

    .line 277
    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-object v2, v2, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v2}, Lcom/android/launcher2/ScriptC_allapps;->get_gSelectedIconIndex()I

    move-result v2

    iput v2, p0, Lcom/android/launcher2/AllApps3D;->mLastSelectedIcon:I

    .line 278
    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    .line 279
    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v2}, Lcom/android/launcher2/AllApps3D$RolloRS;->clearSelectedIcon()V

    goto :goto_0

    .line 281
    :cond_2
    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-object v2, v2, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v2}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v2

    if-lez v2, :cond_0

    .line 282
    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    if-ne v2, v4, :cond_5

    .line 283
    iget v1, p0, Lcom/android/launcher2/AllApps3D;->mLastSelectedIcon:I

    .line 284
    .local v1, selection:I
    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v2}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$300(Lcom/android/launcher2/AllApps3D$RolloRS;)F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, p0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    mul-int v0, v2, v3

    .line 285
    .local v0, firstIcon:I
    if-ltz v1, :cond_3

    if-lt v1, v0, :cond_3

    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-object v2, v2, Lcom/android/launcher2/AllApps3D$RolloRS;->mScript:Lcom/android/launcher2/ScriptC_allapps;

    invoke-virtual {v2}, Lcom/android/launcher2/ScriptC_allapps;->get_gIconCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mColumnsPerPage:I

    iget v3, p0, Lcom/android/launcher2/AllApps3D;->mRowsPerPage:I

    mul-int/2addr v2, v3

    add-int/2addr v2, v0

    if-lt v1, v2, :cond_4

    .line 290
    :cond_3
    move v1, v0

    .line 294
    :cond_4
    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v2, v1, v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->selectIcon(II)V

    goto :goto_0

    .line 295
    .end local v0           #firstIcon:I
    .end local v1           #selection:I
    :cond_5
    iget v2, p0, Lcom/android/launcher2/AllApps3D;->mLastSelection:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 296
    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v2, v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->setHomeSelected(I)V

    goto :goto_0
.end method

.method public reallyPlaySoundEffect(I)V
    .locals 2
    .parameter "sound"

    .prologue
    .line 205
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->isSoundEffectsEnabled()Z

    move-result v0

    .line 206
    .local v0, old:Z
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/AllApps3D;->setSoundEffectsEnabled(Z)V

    .line 207
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AllApps3D;->playSoundEffect(I)V

    .line 208
    invoke-virtual {p0, v0}, Lcom/android/launcher2/AllApps3D;->setSoundEffectsEnabled(Z)V

    .line 209
    return-void
.end method

.method public removeApps(Ljava/util/ArrayList;)V
    .locals 7
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
    .line 857
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    if-nez v4, :cond_1

    .line 884
    :cond_0
    :goto_0
    return-void

    .line 862
    :cond_1
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v4, :cond_2

    .line 863
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->pause()V

    .line 865
    :cond_2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 866
    .local v0, N:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_5

    .line 867
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher2/ApplicationInfo;

    .line 868
    .local v3, item:Lcom/android/launcher2/ApplicationInfo;
    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v4, v3}, Lcom/android/launcher2/AllApps3D;->findAppByComponent(Ljava/util/ArrayList;Lcom/android/launcher2/ApplicationInfo;)I

    move-result v2

    .line 869
    .local v2, index:I
    if-ltz v2, :cond_4

    .line 870
    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 871
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v4, :cond_3

    .line 872
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v4, v2}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$900(Lcom/android/launcher2/AllApps3D$RolloRS;I)V

    .line 866
    :cond_3
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 875
    :cond_4
    const-string v4, "Launcher.AllApps3D"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "couldn\'t find a match for item \""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 880
    .end local v2           #index:I
    .end local v3           #item:Lcom/android/launcher2/ApplicationInfo;
    :cond_5
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v4, :cond_0

    .line 881
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$800(Lcom/android/launcher2/AllApps3D$RolloRS;)V

    .line 882
    sget-object v4, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v4}, Lcom/android/launcher2/AllApps3D$RolloRS;->resume()V

    goto :goto_0
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 7
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
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    const/4 v6, -0x1

    .line 784
    sget-object v3, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    if-nez v3, :cond_0

    .line 819
    :goto_0
    return-void

    .line 789
    :cond_0
    if-eqz p1, :cond_1

    .line 790
    sget-object v3, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    invoke-static {p1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 793
    :cond_1
    const/4 v2, 0x0

    .line 794
    .local v2, reload:Z
    iget-object v3, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    if-nez v3, :cond_5

    .line 795
    const/4 v2, 0x1

    .line 808
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    .line 809
    sget-object v3, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    .line 810
    sget-object v3, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v3, p1}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$100(Lcom/android/launcher2/AllApps3D$RolloRS;Ljava/util/ArrayList;)V

    .line 813
    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->hasFocus()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcom/android/launcher2/AllApps3D;->mRestoreFocusIndex:I

    if-eq v3, v6, :cond_4

    .line 814
    sget-object v3, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget v4, p0, Lcom/android/launcher2/AllApps3D;->mRestoreFocusIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher2/AllApps3D$RolloRS;->selectIcon(II)V

    .line 815
    iput v6, p0, Lcom/android/launcher2/AllApps3D;->mRestoreFocusIndex:I

    .line 818
    :cond_4
    iget v3, p0, Lcom/android/launcher2/AllApps3D;->mLocks:I

    and-int/lit8 v3, v3, -0x2

    iput v3, p0, Lcom/android/launcher2/AllApps3D;->mLocks:I

    goto :goto_0

    .line 796
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-eq v3, v4, :cond_6

    .line 797
    const/4 v2, 0x1

    goto :goto_1

    .line 799
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 800
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v0, :cond_2

    .line 801
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_7

    .line 802
    const/4 v2, 0x1

    .line 803
    goto :goto_1

    .line 800
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragger"

    .prologue
    .line 741
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D;->mDragController:Lcom/android/launcher2/DragController;

    .line 742
    return-void
.end method

.method public setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 0
    .parameter "launcher"

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/launcher2/AllApps3D;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 213
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v2, 0x0

    .line 232
    invoke-super {p0, p1, p2, p3, p4}, Landroid/renderscript/RSSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 234
    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mSurrendered:Z

    if-eqz v0, :cond_1

    .line 266
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mHaveSurface:Z

    .line 238
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-nez v0, :cond_4

    .line 239
    new-instance v0, Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AllApps3D$RolloRS;-><init>(Lcom/android/launcher2/AllApps3D;)V

    sput-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    .line 240
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1, p3, p4}, Lcom/android/launcher2/AllApps3D$RolloRS;->init(Landroid/content/res/Resources;II)V

    .line 241
    iget-object v0, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_2

    .line 242
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D;->mAllAppsList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$100(Lcom/android/launcher2/AllApps3D$RolloRS;Ljava/util/ArrayList;)V

    .line 244
    :cond_2
    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mShouldGainFocus:Z

    if-eqz v0, :cond_3

    .line 245
    invoke-direct {p0}, Lcom/android/launcher2/AllApps3D;->gainFocus()V

    .line 246
    iput-boolean v2, p0, Lcom/android/launcher2/AllApps3D;->mShouldGainFocus:Z

    .line 253
    :cond_3
    :goto_1
    invoke-virtual {p0, p3, p4}, Lcom/android/launcher2/AllApps3D;->initTouchState(II)V

    .line 255
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v0}, Lcom/android/launcher2/AllApps3D$RolloRS;->dirtyCheck()V

    .line 256
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-virtual {v0, p3, p4}, Lcom/android/launcher2/AllApps3D$RolloRS;->resize(II)V

    .line 258
    const-string v0, "Launcher.AllApps3D"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sc "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 260
    new-instance v0, Lcom/android/launcher2/AllApps3D$AAMessage;

    invoke-direct {v0, p0}, Lcom/android/launcher2/AllApps3D$AAMessage;-><init>(Lcom/android/launcher2/AllApps3D;)V

    iput-object v0, p0, Lcom/android/launcher2/AllApps3D;->mMessageProc:Lcom/android/launcher2/AllApps3D$AAMessage;

    .line 261
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    iget-object v1, p0, Lcom/android/launcher2/AllApps3D;->mMessageProc:Lcom/android/launcher2/AllApps3D$AAMessage;

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    goto :goto_0

    .line 248
    :cond_4
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iget-boolean v0, v0, Lcom/android/launcher2/AllApps3D$RolloRS;->mInitialize:Z

    if-eqz v0, :cond_3

    .line 249
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v0}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$200(Lcom/android/launcher2/AllApps3D$RolloRS;)V

    .line 250
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    iput-boolean v2, v0, Lcom/android/launcher2/AllApps3D$RolloRS;->mInitialize:Z

    goto :goto_1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 217
    invoke-super {p0, p1}, Landroid/renderscript/RSSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 219
    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mSurrendered:Z

    if-nez v0, :cond_0

    .line 220
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 224
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/AllApps3D;->sZoomDirty:Z

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mHaveSurface:Z

    .line 226
    return-void
.end method

.method public surrender()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 178
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2, v1, v1}, Landroid/renderscript/RenderScriptGL;->setSurface(Landroid/view/SurfaceHolder;II)V

    .line 180
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRS:Landroid/renderscript/RenderScriptGL;

    invoke-virtual {v0, v2}, Landroid/renderscript/RenderScriptGL;->setMessageHandler(Landroid/renderscript/RenderScript$RSMessageHandler;)V

    .line 182
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mSurrendered:Z

    .line 183
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
    .line 888
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AllApps3D;->removeApps(Ljava/util/ArrayList;)V

    .line 889
    invoke-virtual {p0, p1}, Lcom/android/launcher2/AllApps3D;->addApps(Ljava/util/ArrayList;)V

    .line 890
    return-void
.end method

.method public zoom(FZ)V
    .locals 1
    .parameter "zoom"
    .parameter "animate"

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/android/launcher2/AllApps3D;->cancelLongPress()V

    .line 759
    sput p1, Lcom/android/launcher2/AllApps3D;->sNextZoom:F

    .line 760
    sput-boolean p2, Lcom/android/launcher2/AllApps3D;->sAnimateNextZoom:Z

    .line 763
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/AllApps3D;->mHaveSurface:Z

    if-nez v0, :cond_1

    .line 764
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher2/AllApps3D;->sZoomDirty:Z

    .line 765
    iput p1, p0, Lcom/android/launcher2/AllApps3D;->mZoom:F

    .line 769
    :goto_0
    return-void

    .line 767
    :cond_1
    sget-object v0, Lcom/android/launcher2/AllApps3D;->sRollo:Lcom/android/launcher2/AllApps3D$RolloRS;

    invoke-static {v0, p1, p2}, Lcom/android/launcher2/AllApps3D$RolloRS;->access$500(Lcom/android/launcher2/AllApps3D$RolloRS;FZ)V

    goto :goto_0
.end method
