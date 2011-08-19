.class public Lcom/android/launcher2/CellLayout;
.super Landroid/view/ViewGroup;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/CellLayout$CellInfo;,
        Lcom/android/launcher2/CellLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private mAcceptsDrops:Z

.field private mActiveBackground:Landroid/graphics/drawable/Drawable;

.field private mActiveBackgroundMini:Landroid/graphics/drawable/Drawable;

.field private mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

.field private mActiveGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

.field private mBackgroundAlpha:F

.field private mBackgroundAlphaMultiplier:F

.field private mBackgroundRect:Landroid/graphics/Rect;

.field private mBottomPadding:I

.field private mCellHeight:I

.field private final mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

.field private mCellWidth:I

.field private mChildren:Lcom/android/launcher2/CellLayoutChildren;

.field private mCountX:I

.field private mCountY:I

.field private mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

.field private mCrosshairsVisibility:F

.field private final mDragCell:[I

.field private final mDragCenter:Landroid/graphics/Point;

.field private mDragOutlineAlphas:[F

.field private mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

.field private mDragOutlineCurrent:I

.field private final mDragOutlinePaint:Landroid/graphics/Paint;

.field private mDragOutlines:[Landroid/graphics/Point;

.field private mDragging:Z

.field private mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

.field private mGlowBackgroundAlpha:F

.field private mGlowBackgroundRect:Landroid/graphics/Rect;

.field private mGlowBackgroundScale:F

.field private mHeightGap:I

.field private mInterceptTouchListener:Landroid/view/View$OnTouchListener;

.field private mIsDefaultDropTarget:Z

.field private mIsDragOccuring:Z

.field private mIsDragOverlapping:Z

.field private mLeftPadding:I

.field private mNormalBackground:Landroid/graphics/drawable/Drawable;

.field private mNormalBackgroundMini:Landroid/graphics/drawable/Drawable;

.field private mNormalGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

.field mOccupied:[[Z

.field private mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

.field private final mRect:Landroid/graphics/Rect;

.field private mRightPadding:I

.field private final mTmpCellXY:[I

.field private final mTmpPoint:[I

.field private final mTmpPointF:Landroid/graphics/PointF;

.field private mTopPadding:I

.field private mWidthGap:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 131
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 135
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 136
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 139
    invoke-direct/range {p0 .. p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 71
    new-instance v5, Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-direct {v5}, Lcom/android/launcher2/CellLayout$CellInfo;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 75
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mTmpCellXY:[I

    .line 76
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    .line 77
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5}, Landroid/graphics/PointF;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    .line 84
    const/high16 v5, 0x3f80

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 98
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 100
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 101
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 102
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 103
    new-instance v5, Landroid/graphics/Point;

    invoke-direct {v5}, Landroid/graphics/Point;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    .line 107
    const/16 v5, 0x8

    new-array v5, v5, [Landroid/graphics/Point;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v5, v0

    array-length v5, v5

    new-array v5, v5, [F

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    .line 109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v5, v0

    array-length v5, v5

    new-array v5, v5, [Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 113
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 114
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    .line 118
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 120
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    .line 123
    const/4 v5, 0x2

    new-array v5, v5, [I

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    .line 125
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 143
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setWillNotDraw(Z)V

    .line 145
    sget-object v5, Lcom/android/launcher/R$styleable;->CellLayout:[I

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object v2, v5

    move/from16 v3, p3

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v12

    .line 147
    .local v12, a:Landroid/content/res/TypedArray;
    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    .line 148
    const/4 v5, 0x1

    const/16 v6, 0xa

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    .line 149
    const/4 v5, 0x6

    const/4 v6, -0x1

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 150
    const/4 v5, 0x7

    const/4 v6, -0x1

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 152
    const/4 v5, 0x2

    const/16 v6, 0xa

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mLeftPadding:I

    .line 154
    const/4 v5, 0x3

    const/16 v6, 0xa

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mRightPadding:I

    .line 156
    const/4 v5, 0x4

    const/16 v6, 0xa

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mTopPadding:I

    .line 158
    const/4 v5, 0x5

    const/16 v6, 0xa

    invoke-virtual {v12, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mBottomPadding:I

    .line 161
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountX()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 162
    invoke-static {}, Lcom/android/launcher2/LauncherModel;->getCellCountY()I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 163
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move v6, v0

    filled-new-array {v5, v6}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    .end local p2
    check-cast p2, [[Z

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    .line 165
    invoke-virtual {v12}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 169
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    .line 171
    .local v18, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 172
    const v5, 0x7f020033

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    .line 173
    const v5, 0x7f020035

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mActiveBackground:Landroid/graphics/drawable/Drawable;

    .line 174
    const v5, 0x7f020036

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    .line 176
    const v5, 0x7f020037

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mNormalBackgroundMini:Landroid/graphics/drawable/Drawable;

    .line 177
    const v5, 0x7f020038

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mNormalGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    .line 178
    const v5, 0x7f020039

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mActiveBackgroundMini:Landroid/graphics/drawable/Drawable;

    .line 179
    const v5, 0x7f02003a

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mActiveGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveBackground:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mNormalBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mNormalGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 192
    :cond_0
    const v5, 0x7f020020

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    .line 193
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v6, 0x4020

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    .line 196
    const v5, 0x7f0a0004

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 197
    .local v14, animDuration:I
    new-instance v5, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v6, v14

    const/4 v8, 0x0

    const/high16 v9, 0x3f80

    invoke-direct {v5, v6, v7, v8, v9}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/CellLayout$1;

    move-object v0, v6

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellLayout$1;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 206
    const/16 v17, 0x0

    .local v17, i:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v5, v0

    new-instance v6, Landroid/graphics/Point;

    const/4 v7, -0x1

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Landroid/graphics/Point;-><init>(II)V

    aput-object v6, v5, v17

    .line 206
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    .line 214
    :cond_1
    const v5, 0x7f0a0008

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 215
    .local v15, duration:I
    const/16 v16, 0x0

    .line 216
    .local v16, fromAlphaValue:F
    const v5, 0x7f0a0009

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    move v0, v5

    int-to-float v0, v0

    move/from16 v20, v0

    .line 218
    .local v20, toAlphaValue:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([FF)V

    .line 220
    const/16 v17, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v17

    move v1, v5

    if-ge v0, v1, :cond_2

    .line 221
    new-instance v13, Lcom/android/launcher2/InterruptibleInOutAnimator;

    int-to-long v5, v15

    const/4 v7, 0x0

    move-object v0, v13

    move-wide v1, v5

    move v3, v7

    move/from16 v4, v20

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;-><init>(JFF)V

    .line 223
    .local v13, anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    invoke-virtual {v13}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mEaseOutInterpolator:Landroid/animation/TimeInterpolator;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 224
    move/from16 v19, v17

    .line 225
    .local v19, thisIndex:I
    invoke-virtual {v13}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/CellLayout$2;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout$2;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;I)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 250
    invoke-virtual {v13}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object v5

    new-instance v6, Lcom/android/launcher2/CellLayout$3;

    move-object v0, v6

    move-object/from16 v1, p0

    move-object v2, v13

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/CellLayout$3;-><init>(Lcom/android/launcher2/CellLayout;Lcom/android/launcher2/InterruptibleInOutAnimator;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 258
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v5, v0

    aput-object v13, v5, v17

    .line 220
    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 261
    .end local v13           #anim:Lcom/android/launcher2/InterruptibleInOutAnimator;
    .end local v19           #thisIndex:I
    :cond_2
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    .line 262
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    .line 263
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setHoverScale(F)V

    .line 264
    const/high16 v5, 0x3f80

    move-object/from16 v0, p0

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->setHoverAlpha(F)V

    .line 266
    new-instance v5, Lcom/android/launcher2/CellLayoutChildren;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/launcher2/CellLayoutChildren;-><init>(Landroid/content/Context;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mLeftPadding:I

    move v8, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mTopPadding:I

    move v9, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move v10, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move v11, v0

    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/CellLayoutChildren;->setCellDimensions(IIIIII)V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->addView(Landroid/view/View;)V

    .line 270
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher2/CellLayout;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 53
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/launcher2/CellLayout;)[F
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/CellLayout;)[Landroid/graphics/Point;
    .locals 1
    .parameter "x0"

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    return-object v0
.end method

.method private clearOccupiedCells()V
    .locals 4

    .prologue
    .line 1407
    const/4 v0, 0x0

    .local v0, x:I
    :goto_0
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1408
    const/4 v1, 0x0

    .local v1, y:I
    :goto_1
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1409
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 1408
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1407
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1412
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method static findVacantCell([IIIII[[Z)Z
    .locals 8
    .parameter "vacant"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "xCount"
    .parameter "yCount"
    .parameter "occupied"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1385
    const/4 v3, 0x0

    .local v3, x:I
    :goto_0
    if-ge v3, p3, :cond_7

    .line 1386
    const/4 v4, 0x0

    .local v4, y:I
    :goto_1
    if-ge v4, p4, :cond_6

    .line 1387
    aget-object v5, p5, v3

    aget-boolean v5, v5, v4

    if-nez v5, :cond_1

    move v0, v6

    .line 1388
    .local v0, available:Z
    :goto_2
    move v1, v3

    .local v1, i:I
    :goto_3
    add-int v5, v3, p1

    sub-int/2addr v5, v6

    if-ge v1, v5, :cond_0

    if-ge v3, p3, :cond_0

    .line 1389
    move v2, v4

    .local v2, j:I
    :goto_4
    add-int v5, v4, p2

    sub-int/2addr v5, v6

    if-ge v2, v5, :cond_4

    if-ge v4, p4, :cond_4

    .line 1390
    if-eqz v0, :cond_2

    aget-object v5, p5, v1

    aget-boolean v5, v5, v2

    if-nez v5, :cond_2

    move v0, v6

    .line 1391
    :goto_5
    if-nez v0, :cond_3

    .line 1395
    .end local v2           #j:I
    :cond_0
    if-eqz v0, :cond_5

    .line 1396
    aput v3, p0, v7

    .line 1397
    aput v4, p0, v6

    move v5, v6

    .line 1403
    .end local v0           #available:Z
    .end local v1           #i:I
    .end local v4           #y:I
    :goto_6
    return v5

    .restart local v4       #y:I
    :cond_1
    move v0, v7

    .line 1387
    goto :goto_2

    .restart local v0       #available:Z
    .restart local v1       #i:I
    .restart local v2       #j:I
    :cond_2
    move v0, v7

    .line 1390
    goto :goto_5

    .line 1389
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1388
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1386
    .end local v2           #j:I
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1385
    .end local v0           #available:Z
    .end local v1           #i:I
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v4           #y:I
    :cond_7
    move v5, v7

    .line 1403
    goto :goto_6
.end method

.method static heightInLandscape(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 286
    const v2, 0x7f0d000a

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 287
    .local v0, cellHeight:I
    const v2, 0x7f0d0014

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 289
    .local v1, heightGap:I
    const/4 v2, 0x1

    sub-int v2, p1, v2

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method

.method private invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V
    .locals 5
    .parameter "icon"

    .prologue
    .line 293
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v0

    .line 294
    .local v0, padding:I
    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v1

    sub-int/2addr v1, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getRight()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {p1}, Lcom/android/launcher2/BubbleTextView;->getBottom()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/launcher2/CellLayout;->invalidate(IIII)V

    .line 298
    return-void
.end method

.method private markCellsForView(IIIIZ)V
    .locals 3
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "value"

    .prologue
    .line 1483
    move v0, p1

    .local v0, x:I
    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_1

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v0, v2, :cond_1

    .line 1484
    move v1, p2

    .local v1, y:I
    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v1, v2, :cond_0

    .line 1485
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v2, v2, v0

    aput-boolean p5, v2, v1

    .line 1484
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1483
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1488
    .end local v1           #y:I
    :cond_1
    return-void
.end method

.method public static rectToCell(Landroid/content/res/Resources;II[I)[I
    .locals 8
    .parameter "resources"
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1312
    const v5, 0x7f0d0009

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1313
    .local v1, actualWidth:I
    const v5, 0x7f0d000a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1314
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1317
    .local v2, smallerSize:I
    add-int v5, p1, v2

    div-int v3, v5, v2

    .line 1318
    .local v3, spanX:I
    add-int v5, p2, v2

    div-int v4, v5, v2

    .line 1320
    .local v4, spanY:I
    if-nez p3, :cond_0

    .line 1321
    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v3, v5, v6

    aput v4, v5, v7

    .line 1325
    :goto_0
    return-object v5

    .line 1323
    :cond_0
    aput v3, p3, v6

    .line 1324
    aput v4, p3, v7

    move-object v5, p3

    .line 1325
    goto :goto_0
.end method

.method private setChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 911
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 912
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 913
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 912
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 915
    :cond_0
    return-void
.end method

.method private setFastChildrenAlpha(F)V
    .locals 3
    .parameter "alpha"

    .prologue
    .line 918
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    .line 919
    .local v0, childCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 920
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setFastAlpha(F)V

    .line 919
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 922
    :cond_0
    return-void
.end method

.method private sizeToSpanInternal(Landroid/content/res/Resources;I)I
    .locals 5
    .parameter "resources"
    .parameter "size"

    .prologue
    .line 1332
    const v4, 0x7f0d0009

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1333
    .local v1, actualWidth:I
    const v4, 0x7f0d000a

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1334
    .local v0, actualHeight:I
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1335
    .local v3, smallerSize:I
    add-int v4, p2, v3

    div-int v2, v4, v3

    .line 1336
    .local v2, result:I
    return v2
.end method

.method private updateGlowRect()V
    .locals 8

    .prologue
    .line 346
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    const/high16 v4, 0x3f80

    sub-float/2addr v3, v4

    const/high16 v4, 0x4000

    div-float v0, v3, v4

    .line 347
    .local v0, marginFraction:F
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v1, v3

    .line 348
    .local v1, marginX:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 349
    .local v2, marginY:I
    iget-object v3, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v2

    iget-object v6, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v1

    iget-object v7, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v7, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 351
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 352
    return-void
.end method

.method static widthInPortrait(Landroid/content/res/Resources;I)I
    .locals 4
    .parameter "r"
    .parameter "numCells"

    .prologue
    .line 276
    const v2, 0x7f0d0009

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 277
    .local v0, cellWidth:I
    const v2, 0x7f0d0015

    invoke-virtual {p0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 279
    .local v1, widthGap:I
    const/4 v2, 0x1

    sub-int v2, p1, v2

    mul-int/2addr v2, v1

    mul-int v3, v0, p1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public addViewToCellLayout(Landroid/view/View;IILcom/android/launcher2/CellLayout$LayoutParams;Z)Z
    .locals 4
    .parameter "child"
    .parameter "index"
    .parameter "childId"
    .parameter "params"
    .parameter "markCells"

    .prologue
    const/4 v3, 0x1

    .line 544
    move-object v0, p4

    .line 548
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    if-ltz v1, :cond_3

    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    sub-int/2addr v2, v3

    if-gt v1, v2, :cond_3

    .line 551
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    .line 552
    :cond_0
    iget v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    if-gez v1, :cond_1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    iput v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    .line 554
    :cond_1
    invoke-virtual {p1, p3}, Landroid/view/View;->setId(I)V

    .line 556
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher2/CellLayoutChildren;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 558
    if-eqz p5, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_2
    move v1, v3

    .line 562
    :goto_0
    return v1

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method animateDrop()V
    .locals 12

    .prologue
    const v11, 0x7f0a0022

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 378
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 380
    .local v3, res:Landroid/content/res/Resources;
    const v6, 0x7f0a001f

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float v2, v6, v7

    .line 381
    .local v2, onDropScale:F
    const-string v6, "hoverScale"

    new-array v7, v10, [F

    aput v2, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 382
    .local v5, scaleUp:Landroid/animation/ObjectAnimator;
    const v6, 0x7f0a0020

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 383
    const-string v6, "hoverScale"

    new-array v7, v10, [F

    const/high16 v8, 0x3f80

    aput v8, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 384
    .local v4, scaleDown:Landroid/animation/ObjectAnimator;
    const v6, 0x7f0a0021

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 385
    const-string v6, "hoverAlpha"

    new-array v7, v10, [F

    const/4 v8, 0x0

    aput v8, v7, v9

    invoke-static {p0, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 387
    .local v0, alphaFadeOut:Landroid/animation/ObjectAnimator;
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 388
    invoke-virtual {v3, v11}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 390
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 391
    .local v1, bouncer:Landroid/animation/AnimatorSet;
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 392
    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 393
    new-instance v6, Lcom/android/launcher2/CellLayout$4;

    invoke-direct {v6, p0}, Lcom/android/launcher2/CellLayout$4;-><init>(Lcom/android/launcher2/CellLayout;)V

    invoke-virtual {v1, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 405
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 407
    .end local v0           #alphaFadeOut:Landroid/animation/ObjectAnimator;
    .end local v1           #bouncer:Landroid/animation/AnimatorSet;
    .end local v2           #onDropScale:F
    .end local v3           #res:Landroid/content/res/Resources;
    .end local v4           #scaleDown:Landroid/animation/ObjectAnimator;
    .end local v5           #scaleUp:Landroid/animation/ObjectAnimator;
    :cond_0
    return-void
.end method

.method buildChildrenLayer()V
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->buildLayer()V

    .line 632
    return-void
.end method

.method public calculateSpans(Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 1352
    instance-of v4, p1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v4, :cond_0

    .line 1353
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v4, v0

    iget v2, v4, Lcom/android/launcher2/LauncherAppWidgetInfo;->minWidth:I

    .line 1354
    .local v2, minWidth:I
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v4, v0

    iget v1, v4, Lcom/android/launcher2/LauncherAppWidgetInfo;->minHeight:I

    .line 1363
    .local v1, minHeight:I
    :goto_0
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v1, v4}, Lcom/android/launcher2/CellLayout;->rectToCell(II[I)[I

    move-result-object v3

    .line 1364
    .local v3, spans:[I
    const/4 v4, 0x0

    aget v4, v3, v4

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 1365
    aget v4, v3, v5

    iput v4, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 1366
    .end local v1           #minHeight:I
    .end local v2           #minWidth:I
    .end local v3           #spans:[I
    :goto_1
    return-void

    .line 1355
    :cond_0
    instance-of v4, p1, Lcom/android/launcher2/PendingAddWidgetInfo;

    if-eqz v4, :cond_1

    .line 1356
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    move-object v4, v0

    iget v2, v4, Lcom/android/launcher2/PendingAddWidgetInfo;->minWidth:I

    .line 1357
    .restart local v2       #minWidth:I
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/PendingAddWidgetInfo;

    move-object v4, v0

    iget v1, v4, Lcom/android/launcher2/PendingAddWidgetInfo;->minHeight:I

    .restart local v1       #minHeight:I
    goto :goto_0

    .line 1360
    .end local v1           #minHeight:I
    .end local v2           #minWidth:I
    :cond_1
    iput v5, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    iput v5, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    goto :goto_1
.end method

.method public cancelLongPress()V
    .locals 3

    .prologue
    .line 520
    invoke-super {p0}, Landroid/view/ViewGroup;->cancelLongPress()V

    .line 523
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 524
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 525
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 526
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 524
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 528
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method public cellSpansToSize(II)[I
    .locals 6
    .parameter "hSpans"
    .parameter "vSpans"

    .prologue
    const/4 v5, 0x1

    .line 1339
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 1340
    .local v0, size:[I
    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    mul-int/2addr v2, p1

    sub-int v3, p1, v5

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    aput v2, v0, v1

    .line 1341
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    mul-int/2addr v1, p2

    sub-int v2, p2, v5

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    aput v1, v0, v5

    .line 1342
    return-object v0
.end method

.method cellToPoint(II[I)V
    .locals 5
    .parameter "cellX"
    .parameter "cellY"
    .parameter "result"

    .prologue
    .line 752
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getLeftPadding()I

    move-result v0

    .line 753
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTopPadding()I

    move-result v1

    .line 755
    .local v1, vStartPadding:I
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p1

    add-int/2addr v3, v0

    aput v3, p3, v2

    .line 756
    const/4 v2, 0x1

    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v4, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v3, v4

    mul-int/2addr v3, p2

    add-int/2addr v3, v1

    aput v3, p3, v2

    .line 757
    return-void
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .parameter "p"

    .prologue
    .line 1497
    instance-of v0, p1, Lcom/android/launcher2/CellLayout$LayoutParams;

    return v0
.end method

.method public drawChildren(Landroid/graphics/Canvas;)V
    .locals 1
    .parameter "canvas"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->draw(Landroid/graphics/Canvas;)V

    .line 628
    return-void
.end method

.method estimateDropCell(IIII[I)V
    .locals 7
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 938
    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 939
    .local v1, countX:I
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 943
    .local v2, countY:I
    invoke-virtual {p0, p1, p2, p5}, Lcom/android/launcher2/CellLayout;->pointToCellRounded(II[I)V

    .line 946
    aget v4, p5, v5

    add-int/2addr v4, p3

    sub-int v3, v4, v1

    .line 947
    .local v3, rightOverhang:I
    if-lez v3, :cond_0

    .line 948
    aget v4, p5, v5

    sub-int/2addr v4, v3

    aput v4, p5, v5

    .line 950
    :cond_0
    aget v4, p5, v5

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v5

    .line 951
    aget v4, p5, v6

    add-int/2addr v4, p4

    sub-int v0, v4, v2

    .line 952
    .local v0, bottomOverhang:I
    if-lez v0, :cond_1

    .line 953
    aget v4, p5, v6

    sub-int/2addr v4, v0

    aput v4, p5, v6

    .line 955
    :cond_1
    aget v4, p5, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    aput v4, p5, v6

    .line 956
    return-void
.end method

.method existsEmptyCell()Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1086
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/launcher2/CellLayout;->findCellForSpan([III)Z

    move-result v0

    return v0
.end method

.method findCellForSpan([III)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    const/4 v4, -0x1

    .line 1103
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanIgnoring([IIILandroid/view/View;)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"

    .prologue
    const/4 v4, -0x1

    .line 1117
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, v4

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersects([IIIII)Z
    .locals 7
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"

    .prologue
    .line 1134
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z

    move-result v0

    return v0
.end method

.method findCellForSpanThatIntersectsIgnoring([IIIIILandroid/view/View;)Z
    .locals 13
    .parameter "cellXY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "intersectX"
    .parameter "intersectY"
    .parameter "ignoreView"

    .prologue
    .line 1144
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1146
    const/4 v4, 0x0

    .line 1148
    .local v4, foundCell:Z
    :goto_0
    const/4 v7, 0x0

    .line 1149
    .local v7, startX:I
    if-ltz p4, :cond_0

    .line 1150
    const/4 v11, 0x1

    sub-int v11, p2, v11

    sub-int v11, p4, v11

    invoke-static {v7, v11}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1152
    :cond_0
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    const/4 v12, 0x1

    sub-int v12, p2, v12

    sub-int v2, v11, v12

    .line 1153
    .local v2, endX:I
    if-ltz p4, :cond_1

    .line 1154
    const/4 v11, 0x1

    sub-int v11, p2, v11

    add-int v11, v11, p4

    const/4 v12, 0x1

    if-ne p2, v12, :cond_4

    const/4 v12, 0x1

    :goto_1
    add-int/2addr v11, v12

    invoke-static {v2, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1156
    :cond_1
    const/4 v8, 0x0

    .line 1157
    .local v8, startY:I
    if-ltz p5, :cond_2

    .line 1158
    const/4 v11, 0x1

    sub-int v11, p3, v11

    sub-int v11, p5, v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 1160
    :cond_2
    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    const/4 v12, 0x1

    sub-int v12, p3, v12

    sub-int v3, v11, v12

    .line 1161
    .local v3, endY:I
    if-ltz p5, :cond_3

    .line 1162
    const/4 v11, 0x1

    sub-int v11, p3, v11

    add-int v11, v11, p5

    const/4 v12, 0x1

    move/from16 v0, p3

    move v1, v12

    if-ne v0, v1, :cond_5

    const/4 v12, 0x1

    :goto_2
    add-int/2addr v11, v12

    invoke-static {v3, v11}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1165
    :cond_3
    move v10, v8

    .local v10, y:I
    :goto_3
    if-ge v10, v3, :cond_b

    if-nez v4, :cond_b

    .line 1167
    move v9, v7

    .local v9, x:I
    :goto_4
    if-ge v9, v2, :cond_a

    .line 1168
    const/4 v5, 0x0

    .local v5, i:I
    :goto_5
    if-ge v5, p2, :cond_8

    .line 1169
    const/4 v6, 0x0

    .local v6, j:I
    :goto_6
    move v0, v6

    move/from16 v1, p3

    if-ge v0, v1, :cond_7

    .line 1170
    iget-object v11, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    add-int v12, v9, v5

    aget-object v11, v11, v12

    add-int v12, v10, v6

    aget-boolean v11, v11, v12

    if-eqz v11, :cond_6

    .line 1173
    add-int/2addr v9, v5

    .line 1167
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 1154
    .end local v3           #endY:I
    .end local v5           #i:I
    .end local v6           #j:I
    .end local v8           #startY:I
    .end local v9           #x:I
    .end local v10           #y:I
    :cond_4
    const/4 v12, 0x0

    goto :goto_1

    .line 1162
    .restart local v3       #endY:I
    .restart local v8       #startY:I
    :cond_5
    const/4 v12, 0x0

    goto :goto_2

    .line 1169
    .restart local v5       #i:I
    .restart local v6       #j:I
    .restart local v9       #x:I
    .restart local v10       #y:I
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 1168
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 1178
    .end local v6           #j:I
    :cond_8
    if-eqz p1, :cond_9

    .line 1179
    const/4 v11, 0x0

    aput v9, p1, v11

    .line 1180
    const/4 v11, 0x1

    aput v10, p1, v11

    .line 1182
    :cond_9
    const/4 v4, 0x1

    .line 1165
    .end local v5           #i:I
    :cond_a
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 1186
    .end local v9           #x:I
    :cond_b
    const/4 v11, -0x1

    move/from16 v0, p4

    move v1, v11

    if-ne v0, v1, :cond_c

    const/4 v11, -0x1

    move/from16 v0, p5

    move v1, v11

    if-ne v0, v1, :cond_c

    .line 1198
    move-object v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1199
    return v4

    .line 1191
    :cond_c
    const/16 p4, -0x1

    .line 1192
    const/16 p5, -0x1

    .line 1193
    goto/16 :goto_0
.end method

.method findNearestVacantArea(IIIILandroid/view/View;[I)[I
    .locals 23
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "ignoreView"
    .parameter "result"

    .prologue
    .line 1039
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1042
    if-eqz p6, :cond_1

    move-object/from16 v6, p6

    .line 1043
    .local v6, bestXY:[I
    :goto_0
    const-wide v4, 0x7fefffffffffffffL

    .line 1045
    .local v4, bestDistance:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move v8, v0

    .line 1046
    .local v8, countX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move v9, v0

    .line 1047
    .local v9, countY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    move-object v14, v0

    .line 1049
    .local v14, occupied:[[Z
    const/16 v16, 0x0

    .local v16, y:I
    :goto_1
    const/16 v17, 0x1

    sub-int v17, p4, v17

    sub-int v17, v9, v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 1051
    const/4 v15, 0x0

    .local v15, x:I
    :goto_2
    const/16 v17, 0x1

    sub-int v17, p3, v17

    sub-int v17, v8, v17

    move v0, v15

    move/from16 v1, v17

    if-ge v0, v1, :cond_5

    .line 1052
    const/4 v12, 0x0

    .local v12, i:I
    :goto_3
    move v0, v12

    move/from16 v1, p3

    if-ge v0, v1, :cond_4

    .line 1053
    const/4 v13, 0x0

    .local v13, j:I
    :goto_4
    move v0, v13

    move/from16 v1, p4

    if-ge v0, v1, :cond_3

    .line 1054
    add-int v17, v15, v12

    aget-object v17, v14, v17

    add-int v18, v16, v13

    aget-boolean v17, v17, v18

    if-eqz v17, :cond_2

    .line 1057
    add-int/2addr v15, v12

    .line 1051
    .end local v13           #j:I
    :cond_0
    :goto_5
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1042
    .end local v4           #bestDistance:D
    .end local v6           #bestXY:[I
    .end local v8           #countX:I
    .end local v9           #countY:I
    .end local v12           #i:I
    .end local v14           #occupied:[[Z
    .end local v15           #x:I
    .end local v16           #y:I
    :cond_1
    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v6, v17

    goto :goto_0

    .line 1053
    .restart local v4       #bestDistance:D
    .restart local v6       #bestXY:[I
    .restart local v8       #countX:I
    .restart local v9       #countY:I
    .restart local v12       #i:I
    .restart local v13       #j:I
    .restart local v14       #occupied:[[Z
    .restart local v15       #x:I
    .restart local v16       #y:I
    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 1052
    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 1062
    .end local v13           #j:I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpCellXY:[I

    move-object v7, v0

    .line 1063
    .local v7, cellXY:[I
    move-object/from16 v0, p0

    move v1, v15

    move/from16 v2, v16

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 1065
    const/16 v17, 0x0

    aget v17, v7, v17

    sub-int v17, v17, p1

    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v17, v0

    const-wide/high16 v19, 0x4000

    invoke-static/range {v17 .. v20}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v17

    const/16 v19, 0x1

    aget v19, v7, v19

    sub-int v19, v19, p2

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v19, v0

    const-wide/high16 v21, 0x4000

    invoke-static/range {v19 .. v22}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v19

    add-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    .line 1067
    .local v10, distance:D
    cmpg-double v17, v10, v4

    if-gtz v17, :cond_0

    .line 1068
    move-wide v4, v10

    .line 1069
    const/16 v17, 0x0

    aput v15, v6, v17

    .line 1070
    const/16 v17, 0x1

    aput v16, v6, v17

    goto :goto_5

    .line 1049
    .end local v7           #cellXY:[I
    .end local v10           #distance:D
    .end local v12           #i:I
    :cond_5
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 1075
    .end local v15           #x:I
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 1078
    const-wide v17, 0x7fefffffffffffffL

    cmpg-double v17, v4, v17

    if-gez v17, :cond_7

    move-object/from16 v17, v6

    .line 1081
    :goto_6
    return-object v17

    :cond_7
    const/16 v17, 0x0

    goto :goto_6
.end method

.method findNearestVacantArea(IIII[I)[I
    .locals 7
    .parameter "pixelX"
    .parameter "pixelY"
    .parameter "spanX"
    .parameter "spanY"
    .parameter "result"

    .prologue
    .line 1020
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2
    .parameter "attrs"

    .prologue
    .line 1492
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1
    .parameter "p"

    .prologue
    .line 1502
    new-instance v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/android/launcher2/CellLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public getAcceptsDrops()Z
    .locals 1

    .prologue
    .line 573
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    return v0
.end method

.method public getBackgroundAlpha()F
    .locals 1

    .prologue
    .line 872
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    return v0
.end method

.method public getBackgroundAlphaMultiplier()F
    .locals 1

    .prologue
    .line 884
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    return v0
.end method

.method getBottomPadding()I
    .locals 1

    .prologue
    .line 788
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mBottomPadding:I

    return v0
.end method

.method getCellHeight()I
    .locals 1

    .prologue
    .line 764
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    return v0
.end method

.method getCellWidth()I
    .locals 1

    .prologue
    .line 760
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    return v0
.end method

.method public getChildAt(II)Landroid/view/View;
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 925
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getChildrenLayout()Lcom/android/launcher2/CellLayoutChildren;
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 315
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellLayoutChildren;

    move-object v0, p0

    .line 317
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExpandabilityArrayForView(Landroid/view/View;[I)V
    .locals 10
    .parameter "view"
    .parameter "expandability"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1420
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1423
    .local v1, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    aput v6, p2, v6

    .line 1424
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    sub-int v2, v4, v7

    .local v2, x:I
    :goto_0
    if-ltz v2, :cond_2

    .line 1425
    const/4 v0, 0x0

    .line 1426
    .local v0, flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    .local v3, y:I
    :goto_1
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 1427
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 1426
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1429
    :cond_1
    if-eqz v0, :cond_4

    .line 1433
    .end local v0           #flag:Z
    .end local v3           #y:I
    :cond_2
    aput v6, p2, v7

    .line 1434
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    sub-int v3, v4, v7

    .restart local v3       #y:I
    :goto_2
    if-ltz v3, :cond_6

    .line 1435
    const/4 v0, 0x0

    .line 1436
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_3
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_5

    .line 1437
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_3

    const/4 v0, 0x1

    .line 1436
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 1430
    :cond_4
    aget v4, p2, v6

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v6

    .line 1424
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1439
    :cond_5
    if-eqz v0, :cond_8

    .line 1443
    .end local v0           #flag:Z
    :cond_6
    aput v6, p2, v8

    .line 1444
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int v2, v4, v5

    :goto_4
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v2, v4, :cond_a

    .line 1445
    const/4 v0, 0x0

    .line 1446
    .restart local v0       #flag:Z
    iget v3, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    :goto_5
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v4, v5

    if-ge v3, v4, :cond_9

    .line 1447
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    .line 1446
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 1440
    :cond_8
    aget v4, p2, v7

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v7

    .line 1434
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 1449
    :cond_9
    if-eqz v0, :cond_c

    .line 1453
    .end local v0           #flag:Z
    :cond_a
    aput v6, p2, v9

    .line 1454
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    add-int v3, v4, v5

    :goto_6
    iget v4, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v3, v4, :cond_e

    .line 1455
    const/4 v0, 0x0

    .line 1456
    .restart local v0       #flag:Z
    iget v2, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    :goto_7
    iget v4, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v5, v1, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v4, v5

    if-ge v2, v4, :cond_d

    .line 1457
    iget-object v4, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    aget-object v4, v4, v2

    aget-boolean v4, v4, v3

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    .line 1456
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1450
    :cond_c
    aget v4, p2, v8

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v8

    .line 1444
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1459
    :cond_d
    if-eqz v0, :cond_f

    .line 1462
    .end local v0           #flag:Z
    :cond_e
    return-void

    .line 1460
    .restart local v0       #flag:Z
    :cond_f
    aget v4, p2, v9

    add-int/lit8 v4, v4, 0x1

    aput v4, p2, v9

    .line 1454
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method

.method getHeightGap()I
    .locals 1

    .prologue
    .line 772
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    return v0
.end method

.method public getHoverAlpha()F
    .locals 1

    .prologue
    .line 369
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    return v0
.end method

.method public getHoverScale()F
    .locals 1

    .prologue
    .line 365
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    return v0
.end method

.method getIsDragOverlapping()Z
    .locals 1

    .prologue
    .line 342
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    return v0
.end method

.method getLeftPadding()I
    .locals 1

    .prologue
    .line 776
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mLeftPadding:I

    return v0
.end method

.method getRightPadding()I
    .locals 1

    .prologue
    .line 784
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mRightPadding:I

    return v0
.end method

.method public getTag()Lcom/android/launcher2/CellLayout$CellInfo;
    .locals 0

    .prologue
    .line 708
    invoke-super {p0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/launcher2/CellLayout$CellInfo;

    return-object p0
.end method

.method public bridge synthetic getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTag()Lcom/android/launcher2/CellLayout$CellInfo;

    move-result-object v0

    return-object v0
.end method

.method getTopPadding()I
    .locals 1

    .prologue
    .line 780
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mTopPadding:I

    return v0
.end method

.method getWidthGap()I
    .locals 1

    .prologue
    .line 768
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    return v0
.end method

.method public markCellsAsOccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1471
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1474
    :cond_0
    :goto_0
    return-void

    .line 1472
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1473
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method public markCellsAsUnoccupiedForView(Landroid/view/View;)V
    .locals 7
    .parameter "view"

    .prologue
    .line 1477
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    if-eq v0, v1, :cond_1

    .line 1480
    :cond_0
    :goto_0
    return-void

    .line 1478
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1479
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v1, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iget v2, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 636
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 637
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, v1, Lcom/android/launcher2/CellLayout$CellInfo;->screen:I

    .line 638
    return-void
.end method

.method onDragChild(Landroid/view/View;)V
    .locals 2
    .parameter "child"

    .prologue
    .line 1251
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1252
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 1253
    return-void
.end method

.method onDragEnter()V
    .locals 1

    .prologue
    .line 1261
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-nez v0, :cond_0

    .line 1263
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1264
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1267
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1268
    return-void
.end method

.method onDragExit()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1209
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    if-eqz v0, :cond_0

    .line 1210
    iput-boolean v2, p0, Lcom/android/launcher2/CellLayout;->mDragging:Z

    .line 1213
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    if-eqz v0, :cond_0

    .line 1214
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCrosshairsAnimator:Lcom/android/launcher2/InterruptibleInOutAnimator;

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1219
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    aput v3, v0, v2

    .line 1220
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    const/4 v1, 0x1

    aput v3, v0, v1

    .line 1221
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 1222
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    array-length v1, v1

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 1224
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->setIsDragOverlapping(Z)V

    .line 1225
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 37
    .parameter "canvas"

    .prologue
    .line 416
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_1

    .line 418
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getScaleX()F

    move-result v5

    const/high16 v6, 0x3f00

    cmpg-float v5, v5, v6

    if-gez v5, :cond_3

    const/4 v5, 0x1

    move/from16 v28, v5

    .line 420
    .local v28, mini:Z
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    move v5, v0

    if-eqz v5, :cond_5

    .line 422
    if-eqz v28, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v16, v5

    .line 431
    .local v16, bg:Landroid/graphics/drawable/Drawable;
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    move v6, v0

    mul-float/2addr v5, v6

    const/high16 v6, 0x437f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v16

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    move-object v5, v0

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 433
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 435
    if-eqz v28, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    move v5, v0

    if-eqz v5, :cond_1

    .line 436
    const/16 v29, 0x0

    .line 437
    .local v29, modifiedClipRect:Z
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    move v5, v0

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    .line 441
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    move v5, v0

    const/high16 v6, 0x3f80

    sub-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float v25, v5, v6

    .line 442
    .local v25, marginFraction:F
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v17

    .line 443
    .local v17, clipRect:Landroid/graphics/Rect;
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v25

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 444
    .local v26, marginX:I
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    mul-float v5, v5, v25

    move v0, v5

    float-to-int v0, v0

    move/from16 v27, v0

    .line 445
    .local v27, marginY:I
    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 446
    move/from16 v0, v26

    neg-int v0, v0

    move v5, v0

    int-to-float v6, v5

    move/from16 v0, v27

    neg-int v0, v0

    move v5, v0

    int-to-float v7, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getWidth()I

    move-result v5

    add-int v5, v5, v26

    int-to-float v8, v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getHeight()I

    move-result v5

    add-int v5, v5, v27

    int-to-float v9, v5

    sget-object v10, Landroid/graphics/Region$Op;->REPLACE:Landroid/graphics/Region$Op;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->clipRect(FFFFLandroid/graphics/Region$Op;)Z

    .line 448
    const/16 v29, 0x1

    .line 451
    .end local v17           #clipRect:Landroid/graphics/Rect;
    .end local v25           #marginFraction:F
    .end local v26           #marginX:I
    .end local v27           #marginY:I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    move v7, v0

    mul-float/2addr v6, v7

    const/high16 v7, 0x437f

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 453
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundRect:Landroid/graphics/Rect;

    move-object v6, v0

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 455
    if-eqz v29, :cond_1

    .line 456
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 461
    .end local v16           #bg:Landroid/graphics/drawable/Drawable;
    .end local v28           #mini:Z
    .end local v29           #modifiedClipRect:Z
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_b

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v19, v0

    .line 463
    .local v19, countX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v20, v0

    .line 465
    .local v20, countY:I
    const v12, 0x3ecccccd

    .line 466
    .local v12, MAX_ALPHA:F
    const/16 v13, 0x258

    .line 467
    .local v13, MAX_VISIBLE_DISTANCE:I
    const v11, 0x3b03126f

    .line 469
    .local v11, DISTANCE_MULTIPLIER:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v21, v0

    .line 470
    .local v21, d:Landroid/graphics/drawable/Drawable;
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v34

    .line 471
    .local v34, width:I
    invoke-virtual/range {v21 .. v21}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v23

    .line 473
    .local v23, height:I
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getLeftPadding()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v34, 0x2

    sub-int v35, v5, v6

    .line 474
    .local v35, x:I
    const/16 v18, 0x0

    .local v18, col:I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, v19

    if-gt v0, v1, :cond_b

    .line 475
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getTopPadding()I

    move-result v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move v6, v0

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v5, v6

    div-int/lit8 v6, v23, 0x2

    sub-int v36, v5, v6

    .line 476
    .local v36, y:I
    const/16 v33, 0x0

    .local v33, row:I
    :goto_3
    move/from16 v0, v33

    move/from16 v1, v20

    if-gt v0, v1, :cond_a

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    sub-int v6, v35, v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    sub-int v7, v36, v7

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPointF:Landroid/graphics/PointF;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/PointF;->length()F

    move-result v22

    .line 480
    .local v22, dist:F
    const v5, 0x3ecccccd

    const v6, 0x3b03126f

    const/high16 v7, 0x4416

    sub-float v7, v7, v22

    mul-float/2addr v6, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v14

    .line 482
    .local v14, alpha:F
    const/4 v5, 0x0

    cmpl-float v5, v14, v5

    if-lez v5, :cond_2

    .line 483
    add-int v5, v35, v34

    add-int v6, v36, v23

    move-object/from16 v0, v21

    move/from16 v1, v35

    move/from16 v2, v36

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 484
    const/high16 v5, 0x437f

    mul-float/2addr v5, v14

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsVisibility:F

    move v6, v0

    mul-float/2addr v5, v6

    float-to-int v5, v5

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 485
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 487
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move v6, v0

    add-int/2addr v5, v6

    add-int v36, v36, v5

    .line 476
    add-int/lit8 v33, v33, 0x1

    goto :goto_3

    .line 418
    .end local v11           #DISTANCE_MULTIPLIER:F
    .end local v12           #MAX_ALPHA:F
    .end local v13           #MAX_VISIBLE_DISTANCE:I
    .end local v14           #alpha:F
    .end local v18           #col:I
    .end local v19           #countX:I
    .end local v20           #countY:I
    .end local v21           #d:Landroid/graphics/drawable/Drawable;
    .end local v22           #dist:F
    .end local v23           #height:I
    .end local v33           #row:I
    .end local v34           #width:I
    .end local v35           #x:I
    .end local v36           #y:I
    :cond_3
    const/4 v5, 0x0

    move/from16 v28, v5

    goto/16 :goto_0

    .line 422
    .restart local v28       #mini:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveGlowBackground:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v16, v5

    goto/16 :goto_1

    .line 423
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    move v5, v0

    if-eqz v5, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    move v5, v0

    if-eqz v5, :cond_7

    .line 424
    if-eqz v28, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v16, v5

    .restart local v16       #bg:Landroid/graphics/drawable/Drawable;
    :goto_4
    goto/16 :goto_1

    .end local v16           #bg:Landroid/graphics/drawable/Drawable;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mActiveBackground:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v16, v5

    goto :goto_4

    .line 425
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    move v5, v0

    if-eqz v5, :cond_8

    if-eqz v28, :cond_8

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mNormalGlowBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    .restart local v16       #bg:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 428
    .end local v16           #bg:Landroid/graphics/drawable/Drawable;
    :cond_8
    if-eqz v28, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mNormalBackgroundMini:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v16, v5

    .restart local v16       #bg:Landroid/graphics/drawable/Drawable;
    :goto_5
    goto/16 :goto_1

    .end local v16           #bg:Landroid/graphics/drawable/Drawable;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mNormalBackground:Landroid/graphics/drawable/Drawable;

    move-object v5, v0

    move-object/from16 v16, v5

    goto :goto_5

    .line 489
    .end local v28           #mini:Z
    .restart local v11       #DISTANCE_MULTIPLIER:F
    .restart local v12       #MAX_ALPHA:F
    .restart local v13       #MAX_VISIBLE_DISTANCE:I
    .restart local v18       #col:I
    .restart local v19       #countX:I
    .restart local v20       #countY:I
    .restart local v21       #d:Landroid/graphics/drawable/Drawable;
    .restart local v23       #height:I
    .restart local v33       #row:I
    .restart local v34       #width:I
    .restart local v35       #x:I
    .restart local v36       #y:I
    :cond_a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move v6, v0

    add-int/2addr v5, v6

    add-int v35, v35, v5

    .line 474
    add-int/lit8 v18, v18, 0x1

    goto/16 :goto_2

    .line 493
    .end local v11           #DISTANCE_MULTIPLIER:F
    .end local v12           #MAX_ALPHA:F
    .end local v13           #MAX_VISIBLE_DISTANCE:I
    .end local v18           #col:I
    .end local v19           #countX:I
    .end local v20           #countY:I
    .end local v21           #d:Landroid/graphics/drawable/Drawable;
    .end local v23           #height:I
    .end local v33           #row:I
    .end local v34           #width:I
    .end local v35           #x:I
    .end local v36           #y:I
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlinePaint:Landroid/graphics/Paint;

    move-object/from16 v32, v0

    .line 494
    .local v32, paint:Landroid/graphics/Paint;
    const/16 v24, 0x0

    .local v24, i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v5, v0

    array-length v5, v5

    move/from16 v0, v24

    move v1, v5

    if-ge v0, v1, :cond_d

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAlphas:[F

    move-object v5, v0

    aget v14, v5, v24

    .line 496
    .restart local v14       #alpha:F
    const/4 v5, 0x0

    cmpl-float v5, v14, v5

    if-lez v5, :cond_c

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v5, v0

    aget-object v30, v5, v24

    .line 498
    .local v30, p:Landroid/graphics/Point;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v5, v0

    aget-object v5, v5, v24

    invoke-virtual {v5}, Lcom/android/launcher2/InterruptibleInOutAnimator;->getTag()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/graphics/Bitmap;

    .line 499
    .local v15, b:Landroid/graphics/Bitmap;
    const/high16 v5, 0x3f00

    add-float/2addr v5, v14

    float-to-int v5, v5

    move-object/from16 v0, v32

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 500
    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    int-to-float v5, v5

    move-object/from16 v0, v30

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v6, v0

    int-to-float v6, v6

    move-object/from16 v0, p1

    move-object v1, v15

    move v2, v5

    move v3, v6

    move-object/from16 v4, v32

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 494
    .end local v15           #b:Landroid/graphics/Bitmap;
    .end local v30           #p:Landroid/graphics/Point;
    :cond_c
    add-int/lit8 v24, v24, 0x1

    goto :goto_6

    .line 506
    .end local v14           #alpha:F
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object v5, v0

    if-eqz v5, :cond_e

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackgroundPadding()I

    move-result v31

    .line 508
    .local v31, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/BubbleTextView;->getPressedOrFocusedBackground()Landroid/graphics/Bitmap;

    move-result-object v15

    .line 509
    .restart local v15       #b:Landroid/graphics/Bitmap;
    if-eqz v15, :cond_e

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/android/launcher2/BubbleTextView;->getLeft()I

    move-result v5

    sub-int v5, v5, v31

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/android/launcher2/BubbleTextView;->getTop()I

    move-result v6

    sub-int v6, v6, v31

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object v1, v15

    move v2, v5

    move v3, v6

    move-object v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 516
    .end local v15           #b:Landroid/graphics/Bitmap;
    .end local v31           #padding:I
    :cond_e
    return-void
.end method

.method onDropChild(Landroid/view/View;Z)V
    .locals 3
    .parameter "child"
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    .line 1235
    if-eqz p1, :cond_0

    .line 1236
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1237
    .local v0, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iput-boolean v2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->isDragging:Z

    .line 1238
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->dropped:Z

    .line 1239
    iput-boolean p2, v0, Lcom/android/launcher2/CellLayout$LayoutParams;->animateDrop:Z

    .line 1240
    if-eqz p2, :cond_1

    const/4 v1, 0x4

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1241
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 1243
    .end local v0           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_0
    return-void

    .restart local v0       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    move v1, v2

    .line 1240
    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "ev"

    .prologue
    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 685
    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    invoke-interface {v2, p0, p1}, Landroid/view/View$OnTouchListener;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v5

    .line 703
    :goto_0
    return v2

    .line 688
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 689
    .local v0, action:I
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 691
    .local v1, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    if-nez v0, :cond_2

    .line 692
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/CellLayout;->setTagToCellInfoForPoint(II)V

    :cond_1
    :goto_1
    move v2, v4

    .line 703
    goto :goto_0

    .line 693
    :cond_2
    if-ne v0, v5, :cond_1

    .line 694
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 695
    iput v3, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 696
    iput v3, v1, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 697
    iput v4, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 698
    iput v4, v1, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 699
    iput-boolean v4, v1, Lcom/android/launcher2/CellLayout$CellInfo;->valid:Z

    .line 700
    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 6
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    const/4 v5, 0x0

    .line 847
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v1

    .line 848
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 849
    invoke-virtual {p0, v2}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 850
    .local v0, child:Landroid/view/View;
    sub-int v3, p4, p2

    sub-int v4, p5, p3

    invoke-virtual {v0, v5, v5, v3, v4}, Landroid/view/View;->layout(IIII)V

    .line 848
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 852
    .end local v0           #child:Landroid/view/View;
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 24
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 795
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v19

    .line 796
    .local v19, widthSpecMode:I
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v20

    .line 798
    .local v20, widthSpecSize:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    .line 799
    .local v10, heightSpecMode:I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v11

    .line 801
    .local v11, heightSpecSize:I
    if-eqz v19, :cond_0

    if-nez v10, :cond_1

    .line 802
    :cond_0
    new-instance v21, Ljava/lang/RuntimeException;

    const-string v22, "CellLayout cannot have UNSPECIFIED dimensions"

    invoke-direct/range {v21 .. v22}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 805
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    move v4, v0

    .line 806
    .local v4, cellWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    move v3, v0

    .line 808
    .local v3, cellHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v17, v21, v22

    .line 809
    .local v17, numWidthGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v21, v0

    const/16 v22, 0x1

    sub-int v16, v21, v22

    .line 811
    .local v16, numHeightGaps:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v21, v0

    if-ltz v21, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v21, v0

    if-gez v21, :cond_3

    .line 812
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mTopPadding:I

    move/from16 v21, v0

    sub-int v21, v11, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBottomPadding:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v22, v0

    mul-int v22, v22, v3

    sub-int v18, v21, v22

    .line 813
    .local v18, vSpaceLeft:I
    div-int v21, v18, v16

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mLeftPadding:I

    move/from16 v21, v0

    sub-int v21, v20, v21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mRightPadding:I

    move/from16 v22, v0

    sub-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v22, v0

    mul-int v22, v22, v4

    sub-int v9, v21, v22

    .line 816
    .local v9, hSpaceLeft:I
    div-int v21, v9, v17

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 819
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v22, v0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->min(II)I

    move-result v13

    .line 820
    .local v13, minGap:I
    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move v0, v13

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    .line 824
    .end local v9           #hSpaceLeft:I
    .end local v13           #minGap:I
    .end local v18           #vSpaceLeft:I
    :cond_3
    move/from16 v15, v20

    .line 825
    .local v15, newWidth:I
    move v14, v11

    .line 826
    .local v14, newHeight:I
    const/high16 v21, -0x8000

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_4

    .line 827
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mLeftPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mRightPadding:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v22, v0

    mul-int v22, v22, v4

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountX:I

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v15, v21, v22

    .line 829
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mTopPadding:I

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mBottomPadding:I

    move/from16 v22, v0

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v22, v0

    mul-int v22, v22, v3

    add-int v21, v21, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mCountY:I

    move/from16 v22, v0

    const/16 v23, 0x1

    sub-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    move/from16 v23, v0

    mul-int v22, v22, v23

    add-int v14, v21, v22

    .line 831
    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 834
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v8

    .line 835
    .local v8, count:I
    const/4 v12, 0x0

    .local v12, i:I
    :goto_0
    if-ge v12, v8, :cond_5

    .line 836
    move-object/from16 v0, p0

    move v1, v12

    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 837
    .local v5, child:Landroid/view/View;
    const/high16 v21, 0x4000

    move v0, v15

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 838
    .local v6, childWidthMeasureSpec:I
    const/high16 v21, 0x4000

    move v0, v14

    move/from16 v1, v21

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 840
    .local v7, childheightMeasureSpec:I
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 835
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 842
    .end local v5           #child:Landroid/view/View;
    .end local v6           #childWidthMeasureSpec:I
    .end local v7           #childheightMeasureSpec:I
    :cond_5
    move-object/from16 v0, p0

    move v1, v15

    move v2, v14

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/CellLayout;->setMeasuredDimension(II)V

    .line 843
    return-void
.end method

.method public onMove(Landroid/view/View;II)V
    .locals 7
    .parameter "view"
    .parameter "newCellX"
    .parameter "newCellY"

    .prologue
    .line 1465
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 1466
    .local v6, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 1467
    iget v3, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iget v4, v6, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p2

    move v2, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher2/CellLayout;->markCellsForView(IIIIZ)V

    .line 1468
    return-void
.end method

.method protected onSetAlpha(I)Z
    .locals 1
    .parameter "alpha"

    .prologue
    .line 897
    const/4 v0, 0x1

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 2
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/4 v1, 0x0

    .line 856
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    .line 857
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mBackgroundRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 858
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 859
    return-void
.end method

.method pointToCellExact(II[I)V
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getLeftPadding()I

    move-result v0

    .line 719
    .local v0, hStartPadding:I
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getTopPadding()I

    move-result v1

    .line 721
    .local v1, vStartPadding:I
    sub-int v4, p1, v0

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mWidthGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v7

    .line 722
    sub-int v4, p2, v1

    iget v5, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    iget v6, p0, Lcom/android/launcher2/CellLayout;->mHeightGap:I

    add-int/2addr v5, v6

    div-int/2addr v4, v5

    aput v4, p3, v8

    .line 724
    iget v2, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    .line 725
    .local v2, xAxis:I
    iget v3, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    .line 727
    .local v3, yAxis:I
    aget v4, p3, v7

    if-gez v4, :cond_0

    aput v7, p3, v7

    .line 728
    :cond_0
    aget v4, p3, v7

    if-lt v4, v2, :cond_1

    sub-int v4, v2, v8

    aput v4, p3, v7

    .line 729
    :cond_1
    aget v4, p3, v8

    if-gez v4, :cond_2

    aput v7, p3, v8

    .line 730
    :cond_2
    aget v4, p3, v8

    if-lt v4, v3, :cond_3

    sub-int v4, v3, v8

    aput v4, p3, v8

    .line 731
    :cond_3
    return-void
.end method

.method pointToCellRounded(II[I)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "result"

    .prologue
    .line 740
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mCellWidth:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    iget v1, p0, Lcom/android/launcher2/CellLayout;->mCellHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    invoke-virtual {p0, v0, v1, p3}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 741
    return-void
.end method

.method public rectToCell(II[I)[I
    .locals 1
    .parameter "width"
    .parameter "height"
    .parameter "result"

    .prologue
    .line 1306
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1, p2, p3}, Lcom/android/launcher2/CellLayout;->rectToCell(Landroid/content/res/Resources;II[I)[I

    move-result-object v0

    return-object v0
.end method

.method public removeAllViews()V
    .locals 1

    .prologue
    .line 578
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 579
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViews()V

    .line 580
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 584
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->clearOccupiedCells()V

    .line 585
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher2/CellLayoutChildren;->removeAllViewsInLayout()V

    .line 586
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 594
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 595
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 596
    return-void
.end method

.method public removeViewAt(I)V
    .locals 1
    .parameter "index"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 601
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewAt(I)V

    .line 602
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 606
    invoke-virtual {p0, p1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 607
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeViewInLayout(Landroid/view/View;)V

    .line 608
    return-void
.end method

.method public removeViewWithoutMarkingCells(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 589
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->removeView(Landroid/view/View;)V

    .line 590
    return-void
.end method

.method public removeViews(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 612
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 613
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 612
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 615
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViews(II)V

    .line 616
    return-void
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .parameter "start"
    .parameter "count"

    .prologue
    .line 620
    move v0, p1

    .local v0, i:I
    :goto_0
    add-int v1, p1, p2

    if-ge v0, v1, :cond_0

    .line 621
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, v0}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/launcher2/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 620
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 623
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher2/CellLayoutChildren;->removeViewsInLayout(II)V

    .line 624
    return-void
.end method

.method public setAcceptsDrops(Z)V
    .locals 1
    .parameter "acceptsDrops"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    if-eq v0, p1, :cond_0

    .line 567
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mAcceptsDrops:Z

    .line 568
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 570
    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 901
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setChildrenAlpha(F)V

    .line 902
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 903
    return-void
.end method

.method public setBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 888
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 889
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 890
    return-void
.end method

.method public setBackgroundAlphaMultiplier(F)V
    .locals 0
    .parameter "multiplier"

    .prologue
    .line 880
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlphaMultiplier:F

    .line 881
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawingCacheEnabled(Z)V

    .line 864
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v0, p1}, Lcom/android/launcher2/CellLayoutChildren;->setChildrenDrawnWithCacheEnabled(Z)V

    .line 869
    return-void
.end method

.method public setFastAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 906
    invoke-direct {p0, p1}, Lcom/android/launcher2/CellLayout;->setFastChildrenAlpha(F)V

    .line 907
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setFastAlpha(F)V

    .line 908
    return-void
.end method

.method public setFastBackgroundAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 876
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mBackgroundAlpha:F

    .line 877
    return-void
.end method

.method public setHoverAlpha(F)V
    .locals 0
    .parameter "alpha"

    .prologue
    .line 373
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundAlpha:F

    .line 374
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 375
    return-void
.end method

.method public setHoverScale(F)V
    .locals 1
    .parameter "scaleFactor"

    .prologue
    .line 355
    iget v0, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 356
    iput p1, p0, Lcom/android/launcher2/CellLayout;->mGlowBackgroundScale:F

    .line 357
    invoke-direct {p0}, Lcom/android/launcher2/CellLayout;->updateGlowRect()V

    .line 358
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 362
    :cond_0
    return-void
.end method

.method public setIsDefaultDropTarget(Z)V
    .locals 1
    .parameter "isDefaultDropTarget"

    .prologue
    .line 321
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    if-eq v0, p1, :cond_0

    .line 322
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDefaultDropTarget:Z

    .line 323
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 325
    :cond_0
    return-void
.end method

.method setIsDragOccuring(Z)V
    .locals 1
    .parameter "isDragOccuring"

    .prologue
    .line 328
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    if-eq v0, p1, :cond_0

    .line 329
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOccuring:Z

    .line 330
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 332
    :cond_0
    return-void
.end method

.method setIsDragOverlapping(Z)V
    .locals 1
    .parameter "isDragOverlapping"

    .prologue
    .line 335
    iget-boolean v0, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    if-eq v0, p1, :cond_0

    .line 336
    iput-boolean p1, p0, Lcom/android/launcher2/CellLayout;->mIsDragOverlapping:Z

    .line 337
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 339
    :cond_0
    return-void
.end method

.method public setOnInterceptTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 531
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mInterceptTouchListener:Landroid/view/View$OnTouchListener;

    .line 532
    return-void
.end method

.method setPressedOrFocusedIcon(Lcom/android/launcher2/BubbleTextView;)V
    .locals 2
    .parameter "icon"

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 304
    .local v0, oldIcon:Lcom/android/launcher2/BubbleTextView;
    iput-object p1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    .line 305
    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, v0}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 308
    :cond_0
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mPressedOrFocusedIcon:Lcom/android/launcher2/BubbleTextView;

    invoke-direct {p0, v1}, Lcom/android/launcher2/CellLayout;->invalidateBubbleTextView(Lcom/android/launcher2/BubbleTextView;)V

    .line 311
    :cond_1
    return-void
.end method

.method public setTagToCellInfoForPoint(II)V
    .locals 12
    .parameter "touchX"
    .parameter "touchY"

    .prologue
    .line 641
    iget-object v0, p0, Lcom/android/launcher2/CellLayout;->mCellInfo:Lcom/android/launcher2/CellLayout$CellInfo;

    .line 642
    .local v0, cellInfo:Lcom/android/launcher2/CellLayout$CellInfo;
    iget-object v5, p0, Lcom/android/launcher2/CellLayout;->mRect:Landroid/graphics/Rect;

    .line 643
    .local v5, frame:Landroid/graphics/Rect;
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollX:I

    add-int v8, p1, v10

    .line 644
    .local v8, x:I
    iget v10, p0, Lcom/android/launcher2/CellLayout;->mScrollY:I

    add-int v9, p2, v10

    .line 645
    .local v9, y:I
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10}, Lcom/android/launcher2/CellLayoutChildren;->getChildCount()I

    move-result v3

    .line 647
    .local v3, count:I
    const/4 v4, 0x0

    .line 648
    .local v4, found:Z
    const/4 v10, 0x1

    sub-int v6, v3, v10

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_1

    .line 649
    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mChildren:Lcom/android/launcher2/CellLayoutChildren;

    invoke-virtual {v10, v6}, Lcom/android/launcher2/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 650
    .local v2, child:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 652
    .local v7, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-eqz v10, :cond_3

    :cond_0
    iget-boolean v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v10, :cond_3

    .line 654
    invoke-virtual {v2, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 655
    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->contains(II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 656
    iput-object v2, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 657
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellX:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 658
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellY:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 659
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellHSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 660
    iget v10, v7, Lcom/android/launcher2/CellLayout$LayoutParams;->cellVSpan:I

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 661
    const/4 v10, 0x1

    iput-boolean v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->valid:Z

    .line 662
    const/4 v4, 0x1

    .line 668
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    if-nez v4, :cond_2

    .line 669
    iget-object v1, p0, Lcom/android/launcher2/CellLayout;->mTmpCellXY:[I

    .line 670
    .local v1, cellXY:[I
    invoke-virtual {p0, v8, v9, v1}, Lcom/android/launcher2/CellLayout;->pointToCellExact(II[I)V

    .line 672
    const/4 v10, 0x0

    iput-object v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cell:Landroid/view/View;

    .line 673
    const/4 v10, 0x0

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellX:I

    .line 674
    const/4 v10, 0x1

    aget v10, v1, v10

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->cellY:I

    .line 675
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanX:I

    .line 676
    const/4 v10, 0x1

    iput v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->spanY:I

    .line 677
    const/4 v10, 0x0

    aget v10, v1, v10

    if-ltz v10, :cond_4

    const/4 v10, 0x1

    aget v10, v1, v10

    if-ltz v10, :cond_4

    const/4 v10, 0x0

    aget v10, v1, v10

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountX:I

    if-ge v10, v11, :cond_4

    const/4 v10, 0x1

    aget v10, v1, v10

    iget v11, p0, Lcom/android/launcher2/CellLayout;->mCountY:I

    if-ge v10, v11, :cond_4

    iget-object v10, p0, Lcom/android/launcher2/CellLayout;->mOccupied:[[Z

    const/4 v11, 0x0

    aget v11, v1, v11

    aget-object v10, v10, v11

    const/4 v11, 0x1

    aget v11, v1, v11

    aget-boolean v10, v10, v11

    if-nez v10, :cond_4

    const/4 v10, 0x1

    :goto_1
    iput-boolean v10, v0, Lcom/android/launcher2/CellLayout$CellInfo;->valid:Z

    .line 680
    .end local v1           #cellXY:[I
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher2/CellLayout;->setTag(Ljava/lang/Object;)V

    .line 681
    return-void

    .line 648
    .restart local v2       #child:Landroid/view/View;
    .restart local v7       #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_3
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    .line 677
    .end local v2           #child:Landroid/view/View;
    .end local v7           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    .restart local v1       #cellXY:[I
    :cond_4
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public sizeToSpan(I)I
    .locals 1
    .parameter "size"

    .prologue
    .line 1329
    invoke-virtual {p0}, Lcom/android/launcher2/CellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/launcher2/CellLayout;->sizeToSpanInternal(Landroid/content/res/Resources;I)I

    move-result v0

    return v0
.end method

.method visualizeDropLocation(Landroid/view/View;Landroid/graphics/Bitmap;IIII)V
    .locals 19
    .parameter "v"
    .parameter "dragOutline"
    .parameter "originX"
    .parameter "originY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object v4, v0

    const/4 v5, 0x0

    aget v14, v4, v5

    .line 962
    .local v14, oldDragCellX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object v4, v0

    const/4 v5, 0x1

    aget v15, v4, v5

    .line 963
    .local v15, oldDragCellY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCell:[I

    move-object v10, v0

    move-object/from16 v4, p0

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher2/CellLayout;->findNearestVacantArea(IIIILandroid/view/View;[I)[I

    move-result-object v13

    .line 964
    .local v13, nearest:[I
    if-eqz p1, :cond_5

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object v4, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v5, v5, p3

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    add-int v6, v6, p4

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Point;->set(II)V

    .line 970
    :goto_0
    if-eqz v13, :cond_3

    const/4 v4, 0x0

    aget v4, v13, v4

    if-ne v4, v14, :cond_0

    const/4 v4, 0x1

    aget v4, v13, v4

    if-eq v4, v15, :cond_3

    .line 972
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mTmpPoint:[I

    move-object/from16 v18, v0

    .line 973
    .local v18, topLeft:[I
    const/4 v4, 0x0

    aget v4, v13, v4

    const/4 v5, 0x1

    aget v5, v13, v5

    move-object/from16 v0, p0

    move v1, v4

    move v2, v5

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher2/CellLayout;->cellToPoint(II[I)V

    .line 975
    const/4 v4, 0x0

    aget v11, v18, v4

    .line 976
    .local v11, left:I
    const/4 v4, 0x1

    aget v17, v18, v4

    .line 978
    .local v17, top:I
    if-eqz p1, :cond_2

    .line 979
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher2/CellLayout;

    if-eqz v4, :cond_1

    .line 980
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher2/CellLayout$LayoutParams;

    .line 981
    .local v12, lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    iget v4, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v11, v4

    .line 982
    iget v4, v12, Lcom/android/launcher2/CellLayout$LayoutParams;->topMargin:I

    add-int v17, v17, v4

    .line 986
    .end local v12           #lp:Lcom/android/launcher2/CellLayout$LayoutParams;
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v11, v4

    .line 987
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int v17, v17, v4

    .line 990
    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move/from16 v16, v0

    .line 991
    .local v16, oldIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v4, v0

    aget-object v4, v4, v16

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateOut()V

    .line 992
    add-int/lit8 v4, v16, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v5, v0

    array-length v5, v5

    rem-int/2addr v4, v5

    move v0, v4

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlines:[Landroid/graphics/Point;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move v5, v0

    aget-object v4, v4, v5

    move-object v0, v4

    move v1, v11

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move v5, v0

    aget-object v4, v4, v5

    move-object v0, v4

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher2/InterruptibleInOutAnimator;->setTag(Ljava/lang/Object;)V

    .line 996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineAnims:[Lcom/android/launcher2/InterruptibleInOutAnimator;

    move-object v4, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher2/CellLayout;->mDragOutlineCurrent:I

    move v5, v0

    aget-object v4, v4, v5

    invoke-virtual {v4}, Lcom/android/launcher2/InterruptibleInOutAnimator;->animateIn()V

    .line 1000
    .end local v11           #left:I
    .end local v16           #oldIndex:I
    .end local v17           #top:I
    .end local v18           #topLeft:[I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mCrosshairsDrawable:Landroid/graphics/drawable/Drawable;

    move-object v4, v0

    if-eqz v4, :cond_4

    .line 1001
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 1003
    :cond_4
    return-void

    .line 967
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/CellLayout;->mDragCenter:Landroid/graphics/Point;

    move-object v4, v0

    move-object v0, v4

    move/from16 v1, p3

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0
.end method
