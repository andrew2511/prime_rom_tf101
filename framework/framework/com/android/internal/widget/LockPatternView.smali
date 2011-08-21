.class public Lcom/android/internal/widget/LockPatternView;
.super Landroid/view/View;
.source "LockPatternView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/LockPatternView$1;,
        Lcom/android/internal/widget/LockPatternView$SavedState;,
        Lcom/android/internal/widget/LockPatternView$OnPatternListener;,
        Lcom/android/internal/widget/LockPatternView$DisplayMode;,
        Lcom/android/internal/widget/LockPatternView$Cell;
    }
.end annotation


# static fields
.field private static final ASPECT_LOCK_HEIGHT:I = 0x2

.field private static final ASPECT_LOCK_WIDTH:I = 0x1

.field private static final ASPECT_SQUARE:I = 0x0

.field private static final DEFAULT_VIBE_PATTERN:[J = null

.field private static final MILLIS_PER_CIRCLE_ANIMATING:I = 0x2bc

.field private static final PROFILE_DRAWING:Z = false

.field static final STATUS_BAR_HEIGHT:I = 0x19

.field private static final TAG:Ljava/lang/String; = "LockPatternView"


# instance fields
.field private mAnimatingPeriodStart:J

.field private final mArrowMatrix:Landroid/graphics/Matrix;

.field private mAspect:I

.field private mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

.field private mBitmapArrowRedUp:Landroid/graphics/Bitmap;

.field private mBitmapBtnDefault:Landroid/graphics/Bitmap;

.field private mBitmapBtnTouched:Landroid/graphics/Bitmap;

.field private mBitmapCircleDefault:Landroid/graphics/Bitmap;

.field private mBitmapCircleGreen:Landroid/graphics/Bitmap;

.field private mBitmapCircleRed:Landroid/graphics/Bitmap;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private final mCurrentPath:Landroid/graphics/Path;

.field private mDiameterFactor:F

.field private mDrawingProfilingStarted:Z

.field private mHitFactor:F

.field private mInProgressX:F

.field private mInProgressY:F

.field private mInStealthMode:Z

.field private mInputEnabled:Z

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mPathPaint:Landroid/graphics/Paint;

.field private mPattern:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field private mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

.field private mPatternDrawLookup:[[Z

.field private mPatternInProgress:Z

.field private mSquareHeight:F

.field private mSquareWidth:F

.field private mTactileFeedbackEnabled:Z

.field private mVibePattern:[J

.field private vibe:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/internal/widget/LockPatternView;->DEFAULT_VIBE_PATTERN:[J

    return-void

    nop

    :array_a
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/LockPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 244
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 11
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v7, 0x3

    const/high16 v6, -0x4080

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 247
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mDrawingProfilingStarted:Z

    .line 66
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    .line 67
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 88
    filled-new-array {v7, v7}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Z

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    .line 95
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 96
    iput v6, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 100
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 101
    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 102
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 103
    iput-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    .line 104
    iput-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 106
    const/high16 v2, 0x3f00

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    .line 107
    const v2, 0x3f19999a

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    .line 121
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    .line 122
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    .line 133
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    .line 248
    new-instance v2, Landroid/os/Vibrator;

    invoke-direct {v2}, Landroid/os/Vibrator;-><init>()V

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->vibe:Landroid/os/Vibrator;

    .line 250
    sget-object v2, Lcom/android/internal/R$styleable;->LockPatternView:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 252
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, aspect:Ljava/lang/String;
    const-string/jumbo v2, "square"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_101

    .line 255
    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    .line 264
    :goto_79
    invoke-virtual {p0, v5}, Lcom/android/internal/widget/LockPatternView;->setClickable(Z)V

    .line 266
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 267
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setDither(Z)V

    .line 268
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    const/16 v3, 0x80

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 270
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 271
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 272
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 275
    const v2, 0x1080104

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 276
    const v2, 0x1080105

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .line 277
    const v2, 0x1080325

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 278
    const v2, 0x1080326

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 279
    const v2, 0x1080327

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 281
    const v2, 0x1080323

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    .line 282
    const v2, 0x1080324

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->getBitmapFor(I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    .line 285
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 286
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 289
    const v2, 0x1070015

    invoke-direct {p0, v2}, Lcom/android/internal/widget/LockPatternView;->loadVibratePattern(I)[J

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mVibePattern:[J

    .line 290
    return-void

    .line 256
    :cond_101
    const-string v2, "lock_width"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10d

    .line 257
    iput v5, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_79

    .line 258
    :cond_10d
    const-string v2, "lock_height"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11a

    .line 259
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_79

    .line 261
    :cond_11a
    iput v4, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    goto/16 :goto_79
.end method

.method private addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 5
    .parameter "newCell"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    const/4 v2, 0x1

    aput-boolean v2, v0, v1

    .line 540
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 541
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    if-eqz v0, :cond_1f

    .line 542
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCellAdded(Ljava/util/List;)V

    .line 544
    :cond_1f
    return-void
.end method

.method private checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 7
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v3, 0x0

    .line 549
    invoke-direct {p0, p2}, Lcom/android/internal/widget/LockPatternView;->getRowHit(F)I

    move-result v1

    .line 550
    .local v1, rowHit:I
    if-gez v1, :cond_9

    move-object v2, v3

    .line 561
    :goto_8
    return-object v2

    .line 553
    :cond_9
    invoke-direct {p0, p1}, Lcom/android/internal/widget/LockPatternView;->getColumnHit(F)I

    move-result v0

    .line 554
    .local v0, columnHit:I
    if-gez v0, :cond_11

    move-object v2, v3

    .line 555
    goto :goto_8

    .line 558
    :cond_11
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v1

    aget-boolean v2, v2, v0

    if-eqz v2, :cond_1b

    move-object v2, v3

    .line 559
    goto :goto_8

    .line 561
    :cond_1b
    invoke-static {v1, v0}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v2

    goto :goto_8
.end method

.method private clearPatternDrawLookup()V
    .registers 6

    .prologue
    const/4 v4, 0x3

    .line 417
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_14

    .line 418
    const/4 v1, 0x0

    .local v1, j:I
    :goto_5
    if-ge v1, v4, :cond_11

    .line 419
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    aget-object v2, v2, v0

    const/4 v3, 0x0

    aput-boolean v3, v2, v1

    .line 418
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 417
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 422
    .end local v1           #j:I
    :cond_14
    return-void
.end method

.method private detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;
    .registers 16
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v12, 0x2

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 500
    invoke-direct {p0, p1, p2}, Lcom/android/internal/widget/LockPatternView;->checkForNewHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v0

    .line 501
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v0, :cond_7c

    .line 504
    const/4 v4, 0x0

    .line 505
    .local v4, fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v7, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 506
    .local v7, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_57

    .line 507
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 508
    .local v6, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    iget v9, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    sub-int v2, v8, v9

    .line 509
    .local v2, dRow:I
    iget v8, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    iget v9, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    sub-int v1, v8, v9

    .line 511
    .local v1, dColumn:I
    iget v5, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    .line 512
    .local v5, fillInRow:I
    iget v3, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    .line 514
    .local v3, fillInColumn:I
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_40

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v10, :cond_40

    .line 515
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    if-lez v2, :cond_78

    move v9, v10

    :goto_3e
    add-int v5, v8, v9

    .line 518
    :cond_40
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ne v8, v12, :cond_53

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-eq v8, v10, :cond_53

    .line 519
    iget v8, v6, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    if-lez v1, :cond_7a

    move v9, v10

    :goto_51
    add-int v3, v8, v9

    .line 522
    :cond_53
    invoke-static {v5, v3}, Lcom/android/internal/widget/LockPatternView$Cell;->of(II)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v4

    .line 525
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_57
    if-eqz v4, :cond_68

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    iget v9, v4, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v8, v8, v9

    iget v9, v4, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v8, v8, v9

    if-nez v8, :cond_68

    .line 527
    invoke-direct {p0, v4}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 529
    :cond_68
    invoke-direct {p0, v0}, Lcom/android/internal/widget/LockPatternView;->addCellToPattern(Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 530
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    if-eqz v8, :cond_76

    .line 531
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->vibe:Landroid/os/Vibrator;

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternView;->mVibePattern:[J

    invoke-virtual {v8, v9, v11}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_76
    move-object v8, v0

    .line 535
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :goto_77
    return-object v8

    .restart local v1       #dColumn:I
    .restart local v2       #dRow:I
    .restart local v3       #fillInColumn:I
    .restart local v4       #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v5       #fillInRow:I
    .restart local v6       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v7       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_78
    move v9, v11

    .line 515
    goto :goto_3e

    :cond_7a
    move v9, v11

    .line 519
    goto :goto_51

    .line 535
    .end local v1           #dColumn:I
    .end local v2           #dRow:I
    .end local v3           #fillInColumn:I
    .end local v4           #fillInGapCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v5           #fillInRow:I
    .end local v6           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v7           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    :cond_7c
    const/4 v8, 0x0

    goto :goto_77
.end method

.method private drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V
    .registers 26
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v16, v0

    sget-object v17, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-eq v0, v1, :cond_fb

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 937
    .local v10, green:Z
    :goto_12
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move v9, v0

    .line 938
    .local v9, endRow:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move v14, v0

    .line 939
    .local v14, startRow:I
    move-object/from16 v0, p5

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move v8, v0

    .line 940
    .local v8, endColumn:I
    move-object/from16 v0, p4

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move v13, v0

    .line 943
    .local v13, startColumn:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int/lit8 v11, v16, 0x2

    .line 944
    .local v11, offsetX:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    move/from16 v17, v0

    sub-int v16, v16, v17

    div-int/lit8 v12, v16, 0x2

    .line 949
    .local v12, offsetY:I
    if-eqz v10, :cond_101

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowGreenUp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v5, v16

    .line 950
    .local v5, arrow:Landroid/graphics/Bitmap;
    :goto_5a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 951
    .local v7, cellWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 954
    .local v6, cellHeight:I
    sub-int v16, v9, v14

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    sub-int v18, v8, v13

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move v15, v0

    .line 956
    .local v15, theta:F
    move v0, v15

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    const/high16 v17, 0x42b4

    add-float v4, v16, v17

    .line 959
    .local v4, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move v0, v11

    int-to-float v0, v0

    move/from16 v17, v0

    add-float v17, v17, p2

    move v0, v12

    int-to-float v0, v0

    move/from16 v18, v0

    add-float v18, v18, p3

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    const/high16 v19, 0x4000

    div-float v18, v18, v19

    move-object/from16 v0, v16

    move v1, v4

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Matrix;->preRotate(FFF)Z

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v17

    sub-int v17, v7, v17

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v17, v0

    const/high16 v18, 0x4000

    div-float v17, v17, v18

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 962
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mArrowMatrix:Landroid/graphics/Matrix;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object v1, v5

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 963
    return-void

    .line 935
    .end local v4           #angle:F
    .end local v5           #arrow:Landroid/graphics/Bitmap;
    .end local v6           #cellHeight:I
    .end local v7           #cellWidth:I
    .end local v8           #endColumn:I
    .end local v9           #endRow:I
    .end local v10           #green:Z
    .end local v11           #offsetX:I
    .end local v12           #offsetY:I
    .end local v13           #startColumn:I
    .end local v14           #startRow:I
    .end local v15           #theta:F
    :cond_fb
    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_12

    .line 949
    .restart local v8       #endColumn:I
    .restart local v9       #endRow:I
    .restart local v10       #green:Z
    .restart local v11       #offsetX:I
    .restart local v12       #offsetY:I
    .restart local v13       #startColumn:I
    .restart local v14       #startRow:I
    :cond_101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mBitmapArrowRedUp:Landroid/graphics/Bitmap;

    move-object/from16 v16, v0

    move-object/from16 v5, v16

    goto/16 :goto_5a
.end method

.method private drawCircle(Landroid/graphics/Canvas;IIZ)V
    .registers 16
    .parameter "canvas"
    .parameter "leftX"
    .parameter "topY"
    .parameter "partOfPattern"

    .prologue
    const/high16 v10, 0x4000

    .line 975
    if-eqz p4, :cond_e

    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    if-eqz v8, :cond_3b

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v8, v9, :cond_3b

    .line 977
    :cond_e
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    .line 978
    .local v4, outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .line 996
    .local v1, innerCircle:Landroid/graphics/Bitmap;
    :goto_12
    iget v7, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapWidth:I

    .line 997
    .local v7, width:I
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapHeight:I

    .line 999
    .local v0, height:I
    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 1000
    .local v6, squareWidth:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 1002
    .local v5, squareHeight:F
    int-to-float v8, v7

    sub-float v8, v6, v8

    div-float/2addr v8, v10

    float-to-int v2, v8

    .line 1003
    .local v2, offsetX:I
    int-to-float v8, v0

    sub-float v8, v5, v8

    div-float/2addr v8, v10

    float-to-int v3, v8

    .line 1005
    .local v3, offsetY:I
    add-int v8, p2, v2

    int-to-float v8, v8

    add-int v9, p3, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1006
    add-int v8, p2, v2

    int-to-float v8, v8

    add-int v9, p3, v3

    int-to-float v9, v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v8, v9, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1007
    return-void

    .line 979
    .end local v0           #height:I
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v2           #offsetX:I
    .end local v3           #offsetY:I
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    .end local v5           #squareHeight:F
    .end local v6           #squareWidth:F
    .end local v7           #width:I
    :cond_3b
    iget-boolean v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    if-eqz v8, :cond_44

    .line 981
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 982
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnTouched:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_12

    .line 983
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_44
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v8, v9, :cond_4f

    .line 985
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleRed:Landroid/graphics/Bitmap;

    .line 986
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_12

    .line 987
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_4f
    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-eq v8, v9, :cond_5b

    iget-object v8, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    sget-object v9, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v8, v9, :cond_60

    .line 990
    :cond_5b
    iget-object v4, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleGreen:Landroid/graphics/Bitmap;

    .line 991
    .restart local v4       #outerCircle:Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapBtnDefault:Landroid/graphics/Bitmap;

    .restart local v1       #innerCircle:Landroid/graphics/Bitmap;
    goto :goto_12

    .line 993
    .end local v1           #innerCircle:Landroid/graphics/Bitmap;
    .end local v4           #outerCircle:Landroid/graphics/Bitmap;
    :cond_60
    new-instance v8, Ljava/lang/IllegalStateException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "unknown display mode "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private getBitmapFor(I)Landroid/graphics/Bitmap;
    .registers 3
    .parameter "resId"

    .prologue
    .line 311
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private getCenterXForColumn(I)F
    .registers 5
    .parameter "column"

    .prologue
    .line 797
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getCenterYForRow(I)F
    .registers 5
    .parameter "row"

    .prologue
    .line 801
    iget v0, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    const/high16 v2, 0x4000

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method

.method private getColumnHit(F)I
    .registers 10
    .parameter "x"

    .prologue
    .line 591
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 592
    .local v4, squareWidth:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v1, v4, v5

    .line 594
    .local v1, hitSize:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    int-to-float v5, v5

    sub-float v6, v4, v1

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 595
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_27

    .line 597
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v0, v3, v5

    .line 598
    .local v0, hitLeft:F
    cmpl-float v5, p1, v0

    if-ltz v5, :cond_24

    add-float v5, v0, v1

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_24

    move v5, v2

    .line 602
    .end local v0           #hitLeft:F
    :goto_23
    return v5

    .line 595
    .restart local v0       #hitLeft:F
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 602
    .end local v0           #hitLeft:F
    :cond_27
    const/4 v5, -0x1

    goto :goto_23
.end method

.method private getRowHit(F)I
    .registers 10
    .parameter "y"

    .prologue
    .line 571
    iget v4, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 572
    .local v4, squareHeight:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mHitFactor:F

    mul-float v0, v4, v5

    .line 574
    .local v0, hitSize:F
    iget v5, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    int-to-float v5, v5

    sub-float v6, v4, v0

    const/high16 v7, 0x4000

    div-float/2addr v6, v7

    add-float v3, v5, v6

    .line 575
    .local v3, offset:F
    const/4 v2, 0x0

    .local v2, i:I
    :goto_11
    const/4 v5, 0x3

    if-ge v2, v5, :cond_27

    .line 577
    int-to-float v5, v2

    mul-float/2addr v5, v4

    add-float v1, v3, v5

    .line 578
    .local v1, hitTop:F
    cmpl-float v5, p1, v1

    if-ltz v5, :cond_24

    add-float v5, v1, v0

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_24

    move v5, v2

    .line 582
    .end local v1           #hitTop:F
    :goto_23
    return v5

    .line 575
    .restart local v1       #hitTop:F
    :cond_24
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 582
    .end local v1           #hitTop:F
    :cond_27
    const/4 v5, -0x1

    goto :goto_23
.end method

.method private loadVibratePattern(I)[J
    .registers 8
    .parameter "id"

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 295
    .local v2, pattern:[I
    :try_start_1
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getIntArray(I)[I
    :try_end_8
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_8} :catch_e

    move-result-object v2

    .line 299
    :goto_9
    if-nez v2, :cond_18

    .line 300
    sget-object v4, Lcom/android/internal/widget/LockPatternView;->DEFAULT_VIBE_PATTERN:[J

    .line 307
    :goto_d
    return-object v4

    .line 296
    :catch_e
    move-exception v4

    move-object v0, v4

    .line 297
    .local v0, e:Landroid/content/res/Resources$NotFoundException;
    const-string v4, "LockPatternView"

    const-string v5, "Vibrate pattern missing, using default"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    .line 303
    .end local v0           #e:Landroid/content/res/Resources$NotFoundException;
    :cond_18
    array-length v4, v2

    new-array v3, v4, [J

    .line 304
    .local v3, tmpPattern:[J
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1c
    array-length v4, v2

    if-ge v1, v4, :cond_27

    .line 305
    aget v4, v2, v1

    int-to-long v4, v4

    aput-wide v4, v3, v1

    .line 304
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_27
    move-object v4, v3

    .line 307
    goto :goto_d
.end method

.method private resetPattern()V
    .registers 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 408
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 409
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 410
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 411
    return-void
.end method

.method private resolveMeasured(II)I
    .registers 6
    .parameter "measureSpec"
    .parameter "desired"

    .prologue
    .line 450
    const/4 v0, 0x0

    .line 451
    .local v0, result:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 452
    .local v1, specSize:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    sparse-switch v2, :sswitch_data_16

    .line 461
    move v0, v1

    .line 463
    :goto_d
    return v0

    .line 454
    :sswitch_e
    move v0, p2

    .line 455
    goto :goto_d

    .line 457
    :sswitch_10
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 458
    goto :goto_d

    .line 452
    nop

    :sswitch_data_16
    .sparse-switch
        -0x80000000 -> :sswitch_10
        0x0 -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public clearPattern()V
    .registers 1

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 401
    return-void
.end method

.method public disableInput()V
    .registers 2

    .prologue
    .line 429
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 430
    return-void
.end method

.method public enableInput()V
    .registers 2

    .prologue
    .line 436
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 437
    return-void
.end method

.method public isInStealthMode()Z
    .registers 2

    .prologue
    .line 318
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    return v0
.end method

.method public isTactileFeedbackEnabled()Z
    .registers 2

    .prologue
    .line 325
    iget-boolean v0, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 38
    .parameter "canvas"

    .prologue
    .line 806
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v30, v0

    .line 807
    .local v30, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    invoke-virtual/range {v30 .. v30}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 808
    .local v14, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    move-object/from16 v17, v0

    .line 810
    .local v17, drawLookup:[[Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_c5

    .line 815
    add-int/lit8 v5, v14, 0x1

    move v0, v5

    mul-int/lit16 v0, v0, 0x2bc

    move/from16 v27, v0

    .line 816
    .local v27, oneCycle:I
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    long-to-int v5, v5

    rem-int v33, v5, v27

    .line 818
    .local v33, spotInCycle:I
    move/from16 v0, v33

    div-int/lit16 v0, v0, 0x2bc

    move/from16 v25, v0

    .line 820
    .local v25, numCircles:I
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 821
    const/16 v21, 0x0

    .local v21, i:I
    :goto_38
    move/from16 v0, v21

    move/from16 v1, v25

    if-ge v0, v1, :cond_58

    .line 822
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 823
    .local v9, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v5

    aget-object v5, v17, v5

    invoke-virtual {v9}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v6

    const/4 v7, 0x1

    aput-boolean v7, v5, v6

    .line 821
    add-int/lit8 v21, v21, 0x1

    goto :goto_38

    .line 828
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_58
    if-lez v25, :cond_198

    move/from16 v0, v25

    move v1, v14

    if-ge v0, v1, :cond_198

    const/4 v5, 0x1

    move/from16 v23, v5

    .line 831
    .local v23, needToUpdateInProgressPoint:Z
    :goto_62
    if-eqz v23, :cond_c2

    .line 832
    move/from16 v0, v33

    rem-int/lit16 v0, v0, 0x2bc

    move v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x442f

    div-float v31, v5, v6

    .line 836
    .local v31, percentageOfNextCircle:F
    const/4 v5, 0x1

    sub-int v5, v25, v5

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 837
    .local v15, currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v15, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v12

    .line 838
    .local v12, centerX:F
    iget v5, v15, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v13

    .line 840
    .local v13, centerY:F
    move-object/from16 v0, v30

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 841
    .local v24, nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v5

    sub-float/2addr v5, v12

    mul-float v19, v31, v5

    .line 843
    .local v19, dx:F
    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move v5, v0

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v5

    sub-float/2addr v5, v13

    mul-float v20, v31, v5

    .line 845
    .local v20, dy:F
    add-float v5, v12, v19

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 846
    add-float v5, v13, v20

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 849
    .end local v12           #centerX:F
    .end local v13           #centerY:F
    .end local v15           #currentCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v19           #dx:F
    .end local v20           #dy:F
    .end local v24           #nextCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v31           #percentageOfNextCircle:F
    :cond_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 852
    .end local v21           #i:I
    .end local v23           #needToUpdateInProgressPoint:Z
    .end local v25           #numCircles:I
    .end local v27           #oneCycle:I
    .end local v33           #spotInCycle:I
    :cond_c5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v35, v0

    .line 853
    .local v35, squareWidth:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v34, v0

    .line 855
    .local v34, squareHeight:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    move v5, v0

    mul-float v5, v5, v35

    const/high16 v6, 0x3f00

    mul-float v32, v5, v6

    .line 856
    .local v32, radius:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mCurrentPath:Landroid/graphics/Path;

    move-object/from16 v16, v0

    .line 859
    .local v16, currentPath:Landroid/graphics/Path;
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Path;->rewind()V

    .line 865
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    move v5, v0

    if-eqz v5, :cond_100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_19d

    :cond_100
    const/4 v5, 0x1

    move/from16 v18, v5

    .line 866
    .local v18, drawPath:Z
    :goto_103
    if-eqz v18, :cond_151

    .line 867
    const/4 v11, 0x0

    .line 868
    .local v11, anyCircles:Z
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_108
    move/from16 v0, v21

    move v1, v14

    if-ge v0, v1, :cond_121

    .line 869
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 874
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v5, v17, v5

    iget v6, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_1a2

    .line 889
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_121
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move v5, v0

    if-nez v5, :cond_131

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object v5, v0

    sget-object v6, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne v5, v6, :cond_144

    :cond_131
    if-eqz v11, :cond_144

    .line 891
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move v6, v0

    move-object/from16 v0, v16

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 893
    :cond_144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPathPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 897
    .end local v11           #anyCircles:Z
    .end local v21           #i:I
    :cond_151
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    move/from16 v29, v0

    .line 898
    .local v29, paddingTop:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    move/from16 v28, v0

    .line 900
    .local v28, paddingLeft:I
    const/16 v21, 0x0

    .restart local v21       #i:I
    :goto_15f
    const/4 v5, 0x3

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_1cd

    .line 901
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v34

    add-float v8, v5, v6

    .line 903
    .local v8, topY:F
    const/16 v22, 0x0

    .local v22, j:I
    :goto_173
    const/4 v5, 0x3

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_1ca

    .line 904
    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move v6, v0

    mul-float v6, v6, v35

    add-float v7, v5, v6

    .line 905
    .local v7, leftX:F
    float-to-int v5, v7

    float-to-int v6, v8

    aget-object v7, v17, v21

    .end local v7           #leftX:F
    aget-boolean v7, v7, v22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->drawCircle(Landroid/graphics/Canvas;IIZ)V

    .line 903
    add-int/lit8 v22, v22, 0x1

    goto :goto_173

    .line 828
    .end local v8           #topY:F
    .end local v16           #currentPath:Landroid/graphics/Path;
    .end local v18           #drawPath:Z
    .end local v22           #j:I
    .end local v28           #paddingLeft:I
    .end local v29           #paddingTop:I
    .end local v32           #radius:F
    .end local v34           #squareHeight:F
    .end local v35           #squareWidth:F
    .restart local v25       #numCircles:I
    .restart local v27       #oneCycle:I
    .restart local v33       #spotInCycle:I
    :cond_198
    const/4 v5, 0x0

    move/from16 v23, v5

    goto/16 :goto_62

    .line 865
    .end local v21           #i:I
    .end local v25           #numCircles:I
    .end local v27           #oneCycle:I
    .end local v33           #spotInCycle:I
    .restart local v16       #currentPath:Landroid/graphics/Path;
    .restart local v32       #radius:F
    .restart local v34       #squareHeight:F
    .restart local v35       #squareWidth:F
    :cond_19d
    const/4 v5, 0x0

    move/from16 v18, v5

    goto/16 :goto_103

    .line 877
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v11       #anyCircles:Z
    .restart local v18       #drawPath:Z
    .restart local v21       #i:I
    :cond_1a2
    const/4 v11, 0x1

    .line 879
    iget v5, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v12

    .line 880
    .restart local v12       #centerX:F
    iget v5, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move-object/from16 v0, p0

    move v1, v5

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v13

    .line 881
    .restart local v13       #centerY:F
    if-nez v21, :cond_1c2

    .line 882
    move-object/from16 v0, v16

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 868
    :goto_1be
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_108

    .line 884
    :cond_1c2
    move-object/from16 v0, v16

    move v1, v12

    move v2, v13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1be

    .line 900
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v11           #anyCircles:Z
    .end local v12           #centerX:F
    .end local v13           #centerY:F
    .restart local v8       #topY:F
    .restart local v22       #j:I
    .restart local v28       #paddingLeft:I
    .restart local v29       #paddingTop:I
    :cond_1ca
    add-int/lit8 v21, v21, 0x1

    goto :goto_15f

    .line 911
    .end local v8           #topY:F
    .end local v22           #j:I
    :cond_1cd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_21d

    const/4 v5, 0x1

    move/from16 v26, v5

    .line 912
    .local v26, oldFlag:Z
    :goto_1dd
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 913
    if-eqz v18, :cond_211

    .line 914
    const/16 v21, 0x0

    :goto_1ea
    const/4 v5, 0x1

    sub-int v5, v14, v5

    move/from16 v0, v21

    move v1, v5

    if-ge v0, v1, :cond_211

    .line 915
    move-object/from16 v0, v30

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 916
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v0, v30

    move v1, v5

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 921
    .local v10, next:Lcom/android/internal/widget/LockPatternView$Cell;
    iget v5, v10, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    aget-object v5, v17, v5

    iget v6, v10, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    aget-boolean v5, v5, v6

    if-nez v5, :cond_221

    .line 931
    .end local v9           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v10           #next:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_211
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPaint:Landroid/graphics/Paint;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 932
    return-void

    .line 911
    .end local v26           #oldFlag:Z
    :cond_21d
    const/4 v5, 0x0

    move/from16 v26, v5

    goto :goto_1dd

    .line 925
    .restart local v9       #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v10       #next:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v26       #oldFlag:Z
    :cond_221
    move/from16 v0, v28

    int-to-float v0, v0

    move v5, v0

    iget v6, v9, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    int-to-float v6, v6

    mul-float v6, v6, v35

    add-float v7, v5, v6

    .line 926
    .restart local v7       #leftX:F
    move/from16 v0, v29

    int-to-float v0, v0

    move v5, v0

    iget v6, v9, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    int-to-float v6, v6

    mul-float v6, v6, v34

    add-float v8, v5, v6

    .restart local v8       #topY:F
    move-object/from16 v5, p0

    move-object/from16 v6, p1

    .line 928
    invoke-direct/range {v5 .. v10}, Lcom/android/internal/widget/LockPatternView;->drawArrow(Landroid/graphics/Canvas;FFLcom/android/internal/widget/LockPatternView$Cell;Lcom/android/internal/widget/LockPatternView$Cell;)V

    .line 914
    add-int/lit8 v21, v21, 0x1

    goto :goto_1ea
.end method

.method protected onMeasure(II)V
    .registers 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 468
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    mul-int/lit8 v1, v6, 0x3

    .line 469
    .local v1, minimumWidth:I
    iget-object v6, p0, Lcom/android/internal/widget/LockPatternView;->mBitmapCircleDefault:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    mul-int/lit8 v0, v6, 0x3

    .line 470
    .local v0, minimumHeight:I
    invoke-direct {p0, p1, v1}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v5

    .line 471
    .local v5, viewWidth:I
    invoke-direct {p0, p2, v0}, Lcom/android/internal/widget/LockPatternView;->resolveMeasured(II)I

    move-result v4

    .line 473
    .local v4, viewHeight:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 474
    .local v3, requestedWidth:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 475
    .local v2, requestedHeight:I
    iget v6, p0, Lcom/android/internal/widget/LockPatternView;->mAspect:I

    packed-switch v6, :pswitch_data_3c

    .line 489
    :goto_25
    invoke-virtual {p0, v5, v4}, Lcom/android/internal/widget/LockPatternView;->setMeasuredDimension(II)V

    .line 490
    return-void

    .line 477
    :pswitch_29
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    move v5, v4

    .line 478
    goto :goto_25

    .line 480
    :pswitch_2f
    move v5, v3

    .line 481
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 482
    goto :goto_25

    .line 484
    :pswitch_35
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 485
    move v4, v2

    goto :goto_25

    .line 475
    nop

    :pswitch_data_3c
    .packed-switch 0x0
        :pswitch_29
        :pswitch_2f
        :pswitch_35
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .registers 6
    .parameter "state"

    .prologue
    .line 1020
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    move-object v1, v0

    .line 1021
    .local v1, ss:Lcom/android/internal/widget/LockPatternView$SavedState;
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-super {p0, v2}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1022
    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getSerializedPattern()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/widget/LockPatternView;->setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V

    .line 1025
    invoke-static {}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->values()[Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->getDisplayMode()I

    move-result v3

    aget-object v2, v2, v3

    iput-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 1026
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInputEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    .line 1027
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isInStealthMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 1028
    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView$SavedState;->isTactileFeedbackEnabled()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    .line 1029
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .registers 9

    .prologue
    .line 1011
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 1012
    .local v1, superState:Landroid/os/Parcelable;
    new-instance v0, Lcom/android/internal/widget/LockPatternView$SavedState;

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternView$DisplayMode;->ordinal()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    iget-boolean v5, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    iget-boolean v6, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/widget/LockPatternView$SavedState;-><init>(Landroid/os/Parcelable;Ljava/lang/String;IZZZLcom/android/internal/widget/LockPatternView$1;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .registers 10
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    const/high16 v4, 0x4040

    .line 441
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingLeft:I

    sub-int v2, p1, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingRight:I

    sub-int v1, v2, v3

    .line 442
    .local v1, width:I
    int-to-float v2, v1

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    .line 444
    iget v2, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingTop:I

    sub-int v2, p2, v2

    iget v3, p0, Lcom/android/internal/widget/LockPatternView;->mPaddingBottom:I

    sub-int v0, v2, v3

    .line 445
    .local v0, height:I
    int-to-float v2, v0

    div-float/2addr v2, v4

    iput v2, p0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    .line 446
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 32
    .parameter "motionEvent"

    .prologue
    .line 607
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mInputEnabled:Z

    move/from16 v26, v0

    if-eqz v26, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v26

    if-nez v26, :cond_11

    .line 608
    :cond_e
    const/16 v26, 0x0

    .line 793
    :goto_10
    return v26

    .line 611
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v24

    .line 612
    .local v24, x:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v25

    .line 614
    .local v25, y:F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v26

    packed-switch v26, :pswitch_data_336

    .line 793
    const/16 v26, 0x0

    goto :goto_10

    .line 616
    :pswitch_23
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 617
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v9

    .line 618
    .local v9, hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    if-eqz v9, :cond_bc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_bc

    .line 619
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 620
    sget-object v26, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Correct:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 626
    :cond_53
    :goto_53
    if-eqz v9, :cond_ac

    .line 627
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 628
    .local v20, startX:F
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 630
    .local v21, startY:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v23, v26, v27

    .line 631
    .local v23, widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v8, v26, v27

    .line 633
    .local v8, heightOffset:F
    sub-float v26, v20, v23

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-float v27, v21, v8

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-float v28, v20, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v21, v8

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternView;->invalidate(IIII)V

    .line 636
    .end local v8           #heightOffset:F
    .end local v20           #startX:F
    .end local v21           #startY:F
    .end local v23           #widthOffset:F
    :cond_ac
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 637
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 644
    const/16 v26, 0x1

    goto/16 :goto_10

    .line 622
    :cond_bc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_53

    .line 623
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 624
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    goto/16 :goto_53

    .line 647
    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    :pswitch_d7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v26

    if-nez v26, :cond_105

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_105

    .line 648
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v27, v0

    invoke-interface/range {v26 .. v27}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternDetected(Ljava/util/List;)V

    .line 650
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 658
    :cond_105
    const/16 v26, 0x1

    goto/16 :goto_10

    .line 660
    :pswitch_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v17

    .line 661
    .local v17, patternSizePreHitDetect:I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/LockPatternView;->detectAndAddHit(FF)Lcom/android/internal/widget/LockPatternView$Cell;

    move-result-object v9

    .line 662
    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 663
    .local v16, patternSize:I
    if-eqz v9, :cond_14a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_14a

    const/16 v26, 0x1

    move/from16 v0, v16

    move/from16 v1, v26

    if-ne v0, v1, :cond_14a

    .line 664
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternStart()V

    .line 669
    :cond_14a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move/from16 v26, v0

    sub-float v26, v24, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 670
    .local v6, dx:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move/from16 v26, v0

    sub-float v26, v25, v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 671
    .local v7, dy:F
    add-float v26, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v27, v0

    const v28, 0x3c23d70a

    mul-float v27, v27, v28

    cmpl-float v26, v26, v27

    if-lez v26, :cond_2e5

    .line 672
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    move v13, v0

    .line 673
    .local v13, oldX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    move v14, v0

    .line 675
    .local v14, oldY:F
    move/from16 v0, v24

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 676
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 678
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    move/from16 v26, v0

    if-eqz v26, :cond_312

    if-lez v16, :cond_312

    .line 679
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    move-object v15, v0

    .line 680
    .local v15, pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mDiameterFactor:F

    move/from16 v27, v0

    mul-float v26, v26, v27

    const/high16 v27, 0x3f00

    mul-float v18, v26, v27

    .line 682
    .local v18, radius:F
    const/16 v26, 0x1

    sub-int v26, v16, v26

    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 684
    .local v11, lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object v0, v11

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 685
    .restart local v20       #startX:F
    move-object v0, v11

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 692
    .restart local v21       #startY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mInvalidate:Landroid/graphics/Rect;

    move-object v10, v0

    .line 694
    .local v10, invalidateRect:Landroid/graphics/Rect;
    cmpg-float v26, v20, v24

    if-gez v26, :cond_2e9

    .line 695
    move/from16 v12, v20

    .line 696
    .local v12, left:F
    move/from16 v19, v24

    .line 702
    .local v19, right:F
    :goto_1de
    cmpg-float v26, v21, v25

    if-gez v26, :cond_2ef

    .line 703
    move/from16 v22, v21

    .line 704
    .local v22, top:F
    move/from16 v5, v25

    .line 711
    .local v5, bottom:F
    :goto_1e6
    sub-float v26, v12, v18

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-float v27, v22, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-float v28, v19, v18

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v5, v18

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object v0, v10

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 714
    cmpg-float v26, v20, v13

    if-gez v26, :cond_2f5

    .line 715
    move/from16 v12, v20

    .line 716
    move/from16 v19, v13

    .line 722
    :goto_216
    cmpg-float v26, v21, v14

    if-gez v26, :cond_2fa

    .line 723
    move/from16 v22, v21

    .line 724
    move v5, v14

    .line 731
    :goto_21d
    sub-float v26, v12, v18

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-float v27, v22, v18

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-float v28, v19, v18

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v5, v18

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object v0, v10

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->union(IIII)V

    .line 735
    if-eqz v9, :cond_2df

    .line 736
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v20

    .line 737
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v21

    .line 739
    const/16 v26, 0x2

    move/from16 v0, v16

    move/from16 v1, v26

    if-lt v0, v1, :cond_309

    .line 741
    const/16 v26, 0x1

    sub-int v26, v16, v26

    sub-int v27, v16, v17

    sub-int v26, v26, v27

    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    check-cast v9, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 742
    .restart local v9       #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->column:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v13

    .line 743
    move-object v0, v9

    iget v0, v0, Lcom/android/internal/widget/LockPatternView$Cell;->row:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v14

    .line 745
    cmpg-float v26, v20, v13

    if-gez v26, :cond_300

    .line 746
    move/from16 v12, v20

    .line 747
    move/from16 v19, v13

    .line 753
    :goto_29c
    cmpg-float v26, v21, v14

    if-gez v26, :cond_304

    .line 754
    move/from16 v22, v21

    .line 755
    move v5, v14

    .line 765
    :goto_2a3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareWidth:F

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v23, v26, v27

    .line 766
    .restart local v23       #widthOffset:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/LockPatternView;->mSquareHeight:F

    move/from16 v26, v0

    const/high16 v27, 0x4000

    div-float v8, v26, v27

    .line 768
    .restart local v8       #heightOffset:F
    sub-float v26, v12, v23

    move/from16 v0, v26

    float-to-int v0, v0

    move/from16 v26, v0

    sub-float v27, v22, v8

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    add-float v28, v19, v23

    move/from16 v0, v28

    float-to-int v0, v0

    move/from16 v28, v0

    add-float v29, v5, v8

    move/from16 v0, v29

    float-to-int v0, v0

    move/from16 v29, v0

    move-object v0, v10

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 773
    .end local v8           #heightOffset:F
    .end local v23           #widthOffset:F
    :cond_2df
    move-object/from16 v0, p0

    move-object v1, v10

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->invalidate(Landroid/graphics/Rect;)V

    .line 778
    .end local v5           #bottom:F
    .end local v10           #invalidateRect:Landroid/graphics/Rect;
    .end local v11           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v12           #left:F
    .end local v13           #oldX:F
    .end local v14           #oldY:F
    .end local v15           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v18           #radius:F
    .end local v19           #right:F
    .end local v20           #startX:F
    .end local v21           #startY:F
    .end local v22           #top:F
    :cond_2e5
    :goto_2e5
    const/16 v26, 0x1

    goto/16 :goto_10

    .line 698
    .restart local v10       #invalidateRect:Landroid/graphics/Rect;
    .restart local v11       #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .restart local v13       #oldX:F
    .restart local v14       #oldY:F
    .restart local v15       #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .restart local v18       #radius:F
    .restart local v20       #startX:F
    .restart local v21       #startY:F
    :cond_2e9
    move/from16 v12, v24

    .line 699
    .restart local v12       #left:F
    move/from16 v19, v20

    .restart local v19       #right:F
    goto/16 :goto_1de

    .line 706
    :cond_2ef
    move/from16 v22, v25

    .line 707
    .restart local v22       #top:F
    move/from16 v5, v21

    .restart local v5       #bottom:F
    goto/16 :goto_1e6

    .line 718
    :cond_2f5
    move v12, v13

    .line 719
    move/from16 v19, v20

    goto/16 :goto_216

    .line 726
    :cond_2fa
    move/from16 v22, v14

    .line 727
    move/from16 v5, v21

    goto/16 :goto_21d

    .line 749
    :cond_300
    move v12, v13

    .line 750
    move/from16 v19, v20

    goto :goto_29c

    .line 757
    :cond_304
    move/from16 v22, v14

    .line 758
    move/from16 v5, v21

    goto :goto_2a3

    .line 761
    :cond_309
    move/from16 v19, v20

    move/from16 v12, v20

    .line 762
    move/from16 v5, v21

    move/from16 v22, v21

    goto :goto_2a3

    .line 775
    .end local v5           #bottom:F
    .end local v10           #invalidateRect:Landroid/graphics/Rect;
    .end local v11           #lastCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v12           #left:F
    .end local v15           #pattern:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    .end local v18           #radius:F
    .end local v19           #right:F
    .end local v20           #startX:F
    .end local v21           #startY:F
    .end local v22           #top:F
    :cond_312
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    goto :goto_2e5

    .line 780
    .end local v6           #dx:F
    .end local v7           #dy:F
    .end local v9           #hitCell:Lcom/android/internal/widget/LockPatternView$Cell;
    .end local v13           #oldX:F
    .end local v14           #oldY:F
    .end local v16           #patternSize:I
    .end local v17           #patternSizePreHitDetect:I
    :pswitch_316
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/widget/LockPatternView;->resetPattern()V

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    if-eqz v26, :cond_332

    .line 782
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/widget/LockPatternView;->mPatternInProgress:Z

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lcom/android/internal/widget/LockPatternView$OnPatternListener;->onPatternCleared()V

    .line 791
    :cond_332
    const/16 v26, 0x1

    goto/16 :goto_10

    .line 614
    :pswitch_data_336
    .packed-switch 0x0
        :pswitch_23
        :pswitch_d7
        :pswitch_109
        :pswitch_316
    .end packed-switch
.end method

.method public setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V
    .registers 5
    .parameter "displayMode"

    .prologue
    .line 381
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDisplayMode:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    .line 382
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Animate:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    if-ne p1, v1, :cond_3d

    .line 383
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_17

    .line 384
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "you must have a pattern to animate if you want to set the display mode to animate"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 387
    :cond_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/internal/widget/LockPatternView;->mAnimatingPeriodStart:J

    .line 388
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 389
    .local v0, first:Lcom/android/internal/widget/LockPatternView$Cell;
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterXForColumn(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressX:F

    .line 390
    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/internal/widget/LockPatternView;->getCenterYForRow(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/widget/LockPatternView;->mInProgressY:F

    .line 391
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 393
    .end local v0           #first:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_3d
    invoke-virtual {p0}, Lcom/android/internal/widget/LockPatternView;->invalidate()V

    .line 394
    return-void
.end method

.method public setInStealthMode(Z)V
    .registers 2
    .parameter "inStealthMode"

    .prologue
    .line 335
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mInStealthMode:Z

    .line 336
    return-void
.end method

.method public setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V
    .registers 2
    .parameter "onPatternListener"

    .prologue
    .line 354
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternView;->mOnPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 355
    return-void
.end method

.method public setPattern(Lcom/android/internal/widget/LockPatternView$DisplayMode;Ljava/util/List;)V
    .registers 8
    .parameter "displayMode"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/LockPatternView$DisplayMode;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 364
    .local p2, pattern:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 365
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPattern:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 366
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternView;->clearPatternDrawLookup()V

    .line 367
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView$Cell;

    .line 368
    .local v0, cell:Lcom/android/internal/widget/LockPatternView$Cell;
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternView;->mPatternDrawLookup:[[Z

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getRow()I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView$Cell;->getColumn()I

    move-result v3

    const/4 v4, 0x1

    aput-boolean v4, v2, v3

    goto :goto_11

    .line 371
    .end local v0           #cell:Lcom/android/internal/widget/LockPatternView$Cell;
    :cond_2d
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 372
    return-void
.end method

.method public setTactileFeedbackEnabled(Z)V
    .registers 2
    .parameter "tactileFeedbackEnabled"

    .prologue
    .line 345
    iput-boolean p1, p0, Lcom/android/internal/widget/LockPatternView;->mTactileFeedbackEnabled:Z

    .line 346
    return-void
.end method
