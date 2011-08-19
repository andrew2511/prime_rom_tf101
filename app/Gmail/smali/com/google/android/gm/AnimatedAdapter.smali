.class public Lcom/google/android/gm/AnimatedAdapter;
.super Landroid/database/DataSetObserver;
.source "AnimatedAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;
.implements Landroid/widget/ListAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    }
.end annotation


# static fields
.field protected static ANIMATION_TIME:I = 0x0

.field protected static final NEARBY_ID_WINDOW:I = 0x32

.field protected static final VIEW_TYPE_NORMAL:I

.field private static sActivatedAnimatingBackground:Landroid/graphics/drawable/Drawable;

.field private static sAnimatingBackground:Landroid/graphics/drawable/Drawable;


# instance fields
.field private mAdapter:Landroid/widget/BaseAdapter;

.field private mAnimate:Z

.field private mAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field private final mDataSetObservable:Landroid/database/DataSetObservable;

.field protected mDeletingPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation
.end field

.field protected mFirstNearbyPosition:I

.field protected mNearbyIds:[J

.field protected mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

.field private mNewNearbyIds:[J

.field private mTmpPositions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const/16 v0, 0x15e

    sput v0, Lcom/google/android/gm/AnimatedAdapter;->ANIMATION_TIME:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/BaseAdapter;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2
    .parameter "a"
    .parameter "animationListener"

    .prologue
    .line 74
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimate:Z

    .line 47
    new-instance v0, Landroid/database/DataSetObservable;

    invoke-direct {v0}, Landroid/database/DataSetObservable;-><init>()V

    iput-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    .line 54
    const/high16 v0, -0x8000

    iput v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 75
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->hasStableIds()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapters must have stable IDs to animate."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_0
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    .line 79
    invoke-virtual {p1, p0}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 81
    invoke-direct {p0}, Lcom/google/android/gm/AnimatedAdapter;->createAnimationState()V

    .line 82
    iput-object p2, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    .line 83
    return-void
.end method

.method static synthetic access$000()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gm/AnimatedAdapter;->sActivatedAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$002(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    sput-object p0, Lcom/google/android/gm/AnimatedAdapter;->sActivatedAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$100()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/google/android/gm/AnimatedAdapter;->sAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"

    .prologue
    .line 28
    sput-object p0, Lcom/google/android/gm/AnimatedAdapter;->sAnimatingBackground:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private createAnimationState()V
    .locals 5

    .prologue
    const/16 v4, 0x32

    .line 549
    const/high16 v2, -0x8000

    iput v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 550
    new-array v2, v4, [J

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    .line 551
    new-array v2, v4, [J

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    .line 552
    new-array v2, v4, [Lcom/google/android/gm/AnimatingViewData;

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    .line 553
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 554
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    new-instance v3, Lcom/google/android/gm/AnimatingViewData;

    invoke-direct {v3}, Lcom/google/android/gm/AnimatingViewData;-><init>()V

    aput-object v3, v2, v0

    .line 553
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 556
    :cond_0
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 557
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 558
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 559
    .local v1, v:Lcom/google/android/gm/AnimatingViewData;
    if-eqz v1, :cond_1

    .line 560
    invoke-virtual {v1}, Lcom/google/android/gm/AnimatingViewData;->cancelAnimation()V

    .line 557
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 564
    .end local v1           #v:Lcom/google/android/gm/AnimatingViewData;
    :cond_2
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 565
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 566
    return-void
.end method

.method private getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 223
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AnimatingViewData;

    .line 224
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    const/4 v1, 0x0

    .line 225
    .local v1, item:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    .end local v1           #item:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    invoke-direct {v1, p0, v2, v3}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;-><init>(Lcom/google/android/gm/AnimatedAdapter;Landroid/content/Context;I)V

    .line 227
    .restart local v1       #item:Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;
    invoke-virtual {v0, v1}, Lcom/google/android/gm/AnimatingViewData;->setView(Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;)V

    .line 228
    iget v2, v0, Lcom/google/android/gm/AnimatingViewData;->animatedHeight:I

    invoke-virtual {v1, v2}, Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;->setAnimatedHeight(I)V

    .line 230
    :cond_0
    return-object v1
.end method

.method private isPositionAnimating(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 262
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I
    .locals 12
    .parameter "child"
    .parameter "parent"

    .prologue
    const/high16 v11, 0x4000

    const/4 v10, 0x0

    .line 195
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v2

    .line 196
    .local v2, paddingLeft:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v3

    .line 197
    .local v3, paddingRight:I
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v7

    .line 198
    .local v7, width:I
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 199
    .local v4, params:Landroid/view/ViewGroup$LayoutParams;
    const/4 v6, -0x1

    .line 200
    .local v6, pwidth:I
    const/4 v5, -0x2

    .line 201
    .local v5, pheight:I
    if-eqz v4, :cond_0

    .line 202
    iget v6, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 203
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 206
    :cond_0
    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    add-int v9, v2, v3

    invoke-static {v8, v9, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 209
    .local v1, childWidthSpec:I
    if-lez v5, :cond_1

    .line 210
    invoke-static {v5, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 214
    .local v0, childHeightSpec:I
    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 216
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    return v8

    .line 212
    .end local v0           #childHeightSpec:I
    :cond_1
    invoke-static {v10, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .restart local v0       #childHeightSpec:I
    goto :goto_0
.end method

.method private obtainViewData(Lcom/google/android/gm/AnimatingViewData;)Lcom/google/android/gm/AnimatingViewData;
    .locals 4
    .parameter "other"

    .prologue
    .line 140
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    iget-wide v2, p1, Lcom/google/android/gm/AnimatingViewData;->id:J

    invoke-static {v1, v2, v3}, Lcom/google/android/gm/AnimatingViewData;->obtainViewData(Landroid/database/DataSetObservable;J)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v0

    .line 141
    .local v0, result:Lcom/google/android/gm/AnimatingViewData;
    invoke-virtual {v0, p1}, Lcom/google/android/gm/AnimatingViewData;->set(Lcom/google/android/gm/AnimatingViewData;)V

    .line 142
    return-object v0
.end method

.method private translateWrappedPosition(I)I
    .locals 0
    .parameter "requested"

    .prologue
    .line 258
    return p1
.end method


# virtual methods
.method public animateChanges(Z)V
    .locals 0
    .parameter "shouldAnimate"

    .prologue
    .line 579
    iput-boolean p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimate:Z

    .line 580
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 310
    const/4 v0, 0x0

    return v0
.end method

.method public diff([J)V
    .locals 12
    .parameter "newNearbyIds"

    .prologue
    .line 343
    iget v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 344
    .local v1, firstPos:I
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    .line 346
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 347
    const/4 v2, 0x0

    .line 348
    .local v2, found:Z
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_2

    .line 376
    .end local v2           #found:Z
    :cond_0
    const/4 v3, 0x0

    :goto_1
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    array-length v8, v8

    if-ge v3, v8, :cond_1

    .line 377
    const/4 v2, 0x0

    .line 378
    .restart local v2       #found:Z
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_8

    .line 400
    .end local v2           #found:Z
    :cond_1
    iget-object v6, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    .line 401
    .local v6, tmp:[J
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    iput-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    .line 402
    iput-object v6, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    .line 403
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter;->notifyDataSetChanged()V

    .line 404
    return-void

    .line 351
    .end local v6           #tmp:[J
    .restart local v2       #found:Z
    :cond_2
    const/4 v4, 0x0

    .local v4, j:I
    :goto_2
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    array-length v8, v8

    if-ge v4, v8, :cond_3

    .line 352
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    aget-wide v8, v8, v4

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_6

    .line 360
    :cond_3
    :goto_3
    if-nez v2, :cond_5

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 362
    add-int v7, v1, v3

    .line 363
    .local v7, wrappedPos:I
    const-string v8, "Gmail"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 364
    const-string v8, "Gmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "DELETING AN ITEM "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v10, v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :cond_4
    invoke-direct {p0, v7}, Lcom/google/android/gm/AnimatedAdapter;->translateWrappedPosition(I)I

    move-result v5

    .line 367
    .local v5, realPos:I
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v8, v8, v3

    invoke-direct {p0, v8}, Lcom/google/android/gm/AnimatedAdapter;->obtainViewData(Lcom/google/android/gm/AnimatingViewData;)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v0

    .line 368
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {p0, v8, v5, v0}, Lcom/google/android/gm/AnimatedAdapter;->startAnimatingPosition(Landroid/util/SparseArray;ILcom/google/android/gm/AnimatingViewData;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 369
    sget v8, Lcom/google/android/gm/AnimatedAdapter;->ANIMATION_TIME:I

    invoke-virtual {v0, v8, p0}, Lcom/google/android/gm/AnimatingViewData;->makeDeletingAnimation(ILandroid/animation/Animator$AnimatorListener;)V

    .line 370
    invoke-virtual {v0}, Lcom/google/android/gm/AnimatingViewData;->startAnimation()V

    .line 346
    .end local v0           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v5           #realPos:I
    .end local v7           #wrappedPos:I
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 355
    :cond_6
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v8, v8, v3

    iget-object v10, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    aget-wide v10, v10, v4

    cmp-long v8, v8, v10

    if-nez v8, :cond_7

    .line 356
    const/4 v2, 0x1

    .line 357
    goto :goto_3

    .line 351
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 381
    .end local v4           #j:I
    :cond_8
    const/4 v4, 0x0

    .restart local v4       #j:I
    :goto_4
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    array-length v8, v8

    if-ge v4, v8, :cond_9

    .line 382
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v8, v8, v4

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_c

    .line 390
    :cond_9
    :goto_5
    if-nez v2, :cond_b

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    aget-wide v8, v8, v3

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_b

    .line 391
    const-string v8, "Gmail"

    const/4 v9, 0x3

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 392
    const-string v8, "Gmail"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "WE ADDED SOMETHING "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    aget-wide v10, v10, v3

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_a
    add-int v8, v1, v3

    invoke-direct {p0, v8}, Lcom/google/android/gm/AnimatedAdapter;->translateWrappedPosition(I)I

    move-result v5

    .line 395
    .restart local v5       #realPos:I
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {p0, v5, v8}, Lcom/google/android/gm/AnimatedAdapter;->updateDeletingItems(ILandroid/util/SparseArray;)Landroid/util/SparseArray;

    move-result-object v8

    iput-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 376
    .end local v5           #realPos:I
    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 385
    :cond_c
    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v8, v8, v4

    iget-object v10, p0, Lcom/google/android/gm/AnimatedAdapter;->mNewNearbyIds:[J

    aget-wide v10, v10, v3

    cmp-long v8, v8, v10

    if-nez v8, :cond_d

    .line 386
    const/4 v2, 0x1

    .line 387
    goto :goto_5

    .line 381
    :cond_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_4
.end method

.method protected finishAnimatingPosition(Landroid/util/SparseArray;I)Landroid/util/SparseArray;
    .locals 8
    .parameter
    .parameter "position"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;I)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .local p1, arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    const/4 v7, 0x1

    .line 116
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 118
    .local v0, arrSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 119
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 120
    .local v3, p:I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 121
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-le v5, p2, :cond_2

    .line 122
    sub-int v5, v3, v7

    if-gez v5, :cond_1

    .line 123
    const-string v5, "Gmail"

    const-string v6, "Unexpected negative position"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 125
    :cond_1
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    sub-int/2addr v5, v7

    iput v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 126
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    sub-int v6, v3, v7

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 128
    :cond_2
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-ge v5, p2, :cond_0

    .line 129
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 133
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v3           #p:I
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 134
    .local v4, result:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 135
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 136
    return-object v4
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    goto :goto_0
.end method

.method protected getFirstNearbyPosition()I
    .locals 1

    .prologue
    .line 319
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 154
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 3
    .parameter "position"

    .prologue
    .line 159
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gm/AnimatingViewData;

    .line 160
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    if-eqz v0, :cond_0

    .line 161
    iget-wide v1, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    .line 163
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v1

    goto :goto_0
.end method

.method public getItemViewType(I)I
    .locals 2
    .parameter "position"

    .prologue
    const/4 v1, 0x0

    .line 288
    if-gez p1, :cond_0

    move v0, v1

    .line 295
    :goto_0
    return v0

    .line 291
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->isPositionAnimating(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 292
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 295
    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 168
    const/4 v7, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 169
    .local v5, translatedPosition:I
    invoke-virtual {p0, v5}, Lcom/google/android/gm/AnimatedAdapter;->updateNearbyWindow(I)V

    .line 170
    invoke-direct {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->isPositionAnimating(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 171
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/gm/AnimatedAdapter;->getAnimatingView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    .line 191
    :goto_0
    return-object v7

    .line 174
    :cond_0
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    sub-int v4, v5, v7

    .line 175
    .local v4, nearbyIndex:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v0, v7, v4

    .line 176
    .local v0, data:Lcom/google/android/gm/AnimatingViewData;
    invoke-virtual {v0}, Lcom/google/android/gm/AnimatingViewData;->getView()Lcom/google/android/gm/AnimatedAdapter$AnimatingItemView;

    move-result-object v6

    .line 177
    .local v6, viewFromAdapter:Landroid/view/View;
    if-nez v6, :cond_1

    .line 178
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v5, p2, p3}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 181
    :cond_1
    if-nez v6, :cond_2

    .line 182
    const/4 v7, 0x0

    goto :goto_0

    .line 184
    :cond_2
    invoke-direct {p0, v6, p3}, Lcom/google/android/gm/AnimatedAdapter;->measureChildHeight(Landroid/view/View;Landroid/view/ViewGroup;)I

    move-result v1

    .line 185
    .local v1, height:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v2

    .line 186
    .local v2, id:J
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aput-wide v2, v7, v4

    .line 187
    invoke-virtual {v0}, Lcom/google/android/gm/AnimatingViewData;->endAnimation()V

    .line 188
    iput v1, v0, Lcom/google/android/gm/AnimatingViewData;->initialHeight:I

    .line 189
    iput p1, v0, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 190
    iput-wide v2, v0, Lcom/google/android/gm/AnimatingViewData;->id:J

    move-object v7, v6

    .line 191
    goto :goto_0
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 300
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 283
    const/4 v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled(I)Z
    .locals 2
    .parameter "position"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {p0, p1}, Lcom/google/android/gm/AnimatedAdapter;->translateItemPosition(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/BaseAdapter;->isEnabled(I)Z

    move-result v0

    return v0
.end method

.method public isValid()Z
    .locals 1

    .prologue
    .line 272
    const/4 v0, 0x1

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 575
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 576
    return-void
.end method

.method public notifyDataSetInvalidated()V
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 570
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetInvalidated()V

    .line 571
    return-void
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 584
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .parameter "animation"

    .prologue
    .line 596
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v2, :cond_0

    .line 597
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 599
    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/animation/ObjectAnimator;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/animation/ObjectAnimator;->getTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 600
    .local v1, viewData:Lcom/google/android/gm/AnimatingViewData;
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    iget v3, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    invoke-virtual {p0, v2, v3}, Lcom/google/android/gm/AnimatedAdapter;->finishAnimatingPosition(Landroid/util/SparseArray;I)Landroid/util/SparseArray;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    .line 601
    iget-boolean v2, v1, Lcom/google/android/gm/AnimatingViewData;->cancelled:Z

    if-nez v2, :cond_1

    .line 602
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v2}, Landroid/database/DataSetObservable;->notifyChanged()V

    .line 603
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 605
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v2, :cond_1

    .line 606
    iget-object v2, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-interface {v2, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 610
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gm/AnimatingViewData;->recycle()V

    .line 611
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 588
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .parameter "animation"

    .prologue
    .line 592
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/google/android/gm/AnimatedAdapter;->createAnimationState()V

    .line 431
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    .line 432
    return-void
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 268
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 269
    return-void
.end method

.method protected shouldDiff()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 326
    iget-boolean v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimate:Z

    if-nez v1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter;->notifyDataSetChanged()V

    .line 328
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v1, :cond_0

    .line 329
    iget-object v1, p0, Lcom/google/android/gm/AnimatedAdapter;->mAnimationListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_0
    move v1, v3

    .line 339
    :goto_0
    return v1

    .line 333
    :cond_1
    iget v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 334
    .local v0, firstPos:I
    if-gez v0, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/google/android/gm/AnimatedAdapter;->notifyDataSetChanged()V

    move v1, v3

    .line 337
    goto :goto_0

    .line 339
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected startAnimatingPosition(Landroid/util/SparseArray;ILcom/google/android/gm/AnimatingViewData;)Landroid/util/SparseArray;
    .locals 7
    .parameter
    .parameter "position"
    .parameter "newData"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;I",
            "Lcom/google/android/gm/AnimatingViewData;",
            ")",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    .local p1, arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 89
    .local v0, arrSize:I
    if-gez p2, :cond_0

    .line 90
    const-string v5, "Gmail"

    const-string v6, "Should never have a position of -1"

    invoke-static {v5, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, p1

    .line 110
    :goto_0
    return-object v5

    .line 93
    :cond_0
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 94
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 95
    .local v3, p:I
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 96
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-lt v5, p2, :cond_1

    .line 97
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 98
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 93
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 100
    :cond_1
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 104
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v3           #p:I
    :cond_2
    if-eqz p3, :cond_3

    .line 105
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 107
    :cond_3
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 108
    .local v4, result:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    iput-object p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 109
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    move-object v5, v4

    .line 110
    goto :goto_0
.end method

.method public translateItemPosition(I)I
    .locals 5
    .parameter "requested"

    .prologue
    .line 240
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 241
    .local v1, deletingSize:I
    const/4 v2, 0x0

    .line 242
    .local v2, extraItemsBefore:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 243
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mDeletingPositions:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 244
    .local v0, deletingIndex:I
    if-le v0, p1, :cond_1

    .line 249
    .end local v0           #deletingIndex:I
    :cond_0
    sub-int v4, p1, v2

    return v4

    .line 247
    .restart local v0       #deletingIndex:I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 1
    .parameter "observer"

    .prologue
    .line 277
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    invoke-virtual {v0, p1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 278
    iget-object v0, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/BaseAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 279
    return-void
.end method

.method protected updateDeletingItems(ILandroid/util/SparseArray;)Landroid/util/SparseArray;
    .locals 7
    .parameter "position"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/gm/AnimatingViewData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 409
    .local p2, arr:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 411
    .local v0, arrSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 412
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 413
    .local v3, p:I
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gm/AnimatingViewData;

    .line 414
    .local v1, data:Lcom/google/android/gm/AnimatingViewData;
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    if-lt v5, p1, :cond_0

    .line 415
    iget v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v1, Lcom/google/android/gm/AnimatingViewData;->position:I

    .line 416
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v5, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 411
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 422
    .end local v1           #data:Lcom/google/android/gm/AnimatingViewData;
    .end local v3           #p:I
    :cond_1
    iget-object v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 423
    .local v4, result:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/gm/AnimatingViewData;>;"
    iput-object p2, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    .line 424
    iget-object v5, p0, Lcom/google/android/gm/AnimatedAdapter;->mTmpPositions:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 425
    return-object v4
.end method

.method protected updateNearbyWindow(I)V
    .locals 11
    .parameter "position"

    .prologue
    .line 439
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v0

    .line 440
    .local v0, adapterCount:I
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    add-int/lit8 v6, v7, 0x32

    .line 441
    .local v6, windowEnd:I
    add-int/lit8 v7, p1, 0x32

    iget v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    if-lt v7, v8, :cond_0

    add-int/lit8 v7, v6, 0x32

    if-le p1, v7, :cond_4

    .line 446
    :cond_0
    const/4 v7, 0x0

    const/16 v8, 0x10

    sub-int v8, p1, v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 447
    .local v4, newFirstPosition:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    const/16 v7, 0x32

    if-ge v2, v7, :cond_2

    .line 448
    add-int v3, v4, v2

    .line 449
    .local v3, index:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v3, v0, :cond_1

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_1
    aput-wide v8, v7, v2

    .line 447
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 449
    :cond_1
    const-wide/16 v8, -0x1

    goto :goto_1

    .line 451
    .end local v3           #index:I
    :cond_2
    iput v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 502
    .end local v2           #i:I
    .end local v4           #newFirstPosition:I
    :cond_3
    :goto_2
    return-void

    .line 452
    :cond_4
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    if-ge p1, v7, :cond_8

    .line 453
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    sub-int v5, v7, p1

    .line 454
    .local v5, slideBy:I
    const/16 v7, 0x32

    sub-int v1, v7, v5

    .line 456
    .local v1, copyLength:I
    const/16 v7, 0x32

    sub-int v2, v7, v5

    .restart local v2       #i:I
    :goto_3
    const/16 v7, 0x32

    if-ge v2, v7, :cond_5

    .line 457
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/google/android/gm/AnimatingViewData;->recycle()V

    .line 458
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v8, 0x0

    aput-object v8, v7, v2

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 460
    :cond_5
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    invoke-static {v7, v8, v9, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 461
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    invoke-static {v7, v8, v9, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 462
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    sub-int v4, v7, v5

    .line 463
    .restart local v4       #newFirstPosition:I
    const/4 v2, 0x0

    :goto_4
    if-ge v2, v5, :cond_7

    .line 464
    add-int v3, v4, v2

    .line 465
    .restart local v3       #index:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v3, v0, :cond_6

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_5
    aput-wide v8, v7, v2

    .line 466
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    iget-object v9, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v9, v9, v2

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/AnimatingViewData;->obtainViewData(Landroid/database/DataSetObservable;J)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v8

    aput-object v8, v7, v2

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 465
    :cond_6
    const-wide/16 v8, -0x1

    goto :goto_5

    .line 469
    .end local v3           #index:I
    :cond_7
    iput v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    goto :goto_2

    .line 470
    .end local v1           #copyLength:I
    .end local v2           #i:I
    .end local v4           #newFirstPosition:I
    .end local v5           #slideBy:I
    :cond_8
    if-lt p1, v6, :cond_3

    .line 471
    const/4 v7, 0x1

    sub-int v7, v6, v7

    sub-int v5, p1, v7

    .line 472
    .restart local v5       #slideBy:I
    const/16 v7, 0x32

    sub-int v1, v7, v5

    .line 473
    .restart local v1       #copyLength:I
    const/16 v7, 0x32

    if-gt v5, v7, :cond_c

    .line 474
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_6
    if-ge v2, v5, :cond_9

    .line 475
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/google/android/gm/AnimatingViewData;->recycle()V

    .line 476
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v8, 0x0

    aput-object v8, v7, v2

    .line 474
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 478
    :cond_9
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    const/4 v9, 0x0

    invoke-static {v7, v5, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 479
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v9, 0x0

    invoke-static {v7, v5, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    add-int v4, v7, v5

    .line 481
    .restart local v4       #newFirstPosition:I
    const/16 v7, 0x32

    sub-int v2, v7, v5

    :goto_7
    const/16 v7, 0x32

    if-ge v2, v7, :cond_b

    .line 482
    add-int v3, v4, v2

    .line 483
    .restart local v3       #index:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v3, v0, :cond_a

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_8
    aput-wide v8, v7, v2

    .line 484
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    iget-object v9, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v9, v9, v2

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/AnimatingViewData;->obtainViewData(Landroid/database/DataSetObservable;J)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v8

    aput-object v8, v7, v2

    .line 481
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 483
    :cond_a
    const-wide/16 v8, -0x1

    goto :goto_8

    .line 487
    .end local v3           #index:I
    :cond_b
    iput v4, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    goto/16 :goto_2

    .line 491
    .end local v2           #i:I
    .end local v4           #newFirstPosition:I
    :cond_c
    iput p1, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    .line 492
    const/4 v2, 0x0

    .restart local v2       #i:I
    :goto_9
    const/16 v7, 0x32

    if-ge v2, v7, :cond_3

    .line 493
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lcom/google/android/gm/AnimatingViewData;->recycle()V

    .line 494
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    const/4 v8, 0x0

    aput-object v8, v7, v2

    .line 495
    iget v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mFirstNearbyPosition:I

    add-int v3, v7, v2

    .line 496
    .restart local v3       #index:I
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    if-ge v3, v0, :cond_d

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v8, v3}, Landroid/widget/BaseAdapter;->getItemId(I)J

    move-result-wide v8

    :goto_a
    aput-wide v8, v7, v2

    .line 497
    iget-object v7, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyViewData:[Lcom/google/android/gm/AnimatingViewData;

    iget-object v8, p0, Lcom/google/android/gm/AnimatedAdapter;->mDataSetObservable:Landroid/database/DataSetObservable;

    iget-object v9, p0, Lcom/google/android/gm/AnimatedAdapter;->mNearbyIds:[J

    aget-wide v9, v9, v2

    invoke-static {v8, v9, v10}, Lcom/google/android/gm/AnimatingViewData;->obtainViewData(Landroid/database/DataSetObservable;J)Lcom/google/android/gm/AnimatingViewData;

    move-result-object v8

    aput-object v8, v7, v2

    .line 492
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 496
    :cond_d
    const-wide/16 v8, -0x1

    goto :goto_a
.end method
