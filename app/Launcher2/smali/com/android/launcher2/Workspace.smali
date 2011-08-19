.class public Lcom/android/launcher2/Workspace;
.super Lcom/android/launcher2/SmoothPagedView;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher2/DragScroller;
.implements Lcom/android/launcher2/DragSource;
.implements Lcom/android/launcher2/DropTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/Workspace$14;,
        Lcom/android/launcher2/Workspace$ZoomInInterpolator;,
        Lcom/android/launcher2/Workspace$ZoomOutInterpolator;,
        Lcom/android/launcher2/Workspace$InverseZInterpolator;,
        Lcom/android/launcher2/Workspace$ZInterpolator;,
        Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;,
        Lcom/android/launcher2/Workspace$ShrinkState;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/AnimatorSet;

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

.field private mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

.field private final mCamera:Landroid/graphics/Camera;

.field private mChildrenOutlineAlpha:F

.field private mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

.field private mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

.field private mCustomizationDrawer:Landroid/view/View;

.field private mCustomizationDrawerContent:Landroid/view/View;

.field private mCustomizationDrawerPos:[I

.field private mCustomizationDrawerTransformedPos:[F

.field private mCustomizeTrayBackground:Landroid/graphics/drawable/Drawable;

.field private mDefaultPage:I

.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mDragOutline:Landroid/graphics/Bitmap;

.field private mDragTargetLayout:Lcom/android/launcher2/CellLayout;

.field mDrawBackground:Z

.field private mDrawCustomizeTrayBackground:Z

.field private mDropAnim:Landroid/animation/ValueAnimator;

.field private mDropView:Landroid/view/View;

.field private mDropViewPos:[I

.field private final mExternalDragOutlinePaint:Landroid/graphics/Paint;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field private mInScrollArea:Z

.field private mIsDragInProcess:Z

.field private mIsInUnshrinkAnimation:Z

.field private mIsSmall:Z

.field private mLastDragOriginX:I

.field private mLastDragOriginY:I

.field private mLastDragView:Lcom/android/launcher2/DragView;

.field private mLastDragXOffset:I

.field private mLastDragYOffset:I

.field private mLauncher:Lcom/android/launcher2/Launcher;

.field private final mMatrix:Landroid/graphics/Matrix;

.field private mNextIndicator:Landroid/graphics/drawable/Drawable;

.field private final mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

.field private mOverScrollMaxBackgroundAlpha:F

.field private mOverScrollPageIndex:I

.field private mPendingScrollDirection:I

.field private mPreviousIndicator:Landroid/graphics/drawable/Drawable;

.field private mQuintEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mShrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

.field private mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

.field mSyncWallpaperOffsetWithScroll:Z

.field private mTargetCell:[I

.field private mTempCell:[I

.field private mTempCellLayoutCenterCoordinates:[F

.field private mTempDragBottomRightCoordinates:[F

.field private mTempDragCoordinates:[F

.field private mTempEstimate:[I

.field private final mTempFloat2:[F

.field private mTempInverseMatrix:Landroid/graphics/Matrix;

.field private mTempOriginXY:[F

.field private final mTempRect:Landroid/graphics/Rect;

.field private mTempTouchCoordinates:[F

.field private final mTempXY:[I

.field private mUnshrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field mUpdateWallpaperOffsetImmediately:Z

.field private mWaitingToShrink:Z

.field private mWaitingToShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

.field mWallpaperHeight:I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

.field mWallpaperWidth:I

.field private mWasSpringLoadedOnDragExit:Z

.field private mWindowToken:Landroid/os/IBinder;

.field private mXDown:F

.field private mYDown:F

.field private final mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

.field private final mZoomOutInterpolator:Lcom/android/launcher2/Workspace$ZoomOutInterpolator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 234
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 235
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 245
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 106
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 113
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 115
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 116
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 117
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 121
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerPos:[I

    .line 122
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerTransformedPos:[F

    .line 129
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsDragInProcess:Z

    .line 139
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 144
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 152
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 153
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    .line 154
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempOriginXY:[F

    .line 155
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 156
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempTouchCoordinates:[F

    .line 157
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 158
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 159
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 171
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    .line 172
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    .line 177
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mWasSpringLoadedOnDragExit:Z

    .line 178
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mWaitingToShrink:Z

    .line 183
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 186
    const/4 v8, -0x1

    iput v8, p0, Lcom/android/launcher2/Workspace;->mPendingScrollDirection:I

    .line 188
    new-instance v8, Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-direct {v8}, Lcom/android/launcher2/HolographicOutlineHelper;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    .line 189
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 190
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 191
    const/4 v8, 0x2

    new-array v8, v8, [I

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    .line 193
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 194
    new-instance v8, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v9, 0x4020

    invoke-direct {v8, v9}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mQuintEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 195
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDropView:Landroid/view/View;

    .line 196
    const/4 v8, 0x2

    new-array v8, v8, [I

    fill-array-data v8, :array_0

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mDropViewPos:[I

    .line 199
    new-instance v8, Landroid/graphics/Paint;

    invoke-direct {v8}, Landroid/graphics/Paint;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    .line 202
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    .line 203
    new-instance v8, Landroid/graphics/Camera;

    invoke-direct {v8}, Landroid/graphics/Camera;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    .line 204
    const/4 v8, 0x2

    new-array v8, v8, [F

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    .line 210
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 211
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mSyncWallpaperOffsetWithScroll:Z

    .line 1725
    new-instance v8, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    invoke-direct {v8}, Lcom/android/launcher2/Workspace$ZoomOutInterpolator;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZoomOutInterpolator:Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    .line 1726
    new-instance v8, Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    invoke-direct {v8}, Lcom/android/launcher2/Workspace$ZoomInInterpolator;-><init>()V

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    .line 246
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mContentIsRefreshable:Z

    .line 248
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v8

    if-nez v8, :cond_0

    .line 249
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher2/Workspace;->mFadeInAdjacentScreens:Z

    .line 252
    :cond_0
    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v8

    iput-object v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 254
    const/4 v3, 0x4

    .line 255
    .local v3, cellCountX:I
    const/4 v4, 0x4

    .line 257
    .local v4, cellCountY:I
    sget-object v8, Lcom/android/launcher/R$styleable;->Workspace:[I

    const/4 v9, 0x0

    invoke-virtual {p1, p2, v8, p3, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 265
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 267
    .local v5, res:Landroid/content/res/Resources;
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v9, 0x0

    const v10, 0x10102eb

    aput v10, v8, v9

    invoke-virtual {p1, v8}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 269
    .local v2, actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    .line 270
    .local v1, actionBarHeight:F
    const v8, 0x7f0d0003

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 271
    .local v7, systemBarHeight:F
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    int-to-float v6, v8

    .line 273
    .local v6, smallestScreenDim:F
    const/4 v3, 0x1

    .line 274
    :goto_0
    add-int/lit8 v8, v3, 0x1

    invoke-static {v5, v8}, Lcom/android/launcher2/CellLayout;->widthInPortrait(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    cmpg-float v8, v8, v6

    if-gtz v8, :cond_1

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 278
    :cond_1
    const/4 v4, 0x1

    .line 280
    :goto_1
    add-int/lit8 v8, v4, 0x1

    invoke-static {v5, v8}, Lcom/android/launcher2/CellLayout;->heightInLandscape(Landroid/content/res/Resources;I)I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v1

    sub-float v9, v6, v7

    cmpg-float v8, v8, v9

    if-gtz v8, :cond_2

    .line 281
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 286
    .end local v1           #actionBarHeight:F
    .end local v2           #actionBarSizeTypedArray:Landroid/content/res/TypedArray;
    .end local v5           #res:Landroid/content/res/Resources;
    .end local v6           #smallestScreenDim:F
    .end local v7           #systemBarHeight:F
    :cond_2
    const/4 v8, 0x1

    invoke-virtual {v0, v8, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 287
    const/4 v8, 0x2

    invoke-virtual {v0, v8, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 288
    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-virtual {v0, v8, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    iput v8, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    .line 289
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 291
    invoke-static {v3, v4}, Lcom/android/launcher2/LauncherModel;->updateWorkspaceLayoutCells(II)V

    .line 292
    const/4 v8, 0x0

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setHapticFeedbackEnabled(Z)V

    .line 294
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->initWorkspace()V

    .line 297
    const/4 v8, 0x1

    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->setMotionEventSplittingEnabled(Z)V

    .line 298
    return-void

    .line 196
    nop

    :array_0
    .array-data 0x4
        0xfft 0xfft 0xfft 0xfft
        0xfft 0xfft 0xfft 0xfft
    .end array-data
.end method

.method static synthetic access$002(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$ShrinkState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher2/Workspace;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/launcher2/Workspace;)Landroid/app/WallpaperManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Workspace$ShrinkState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWaitingToShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mWaitingToShrink:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/launcher2/Workspace;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/launcher2/Workspace;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDropView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/launcher2/Workspace;)[I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropViewPos:[I

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragView:Lcom/android/launcher2/DragView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOriginX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLastDragOriginY:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLastDragXOffset:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher2/Workspace;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget v0, p0, Lcom/android/launcher2/Workspace;->mLastDragYOffset:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/DragView;IIII)Lcom/android/launcher2/CellLayout;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 78
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;IIII)Lcom/android/launcher2/CellLayout;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/SpringLoadedDragController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/launcher2/Workspace;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/launcher2/Workspace;->mDrawCustomizeTrayBackground:Z

    return p1
.end method

.method private clearAllHovers()V
    .locals 4

    .prologue
    .line 3082
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    .line 3083
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 3084
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher2/CellLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3083
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3086
    :cond_0
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    invoke-virtual {v2}, Lcom/android/launcher2/SpringLoadedDragController;->onDragExit()V

    .line 3090
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 3091
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3093
    :cond_1
    return-void
.end method

.method private createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2133
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2134
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2137
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2138
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 2139
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2140
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v1, p2, v0}, Lcom/android/launcher2/HolographicOutlineHelper;->applyOuterBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;I)V

    .line 2142
    return-object v1
.end method

.method private createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)Landroid/graphics/Bitmap;
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    .line 2084
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2085
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p4, p5, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2086
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2088
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v2, v6, v6, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2089
    sub-int v3, p4, p3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-int v4, p5, p3

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2091
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 2092
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 2093
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5, v6, v6, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 2096
    sub-int v4, p4, v4

    div-int/lit8 v4, v4, 0x2

    sub-int v3, p5, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2098
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 2099
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 2100
    invoke-virtual {p2, p1, v2, v5, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 2101
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v1, p2, v0, v0}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2103
    return-object v1
.end method

.method private createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2069
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 2070
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v1, p3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    add-int/2addr v2, p3

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2073
    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2074
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/Workspace;->drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V

    .line 2075
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v2, v1, p2, v0, v0}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2076
    return-object v1
.end method

.method private createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 2112
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2113
    const v1, 0x7f09000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 2114
    const v2, 0x7f0d0009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 2115
    const v3, 0x7f0d000a

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 2116
    const v4, 0x7f0d0019

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2117
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    int-to-float v4, v4

    const v5, 0x3e4ccccd

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 2118
    add-int v5, v2, p2

    add-int v6, v3, p2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 2121
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 2122
    new-instance v6, Landroid/graphics/RectF;

    int-to-float v7, v4

    int-to-float v8, v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-direct {v6, v7, v8, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    int-to-float v2, v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v6, v2, v0, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 2124
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mOutlineHelper:Lcom/android/launcher2/HolographicOutlineHelper;

    invoke-virtual {v0, v5, p1, v1, v1}, Lcom/android/launcher2/HolographicOutlineHelper;->applyMediumExpensiveOutlineWithBlur(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;II)V

    .line 2125
    return-object v5
.end method

.method private doDragExit()V
    .locals 2

    .prologue
    .line 2845
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mWasSpringLoadedOnDragExit:Z

    .line 2846
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 2847
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2849
    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_1

    .line 2850
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 2852
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v0, v1, :cond_2

    .line 2853
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->exitSpringLoadedDragMode()V

    .line 2855
    :cond_2
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->clearAllHovers()V

    .line 2856
    return-void

    .line 2845
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawDragView(Landroid/view/View;Landroid/graphics/Canvas;I)V
    .locals 6
    .parameter "v"
    .parameter "destCanvas"
    .parameter "padding"

    .prologue
    const/4 v5, 0x0

    .line 2039
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempRect:Landroid/graphics/Rect;

    .line 2040
    .local v1, clipRect:Landroid/graphics/Rect;
    invoke-virtual {p1, v1}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 2043
    instance-of v3, p1, Lcom/android/launcher2/BubbleTextView;

    if-eqz v3, :cond_1

    .line 2044
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/BubbleTextView;

    move-object v2, v0

    .line 2045
    .local v2, tv:Lcom/android/launcher2/BubbleTextView;
    invoke-virtual {v2}, Lcom/android/launcher2/BubbleTextView;->getExtendedPaddingTop()I

    move-result v3

    const/4 v4, 0x3

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Lcom/android/launcher2/BubbleTextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    .line 2057
    .end local v2           #tv:Lcom/android/launcher2/BubbleTextView;
    :cond_0
    :goto_0
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 2058
    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    neg-int v3, v3

    div-int/lit8 v4, p3, 0x2

    add-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    neg-int v4, v4

    div-int/lit8 v5, p3, 0x2

    add-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2059
    sget-object v3, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    invoke-virtual {p2, v1, v3}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 2060
    invoke-virtual {p1, p2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 2061
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 2062
    return-void

    .line 2047
    :cond_1
    instance-of v3, p1, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 2048
    move-object v0, p1

    check-cast v0, Landroid/widget/TextView;

    move-object v2, v0

    .line 2049
    .local v2, tv:Landroid/widget/TextView;
    invoke-virtual {v2}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v3

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundDrawablePadding()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/text/Layout;->getLineTop(I)I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0
.end method

.method private findMatchingPageForDragOver(Lcom/android/launcher2/DragView;IIII)Lcom/android/launcher2/CellLayout;
    .locals 11
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2706
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v6

    .line 2707
    const/4 v0, 0x0

    .line 2708
    const v1, 0x7f7fffff

    .line 2710
    const/4 v2, 0x0

    move v7, v2

    move v8, v1

    move-object v9, v0

    :goto_0
    if-ge v7, v6, :cond_1

    .line 2711
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 2713
    iget-object v10, p0, Lcom/android/launcher2/Workspace;->mTempTouchCoordinates:[F

    .line 2714
    const/4 v0, 0x0

    add-int v2, p2, p4

    int-to-float v2, v2

    aput v2, v10, v0

    .line 2715
    const/4 v0, 0x1

    add-int v2, p3, p5

    int-to-float v2, v2

    aput v2, v10, v0

    .line 2719
    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2720
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p0, v1, v10, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2722
    const/4 v0, 0x0

    aget v0, v10, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x0

    aget v0, v10, v0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    aget v0, v10, v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    aget v0, v10, v0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    move-object v0, v1

    .line 2747
    :goto_1
    return-object v0

    .line 2727
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->overlaps(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;IILandroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2729
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempCellLayoutCenterCoordinates:[F

    .line 2730
    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v0, v2

    .line 2731
    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    aput v3, v0, v2

    .line 2732
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromChildToSelf(Landroid/view/View;[F)V

    .line 2734
    const/4 v2, 0x0

    add-int v3, p2, p4

    int-to-float v3, v3

    aput v3, v10, v2

    .line 2735
    const/4 v2, 0x1

    add-int v3, p3, p5

    int-to-float v3, v3

    aput v3, v10, v2

    .line 2739
    invoke-static {v10, v0}, Lcom/android/launcher2/Workspace;->squaredDistance([F[F)F

    move-result v0

    .line 2741
    cmpg-float v2, v0, v8

    if-gez v2, :cond_2

    .line 2710
    :goto_2
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move v8, v0

    move-object v9, v1

    goto/16 :goto_0

    :cond_1
    move-object v0, v9

    .line 2747
    goto :goto_1

    :cond_2
    move v0, v8

    move-object v1, v9

    goto :goto_2
.end method

.method private findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "layout"
    .parameter "recycle"

    .prologue
    .line 2980
    invoke-virtual {p6}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v0

    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    sub-int/2addr v0, v3

    sub-int v1, p1, v0

    .line 2981
    .local v1, localPixelX:I
    invoke-virtual {p6}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v0

    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollY:I

    sub-int/2addr v0, v3

    sub-int v2, p2, v0

    .local v2, localPixelY:I
    move-object v0, p6

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p7

    .line 2984
    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method private getCustomizeDrawerHeight()I
    .locals 3

    .prologue
    .line 1408
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getCustomizationDrawer()Landroid/widget/TabHost;

    move-result-object v0

    .line 1409
    invoke-virtual {v0}, Landroid/widget/TabHost;->getHeight()I

    move-result v1

    .line 1410
    const v2, 0x1020013

    invoke-virtual {v0, v2}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TabWidget;

    .line 1412
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 1413
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1415
    invoke-virtual {p0}, Landroid/widget/TabWidget;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v0

    sub-int v0, v2, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v1, v0

    .line 1417
    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getOffsetXForRotation(FII)F
    .locals 5
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f00

    .line 1057
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 1058
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->save()V

    .line 1059
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->rotateY(F)V

    .line 1060
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 1061
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v0}, Landroid/graphics/Camera;->restore()V

    .line 1063
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    neg-int v1, p2

    int-to-float v1, v1

    mul-float/2addr v1, v3

    neg-int v2, p3

    int-to-float v2, v2

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 1064
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    int-to-float v1, p2

    mul-float/2addr v1, v3

    int-to-float v2, p3

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1065
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    int-to-float v1, p2

    aput v1, v0, v4

    .line 1066
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    const/4 v1, 0x1

    int-to-float v2, p3

    aput v2, v0, v1

    .line 1067
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1068
    int-to-float v0, p2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempFloat2:[F

    aget v1, v1, v4

    sub-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    const/high16 v1, 0x3f80

    :goto_0
    mul-float/2addr v0, v1

    return v0

    :cond_0
    const/high16 v1, -0x4080

    goto :goto_0
.end method

.method private getScrollRange()I
    .locals 2

    .prologue
    .line 728
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private getYScaleForScreen(I)F
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x3f80

    .line 1392
    const/4 v0, 0x2

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 1395
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 1400
    :goto_0
    return v0

    .line 1396
    :pswitch_0
    const v0, 0x3f78d4fe

    goto :goto_0

    :pswitch_1
    move v0, v1

    .line 1397
    goto :goto_0

    .line 1398
    :pswitch_2
    const v0, 0x3f8ccccd

    goto :goto_0

    .line 1395
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private hideBackgroundGradient()V
    .locals 3

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1033
    :goto_0
    return-void

    .line 1022
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1024
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    .line 1025
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/Workspace$5;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$5;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1030
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1031
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1032
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private hitsPage(IFF)Z
    .locals 7
    .parameter "index"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 538
    .local v1, page:Landroid/view/View;
    if-eqz v1, :cond_1

    .line 539
    const/4 v2, 0x2

    new-array v0, v2, [F

    aput p2, v0, v4

    aput p3, v0, v5

    .line 540
    .local v0, localXY:[F
    invoke-virtual {p0, v1, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 541
    aget v2, v0, v4

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_0

    aget v2, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    aget v2, v0, v5

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_0

    aget v2, v0, v5

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    move v2, v5

    .line 544
    .end local v0           #localXY:[F
    :goto_0
    return v2

    .restart local v0       #localXY:[F
    :cond_0
    move v2, v4

    .line 541
    goto :goto_0

    .end local v0           #localXY:[F
    :cond_1
    move v2, v4

    .line 544
    goto :goto_0
.end method

.method private onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V
    .locals 12
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2894
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v9

    .line 2895
    instance-of v1, p2, Lcom/android/launcher2/PendingAddItemInfo;

    if-eqz v1, :cond_0

    .line 2896
    check-cast p2, Lcom/android/launcher2/PendingAddItemInfo;

    .line 2899
    iget v1, p2, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_0

    .line 2910
    :pswitch_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/launcher2/PendingAddItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2901
    :pswitch_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast p2, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-virtual {v1, p2, v9, p1}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;I[I)V

    .line 2912
    :goto_0
    invoke-virtual {p3}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2954
    :goto_1
    return-void

    .line 2904
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p2, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v9, p1}, Lcom/android/launcher2/Launcher;->addLiveFolderFromDrop(Landroid/content/ComponentName;I[I)V

    goto :goto_0

    .line 2907
    :pswitch_3
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget-object v2, p2, Lcom/android/launcher2/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, v9, p1}, Lcom/android/launcher2/Launcher;->processShortcutFromDrop(Landroid/content/ComponentName;I[I)V

    goto :goto_0

    .line 2915
    :cond_0
    check-cast p2, Lcom/android/launcher2/ItemInfo;

    .line 2918
    iget v1, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    packed-switch v1, :pswitch_data_1

    .line 2933
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown item type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p2, Lcom/android/launcher2/ItemInfo;->itemType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2921
    :pswitch_4
    iget-wide v1, p2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-nez v1, :cond_3

    instance-of v1, p2, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v1, :cond_3

    .line 2923
    new-instance v1, Lcom/android/launcher2/ShortcutInfo;

    check-cast p2, Lcom/android/launcher2/ApplicationInfo;

    invoke-direct {v1, p2}, Lcom/android/launcher2/ShortcutInfo;-><init>(Lcom/android/launcher2/ApplicationInfo;)V

    .line 2925
    :goto_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v3, 0x7f030007

    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object p2, v0

    invoke-virtual {v2, v3, p3, p2}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    move-object v11, v1

    .line 2936
    :goto_3
    const/4 v1, 0x2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2937
    if-eqz p1, :cond_1

    .line 2939
    const/4 v1, 0x0

    aget v2, p1, v1

    const/4 v1, 0x1

    aget v3, p1, v1

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v1, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIII[I)[I

    .line 2943
    :goto_4
    invoke-virtual {p0, p3}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v3

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x0

    aget v4, v1, v2

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    aget v5, v1, v2

    iget v6, v11, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v7, v11, Lcom/android/launcher2/ItemInfo;->spanY:I

    move-object v1, p0

    move-object v2, v10

    move/from16 v8, p4

    invoke-virtual/range {v1 .. v8}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 2945
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mWasSpringLoadedOnDragExit:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    .line 2946
    :goto_5
    invoke-virtual {p3, v10, v1}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;Z)V

    .line 2947
    invoke-virtual {p3}, Lcom/android/launcher2/CellLayout;->animateDrop()V

    .line 2948
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2950
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const-wide/16 v3, -0x64

    iget v6, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v7, p1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move-object v2, v11

    move v5, v9

    invoke-static/range {v1 .. v7}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    goto/16 :goto_1

    .line 2929
    :pswitch_5
    const v2, 0x7f030012

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v1, v0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-static {v2, v3, p3, v1, v4}, Lcom/android/launcher2/FolderIcon;->fromXml(ILcom/android/launcher2/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher2/UserFolderInfo;Lcom/android/launcher2/IconCache;)Lcom/android/launcher2/FolderIcon;

    move-result-object v1

    move-object v10, v1

    move-object v11, p2

    .line 2931
    goto :goto_3

    .line 2941
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {p3, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    goto :goto_4

    .line 2945
    :cond_2
    const/4 v1, 0x0

    goto :goto_5

    :cond_3
    move-object v1, p2

    goto :goto_2

    .line 2899
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    .line 2918
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private setPositionForDropAnimation(Landroid/view/View;IILandroid/view/View;Landroid/view/View;)V
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2198
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2201
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    .line 2202
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {p5}, Landroid/view/View;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, p3

    .line 2203
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0006

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 2204
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    add-int/2addr v2, v3

    .line 2208
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    sub-int/2addr v3, v4

    sub-int/2addr v1, v3

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->oldX:I

    .line 2209
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    move-result v1

    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollY:I

    sub-int/2addr v1, v3

    sub-int v1, v2, v1

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->oldY:I

    .line 2210
    return-void
.end method

.method private showBackgroundGradient()V
    .locals 3

    .prologue
    .line 1006
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 1018
    :goto_0
    return-void

    .line 1007
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeOutAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1008
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 1009
    :cond_2
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getBackgroundAlpha()F

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    .line 1010
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/launcher2/Workspace$4;

    invoke-direct {v1, p0}, Lcom/android/launcher2/Workspace$4;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1015
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v2, 0x3fc0

    invoke-direct {v1, v2}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1016
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1017
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundFadeInAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0
.end method

.method private showBackgroundGradientForAllApps()V
    .locals 1

    .prologue
    .line 996
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->showBackgroundGradient()V

    .line 997
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawCustomizeTrayBackground:Z

    .line 998
    return-void
.end method

.method private showBackgroundGradientForCustomizeTray()V
    .locals 1

    .prologue
    .line 1001
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->showBackgroundGradient()V

    .line 1002
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawCustomizeTrayBackground:Z

    .line 1003
    return-void
.end method

.method private static squaredDistance([F[F)F
    .locals 5
    .parameter "point1"
    .parameter "point2"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2649
    aget v2, p0, v3

    aget v3, p1, v3

    sub-float v0, v2, v3

    .line 2650
    .local v0, distanceX:F
    aget v2, p1, v4

    aget v3, p1, v4

    sub-float v1, v2, v3

    .line 2651
    .local v1, distanceY:F
    mul-float v2, v0, v0

    mul-float v3, v1, v1

    add-float/2addr v2, v3

    return v2
.end method

.method private syncWallpaperOffsetWithScroll()V
    .locals 2

    .prologue
    .line 799
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 800
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 802
    :cond_0
    return-void
.end method

.method private updateWallpaperOffsets()V
    .locals 6

    .prologue
    .line 809
    const/4 v1, 0x0

    .line 810
    .local v1, updateNow:Z
    const/4 v0, 0x1

    .line 811
    .local v0, keepUpdating:Z
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    if-eqz v2, :cond_2

    .line 812
    const/4 v1, 0x1

    .line 813
    const/4 v0, 0x0

    .line 814
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->jumpToFinal()V

    .line 815
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 819
    :goto_0
    if-eqz v1, :cond_0

    .line 820
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    if-eqz v2, :cond_0

    .line 821
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v4

    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/app/WallpaperManager;->setWallpaperOffsets(Landroid/os/IBinder;FF)V

    .line 825
    :cond_0
    if-eqz v0, :cond_1

    .line 826
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->fastInvalidate()V

    .line 828
    :cond_1
    return-void

    .line 817
    :cond_2
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v2}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->computeScrollOffset()Z

    move-result v0

    move v1, v0

    goto :goto_0
.end method

.method private updateWhichPagesAcceptDrops(Lcom/android/launcher2/Workspace$ShrinkState;)V
    .locals 2
    .parameter "state"

    .prologue
    const/4 v1, 0x1

    .line 1729
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/launcher2/Workspace;->updateWhichPagesAcceptDropsHelper(Lcom/android/launcher2/Workspace$ShrinkState;ZII)V

    .line 1730
    return-void
.end method

.method private updateWhichPagesAcceptDropsDuringDrag(Lcom/android/launcher2/Workspace$ShrinkState;II)V
    .locals 1
    .parameter "state"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 1733
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/launcher2/Workspace;->updateWhichPagesAcceptDropsHelper(Lcom/android/launcher2/Workspace$ShrinkState;ZII)V

    .line 1734
    return-void
.end method

.method private updateWhichPagesAcceptDropsHelper(Lcom/android/launcher2/Workspace$ShrinkState;ZII)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1738
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    move v2, v7

    move v3, p4

    move v4, p3

    .line 1739
    :goto_0
    if-ge v2, v1, :cond_3

    .line 1740
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1741
    invoke-virtual {v0, p2}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 1742
    sget-object v5, Lcom/android/launcher2/Workspace$14;->$SwitchMap$com$android$launcher2$Workspace$ShrinkState:[I

    invoke-virtual {p1}, Lcom/android/launcher2/Workspace$ShrinkState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1761
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled ShrinkState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1744
    :pswitch_1
    iget v5, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-ne v2, v5, :cond_2

    move v5, v8

    :goto_1
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setIsDefaultDropTarget(Z)V

    .line 1748
    :pswitch_2
    sget-object v5, Lcom/android/launcher2/Workspace$ShrinkState;->TOP:Lcom/android/launcher2/Workspace$ShrinkState;

    if-eq p1, v5, :cond_0

    .line 1749
    invoke-virtual {v0, v7}, Lcom/android/launcher2/CellLayout;->setIsDefaultDropTarget(Z)V

    .line 1751
    :cond_0
    if-nez p2, :cond_1

    move v3, v8

    move v4, v8

    .line 1758
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4, v3}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v5

    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setAcceptsDrops(Z)V

    .line 1739
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v5, v7

    .line 1744
    goto :goto_1

    .line 1764
    :cond_3
    return-void

    .line 1742
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/DragEvent;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;>;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 2478
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v0

    .line 2479
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v1

    .line 2480
    invoke-virtual {v1}, Landroid/content/ClipDescription;->getMimeTypeCount()I

    move-result v2

    .line 2481
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 2482
    invoke-virtual {v1, v3}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v4

    .line 2483
    const-string v5, "com.android.launcher/shortcut"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2484
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2493
    :goto_1
    return-object v0

    .line 2486
    :cond_0
    iget-object v5, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v4}, Lcom/android/launcher2/LauncherModel;->resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 2488
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 2489
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2481
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v6

    .line 2493
    goto :goto_1
.end method

.method private wallpaperOffsetForCurrentScroll()F
    .locals 13

    .prologue
    const/4 v12, 0x1

    .line 762
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 763
    .local v0, display:Landroid/view/Display;
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v9}, Landroid/app/WallpaperManager;->getWallpaperInfo()Landroid/app/WallpaperInfo;

    move-result-object v9

    if-nez v9, :cond_2

    move v1, v12

    .line 767
    .local v1, isStaticWallpaper:Z
    :goto_0
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v11

    invoke-direct {p0, v10, v11}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v10

    mul-float/2addr v9, v10

    float-to-int v8, v9

    .line 769
    .local v8, wallpaperTravelWidth:I
    if-nez v1, :cond_0

    .line 770
    iget v8, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 776
    :cond_0
    iget-object v9, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/high16 v10, 0x3f80

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v11

    sub-int/2addr v11, v12

    int-to-float v11, v11

    div-float/2addr v10, v11

    const/high16 v11, 0x3f00

    invoke-virtual {v9, v10, v11}, Landroid/app/WallpaperManager;->setWallpaperOffsetSteps(FF)V

    .line 778
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v7

    .line 779
    .local v7, scrollRange:I
    const/4 v6, 0x0

    .line 785
    .local v6, scrollProgressOffset:F
    if-eqz v1, :cond_1

    .line 786
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->maxOverScroll()F

    move-result v9

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v9, v10

    float-to-int v4, v9

    .line 787
    .local v4, overscrollOffset:I
    int-to-float v9, v4

    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->getScrollRange()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    add-float/2addr v6, v9

    .line 788
    mul-int/lit8 v9, v4, 0x2

    add-int/2addr v7, v9

    .line 791
    .end local v4           #overscrollOffset:I
    :cond_1
    iget v9, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    int-to-float v9, v9

    int-to-float v10, v7

    div-float/2addr v9, v10

    add-float v5, v9, v6

    .line 793
    .local v5, scrollProgress:F
    int-to-float v9, v8

    mul-float/2addr v9, v5

    iget v10, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    sub-int/2addr v10, v8

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    add-float v3, v9, v10

    .line 795
    .local v3, offsetInDips:F
    iget v9, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    int-to-float v9, v9

    div-float v2, v3, v9

    .line 796
    .local v2, offset:F
    return v2

    .line 763
    .end local v1           #isStaticWallpaper:Z
    .end local v2           #offset:F
    .end local v3           #offsetInDips:F
    .end local v5           #scrollProgress:F
    .end local v6           #scrollProgressOffset:F
    .end local v7           #scrollRange:I
    .end local v8           #wallpaperTravelWidth:I
    :cond_2
    const/4 v9, 0x0

    move v1, v9

    goto :goto_0
.end method

.method private wallpaperTravelToScreenHeightRatio(II)F
    .locals 1
    .parameter "width"
    .parameter "height"

    .prologue
    .line 696
    const v0, 0x3f8ccccd

    return v0
.end method

.method private wallpaperTravelToScreenWidthRatio(II)F
    .locals 9
    .parameter "width"
    .parameter "height"

    .prologue
    .line 702
    int-to-float v7, p1

    int-to-float v8, p2

    div-float v4, v7, v8

    .line 709
    .local v4, aspectRatio:F
    const v0, 0x3fcccccd

    .line 710
    .local v0, ASPECT_RATIO_LANDSCAPE:F
    const/high16 v1, 0x3f20

    .line 711
    .local v1, ASPECT_RATIO_PORTRAIT:F
    const/high16 v2, 0x3fc0

    .line 712
    .local v2, WALLPAPER_WIDTH_TO_SCREEN_RATIO_LANDSCAPE:F
    const v3, 0x3f99999a

    .line 719
    .local v3, WALLPAPER_WIDTH_TO_SCREEN_RATIO_PORTRAIT:F
    const v5, 0x3e9d89d7

    .line 722
    .local v5, x:F
    const v6, 0x3f80fc10

    .line 723
    .local v6, y:F
    const v7, 0x3e9d89d7

    mul-float/2addr v7, v4

    const v8, 0x3f80fc10

    add-float/2addr v7, v8

    return v7
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z
    .locals 8
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2284
    if-eq p1, p0, :cond_5

    .line 2286
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher2/CellLayout;->getAcceptsDrops()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move v4, v6

    .line 2302
    :goto_0
    return v4

    .line 2290
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2291
    .local v0, dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v0, :cond_2

    move v2, v5

    .line 2292
    .local v2, spanX:I
    :goto_1
    if-nez v0, :cond_3

    move v3, v5

    .line 2294
    .local v3, spanY:I
    :goto_2
    if-nez v0, :cond_4

    move-object v1, v7

    .line 2297
    .local v1, ignoreView:Landroid/view/View;
    :goto_3
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v4, v7, v2, v3, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpanIgnoring([IIILandroid/view/View;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 2298
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    move v4, v6

    .line 2299
    goto :goto_0

    .line 2291
    .end local v1           #ignoreView:Landroid/view/View;
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_2
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move v2, v4

    goto :goto_1

    .line 2292
    .restart local v2       #spanX:I
    :cond_3
    iget v4, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move v3, v4

    goto :goto_2

    .line 2294
    .restart local v3       #spanY:I
    :cond_4
    iget-object v4, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v1, v4

    goto :goto_3

    .end local v0           #dragCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    .end local v2           #spanX:I
    .end local v3           #spanY:I
    :cond_5
    move v4, v5

    .line 2302
    goto :goto_0
.end method

.method addApplicationShortcut(Lcom/android/launcher2/ShortcutInfo;IIIZII)V
    .locals 10
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2185
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2186
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f030007

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/launcher2/Launcher;->createShortcut(ILandroid/view/ViewGroup;Lcom/android/launcher2/ShortcutInfo;)Landroid/view/View;

    move-result-object v9

    .line 2188
    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 2189
    const/4 v2, 0x1

    const/4 v3, 0x1

    move/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersects([IIIII)Z

    .line 2190
    const/4 v0, 0x0

    aget v5, v1, v0

    const/4 v0, 0x1

    aget v6, v1, v0

    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v2, p0

    move-object v3, v9

    move v4, p2

    move v9, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 2191
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const-wide/16 v2, -0x64

    const/4 v4, 0x0

    aget v5, v1, v4

    const/4 v4, 0x1

    aget v6, v1, v4

    move-object v1, p1

    move v4, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2194
    return-void
.end method

.method public addExternalItemToScreen(Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/CellLayout;)Z
    .locals 4
    .parameter "dragInfo"
    .parameter "layout"

    .prologue
    const/4 v3, 0x0

    .line 2876
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempEstimate:[I

    iget v1, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    iget v2, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2877
    iget-object v0, p1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    invoke-direct {p0, v0, p1, p2, v3}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    .line 2878
    const/4 v0, 0x1

    .line 2881
    :goto_0
    return v0

    .line 2880
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->showOutOfSpaceMessage()V

    move v0, v3

    .line 2881
    goto :goto_0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .parameter
    .parameter "direction"
    .parameter "focusableMode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 1275
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1276
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1277
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_1

    .line 1278
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->addFocusables(Ljava/util/ArrayList;I)V

    .line 1283
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    :goto_0
    return-void

    .line 1280
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addInFullScreen(Landroid/view/View;I)V
    .locals 7
    .parameter "child"
    .parameter "screen"

    .prologue
    const/4 v3, 0x0

    const/4 v5, -0x1

    .line 481
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, v3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 482
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIII)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 477
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIIIZ)V

    .line 478
    return-void
.end method

.method addInScreen(Landroid/view/View;IIIIIZ)V
    .locals 8
    .parameter "child"
    .parameter "screen"
    .parameter "x"
    .parameter "y"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "insert"

    .prologue
    .line 497
    if-ltz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_2

    .line 498
    :cond_0
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The screen must be >= 0 and < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "); skipping child"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    .end local p1
    :cond_1
    :goto_0
    return-void

    .line 503
    .restart local p1
    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 504
    .local v6, group:Lcom/android/launcher2/CellLayout;
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 505
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    if-nez v7, :cond_5

    .line 506
    new-instance v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-direct {v7, p3, p4, p5, p6}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(IIII)V

    .line 515
    .restart local v7       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_1
    const/4 v0, -0x1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(IIIIII)I

    move-result v3

    .line 516
    .local v3, childId:I
    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-nez v0, :cond_6

    const/4 v0, 0x1

    move v5, v0

    .line 517
    .local v5, markCellsAsOccupied:Z
    :goto_2
    if-eqz p7, :cond_7

    const/4 v0, 0x0

    move v2, v0

    :goto_3
    move-object v0, v6

    move-object v1, p1

    move-object v4, v7

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 521
    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to add to item at ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") to CellLayout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_3
    instance-of v0, p1, Lcom/android/launcher2/Folder;

    if-nez v0, :cond_4

    .line 525
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setHapticFeedbackEnabled(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 528
    :cond_4
    instance-of v0, p1, Lcom/android/launcher2/DropTarget;

    if-eqz v0, :cond_1

    .line 529
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    check-cast p1, Lcom/android/launcher2/DropTarget;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/DragController;->addDropTarget(Lcom/android/launcher2/DropTarget;)V

    goto :goto_0

    .line 508
    .end local v3           #childId:I
    .end local v5           #markCellsAsOccupied:Z
    .restart local p1
    :cond_5
    iput p3, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 509
    iput p4, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 510
    iput p5, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 511
    iput p6, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    goto :goto_1

    .line 516
    .restart local v3       #childId:I
    :cond_6
    const/4 v0, 0x0

    move v5, v0

    goto :goto_2

    .line 517
    .restart local v5       #markCellsAsOccupied:Z
    :cond_7
    const/4 v0, -0x1

    move v2, v0

    goto :goto_3
.end method

.method public addView(Landroid/view/View;)V
    .locals 3
    .parameter "child"

    .prologue
    .line 382
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 383
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 385
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 386
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 388
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->addView(Landroid/view/View;)V

    .line 389
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 3
    .parameter "child"
    .parameter "index"

    .prologue
    .line 393
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 394
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 396
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 397
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 398
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 399
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->addView(Landroid/view/View;I)V

    .line 400
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .locals 3
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 404
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 405
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 407
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 408
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 409
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 410
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addView(Landroid/view/View;II)V

    .line 411
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 371
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 372
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 374
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 377
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher2/SmoothPagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 378
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 3
    .parameter "child"
    .parameter "params"

    .prologue
    .line 415
    instance-of v1, p1, Lcom/android/launcher2/CellLayout;

    if-nez v1, :cond_0

    .line 416
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "A Workspace can only have CellLayout children."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 418
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/CellLayout;

    move-object v1, v0

    invoke-virtual {v1, p0}, Lcom/android/launcher2/CellLayout;->setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 419
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 420
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 421
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 422
    return-void
.end method

.method public animateViewIntoPosition(Landroid/view/View;)V
    .locals 9
    .parameter

    .prologue
    .line 2217
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2218
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2221
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->oldX:I

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v3

    add-int/2addr v3, v2

    .line 2222
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->oldY:I

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v0

    add-int v5, v2, v0

    .line 2224
    iget v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->x:I

    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->oldX:I

    sub-int v4, v0, v2

    .line 2225
    iget v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->y:I

    iget v1, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->oldY:I

    sub-int v6, v0, v1

    .line 2228
    mul-int v0, v4, v4

    mul-int v1, v6, v6

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 2229
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2230
    const v2, 0x7f0a000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    int-to-float v2, v2

    .line 2231
    const v7, 0x7f0a000a

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 2232
    cmpg-float v7, v0, v2

    if-gez v7, :cond_1

    .line 2233
    int-to-float v1, v1

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mQuintEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    div-float/2addr v0, v2

    invoke-interface {v7, v0}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 2236
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_0

    .line 2237
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->end()V

    .line 2239
    :cond_0
    new-instance v1, Landroid/animation/ValueAnimator;

    invoke-direct {v1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    .line 2240
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mQuintEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2243
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/launcher2/Workspace$10;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher2/Workspace$10;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2257
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    int-to-long v7, v0

    invoke-virtual {v1, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2258
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 2259
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 2260
    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    new-instance v0, Lcom/android/launcher2/Workspace$11;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace$11;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/View;IIII)V

    invoke-virtual {v7, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2274
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 2275
    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    .line 2258
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method backgroundAlphaInterpolator(F)F
    .locals 3
    .parameter

    .prologue
    .line 1072
    const v0, 0x3dcccccd

    .line 1073
    const v1, 0x3ecccccd

    .line 1074
    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    .line 1075
    const/4 v0, 0x0

    .line 1079
    :goto_0
    return v0

    .line 1076
    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 1077
    const/high16 v0, 0x3f80

    goto :goto_0

    .line 1079
    :cond_1
    sub-float v2, p1, v0

    sub-float v0, v1, v0

    div-float v0, v2, v0

    goto :goto_0
.end method

.method clearChildrenCache()V
    .locals 4

    .prologue
    .line 1318
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1319
    .local v2, screenCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1320
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1321
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1319
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1323
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public computeScroll()V
    .locals 1

    .prologue
    .line 943
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->computeScroll()V

    .line 944
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mSyncWallpaperOffsetWithScroll:Z

    if-eqz v0, :cond_0

    .line 945
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->syncWallpaperOffsetWithScroll()V

    .line 947
    :cond_0
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)V
    .locals 8
    .parameter "ev"

    .prologue
    const v7, 0x3f060a92

    .line 622
    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v5, :cond_0

    iget-boolean v5, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-nez v5, :cond_0

    .line 623
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 624
    .local v0, deltaX:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    iget v6, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 626
    .local v1, deltaY:F
    const/4 v5, 0x0

    invoke-static {v0, v5}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_1

    .line 652
    .end local v0           #deltaX:F
    .end local v1           #deltaY:F
    :cond_0
    :goto_0
    return-void

    .line 628
    .restart local v0       #deltaX:F
    .restart local v1       #deltaY:F
    :cond_1
    div-float v3, v1, v0

    .line 629
    .local v3, slope:F
    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    double-to-float v4, v5

    .line 631
    .local v4, theta:F
    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v0, v5

    if-gtz v5, :cond_2

    iget v5, p0, Lcom/android/launcher2/Workspace;->mTouchSlop:I

    int-to-float v5, v5

    cmpl-float v5, v1, v5

    if-lez v5, :cond_3

    .line 632
    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->cancelCurrentPageLongPress()V

    .line 635
    :cond_3
    const v5, 0x3f860a92

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_0

    .line 638
    cmpl-float v5, v4, v7

    if-lez v5, :cond_4

    .line 643
    sub-float/2addr v4, v7

    .line 644
    div-float v5, v4, v7

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v5

    double-to-float v2, v5

    .line 646
    .local v2, extraRatio:F
    const/high16 v5, 0x3f80

    const/high16 v6, 0x4080

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    invoke-super {p0, p1, v5}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)V

    goto :goto_0

    .line 649
    .end local v2           #extraRatio:F
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->determineScrollingStart(Landroid/view/MotionEvent;)V

    goto :goto_0
.end method

.method disableBackground()V
    .locals 1

    .prologue
    .line 989
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 990
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1209
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-eqz v0, :cond_3

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    .line 1212
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getDrawingTime()J

    move-result-wide v2

    move v4, v6

    .line 1213
    :goto_0
    if-ge v4, v1, :cond_5

    .line 1214
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1215
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getAlpha()F

    move-result v5

    cmpl-float v5, v5, v8

    if-nez v5, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v5

    cmpl-float v5, v5, v8

    if-eqz v5, :cond_2

    .line 1217
    :cond_1
    invoke-virtual {p0, p1, v0, v2, v3}, Lcom/android/launcher2/Workspace;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 1213
    :cond_2
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 1221
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 1223
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v2

    .line 1224
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v3

    .line 1227
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_4

    if-le v3, v2, :cond_4

    .line 1228
    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 1231
    sub-int v1, v3, v0

    int-to-float v1, v1

    const/high16 v4, 0x3f00

    mul-float/2addr v1, v4

    int-to-float v0, v0

    const v4, 0x3dcccccd

    mul-float/2addr v0, v4

    add-float/2addr v0, v1

    float-to-int v4, v0

    .line 1233
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    sub-int/2addr v0, v7

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1234
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1236
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1237
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02006f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1238
    iget v1, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    add-int/2addr v2, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1239
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1247
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1250
    invoke-virtual {p1, v7}, Landroid/graphics/Canvas;->save(I)I

    .line 1251
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropViewPos:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDropView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v1

    sub-int/2addr v0, v1

    .line 1252
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDropViewPos:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDropView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getScrollY()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1253
    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1254
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDropView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 1255
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 1258
    :cond_5
    return-void

    .line 1240
    :cond_6
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getIsDragOverlapping()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1241
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1242
    iget v1, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    add-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    sub-int/2addr v1, v5

    iget v5, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    add-int/2addr v2, v5

    sub-int/2addr v3, v4

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1243
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "ev"

    .prologue
    .line 1287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 1290
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1291
    const/4 v0, 0x0

    .line 1295
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 590
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-eqz v0, :cond_1

    .line 592
    :cond_0
    const/4 v0, 0x0

    .line 594
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method enableBackground()V
    .locals 1

    .prologue
    .line 992
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    .line 993
    return-void
.end method

.method enableChildrenCache(II)V
    .locals 6
    .parameter "fromPage"
    .parameter "toPage"

    .prologue
    const/4 v5, 0x1

    .line 1299
    if-le p1, p2, :cond_0

    .line 1300
    move v3, p1

    .line 1301
    .local v3, temp:I
    move p1, p2

    .line 1302
    move p2, v3

    .line 1305
    .end local v3           #temp:I
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    .line 1307
    .local v2, screenCount:I
    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1308
    sub-int v4, v2, v5

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1310
    move v0, p1

    .local v0, i:I
    :goto_0
    if-gt v0, p2, :cond_1

    .line 1311
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    .line 1312
    .local v1, layout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1313
    invoke-virtual {v1, v5}, Lcom/android/launcher2/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    .line 1310
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1315
    .end local v1           #layout:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method protected enableChildrenLayers(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 1354
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getPageCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1355
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->setChildrenLayersEnabled(Z)V

    .line 1354
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1357
    :cond_0
    return-void
.end method

.method public enterSpringLoadedDragMode(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .parameter "clThatWasClicked"

    .prologue
    .line 1821
    sget-object v0, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    .line 1822
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->unshrink(Lcom/android/launcher2/CellLayout;Z)V

    .line 1823
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 1824
    return-void
.end method

.method public exitSpringLoadedDragMode(Lcom/android/launcher2/Workspace$ShrinkState;)V
    .locals 1
    .parameter "shrinkState"

    .prologue
    .line 1827
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->shrink(Lcom/android/launcher2/Workspace$ShrinkState;)V

    .line 1828
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v0, :cond_0

    .line 1829
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 1831
    :cond_0
    return-void
.end method

.method public exitWidgetResizeMode()V
    .locals 2

    .prologue
    .line 1834
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1835
    .local v0, currentLayout:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayoutChildren;->clearAllResizeFrames()V

    .line 1836
    return-void
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    return v0
.end method

.method public getChildrenOutlineAlpha()F
    .locals 1

    .prologue
    .line 985
    iget v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    return v0
.end method

.method public getCurrentDropLayout()Lcom/android/launcher2/CellLayout;
    .locals 2

    .prologue
    .line 2961
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellLayout;

    return-object p0

    .restart local p0
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    goto :goto_0
.end method

.method public getDropTargetDelegate(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Lcom/android/launcher2/DropTarget;
    .locals 17
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2434
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v4, v0

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    move v4, v0

    if-eqz v4, :cond_1

    .line 2436
    :cond_0
    const/4 v4, 0x0

    .line 2469
    :goto_0
    return-object v4

    .line 2442
    :cond_1
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v16, v0

    .line 2443
    .local v16, item:Lcom/android/launcher2/ItemInfo;
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v1

    .line 2446
    .local v1, currentLayout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move v4, v0

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    .line 2448
    sub-int v2, p2, p4

    .line 2449
    .local v2, dragPointX:I
    sub-int v3, p3, p5

    .line 2455
    .local v3, dragPointY:I
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mScrollX:I

    move v4, v0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getLeft()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    .line 2456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mScrollY:I

    move v4, v0

    invoke-virtual {v1}, Lcom/android/launcher2/CellLayout;->getTop()I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 2460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    move-object v6, v0

    .line 2461
    .local v6, cellXY:[I
    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move v4, v0

    move-object/from16 v0, v16

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move v5, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher2/CellLayout;->estimateDropCell(IIII[I)V

    .line 2462
    const/4 v4, 0x0

    aget v4, v6, v4

    const/4 v5, 0x1

    aget v5, v6, v5

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher2/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v15

    .line 2463
    .local v15, child:Landroid/view/View;
    instance-of v4, v15, Lcom/android/launcher2/DropTarget;

    if-eqz v4, :cond_3

    .line 2464
    move-object v0, v15

    check-cast v0, Lcom/android/launcher2/DropTarget;

    move-object v7, v0

    .local v7, target:Lcom/android/launcher2/DropTarget;
    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    .line 2465
    invoke-interface/range {v7 .. v14}, Lcom/android/launcher2/DropTarget;->acceptDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v7

    .line 2466
    goto :goto_0

    .line 2452
    .end local v2           #dragPointX:I
    .end local v3           #dragPointY:I
    .end local v6           #cellXY:[I
    .end local v7           #target:Lcom/android/launcher2/DropTarget;
    .end local v15           #child:Landroid/view/View;
    :cond_2
    move/from16 v2, p2

    .line 2453
    .restart local v2       #dragPointX:I
    move/from16 v3, p3

    .restart local v3       #dragPointY:I
    goto :goto_1

    .line 2469
    .restart local v6       #cellXY:[I
    .restart local v15       #child:Landroid/view/View;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public getFolderForTag(Ljava/lang/Object;)Lcom/android/launcher2/Folder;
    .locals 11
    .parameter "tag"

    .prologue
    const/4 v10, 0x4

    .line 3105
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    .line 3106
    .local v8, screenCount:I
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 3107
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 3108
    .local v3, currentScreen:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 3109
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    if-ge v5, v2, :cond_1

    .line 3110
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3111
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 3112
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v9, v10, :cond_0

    iget v9, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-ne v9, v10, :cond_0

    instance-of v9, v1, Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_0

    .line 3113
    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/Folder;

    move-object v4, v0

    .line 3114
    .local v4, f:Lcom/android/launcher2/Folder;
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v9

    if-ne v9, p1, :cond_0

    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v9, :cond_0

    move-object v9, v4

    .line 3120
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentScreen:Landroid/view/ViewGroup;
    .end local v4           #f:Lcom/android/launcher2/Folder;
    .end local v5           #i:I
    .end local v6           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :goto_2
    return-object v9

    .line 3109
    .restart local v1       #child:Landroid/view/View;
    .restart local v2       #count:I
    .restart local v3       #currentScreen:Landroid/view/ViewGroup;
    .restart local v5       #i:I
    .restart local v6       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3106
    .end local v1           #child:Landroid/view/View;
    .end local v6           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 3120
    .end local v2           #count:I
    .end local v3           #currentScreen:Landroid/view/ViewGroup;
    .end local v5           #i:I
    :cond_2
    const/4 v9, 0x0

    goto :goto_2
.end method

.method public getHitRect(Landroid/graphics/Rect;)V
    .locals 4
    .parameter "outRect"

    .prologue
    const/4 v3, 0x0

    .line 2867
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 2868
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    invoke-virtual {p1, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 2869
    return-void
.end method

.method public getHorizontalWallpaperOffset()F
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrX()F

    move-result v0

    return v0
.end method

.method getOpenFolder()Lcom/android/launcher2/Folder;
    .locals 7

    .prologue
    .line 428
    iget v6, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v6}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 429
    .local v3, currentPage:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 430
    .local v2, count:I
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v2, :cond_1

    .line 431
    invoke-virtual {v3, v5}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 432
    .local v1, child:Landroid/view/View;
    instance-of v6, v1, Lcom/android/launcher2/Folder;

    if-eqz v6, :cond_0

    .line 433
    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/Folder;

    move-object v4, v0

    .line 434
    .local v4, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v6, :cond_0

    move-object v6, v4

    .line 438
    .end local v1           #child:Landroid/view/View;
    .end local v4           #folder:Lcom/android/launcher2/Folder;
    :goto_1
    return-object v6

    .line 430
    .restart local v1       #child:Landroid/view/View;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 438
    .end local v1           #child:Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method getOpenFolders()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/Folder;",
            ">;"
        }
    .end annotation

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    .line 443
    .local v8, screenCount:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 445
    .local v5, folders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/Folder;>;"
    const/4 v7, 0x0

    .local v7, screen:I
    :goto_0
    if-ge v7, v8, :cond_2

    .line 446
    invoke-virtual {p0, v7}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v9}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v3

    .line 447
    .local v3, currentPage:Landroid/view/ViewGroup;
    invoke-virtual {v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v2

    .line 448
    .local v2, count:I
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v2, :cond_0

    .line 449
    invoke-virtual {v3, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 450
    .local v1, child:Landroid/view/View;
    instance-of v9, v1, Lcom/android/launcher2/Folder;

    if-eqz v9, :cond_1

    .line 451
    move-object v0, v1

    check-cast v0, Lcom/android/launcher2/Folder;

    move-object v4, v0

    .line 452
    .local v4, folder:Lcom/android/launcher2/Folder;
    invoke-virtual {v4}, Lcom/android/launcher2/Folder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v9

    iget-boolean v9, v9, Lcom/android/launcher2/FolderInfo;->opened:Z

    if-eqz v9, :cond_0

    .line 453
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v1           #child:Landroid/view/View;
    .end local v4           #folder:Lcom/android/launcher2/Folder;
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 448
    .restart local v1       #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 458
    .end local v1           #child:Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #currentPage:Landroid/view/ViewGroup;
    .end local v6           #i:I
    :cond_2
    return-object v5
.end method

.method protected getScrollMode()I
    .locals 1

    .prologue
    .line 362
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 363
    const/4 v0, 0x1

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getVerticalWallpaperOffset()F
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->getCurrY()F

    move-result v0

    return v0
.end method

.method public getViewForTag(Ljava/lang/Object;)Landroid/view/View;
    .locals 7
    .parameter "tag"

    .prologue
    .line 3124
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    .line 3125
    .local v5, screenCount:I
    const/4 v4, 0x0

    .local v4, screen:I
    :goto_0
    if-ge v4, v5, :cond_2

    .line 3126
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3127
    .local v2, currentScreen:Landroid/view/ViewGroup;
    invoke-virtual {v2}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v1

    .line 3128
    .local v1, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_1

    .line 3129
    invoke-virtual {v2, v3}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3130
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    if-ne v6, p1, :cond_0

    move-object v6, v0

    .line 3135
    .end local v0           #child:Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #currentScreen:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :goto_2
    return-object v6

    .line 3128
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #count:I
    .restart local v2       #currentScreen:Landroid/view/ViewGroup;
    .restart local v3       #i:I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 3125
    .end local v0           #child:Landroid/view/View;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3135
    .end local v1           #count:I
    .end local v2           #currentScreen:Landroid/view/ViewGroup;
    .end local v3           #i:I
    :cond_2
    const/4 v6, 0x0

    goto :goto_2
.end method

.method hideOutlines()V
    .locals 4

    .prologue
    .line 960
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-nez v0, :cond_2

    .line 961
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 962
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 963
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    .line 964
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x177

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 965
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 966
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 968
    :cond_2
    return-void
.end method

.method protected hitsNextPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 559
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v0, v1

    .line 560
    .local v0, current:I
    :goto_0
    add-int/lit8 v1, v0, 0x1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    return v1

    .line 559
    .end local v0           #current:I
    :cond_0
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    move v0, v1

    goto :goto_0
.end method

.method protected hitsPreviousPage(FF)Z
    .locals 3
    .parameter "x"
    .parameter "y"

    .prologue
    .line 551
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v0, v1

    .line 552
    .local v0, current:I
    :goto_0
    const/4 v1, 0x1

    sub-int v1, v0, v1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/launcher2/Workspace;->hitsPage(IFF)Z

    move-result v1

    return v1

    .line 551
    .end local v0           #current:I
    :cond_0
    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    move v0, v1

    goto :goto_0
.end method

.method protected initWorkspace()V
    .locals 5

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 305
    .local v1, context:Landroid/content/Context;
    iget v3, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    iput v3, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 306
    iget v3, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v3}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 307
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherApplication;

    .line 308
    .local v0, app:Lcom/android/launcher2/LauncherApplication;
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherApplication;->getIconCache()Lcom/android/launcher2/IconCache;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 309
    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mExternalDragOutlinePaint:Landroid/graphics/Paint;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 310
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher2/Workspace;->setWillNotDraw(Z)V

    .line 313
    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 314
    .local v2, res:Landroid/content/res/Resources;
    const/high16 v3, 0x7f02

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 315
    const v3, 0x7f020019

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mCustomizeTrayBackground:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 320
    .end local v2           #res:Landroid/content/res/Resources;
    :goto_0
    new-instance v3, Lcom/android/launcher2/Workspace$1;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$1;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mUnshrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 345
    new-instance v3, Lcom/android/launcher2/Workspace$2;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$2;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mShrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 356
    const/16 v3, 0x258

    iput v3, p0, Lcom/android/launcher2/Workspace;->mSnapVelocity:I

    .line 357
    new-instance v3, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-direct {v3, p0}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;-><init>(Lcom/android/launcher2/Workspace;)V

    iput-object v3, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    .line 358
    return-void

    .line 316
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public isDropEnabled()Z
    .locals 1

    .prologue
    .line 3034
    const/4 v0, 0x1

    return v0
.end method

.method public isSmall()Z
    .locals 1

    .prologue
    .line 1388
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    return v0
.end method

.method isTouchActive()Z
    .locals 1

    .prologue
    .line 462
    iget v0, p0, Lcom/android/launcher2/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method mapPointFromChildToSelf(Landroid/view/View;[F)V
    .locals 4
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2643
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2644
    const/4 v0, 0x0

    aget v1, p2, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2645
    const/4 v0, 0x1

    aget v1, p2, v0

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollY:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    sub-float/2addr v1, v2

    aput v1, p2, v0

    .line 2646
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 1
    .parameter "v"
    .parameter "xy"

    .prologue
    .line 2613
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2614
    return-void
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V
    .locals 4
    .parameter "v"
    .parameter "xy"
    .parameter "cachedInverseMatrix"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2627
    if-nez p3, :cond_0

    .line 2628
    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 2629
    iget-object p3, p0, Lcom/android/launcher2/Workspace;->mTempInverseMatrix:Landroid/graphics/Matrix;

    .line 2631
    :cond_0
    aget v0, p2, v2

    iget v1, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    .line 2632
    aget v0, p2, v3

    iget v1, p0, Lcom/android/launcher2/Workspace;->mScrollY:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    .line 2633
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 2634
    return-void
.end method

.method moveToDefaultScreen(Z)V
    .locals 2
    .parameter "animate"

    .prologue
    .line 3290
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-eqz v0, :cond_1

    .line 3291
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher2/Launcher;->showWorkspace(ZLcom/android/launcher2/CellLayout;)V

    .line 3297
    :goto_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3298
    return-void

    .line 3292
    :cond_1
    if-eqz p1, :cond_2

    .line 3293
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    goto :goto_0

    .line 3295
    :cond_2
    iget v0, p0, Lcom/android/launcher2/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageSwitchListener()V
    .locals 2

    .prologue
    .line 678
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->notifyPageSwitchListener()V

    .line 680
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mPreviousIndicator:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 683
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    .line 684
    .local v0, page:I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 685
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    .line 687
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mPreviousIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 688
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mNextIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 690
    .end local v0           #page:I
    :cond_1
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v1}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 691
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 1132
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->onAttachedToWindow()V

    .line 1133
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1134
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->computeScroll()V

    .line 1135
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->setWindowToken(Landroid/os/IBinder;)V

    .line 1136
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "cellLayout"

    .prologue
    .line 579
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    sget-object v1, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    if-eq v0, v1, :cond_1

    .line 580
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .end local p1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onWorkspaceClick(Lcom/android/launcher2/CellLayout;)V

    .line 582
    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 1139
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mWindowToken:Landroid/os/IBinder;

    .line 1140
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 1
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2422
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2424
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    .line 2425
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2426
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2427
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2429
    :cond_0
    return-void
.end method

.method public onDragEvent(Landroid/view/DragEvent;)Z
    .locals 14
    .parameter

    .prologue
    const/4 v1, 0x0

    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v5, 0x1

    .line 2501
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipDescription()Landroid/content/ClipDescription;

    move-result-object v2

    .line 2502
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 2503
    new-array v13, v12, [I

    .line 2504
    invoke-virtual {v0, v13}, Lcom/android/launcher2/CellLayout;->getLocationOnScreen([I)V

    .line 2506
    invoke-virtual {p1}, Landroid/view/DragEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    aget v4, v13, v11

    sub-int/2addr v3, v4

    .line 2507
    invoke-virtual {p1}, Landroid/view/DragEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    aget v6, v13, v5

    sub-int/2addr v4, v6

    .line 2509
    invoke-virtual {p1}, Landroid/view/DragEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 2603
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2512
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v2

    .line 2513
    if-eqz v2, :cond_1

    .line 2514
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-nez v2, :cond_0

    move v2, v5

    .line 2515
    :goto_1
    if-eqz v2, :cond_2

    .line 2517
    invoke-virtual {v0, v13, v5, v5}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2518
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0029

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v11

    .line 2520
    goto :goto_0

    :cond_0
    move v2, v11

    .line 2514
    goto :goto_1

    .line 2525
    :cond_1
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f0e0019

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v0, v11

    .line 2527
    goto :goto_0

    .line 2532
    :cond_2
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 2533
    sget v6, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2534
    invoke-direct {p0, v2, v6}, Lcom/android/launcher2/Workspace;->createExternalDragOutline(Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2537
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 2538
    invoke-virtual {v0, v5}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2539
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2540
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIII)V

    move v0, v5

    .line 2542
    goto :goto_0

    .line 2546
    :pswitch_1
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIII)V

    move v0, v5

    .line 2547
    goto :goto_0

    .line 2550
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->getModel()Lcom/android/launcher2/LauncherModel;

    move-result-object v6

    .line 2551
    invoke-virtual {p1}, Landroid/view/DragEvent;->getClipData()Landroid/content/ClipData;

    move-result-object v9

    .line 2557
    aput v3, v13, v11

    .line 2558
    aput v4, v13, v5

    .line 2559
    invoke-direct {p0, p1}, Lcom/android/launcher2/Workspace;->validateDrag(Landroid/view/DragEvent;)Landroid/util/Pair;

    move-result-object v7

    .line 2560
    if-eqz v7, :cond_3

    .line 2561
    iget-object v1, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2562
    iget-object v10, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/util/List;

    .line 2563
    if-nez v10, :cond_4

    move v7, v5

    .line 2564
    :goto_2
    invoke-virtual {v2, v1}, Landroid/content/ClipDescription;->getMimeType(I)Ljava/lang/String;

    move-result-object v8

    .line 2565
    if-eqz v7, :cond_5

    .line 2566
    invoke-virtual {v9, v1}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ClipData$Item;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 2567
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/ClipData;->getIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v2, v1, v7}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 2568
    new-array v2, v12, [I

    aput v3, v2, v11

    aput v4, v2, v5

    invoke-direct {p0, v2, v1, v0, v11}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    :cond_3
    :goto_3
    move v0, v5

    .line 2594
    goto/16 :goto_0

    :cond_4
    move v7, v11

    .line 2563
    goto :goto_2

    .line 2570
    :cond_5
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v5, :cond_6

    .line 2573
    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    iget-object v0, v0, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;->widgetInfo:Landroid/appwidget/AppWidgetProviderInfo;

    .line 2574
    new-instance v1, Lcom/android/launcher2/PendingAddWidgetInfo;

    invoke-direct {v1, v0, v8, v9}, Lcom/android/launcher2/PendingAddWidgetInfo;-><init>(Landroid/appwidget/AppWidgetProviderInfo;Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2576
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v2, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/launcher2/Launcher;->addAppWidgetFromDrop(Lcom/android/launcher2/PendingAddWidgetInfo;I[I)V

    goto :goto_3

    .line 2580
    :cond_6
    new-instance v6, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;

    iget-object v7, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    iget v12, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move-object v11, v0

    invoke-direct/range {v6 .. v13}, Lcom/android/launcher2/InstallWidgetReceiver$WidgetListAdapter;-><init>(Lcom/android/launcher2/Launcher;Ljava/lang/String;Landroid/content/ClipData;Ljava/util/List;Lcom/android/launcher2/CellLayout;I[I)V

    .line 2583
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2585
    invoke-virtual {v0, v6, v6}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2586
    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 2587
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mContext:Landroid/content/Context;

    const v2, 0x7f0e001a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2589
    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2590
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 2598
    :pswitch_3
    invoke-virtual {v0, v11}, Lcom/android/launcher2/CellLayout;->setIsDragOccuring(Z)V

    .line 2599
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2600
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    move v0, v5

    .line 2601
    goto/16 :goto_0

    .line 2509
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
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
    .line 2860
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->doDragExit()V

    .line 2861
    return-void
.end method

.method public onDragOver(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 25
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2753
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    move v5, v0

    if-nez v5, :cond_7

    .line 2755
    sub-int v7, p2, p4

    .line 2756
    .local v7, originX:I
    sub-int v8, p3, p5

    .line 2757
    .local v8, originY:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v5, v0

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    move v5, v0

    if-eqz v5, :cond_8

    :cond_0
    const/4 v5, 0x1

    move/from16 v22, v5

    .line 2758
    .local v22, shrunken:Z
    :goto_0
    if-eqz v22, :cond_b

    .line 2759
    move-object/from16 v0, p6

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mLastDragView:Lcom/android/launcher2/DragView;

    .line 2760
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mLastDragOriginX:I

    .line 2761
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mLastDragOriginY:I

    .line 2762
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mLastDragXOffset:I

    .line 2763
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mLastDragYOffset:I

    move-object/from16 v5, p0

    move-object/from16 v6, p6

    move/from16 v9, p4

    move/from16 v10, p5

    .line 2764
    invoke-direct/range {v5 .. v10}, Lcom/android/launcher2/Workspace;->findMatchingPageForDragOver(Lcom/android/launcher2/DragView;IIII)Lcom/android/launcher2/CellLayout;

    move-result-object v19

    .line 2766
    .local v19, layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    if-eq v0, v1, :cond_3

    .line 2767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 2768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/SpringLoadedDragController;->onDragExit()V

    .line 2771
    :cond_1
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 2775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getAcceptsDrops()Z

    move-result v5

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v5, v6, :cond_9

    :cond_2
    const/4 v5, 0x1

    move/from16 v16, v5

    .line 2778
    .local v16, allowDragOver:Z
    :goto_1
    if-eqz v16, :cond_3

    .line 2779
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 2780
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object v9, v0

    sget-object v10, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v9, v10, :cond_a

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v5, v6, v9}, Lcom/android/launcher2/SpringLoadedDragController;->onDragEnter(Lcom/android/launcher2/CellLayout;Z)V

    .line 2794
    .end local v16           #allowDragOver:Z
    :cond_3
    :goto_3
    if-eqz v22, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object v5, v0

    sget-object v6, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v5, v6, :cond_7

    .line 2795
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v19

    .line 2797
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object/from16 v18, v0

    .line 2798
    .local v18, item:Lcom/android/launcher2/ItemInfo;
    move-object/from16 v0, p7

    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move v5, v0

    if-eqz v5, :cond_5

    .line 2799
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object/from16 v24, v0

    .line 2801
    .local v24, widgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->spanX:I

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_5

    .line 2803
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    move v5, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    move v6, v0

    const/4 v9, 0x0

    move-object/from16 v0, v19

    move v1, v5

    move v2, v6

    move-object v3, v9

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v23

    .line 2805
    .local v23, spans:[I
    const/4 v5, 0x0

    aget v5, v23, v5

    move v0, v5

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 2806
    const/4 v5, 0x1

    aget v5, v23, v5

    move v0, v5

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 2810
    .end local v23           #spans:[I
    .end local v24           #widgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_5
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher2/AllAppsPagedView;

    move v5, v0

    if-eqz v5, :cond_d

    .line 2813
    if-eqz v18, :cond_6

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_6

    if-eqz v19, :cond_6

    .line 2814
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getWidth()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v17, v5, 0x2

    .line 2816
    .local v17, dragRegionLeft:I
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getDragRegionLeft()I

    move-result v5

    sub-int v5, v17, v5

    add-int/2addr v7, v5

    .line 2817
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getDragRegionWidth()I

    move-result v5

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v6

    if-eq v5, v6, :cond_6

    .line 2818
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getDragRegionLeft()I

    move-result v5

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getDragRegionTop()I

    move-result v6

    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v9

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getDragRegionHeight()I

    move-result v10

    move-object/from16 v0, p6

    move v1, v5

    move v2, v6

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/DragView;->setDragRegion(IIII)V

    .line 2833
    .end local v17           #dragRegionLeft:I
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    if-eqz v5, :cond_7

    .line 2834
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    if-nez v5, :cond_e

    const/4 v5, 0x0

    move-object v10, v5

    .line 2835
    .local v10, child:Landroid/view/View;
    :goto_5
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/4 v5, 0x0

    int-to-float v6, v7

    aput v6, v20, v5

    const/4 v5, 0x1

    int-to-float v6, v8

    aput v6, v20, v5

    .line 2836
    .local v20, localOrigin:[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v20

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    move-object v11, v0

    const/4 v5, 0x0

    aget v5, v20, v5

    float-to-int v12, v5

    const/4 v5, 0x1

    aget v5, v20, v5

    float-to-int v13, v5

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanX:I

    move v14, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher2/ItemInfo;->spanY:I

    move v15, v0

    invoke-virtual/range {v9 .. v15}, Lcom/android/launcher2/CellLayout;->visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIII)V

    .line 2842
    .end local v7           #originX:I
    .end local v8           #originY:I
    .end local v10           #child:Landroid/view/View;
    .end local v18           #item:Lcom/android/launcher2/ItemInfo;
    .end local v19           #layout:Lcom/android/launcher2/CellLayout;
    .end local v20           #localOrigin:[F
    .end local v22           #shrunken:Z
    :cond_7
    return-void

    .line 2757
    .restart local v7       #originX:I
    .restart local v8       #originY:I
    :cond_8
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_0

    .line 2775
    .restart local v19       #layout:Lcom/android/launcher2/CellLayout;
    .restart local v22       #shrunken:Z
    :cond_9
    const/4 v5, 0x0

    move/from16 v16, v5

    goto/16 :goto_1

    .line 2780
    .restart local v16       #allowDragOver:Z
    :cond_a
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 2785
    .end local v16           #allowDragOver:Z
    .end local v19           #layout:Lcom/android/launcher2/CellLayout;
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCurrentDropLayout()Lcom/android/launcher2/CellLayout;

    move-result-object v19

    .line 2786
    .restart local v19       #layout:Lcom/android/launcher2/CellLayout;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    move-object/from16 v0, v19

    move-object v1, v5

    if-eq v0, v1, :cond_3

    .line 2787
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    if-eqz v5, :cond_c

    .line 2788
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 2790
    :cond_c
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/CellLayout;->onDragEnter()V

    .line 2791
    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    goto/16 :goto_3

    .line 2824
    .restart local v18       #item:Lcom/android/launcher2/ItemInfo;
    :cond_d
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-ne v0, v1, :cond_6

    .line 2827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v21, v0

    .line 2828
    .local v21, origView:Landroid/view/View;
    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getMeasuredWidth()I

    move-result v5

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v7, v5

    .line 2829
    int-to-float v5, v8

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getMeasuredHeight()I

    move-result v6

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getHeight()I

    move-result v8

    .end local v8           #originY:I
    sub-int/2addr v6, v8

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getOffsetY()F

    move-result v8

    add-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v8, v5

    .restart local v8       #originY:I
    goto/16 :goto_4

    .line 2834
    .end local v21           #origView:Landroid/view/View;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v10, v5

    goto/16 :goto_5
.end method

.method public onDragStartedWithItemSpans(IILandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "spanX"
    .parameter "spanY"
    .parameter "b"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1776
    iput-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsDragInProcess:Z

    .line 1778
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2}, Landroid/graphics/Canvas;-><init>()V

    .line 1781
    .local v2, canvas:Landroid/graphics/Canvas;
    sget v3, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 1783
    .local v3, bitmapPadding:I
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 1784
    .local v6, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6, p1, p2}, Lcom/android/launcher2/CellLayout;->cellSpansToSize(II)[I

    move-result-object v7

    .line 1786
    .local v7, desiredSize:[I
    aget v4, v7, v0

    aget v5, v7, v1

    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/graphics/Bitmap;Landroid/graphics/Canvas;III)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 1788
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    invoke-direct {p0, v0, p1, p2}, Lcom/android/launcher2/Workspace;->updateWhichPagesAcceptDropsDuringDrag(Lcom/android/launcher2/Workspace$ShrinkState;II)V

    .line 1789
    return-void
.end method

.method public onDragStopped(Z)V
    .locals 1
    .parameter "success"

    .prologue
    .line 1794
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mLastDragView:Lcom/android/launcher2/DragView;

    .line 1796
    if-nez p1, :cond_0

    .line 1797
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->doDragExit()V

    .line 1799
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsDragInProcess:Z

    .line 1800
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    invoke-direct {p0, v0}, Lcom/android/launcher2/Workspace;->updateWhichPagesAcceptDrops(Lcom/android/launcher2/Workspace$ShrinkState;)V

    .line 1801
    return-void
.end method

.method public onDragViewVisible()V
    .locals 2

    .prologue
    .line 3030
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3031
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .parameter

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1171
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsets()V

    .line 1174
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mDrawBackground:Z

    if-eqz v0, :cond_0

    .line 1175
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    const/high16 v1, 0x437f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 1176
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mDrawCustomizeTrayBackground:Z

    if-eqz v1, :cond_1

    .line 1178
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawer:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerPos:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 1179
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 1180
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerTransformedPos:[F

    aput v3, v2, v5

    .line 1181
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerTransformedPos:[F

    iget-object v3, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerContent:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v6

    .line 1182
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerTransformedPos:[F

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1185
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCustomizeTrayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1186
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCustomizeTrayBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v4

    invoke-virtual {v1, v2, v5, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1188
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCustomizeTrayBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1191
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerPos:[I

    aget v1, v1, v6

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerTransformedPos:[F

    aget v2, v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1193
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget v3, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1196
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1204
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onDraw(Landroid/graphics/Canvas;)V

    .line 1205
    return-void

    .line 1198
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1199
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget v2, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v0, v1, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1201
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 35
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 2307
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mWasSpringLoadedOnDragExit:Z

    move v5, v0

    if-eqz v5, :cond_7

    :cond_0
    const/4 v5, 0x1

    move/from16 v31, v5

    .line 2308
    .local v31, largeOrSpringLoaded:Z
    :goto_0
    if-eqz v31, :cond_8

    sub-int v5, p2, p4

    move v6, v5

    .line 2309
    .local v6, originX:I
    :goto_1
    if-eqz v31, :cond_9

    sub-int v5, p3, p5

    move v7, v5

    .line 2311
    .local v7, originY:I
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v5, v0

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    move v5, v0

    if-eqz v5, :cond_2

    .line 2313
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTempOriginXY:[F

    move-object v5, v0

    const/4 v8, 0x0

    int-to-float v6, v6

    aput v6, v5, v8

    .line 2314
    .end local v6           #originX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTempOriginXY:[F

    move-object v5, v0

    const/4 v6, 0x1

    int-to-float v7, v7

    aput v7, v5, v6

    .line 2315
    .end local v7           #originY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTempOriginXY:[F

    move-object v6, v0

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    .line 2316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTempOriginXY:[F

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v6, v5

    .line 2317
    .restart local v6       #originX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTempOriginXY:[F

    move-object v5, v0

    const/4 v7, 0x1

    aget v5, v5, v7

    float-to-int v7, v5

    .line 2318
    .restart local v7       #originY:I
    if-nez v31, :cond_2

    .line 2319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getCellWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v6, v5

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getCellHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v7, v5

    .line 2326
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v30

    .line 2328
    .local v30, dragTargetIndex:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v5, v0

    move v0, v5

    move/from16 v1, v30

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v5, v0

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    move v5, v0

    if-eqz v5, :cond_4

    .line 2329
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->scrollToNewPageWithoutMovingPages(I)V

    .line 2333
    .end local v30           #dragTargetIndex:I
    :cond_4
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    if-eq v0, v1, :cond_b

    .line 2334
    const/4 v5, 0x2

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v34, v0

    const/4 v5, 0x0

    aput v6, v34, v5

    const/4 v5, 0x1

    aput v7, v34, v5

    .line 2335
    .local v34, touchXY:[I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v5, v0

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    move v5, v0

    if-eqz v5, :cond_a

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v5

    if-nez v5, :cond_a

    .line 2338
    check-cast p7, Lcom/android/launcher2/ItemInfo;

    .end local p7
    move-object/from16 v0, v34

    move-object/from16 v1, p7

    iput-object v0, v1, Lcom/android/launcher2/ItemInfo;->dropPos:[I

    .line 2418
    .end local v6           #originX:I
    .end local v34           #touchXY:[I
    .end local p1
    :cond_6
    :goto_3
    return-void

    .line 2307
    .end local v7           #originY:I
    .end local v31           #largeOrSpringLoaded:Z
    .restart local p1
    .restart local p7
    :cond_7
    const/4 v5, 0x0

    move/from16 v31, v5

    goto/16 :goto_0

    .line 2308
    .restart local v31       #largeOrSpringLoaded:Z
    :cond_8
    sub-int v5, p2, p4

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    move v6, v5

    goto/16 :goto_1

    .line 2309
    .restart local v6       #originX:I
    :cond_9
    sub-int v5, p3, p5

    invoke-virtual/range {p6 .. p6}, Lcom/android/launcher2/DragView;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v5, v7

    move v7, v5

    goto/16 :goto_2

    .line 2341
    .restart local v7       #originY:I
    .restart local v34       #touchXY:[I
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v34

    move-object/from16 v2, p7

    move-object v3, v5

    move v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace;->onDropExternal([ILjava/lang/Object;Lcom/android/launcher2/CellLayout;Z)V

    goto :goto_3

    .line 2342
    .end local v34           #touchXY:[I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    if-eqz v5, :cond_6

    .line 2343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    iget-object v10, v5, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2344
    .local v10, cell:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    move-object v11, v0

    .line 2348
    .local v11, dropTargetLayout:Lcom/android/launcher2/CellLayout;
    if-nez v11, :cond_c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    move v5, v0

    if-eqz v5, :cond_c

    .line 2349
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPendingScrollDirection:I

    move v5, v0

    if-nez v5, :cond_11

    .line 2350
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v5, v0

    const/4 v8, 0x1

    sub-int/2addr v5, v8

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    check-cast v11, Lcom/android/launcher2/CellLayout;

    .line 2356
    .restart local v11       #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    :cond_c
    :goto_4
    if-eqz v11, :cond_10

    .line 2358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    iget v8, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    iget v9, v5, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v12, v0

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v12}, Lcom/android/launcher2/Workspace;->findNearestVacantArea(IIIILandroid/view/View;Lcom/android/launcher2/CellLayout;[I)[I

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    .line 2362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    if-nez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move v14, v5

    .line 2365
    .local v14, screen:I
    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v5, v0

    if-eq v14, v5, :cond_d

    .line 2366
    move-object/from16 v0, p0

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 2369
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    if-eqz v5, :cond_10

    .line 2370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    if-eq v14, v5, :cond_e

    .line 2372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    iget v5, v5, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/launcher2/CellLayout;

    move-object/from16 v0, p1

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 2373
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v15, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v16, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v18, v0

    move-object/from16 v12, p0

    move-object v13, v10

    invoke-virtual/range {v12 .. v18}, Lcom/android/launcher2/Workspace;->addInScreen(Landroid/view/View;IIIII)V

    .line 2378
    :cond_e
    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher2/ItemInfo;

    .line 2379
    .local v22, info:Lcom/android/launcher2/ItemInfo;
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v32

    check-cast v32, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 2380
    .local v32, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {v11, v10, v5, v8}, Lcom/android/launcher2/CellLayout;->onMove(Landroid/view/View;II)V

    .line 2381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    .line 2382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    move v0, v5

    move-object/from16 v1, v32

    iput v0, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .line 2383
    const/4 v15, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v17, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mTargetCell:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v18, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    move-object v5, v0

    move-object v0, v5

    iget v0, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    move/from16 v20, v0

    invoke-static/range {v15 .. v20}, Lcom/android/launcher2/LauncherModel;->getCellLayoutChildId(IIIIII)I

    move-result v5

    invoke-virtual {v10, v5}, Landroid/view/View;->setId(I)V

    .line 2386
    instance-of v5, v10, Lcom/android/launcher2/LauncherAppWidgetHostView;

    if-eqz v5, :cond_f

    .line 2387
    invoke-virtual {v11}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v17

    .line 2388
    .local v17, children:Lcom/android/launcher2/CellLayoutChildren;
    move-object/from16 v20, v11

    .line 2392
    .local v20, cellLayout:Lcom/android/launcher2/CellLayout;
    move-object v0, v10

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetHostView;

    move-object/from16 v19, v0

    .line 2393
    .local v19, hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    invoke-virtual/range {v19 .. v19}, Lcom/android/launcher2/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v33

    .line 2394
    .local v33, pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    move-object/from16 v0, v33

    iget v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    move v5, v0

    if-eqz v5, :cond_f

    .line 2395
    new-instance v15, Lcom/android/launcher2/Workspace$12;

    move-object/from16 v16, p0

    move-object/from16 v18, v22

    invoke-direct/range {v15 .. v20}, Lcom/android/launcher2/Workspace$12;-><init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayoutChildren;Lcom/android/launcher2/ItemInfo;Lcom/android/launcher2/LauncherAppWidgetHostView;Lcom/android/launcher2/CellLayout;)V

    move-object/from16 v0, p0

    move-object v1, v15

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 2404
    .end local v17           #children:Lcom/android/launcher2/CellLayoutChildren;
    .end local v19           #hostView:Lcom/android/launcher2/LauncherAppWidgetHostView;
    .end local v20           #cellLayout:Lcom/android/launcher2/CellLayout;
    .end local v33           #pinfo:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object/from16 v21, v0

    const-wide/16 v23, -0x64

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    move/from16 v26, v0

    move-object/from16 v0, v32

    iget v0, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    move/from16 v27, v0

    move/from16 v25, v14

    invoke-static/range {v21 .. v27}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    .line 2410
    .end local v14           #screen:I
    .end local v22           #info:Lcom/android/launcher2/ItemInfo;
    .end local v32           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_10
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v27

    check-cast v27, Lcom/android/launcher2/CellLayout;

    .local v27, parent:Lcom/android/launcher2/CellLayout;
    move-object/from16 v23, p0

    move-object/from16 v24, p6

    move/from16 v25, v6

    move/from16 v26, v7

    move-object/from16 v28, v10

    .line 2414
    invoke-direct/range {v23 .. v28}, Lcom/android/launcher2/Workspace;->setPositionForDropAnimation(Landroid/view/View;IILandroid/view/View;Landroid/view/View;)V

    .line 2415
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mWasSpringLoadedOnDragExit:Z

    move v5, v0

    if-nez v5, :cond_13

    const/4 v5, 0x1

    move/from16 v29, v5

    .line 2416
    .local v29, animateDrop:Z
    :goto_6
    move-object/from16 v0, v27

    move-object v1, v10

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;Z)V

    goto/16 :goto_3

    .line 2351
    .end local v27           #parent:Lcom/android/launcher2/CellLayout;
    .end local v29           #animateDrop:Z
    .restart local p1
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mPendingScrollDirection:I

    move v5, v0

    const/4 v8, 0x1

    if-ne v5, v8, :cond_c

    .line 2352
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    .end local v11           #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    check-cast v11, Lcom/android/launcher2/CellLayout;

    .restart local v11       #dropTargetLayout:Lcom/android/launcher2/CellLayout;
    goto/16 :goto_4

    .line 2362
    :cond_12
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v5

    move v14, v5

    goto/16 :goto_5

    .line 2415
    .end local p1
    .restart local v27       #parent:Lcom/android/launcher2/CellLayout;
    :cond_13
    const/4 v5, 0x0

    move/from16 v29, v5

    goto :goto_6
.end method

.method public onDropCompleted(Landroid/view/View;Ljava/lang/Object;Z)V
    .locals 5
    .parameter "target"
    .parameter "dragInfo"
    .parameter "success"

    .prologue
    const/4 v4, 0x0

    .line 3007
    if-eqz p3, :cond_1

    .line 3008
    if-eq p1, p0, :cond_0

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3009
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3010
    .local v0, cellLayout:Lcom/android/launcher2/CellLayout;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeView(Landroid/view/View;)V

    .line 3011
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v1, v1, Lcom/android/launcher2/DropTarget;

    if-eqz v1, :cond_0

    .line 3012
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v1, Lcom/android/launcher2/DropTarget;

    invoke-virtual {v2, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 3023
    .end local v0           #cellLayout:Lcom/android/launcher2/CellLayout;
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->unlockScreenOrientation()V

    .line 3024
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 3025
    iput-object v4, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 3026
    return-void

    .line 3016
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    .line 3020
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->doDragExit()V

    .line 3021
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget v1, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout;

    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher2/CellLayout;->onDropChild(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method public onEnterScrollArea(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x1

    .line 3059
    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-nez v2, :cond_1

    .line 3060
    iput-boolean v4, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3061
    iput p1, p0, Lcom/android/launcher2/Workspace;->mPendingScrollDirection:I

    .line 3063
    iget v2, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-nez p1, :cond_2

    const/4 v3, -0x1

    :goto_0
    add-int v1, v2, v3

    .line 3064
    .local v1, page:I
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 3066
    .local v0, layout:Lcom/android/launcher2/CellLayout;
    if-eqz v0, :cond_1

    .line 3067
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 3069
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    if-eqz v2, :cond_0

    .line 3070
    iget-object v2, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher2/CellLayout;->onDragExit()V

    .line 3071
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher2/Workspace;->mDragTargetLayout:Lcom/android/launcher2/CellLayout;

    .line 3074
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 3075
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 3079
    .end local v0           #layout:Lcom/android/launcher2/CellLayout;
    .end local v1           #page:I
    :cond_1
    return-void

    :cond_2
    move v3, v4

    .line 3063
    goto :goto_0
.end method

.method public onExitScrollArea()V
    .locals 1

    .prologue
    .line 3097
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    if-eqz v0, :cond_0

    .line 3098
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mInScrollArea:Z

    .line 3099
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Workspace;->mPendingScrollDirection:I

    .line 3100
    invoke-direct {p0}, Lcom/android/launcher2/Workspace;->clearAllHovers()V

    .line 3102
    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "ev"

    .prologue
    .line 599
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mXDown:F

    .line 601
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iput v1, p0, Lcom/android/launcher2/Workspace;->mYDown:F

    .line 604
    :cond_0
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-eqz v1, :cond_4

    .line 605
    :cond_1
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    sget-object v2, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v1, v2, :cond_3

    .line 608
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AllAppsPagedView;

    .line 610
    .local v0, allApps:Lcom/android/launcher2/AllAppsPagedView;
    if-eqz v0, :cond_2

    .line 611
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 613
    :cond_2
    const/4 v1, 0x1

    .line 617
    .end local v0           #allApps:Lcom/android/launcher2/AllAppsPagedView;
    :goto_0
    return v1

    .line 615
    :cond_3
    const/4 v1, 0x0

    goto :goto_0

    .line 617
    :cond_4
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

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
    .line 1144
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 1147
    :cond_0
    invoke-super/range {p0 .. p5}, Lcom/android/launcher2/SmoothPagedView;->onLayout(ZIIII)V

    .line 1151
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mWaitingToShrink:Z

    if-eqz v0, :cond_1

    .line 1154
    new-instance v0, Lcom/android/launcher2/Workspace$6;

    invoke-direct {v0, p0}, Lcom/android/launcher2/Workspace$6;-><init>(Lcom/android/launcher2/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 1162
    :cond_1
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isInPlaceRotationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1165
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1167
    :cond_2
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    .prologue
    .line 655
    iget v0, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 657
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher2/Workspace;->mNextPage:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    .line 663
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->showOutlines()V

    .line 664
    return-void

    .line 661
    :cond_0
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher2/Workspace;->enableChildrenCache(II)V

    goto :goto_0
.end method

.method protected onPageEndMoving()V
    .locals 1

    .prologue
    .line 667
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->clearChildrenCache()V

    .line 669
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v0}, Lcom/android/launcher2/DragController;->dragging()Z

    move-result v0

    if-nez v0, :cond_0

    .line 670
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->hideOutlines()V

    .line 672
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    .line 673
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 674
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 2
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1262
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1263
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getOpenFolder()Lcom/android/launcher2/Folder;

    move-result-object v0

    .line 1264
    .local v0, openFolder:Lcom/android/launcher2/Folder;
    if-eqz v0, :cond_0

    .line 1265
    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/Folder;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1270
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :goto_0
    return v1

    .line 1267
    .restart local v0       #openFolder:Lcom/android/launcher2/Folder;
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher2/SmoothPagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    goto :goto_0

    .line 1270
    .end local v0           #openFolder:Lcom/android/launcher2/Folder;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 3039
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 3040
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-static {v0}, Lcom/android/launcher2/Launcher;->setScreen(I)V

    .line 3041
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 570
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "ev"

    .prologue
    const/4 v3, 0x1

    .line 1327
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v2, 0x7f08000d

    invoke-virtual {v1, v2}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/AllAppsPagedView;

    .line 1330
    .local v0, allApps:Lcom/android/launcher2/AllAppsPagedView;
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher2/Launcher;->isAllAppsVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    sget-object v2, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v1, v2, :cond_3

    if-eqz v0, :cond_3

    .line 1332
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v3, :cond_2

    invoke-virtual {v0}, Lcom/android/launcher2/AllAppsPagedView;->getTouchState()I

    move-result v1

    if-nez v1, :cond_2

    .line 1336
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1339
    :cond_0
    iget v1, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1341
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    sget-object v2, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v1, v2, :cond_1

    .line 1342
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v1, v3}, Lcom/android/launcher2/Launcher;->showWorkspace(Z)V

    .line 1344
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move v1, v3

    .line 1350
    :goto_0
    return v1

    .line 1347
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/launcher2/AllAppsPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0

    .line 1350
    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher2/SmoothPagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1374
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mTempCell:[I

    .line 1375
    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->getLocationOnScreen([I)V

    .line 1377
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 1378
    aget v1, v4, v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    aput v1, v4, v5

    .line 1379
    aget v1, v4, v6

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    float-to-int v0, v0

    add-int/2addr v0, v1

    aput v0, v4, v6

    .line 1381
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v6, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v4, v5

    aget v4, v4, v6

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    .line 1385
    return-void

    .line 1381
    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 1
    .parameter "visibility"

    .prologue
    .line 585
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Launcher;->onWindowVisibilityChanged(I)V

    .line 586
    return-void
.end method

.method overScrollBackgroundAlphaInterpolator(F)F
    .locals 2
    .parameter

    .prologue
    .line 1084
    const v0, 0x3da3d70a

    .line 1086
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpl-float v1, p1, v1

    if-lez v1, :cond_0

    .line 1087
    iput p1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    move v1, p1

    .line 1092
    :goto_0
    div-float v0, v1, v0

    const/high16 v1, 0x3f80

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 1088
    :cond_0
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    cmpg-float v1, p1, v1

    if-gez v1, :cond_1

    .line 1089
    iget v1, p0, Lcom/android/launcher2/Workspace;->mOverScrollMaxBackgroundAlpha:F

    goto :goto_0

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method overlaps(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/DragView;IILandroid/graphics/Matrix;)Z
    .locals 10
    .parameter "cl"
    .parameter "dragView"
    .parameter "dragViewX"
    .parameter "dragViewY"
    .parameter "cachedInverseMatrix"

    .prologue
    .line 2662
    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mTempDragCoordinates:[F

    .line 2663
    .local v1, draggedItemTopLeft:[F
    const/4 v7, 0x0

    int-to-float v8, p3

    aput v8, v1, v7

    .line 2664
    const/4 v7, 0x1

    int-to-float v8, p4

    aput v8, v1, v7

    .line 2665
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempDragBottomRightCoordinates:[F

    .line 2666
    .local v0, draggedItemBottomRight:[F
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionWidth()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2667
    const/4 v7, 0x1

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-virtual {p2}, Lcom/android/launcher2/DragView;->getDragRegionHeight()I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    aput v8, v0, v7

    .line 2671
    invoke-virtual {p0, p1, v1, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2672
    const/4 v7, 0x0

    const/4 v8, 0x0

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 2673
    .local v4, overlapRegionLeft:F
    const/4 v7, 0x0

    const/4 v8, 0x1

    aget v8, v1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    .line 2675
    .local v6, overlapRegionTop:F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v4, v7

    if-gtz v7, :cond_0

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_0

    .line 2678
    invoke-virtual {p0, p1, v0, p5}, Lcom/android/launcher2/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[FLandroid/graphics/Matrix;)V

    .line 2679
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 2680
    .local v5, overlapRegionRight:F
    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aget v8, v0, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 2682
    .local v3, overlapRegionBottom:F
    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v7

    int-to-float v7, v7

    cmpg-float v7, v3, v7

    if-gtz v7, :cond_0

    .line 2683
    sub-float v7, v5, v4

    sub-float v8, v3, v6

    mul-float v2, v7, v8

    .line 2685
    .local v2, overlap:F
    const/4 v7, 0x0

    cmpl-float v7, v2, v7

    if-lez v7, :cond_0

    .line 2686
    const/4 v7, 0x1

    .line 2690
    .end local v2           #overlap:F
    .end local v3           #overlapRegionBottom:F
    .end local v5           #overlapRegionRight:F
    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method protected pageBeginMoving()V
    .locals 1

    .prologue
    .line 1360
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->enableChildrenLayers(Z)V

    .line 1361
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->pageBeginMoving()V

    .line 1362
    return-void
.end method

.method protected pageEndMoving()V
    .locals 1

    .prologue
    .line 1366
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-nez v0, :cond_0

    .line 1367
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->enableChildrenLayers(Z)V

    .line 1369
    :cond_0
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->pageEndMoving()V

    .line 1370
    return-void
.end method

.method removeItems(Ljava/util/ArrayList;)V
    .locals 10
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
    .line 3140
    .local p1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ApplicationInfo;>;"
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v9

    .line 3141
    .local v9, screenCount:I
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 3142
    .local v4, manager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    .line 3144
    .local v5, widgets:Landroid/appwidget/AppWidgetManager;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 3145
    .local v3, packageNames:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 3146
    .local v7, appCount:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    if-ge v8, v7, :cond_0

    .line 3147
    invoke-virtual {p1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    iget-object v0, v0, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 3146
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 3150
    :cond_0
    const/4 v8, 0x0

    :goto_1
    if-ge v8, v9, :cond_1

    .line 3151
    invoke-virtual {p0, v8}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout;

    .line 3152
    .local v6, layoutParent:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v6}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v2

    .line 3155
    .local v2, layout:Landroid/view/ViewGroup;
    new-instance v0, Lcom/android/launcher2/Workspace$13;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher2/Workspace$13;-><init>(Lcom/android/launcher2/Workspace;Landroid/view/ViewGroup;Ljava/util/HashSet;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 3150
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 3254
    .end local v2           #layout:Landroid/view/ViewGroup;
    .end local v6           #layoutParent:Lcom/android/launcher2/CellLayout;
    :cond_1
    return-void
.end method

.method protected screenScrolled(I)V
    .locals 7
    .parameter

    .prologue
    const/high16 v6, 0x3f80

    .line 1097
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    .line 1099
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v0

    if-ge v2, v0, :cond_5

    .line 1100
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 1101
    if-eqz v0, :cond_3

    .line 1102
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getScaledMeasuredWidth(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lcom/android/launcher2/Workspace;->mPageSpacing:I

    add-int/2addr v3, v4

    .line 1103
    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getChildOffset(I)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/android/launcher2/Workspace;->getRelativeChildOffset(I)I

    move-result v5

    sub-int/2addr v4, v5

    add-int/2addr v4, v1

    sub-int v4, p1, v4

    .line 1106
    int-to-float v4, v4

    int-to-float v3, v3

    mul-float/2addr v3, v6

    div-float v3, v4, v3

    .line 1107
    invoke-static {v3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 1108
    const/high16 v4, -0x4080

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 1112
    iget v4, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    if-gez v4, :cond_0

    if-eqz v2, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/launcher2/Workspace;->mScrollX:I

    iget v5, p0, Lcom/android/launcher2/Workspace;->mMaxScrollX:I

    if-le v4, v5, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v4

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ne v2, v4, :cond_4

    .line 1114
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->overScrollBackgroundAlphaInterpolator(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1116
    iput v2, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    .line 1122
    :cond_2
    :goto_1
    const/high16 v4, 0x4148

    mul-float/2addr v3, v4

    .line 1123
    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v5

    invoke-direct {p0, v3, v4, v5}, Lcom/android/launcher2/Workspace;->getOffsetXForRotation(FII)F

    move-result v4

    .line 1124
    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1126
    invoke-virtual {v0, v3}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1099
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 1117
    :cond_4
    iget v4, p0, Lcom/android/launcher2/Workspace;->mOverScrollPageIndex:I

    if-eq v4, v2, :cond_2

    .line 1118
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/launcher2/Workspace;->backgroundAlphaInterpolator(F)F

    move-result v4

    invoke-virtual {v0, v4}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    goto :goto_1

    .line 1129
    :cond_5
    return-void
.end method

.method public scrollLeft()V
    .locals 1

    .prologue
    .line 3045
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-nez v0, :cond_0

    .line 3046
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollLeft()V

    .line 3048
    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 1

    .prologue
    .line 3052
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-nez v0, :cond_0

    .line 3053
    invoke-super {p0}, Lcom/android/launcher2/SmoothPagedView;->scrollRight()V

    .line 3055
    :cond_0
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 1
    .parameter "alpha"

    .prologue
    .line 1036
    iget v0, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 1037
    iput p1, p0, Lcom/android/launcher2/Workspace;->mBackgroundAlpha:F

    .line 1038
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->invalidate()V

    .line 1040
    :cond_0
    return-void
.end method

.method public setChildrenOutlineAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 977
    iput p1, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineAlpha:F

    .line 978
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 979
    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout;

    .line 980
    .local v0, cl:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 978
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v0           #cl:Lcom/android/launcher2/CellLayout;
    :cond_0
    return-void
.end method

.method public setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 3000
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    .line 3001
    return-void
.end method

.method public setHorizontalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 755
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalX(F)V

    .line 756
    return-void
.end method

.method setIndicators(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .parameter "previous"
    .parameter "next"

    .prologue
    .line 3301
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mPreviousIndicator:Landroid/graphics/drawable/Drawable;

    .line 3302
    iput-object p2, p0, Lcom/android/launcher2/Workspace;->mNextIndicator:Landroid/graphics/drawable/Drawable;

    .line 3303
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3304
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 3305
    return-void
.end method

.method setLauncher(Lcom/android/launcher2/Launcher;)V
    .locals 2
    .parameter

    .prologue
    .line 2989
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    .line 2990
    new-instance v0, Lcom/android/launcher2/SpringLoadedDragController;

    iget-object v1, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher2/SpringLoadedDragController;-><init>(Lcom/android/launcher2/Launcher;)V

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mSpringLoadedDragController:Lcom/android/launcher2/SpringLoadedDragController;

    .line 2992
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawer:Landroid/view/View;

    .line 2993
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawer:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2994
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawer:Landroid/view/View;

    const v1, 0x1020011

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mCustomizationDrawerContent:Landroid/view/View;

    .line 2997
    :cond_0
    return-void
.end method

.method public setVerticalWallpaperOffset(F)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 749
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setFinalY(F)V

    .line 750
    return-void
.end method

.method protected setWallpaperDimension()V
    .locals 7

    .prologue
    .line 732
    iget-object v4, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 733
    .local v0, display:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v5, v5

    add-int v1, v4, v5

    .line 734
    .local v1, height:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 735
    .local v2, maxDim:I
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v4

    invoke-static {v4, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 739
    .local v3, minDim:I
    int-to-float v4, v2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenWidthRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperWidth:I

    .line 740
    int-to-float v4, v2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v5

    mul-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, p0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    .line 741
    new-instance v4, Lcom/android/launcher2/Workspace$3;

    const-string v5, "setWallpaperDimension"

    invoke-direct {v4, p0, v5}, Lcom/android/launcher2/Workspace$3;-><init>(Lcom/android/launcher2/Workspace;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$3;->start()V

    .line 746
    return-void
.end method

.method showOutlines()V
    .locals 4

    .prologue
    .line 950
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsInUnshrinkAnimation:Z

    if-nez v0, :cond_2

    .line 951
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeOutAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 953
    :cond_1
    const-string v0, "childrenOutlineAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    const/high16 v3, 0x3f80

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    .line 954
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 955
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mChildrenOutlineFadeInAnimation:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 957
    :cond_2
    return-void
.end method

.method public showOutlinesTemporarily()V
    .locals 1

    .prologue
    .line 971
    iget-boolean v0, p0, Lcom/android/launcher2/Workspace;->mIsPageMoving:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher2/Workspace;->isTouchActive()Z

    move-result v0

    if-nez v0, :cond_0

    .line 972
    iget v0, p0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->snapToPage(I)V

    .line 974
    :cond_0
    return-void
.end method

.method public shrink(Lcom/android/launcher2/Workspace$ShrinkState;)V
    .locals 1
    .parameter "shrinkState"

    .prologue
    .line 1404
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->shrink(Lcom/android/launcher2/Workspace$ShrinkState;Z)V

    .line 1405
    return-void
.end method

.method public shrink(Lcom/android/launcher2/Workspace$ShrinkState;Z)V
    .locals 36
    .parameter
    .parameter

    .prologue
    .line 1427
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v3, v0

    if-eqz v3, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object v3, v0

    sget-object v4, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    if-ne v3, v4, :cond_18

    .line 1428
    sget-object v3, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v23, v3

    .line 1430
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mFirstLayout:Z

    move v3, v0

    if-eqz v3, :cond_0

    .line 1435
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace;->mWaitingToShrink:Z

    .line 1436
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mWaitingToShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    .line 1667
    :goto_1
    return-void

    .line 1440
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mNextPage:I

    move v3, v0

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mNextPage:I

    move v3, v0

    :goto_2
    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentPage(I)V

    .line 1441
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsDragInProcess:Z

    move v3, v0

    if-nez v3, :cond_1

    .line 1442
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->updateWhichPagesAcceptDrops(Lcom/android/launcher2/Workspace$ShrinkState;)V

    .line 1445
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v3, v0

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 1446
    if-nez p1, :cond_3

    .line 1447
    const-string v3, "Launcher.Workspace"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "currentPage is NULL! mCurrentPage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mNextPage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mNextPage:I

    move v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1440
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v3, v0

    goto :goto_2

    .line 1451
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getBackgroundAlphaMultiplier()F

    move-result v3

    const/high16 v4, 0x3f80

    cmpg-float v3, v3, v4

    if-gez v3, :cond_4

    .line 1452
    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1454
    :cond_4
    const/high16 v3, 0x3f80

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1456
    const/4 v3, 0x1

    move v0, v3

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    .line 1457
    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    .line 1460
    const/4 v3, 0x0

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mTouchState:I

    .line 1461
    const/4 v3, -0x1

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/Workspace;->mActivePointerId:I

    .line 1463
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1464
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getWidth()I

    move-result v4

    .line 1465
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getHeight()I

    move-result v5

    .line 1468
    const v6, 0x7f0a001e

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    .line 1471
    const/4 v7, 0x0

    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    .line 1472
    const/4 v8, 0x0

    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 1474
    int-to-float v8, v7

    mul-float/2addr v8, v6

    move v0, v8

    float-to-int v0, v0

    move/from16 v24, v0

    .line 1475
    int-to-float v8, v9

    mul-float/2addr v8, v6

    float-to-int v10, v8

    .line 1476
    const v8, 0x7f0d001b

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    .line 1478
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    .line 1479
    mul-int v11, v8, v24

    int-to-float v11, v11

    const/4 v12, 0x1

    sub-int v12, v8, v12

    int-to-float v12, v12

    mul-float v12, v12, v25

    add-float/2addr v11, v12

    .line 1481
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getMeasuredHeight()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getMeasuredWidth()I

    move-result v13

    if-le v12, v13, :cond_9

    const/4 v12, 0x1

    .line 1482
    :goto_3
    if-eqz v12, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d001d

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    .line 1485
    :goto_4
    const/high16 v13, 0x3f80

    .line 1486
    const/high16 v26, 0x3f80

    .line 1488
    sget-object v14, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v23

    move-object v1, v14

    if-ne v0, v1, :cond_b

    .line 1489
    int-to-float v5, v5

    sub-float/2addr v5, v12

    int-to-float v12, v10

    sub-float/2addr v5, v12

    move v12, v5

    move v5, v13

    .line 1503
    :goto_5
    sget-object v13, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v23

    move-object v1, v13

    if-eq v0, v1, :cond_5

    sget-object v13, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_VISIBLE:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v23

    move-object v1, v13

    if-ne v0, v1, :cond_e

    .line 1504
    :cond_5
    const v13, 0x7f0a001a

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 1513
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mScroller:Landroid/widget/Scroller;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/widget/Scroller;->getFinalX()I

    move-result v13

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v13

    int-to-float v4, v4

    const/high16 v13, 0x4000

    div-float/2addr v11, v13

    sub-float/2addr v4, v11

    .line 1517
    sub-int v7, v7, v24

    int-to-float v7, v7

    const/high16 v11, 0x4000

    div-float/2addr v7, v11

    sub-float/2addr v4, v7

    .line 1518
    sub-int v7, v9, v10

    int-to-float v7, v7

    const/high16 v9, 0x4000

    div-float/2addr v7, v9

    sub-float v7, v12, v7

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v9, v0

    if-eqz v9, :cond_6

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v9, v0

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1524
    :cond_6
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v9

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1526
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v22

    .line 1527
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v9, v0

    .line 1528
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v11, v0

    .line 1529
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v13, v0

    .line 1530
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v15, v0

    .line 1531
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 1532
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 1533
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .line 1534
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v10, v0

    .line 1535
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v12, v0

    .line 1536
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object v14, v0

    .line 1537
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 1538
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 1539
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 1540
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 1542
    const/16 v27, 0x0

    move/from16 v35, v27

    move/from16 v27, v4

    move/from16 v4, v35

    :goto_7
    if-ge v4, v8, :cond_10

    .line 1543
    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/launcher2/CellLayout;

    .line 1545
    move v0, v4

    neg-int v0, v0

    move/from16 v28, v0

    add-int/lit8 v28, v28, 0x2

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    const/high16 v29, 0x4148

    mul-float v28, v28, v29

    .line 1546
    const-wide/high16 v29, 0x3ff0

    const-wide v31, 0x400921fb54442d18L

    move/from16 v0, v28

    float-to-double v0, v0

    move-wide/from16 v33, v0

    mul-double v31, v31, v33

    const-wide v33, 0x4066800000000000L

    div-double v31, v31, v33

    invoke-static/range {v31 .. v32}, Ljava/lang/Math;->cos(D)D

    move-result-wide v31

    div-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-float v0, v0

    move/from16 v29, v0

    .line 1547
    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/android/launcher2/Workspace;->getYScaleForScreen(I)F

    move-result v30

    .line 1549
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getAlpha()F

    move-result v31

    aput v31, v19, v4

    .line 1550
    aput v5, v20, v4

    .line 1551
    if-eqz p2, :cond_8

    aget v31, v19, v4

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-nez v31, :cond_7

    aget v31, v20, v4

    const/16 v32, 0x0

    cmpl-float v31, v31, v32

    if-eqz v31, :cond_8

    .line 1554
    :cond_7
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->buildChildrenLayer()V

    .line 1556
    :cond_8
    if-eqz p2, :cond_f

    .line 1557
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getX()F

    move-result v31

    aput v31, v9, v4

    .line 1558
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getY()F

    move-result v31

    aput v31, v11, v4

    .line 1559
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v31

    aput v31, v13, v4

    .line 1560
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v31

    aput v31, v15, v4

    .line 1561
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v31

    aput v31, v17, v4

    .line 1562
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v31

    aput v31, v21, v4

    .line 1563
    aput v27, v10, v4

    .line 1564
    aput v7, v12, v4

    .line 1565
    mul-float v29, v29, v6

    mul-float v29, v29, v26

    aput v29, v14, v4

    .line 1566
    mul-float v29, v6, v30

    mul-float v29, v29, v26

    aput v29, v16, v4

    .line 1567
    aput v5, v18, v4

    .line 1568
    aput v28, v22, v4

    .line 1580
    :goto_8
    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v28, v28, v25

    add-float v27, v27, v28

    .line 1542
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    .line 1481
    :cond_9
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 1482
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0d001c

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v12

    goto/16 :goto_4

    .line 1490
    :cond_b
    sget-object v14, Lcom/android/launcher2/Workspace$ShrinkState;->BOTTOM_HIDDEN:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v23

    move-object v1, v14

    if-ne v0, v1, :cond_c

    .line 1493
    int-to-float v5, v5

    sub-float/2addr v5, v12

    int-to-float v12, v10

    sub-float/2addr v5, v12

    .line 1494
    const/4 v12, 0x0

    move/from16 v35, v12

    move v12, v5

    move/from16 v5, v35

    goto/16 :goto_5

    .line 1495
    :cond_c
    sget-object v14, Lcom/android/launcher2/Workspace$ShrinkState;->MIDDLE:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v23

    move-object v1, v14

    if-ne v0, v1, :cond_d

    .line 1496
    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v12, v10, 0x2

    sub-int/2addr v5, v12

    int-to-float v5, v5

    .line 1497
    const/high16 v12, 0x3f80

    move/from16 v35, v12

    move v12, v5

    move/from16 v5, v35

    goto/16 :goto_5

    .line 1498
    :cond_d
    sget-object v14, Lcom/android/launcher2/Workspace$ShrinkState;->TOP:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v23

    move-object v1, v14

    if-ne v0, v1, :cond_17

    .line 1499
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getCustomizeDrawerHeight()I

    move-result v12

    sub-int/2addr v5, v12

    sub-int/2addr v5, v10

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    move v12, v5

    move v5, v13

    goto/16 :goto_5

    .line 1506
    :cond_e
    const v13, 0x7f0a0019

    invoke-virtual {v3, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    goto/16 :goto_6

    .line 1570
    :cond_f
    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setX(F)V

    .line 1571
    move v0, v7

    float-to-int v0, v0

    move/from16 v31, v0

    move/from16 v0, v31

    int-to-float v0, v0

    move/from16 v31, v0

    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setY(F)V

    .line 1572
    mul-float v29, v29, v6

    mul-float v29, v29, v26

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1573
    mul-float v29, v6, v30

    mul-float v29, v29, v26

    move-object/from16 v0, p1

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1574
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1575
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1576
    move-object/from16 v0, p1

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-interface/range {v28 .. v29}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto/16 :goto_8

    .line 1583
    :cond_10
    const/high16 v4, 0x3f00

    .line 1584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1585
    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    move v1, v7

    move/from16 v2, v24

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/Workspace;->wallpaperTravelToScreenHeightRatio(II)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    .line 1587
    int-to-float v6, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperHeight:I

    move v7, v0

    int-to-float v7, v7

    div-float/2addr v6, v7

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    .line 1588
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v7

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v7, v5, :cond_11

    const/4 v5, 0x1

    .line 1590
    :goto_9
    sget-object v7, Lcom/android/launcher2/Workspace$14;->$SwitchMap$com$android$launcher2$Workspace$ShrinkState:[I

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher2/Workspace$ShrinkState;->ordinal()I

    move-result v24

    aget v7, v7, v24

    packed-switch v7, :pswitch_data_0

    :goto_a
    move v7, v4

    .line 1610
    :goto_b
    const/high16 v4, 0x3f80

    move-object/from16 v0, p0

    move v1, v4

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    .line 1611
    if-eqz p2, :cond_15

    .line 1612
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v4, v0

    const v5, 0x3eeb851f

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setHorizontalCatchupConstant(F)V

    .line 1613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    .line 1615
    const/4 v4, 0x0

    move v0, v4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace;->mSyncWallpaperOffsetWithScroll:Z

    .line 1617
    const/4 v4, 0x2

    new-array v4, v4, [F

    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    int-to-long v5, v3

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v24

    .line 1619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomOutInterpolator:Lcom/android/launcher2/Workspace$ZoomOutInterpolator;

    move-object v3, v0

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1621
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getHorizontalWallpaperOffset()F

    move-result v5

    .line 1622
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getVerticalWallpaperOffset()F

    move-result v6

    .line 1625
    new-instance v3, Lcom/android/launcher2/Workspace$7;

    move-object/from16 v4, p0

    invoke-direct/range {v3 .. v22}, Lcom/android/launcher2/Workspace$7;-><init>(Lcom/android/launcher2/Workspace;FFFI[F[F[F[F[F[F[F[F[F[F[F[F[F[F)V

    move-object/from16 v0, v24

    move-object v1, v3

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v3, v0

    const/4 v4, 0x1

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v24, v4, v5

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 1653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object v4, v0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 1660
    :goto_c
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 1662
    sget-object v3, Lcom/android/launcher2/Workspace$ShrinkState;->TOP:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v23

    move-object v1, v3

    if-ne v0, v1, :cond_16

    .line 1663
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->showBackgroundGradientForCustomizeTray()V

    goto/16 :goto_1

    .line 1588
    :cond_11
    const/4 v5, 0x0

    goto/16 :goto_9

    .line 1594
    :pswitch_0
    const/high16 v4, 0x3f00

    add-float/2addr v4, v6

    .line 1595
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_12

    const v5, 0x3eeb851f

    :goto_d
    invoke-virtual {v6, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setVerticalCatchupConstant(F)V

    move v7, v4

    .line 1596
    goto/16 :goto_b

    .line 1595
    :cond_12
    const v5, 0x3ee147ae

    goto :goto_d

    .line 1599
    :pswitch_1
    const/high16 v4, 0x3f00

    .line 1600
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_13

    const v5, 0x3eae147b

    :goto_e
    invoke-virtual {v6, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setVerticalCatchupConstant(F)V

    move v7, v4

    .line 1601
    goto/16 :goto_b

    .line 1600
    :cond_13
    const v5, 0x3ea3d70a

    goto :goto_e

    .line 1605
    :pswitch_2
    const/high16 v4, 0x3f00

    sub-float/2addr v4, v6

    .line 1606
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_14

    const v5, 0x3eae147b

    :goto_f
    invoke-virtual {v6, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setVerticalCatchupConstant(F)V

    goto/16 :goto_a

    :cond_14
    const v5, 0x3ea3d70a

    goto :goto_f

    .line 1656
    :cond_15
    move-object/from16 v0, p0

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVerticalWallpaperOffset(F)V

    .line 1657
    const/high16 v3, 0x3f00

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setHorizontalWallpaperOffset(F)V

    .line 1658
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsetImmediately()V

    goto :goto_c

    .line 1665
    :cond_16
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->showBackgroundGradientForAllApps()V

    goto/16 :goto_1

    :cond_17
    move v5, v13

    goto/16 :goto_5

    :cond_18
    move-object/from16 v23, p1

    goto/16 :goto_0

    .line 1590
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1617
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method startDrag(Lcom/android/launcher2/CellLayout$CellInfo;)V
    .locals 13
    .parameter "cellInfo"

    .prologue
    const/4 v4, 0x0

    .line 2146
    iget-object v11, p1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 2149
    .local v11, child:Landroid/view/View;
    invoke-virtual {v11}, Landroid/view/View;->isInTouchMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2181
    :goto_0
    return-void

    .line 2153
    :cond_0
    iput-object p1, p0, Lcom/android/launcher2/Workspace;->mDragInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 2155
    iget v0, p1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout;

    .line 2156
    .local v12, current:Lcom/android/launcher2/CellLayout;
    invoke-virtual {v12, v11}, Lcom/android/launcher2/CellLayout;->onDragChild(Landroid/view/View;)V

    .line 2158
    invoke-virtual {v11}, Landroid/view/View;->clearFocus()V

    .line 2159
    invoke-virtual {v11, v4}, Landroid/view/View;->setPressed(Z)V

    .line 2161
    new-instance v10, Landroid/graphics/Canvas;

    invoke-direct {v10}, Landroid/graphics/Canvas;-><init>()V

    .line 2164
    .local v10, canvas:Landroid/graphics/Canvas;
    sget v7, Lcom/android/launcher2/HolographicOutlineHelper;->MAX_OUTER_BLUR_RADIUS:I

    .line 2167
    .local v7, bitmapPadding:I
    invoke-direct {p0, v11, v10, v7}, Lcom/android/launcher2/Workspace;->createDragOutline(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/Workspace;->mDragOutline:Landroid/graphics/Bitmap;

    .line 2170
    invoke-direct {p0, v11, v10, v7}, Lcom/android/launcher2/Workspace;->createDragBitmap(Landroid/view/View;Landroid/graphics/Canvas;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 2172
    .local v1, b:Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 2173
    .local v9, bmpWidth:I
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    .line 2174
    .local v8, bmpHeight:I
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    invoke-virtual {v11, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2175
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    aget v0, v0, v4

    invoke-virtual {v11}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int/2addr v4, v9

    div-int/lit8 v4, v4, 0x2

    add-int v2, v0, v4

    .line 2176
    .local v2, screenX:I
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mTempXY:[I

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-virtual {v11}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v4, v8

    div-int/lit8 v4, v4, 0x2

    add-int v3, v0, v4

    .line 2177
    .local v3, screenY:I
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->lockScreenOrientation()V

    .line 2178
    iget-object v0, p0, Lcom/android/launcher2/Workspace;->mDragController:Lcom/android/launcher2/DragController;

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    sget v6, Lcom/android/launcher2/DragController;->DRAG_ACTION_MOVE:I

    move-object v4, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/DragController;->startDrag(Landroid/graphics/Bitmap;IILcom/android/launcher2/DragSource;Ljava/lang/Object;I)V

    .line 2180
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public syncPageItems(I)V
    .locals 0
    .parameter "page"

    .prologue
    .line 3313
    return-void
.end method

.method public syncPages()V
    .locals 0

    .prologue
    .line 3309
    return-void
.end method

.method public unshrink(Lcom/android/launcher2/CellLayout;)V
    .locals 1
    .parameter "clThatWasClicked"

    .prologue
    .line 1805
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->unshrink(Lcom/android/launcher2/CellLayout;Z)V

    .line 1806
    return-void
.end method

.method public unshrink(Lcom/android/launcher2/CellLayout;Z)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1809
    invoke-virtual {p0, p1}, Lcom/android/launcher2/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1810
    iget-boolean v1, p0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    if-eqz v1, :cond_1

    .line 1811
    if-eqz p2, :cond_0

    .line 1812
    const v1, 0x3f333333

    invoke-virtual {p0, v1}, Lcom/android/launcher2/Workspace;->setLayoutScale(F)V

    .line 1814
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher2/Workspace;->scrollToNewPageWithoutMovingPages(I)V

    .line 1815
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/launcher2/Workspace;->unshrink(ZZ)V

    .line 1817
    :cond_1
    return-void
.end method

.method unshrink(Z)V
    .locals 1
    .parameter "animated"

    .prologue
    .line 1839
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher2/Workspace;->unshrink(ZZ)V

    .line 1840
    return-void
.end method

.method unshrink(ZZ)V
    .locals 32
    .parameter
    .parameter

    .prologue
    .line 1843
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace;->mWaitingToShrink:Z

    .line 1844
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v5, v0

    if-eqz v5, :cond_9

    .line 1845
    const/high16 v5, 0x3f80

    .line 1846
    const/4 v6, 0x0

    .line 1847
    if-eqz p2, :cond_2

    .line 1848
    const v5, 0x3f333333

    .line 1849
    const/high16 v6, 0x3f80

    move v7, v5

    .line 1853
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v5, v0

    if-eqz v5, :cond_0

    .line 1854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->cancel()V

    .line 1857
    :cond_0
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    .line 1858
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v10

    .line 1860
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0a001b

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v25

    .line 1862
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    new-array v11, v5, [F

    .line 1863
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    new-array v13, v5, [F

    .line 1864
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    new-array v15, v5, [F

    .line 1865
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v17, v0

    .line 1866
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v19, v0

    .line 1867
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v21, v0

    .line 1868
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v23, v0

    .line 1869
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v26, v0

    .line 1870
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    new-array v12, v5, [F

    .line 1871
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    new-array v14, v5, [F

    .line 1872
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v16, v0

    .line 1873
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 1874
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .line 1875
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v22, v0

    .line 1876
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 1877
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v5

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v27, v0

    .line 1879
    const/4 v5, 0x0

    move v8, v5

    :goto_1
    if-ge v8, v10, :cond_7

    .line 1880
    move-object/from16 v0, p0

    move v1, v8

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    .line 1881
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move v9, v0

    if-ne v8, v9, :cond_3

    const/high16 v9, 0x3f80

    .line 1882
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v28, v0

    move v0, v8

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v28, v0

    sget-object v29, Lcom/android/launcher2/Workspace$ShrinkState;->SPRING_LOADED:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_4

    const/16 v28, 0x0

    .line 1885
    :goto_3
    const/16 v29, 0x0

    .line 1887
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v30, v0

    move v0, v8

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 1888
    const/high16 v29, 0x4148

    .line 1893
    :cond_1
    :goto_4
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v30

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v31

    move-object/from16 v0, p0

    move/from16 v1, v29

    move/from16 v2, v30

    move/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/Workspace;->getOffsetXForRotation(FII)F

    move-result v30

    .line 1895
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getAlpha()F

    move-result v31

    aput v31, v23, v8

    .line 1896
    aput v9, v24, v8

    .line 1897
    if-eqz p1, :cond_6

    .line 1898
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getTranslationX()F

    move-result v9

    aput v9, v11, v8

    .line 1899
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getTranslationY()F

    move-result v9

    aput v9, v13, v8

    .line 1900
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v9

    aput v9, v15, v8

    .line 1901
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getScaleY()F

    move-result v9

    aput v9, v17, v8

    .line 1902
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getBackgroundAlpha()F

    move-result v9

    aput v9, v19, v8

    .line 1903
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getBackgroundAlphaMultiplier()F

    move-result v9

    aput v9, v21, v8

    .line 1904
    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getRotationY()F

    move-result v5

    aput v5, v26, v8

    .line 1906
    aput v30, v12, v8

    .line 1907
    const/4 v5, 0x0

    aput v5, v14, v8

    .line 1908
    aput v7, v16, v8

    .line 1909
    aput v7, v18, v8

    .line 1910
    aput v6, v20, v8

    .line 1911
    aput v28, v22, v8

    .line 1912
    aput v29, v27, v8

    .line 1879
    :goto_5
    add-int/lit8 v5, v8, 0x1

    move v8, v5

    goto/16 :goto_1

    .line 1851
    :cond_2
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/Workspace;->mIsSmall:Z

    move v7, v5

    goto/16 :goto_0

    .line 1881
    :cond_3
    const/4 v9, 0x0

    goto/16 :goto_2

    .line 1882
    :cond_4
    const/high16 v28, 0x3f80

    goto :goto_3

    .line 1889
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/Workspace;->mCurrentPage:I

    move/from16 v30, v0

    move v0, v8

    move/from16 v1, v30

    if-le v0, v1, :cond_1

    .line 1890
    const/high16 v29, -0x3eb8

    goto :goto_4

    .line 1914
    :cond_6
    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationX(F)V

    .line 1915
    const/16 v30, 0x0

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setTranslationY(F)V

    .line 1916
    invoke-virtual {v5, v7}, Lcom/android/launcher2/CellLayout;->setScaleX(F)V

    .line 1917
    invoke-virtual {v5, v7}, Lcom/android/launcher2/CellLayout;->setScaleY(F)V

    .line 1918
    const/16 v30, 0x0

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlpha(F)V

    .line 1919
    move-object v0, v5

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setBackgroundAlphaMultiplier(F)V

    .line 1920
    invoke-virtual {v5, v9}, Lcom/android/launcher2/CellLayout;->setAlpha(F)V

    .line 1921
    move-object v0, v5

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setRotationY(F)V

    .line 1922
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mUnshrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object v5, v0

    const/4 v9, 0x0

    invoke-interface {v5, v9}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_5

    .line 1925
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v5

    .line 1926
    invoke-virtual {v5}, Landroid/view/Display;->getWidth()I

    move-result v6

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    if-le v6, v5, :cond_b

    const/4 v5, 0x1

    .line 1927
    :goto_6
    sget-object v6, Lcom/android/launcher2/Workspace$14;->$SwitchMap$com$android$launcher2$Workspace$ShrinkState:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mShrinkState:Lcom/android/launcher2/Workspace$ShrinkState;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace$ShrinkState;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 1955
    :cond_8
    :goto_7
    if-eqz p1, :cond_12

    .line 1956
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v28

    .line 1958
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mZoomInInterpolator:Lcom/android/launcher2/Workspace$ZoomInInterpolator;

    move-object v5, v0

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1960
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getHorizontalWallpaperOffset()F

    move-result v7

    .line 1961
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getVerticalWallpaperOffset()F

    move-result v9

    .line 1962
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v8

    .line 1964
    new-instance v5, Lcom/android/launcher2/Workspace$8;

    move-object/from16 v6, p0

    invoke-direct/range {v5 .. v24}, Lcom/android/launcher2/Workspace$8;-><init>(Lcom/android/launcher2/Workspace;FFFI[F[F[F[F[F[F[F[F[F[F[F[F[F[F)V

    move-object/from16 v0, v28

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1995
    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    move/from16 v0, v25

    int-to-long v0, v0

    move-wide v6, v0

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 1997
    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v7, 0x4000

    invoke-direct {v6, v7}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1998
    new-instance v6, Lcom/android/launcher2/Workspace$9;

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v10

    move-object/from16 v3, v26

    move-object/from16 v4, v27

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/Workspace$9;-><init>(Lcom/android/launcher2/Workspace;I[F[F)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2014
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v6, v0

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v28, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 2017
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mUnshrinkAnimationListener:Landroid/animation/Animator$AnimatorListener;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2018
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mAnimator:Landroid/animation/AnimatorSet;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    .line 2026
    :cond_9
    :goto_8
    if-nez p2, :cond_a

    .line 2027
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->hideBackgroundGradient()V

    .line 2029
    :cond_a
    return-void

    .line 1926
    :cond_b
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 1931
    :pswitch_0
    if-eqz p1, :cond_8

    .line 1932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_c

    const v7, 0x3f266666

    :goto_9
    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setHorizontalCatchupConstant(F)V

    .line 1933
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_d

    const v5, 0x3f266666

    :goto_a
    invoke-virtual {v6, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setVerticalCatchupConstant(F)V

    .line 1934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    goto/16 :goto_7

    .line 1932
    :cond_c
    const v7, 0x3f1eb852

    goto :goto_9

    .line 1933
    :cond_d
    const v5, 0x3f1eb852

    goto :goto_a

    .line 1939
    :pswitch_1
    if-eqz p1, :cond_8

    .line 1940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_e

    const v7, 0x3efae148

    :goto_b
    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setHorizontalCatchupConstant(F)V

    .line 1941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_f

    const v5, 0x3efae148

    :goto_c
    invoke-virtual {v6, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setVerticalCatchupConstant(F)V

    .line 1942
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    goto/16 :goto_7

    .line 1940
    :cond_e
    const v7, 0x3eeb851f

    goto :goto_b

    .line 1941
    :cond_f
    const v5, 0x3eeb851f

    goto :goto_c

    .line 1948
    :pswitch_2
    if-eqz p1, :cond_8

    .line 1949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_10

    const v7, 0x3f266666

    :goto_d
    invoke-virtual {v6, v7}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setHorizontalCatchupConstant(F)V

    .line 1950
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v6, v0

    if-eqz v5, :cond_11

    const v5, 0x3f266666

    :goto_e
    invoke-virtual {v6, v5}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setVerticalCatchupConstant(F)V

    .line 1951
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mWallpaperOffset:Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/launcher2/Workspace$WallpaperOffsetInterpolator;->setOverrideHorizontalCatchupConstant(Z)V

    goto/16 :goto_7

    .line 1949
    :cond_10
    const v7, 0x3f266666

    goto :goto_d

    .line 1950
    :cond_11
    const v5, 0x3f266666

    goto :goto_e

    .line 2020
    :cond_12
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->wallpaperOffsetForCurrentScroll()F

    move-result v5

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setHorizontalWallpaperOffset(F)V

    .line 2021
    const/high16 v5, 0x3f00

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->setVerticalWallpaperOffset(F)V

    .line 2022
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->updateWallpaperOffsetImmediately()V

    goto/16 :goto_8

    .line 1927
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 1956
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 1995
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method updateShortcuts(Ljava/util/ArrayList;)V
    .locals 20
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
    .line 3257
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/Workspace;->getChildCount()I

    move-result v8

    .line 3258
    const/4 v5, 0x0

    move v9, v5

    :goto_0
    if-ge v9, v8, :cond_3

    .line 3259
    move-object/from16 v0, p0

    move v1, v9

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher2/CellLayout;->getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;

    move-result-object v10

    .line 3260
    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v11

    .line 3261
    const/4 v5, 0x0

    move v12, v5

    :goto_1
    if-ge v12, v11, :cond_2

    .line 3262
    invoke-virtual {v10, v12}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 3263
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    .line 3264
    instance-of v6, v5, Lcom/android/launcher2/ShortcutInfo;

    if-eqz v6, :cond_1

    .line 3265
    check-cast v5, Lcom/android/launcher2/ShortcutInfo;

    .line 3269
    iget-object v6, v5, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 3270
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v13

    .line 3271
    iget v14, v5, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    if-nez v14, :cond_1

    const-string v14, "android.intent.action.MAIN"

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v13, :cond_1

    .line 3273
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 3274
    const/4 v6, 0x0

    move v15, v6

    :goto_2
    if-ge v15, v14, :cond_1

    .line 3275
    move-object/from16 v0, p1

    move v1, v15

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ApplicationInfo;

    .line 3276
    iget-object v6, v6, Lcom/android/launcher2/ApplicationInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v6, v13}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object v6, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    move-object/from16 v16, v0

    move-object v0, v6

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/Intent;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 3278
    move-object v0, v7

    check-cast v0, Landroid/widget/TextView;

    move-object v6, v0

    const/16 v16, 0x0

    new-instance v17, Lcom/android/launcher2/FastBitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object/from16 v18, v0

    move-object v0, v5

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v0, v6

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    move-object/from16 v3, v18

    move-object/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 3274
    :cond_0
    add-int/lit8 v6, v15, 0x1

    move v15, v6

    goto :goto_2

    .line 3261
    :cond_1
    add-int/lit8 v5, v12, 0x1

    move v12, v5

    goto/16 :goto_1

    .line 3258
    :cond_2
    add-int/lit8 v5, v9, 0x1

    move v9, v5

    goto/16 :goto_0

    .line 3287
    :cond_3
    return-void
.end method

.method public updateWallpaperOffsetImmediately()V
    .locals 1

    .prologue
    .line 805
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/Workspace;->mUpdateWallpaperOffsetImmediately:Z

    .line 806
    return-void
.end method
