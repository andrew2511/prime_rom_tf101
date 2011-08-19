.class public abstract Landroid/view/ViewGroup;
.super Landroid/view/View;
.source "ViewGroup.java"

# interfaces
.implements Landroid/view/ViewParent;
.implements Landroid/view/ViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ViewGroup$TouchTarget;,
        Landroid/view/ViewGroup$MarginLayoutParams;,
        Landroid/view/ViewGroup$LayoutParams;,
        Landroid/view/ViewGroup$OnHierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ARRAY_CAPACITY_INCREMENT:I = 0xc

.field private static final ARRAY_INITIAL_CAPACITY:I = 0xc

.field private static final CHILD_LEFT_INDEX:I = 0x0

.field private static final CHILD_TOP_INDEX:I = 0x1

.field protected static final CLIP_TO_PADDING_MASK:I = 0x22

.field private static final DBG:Z = false

.field private static final DESCENDANT_FOCUSABILITY_FLAGS:[I = null

.field private static final FLAG_ADD_STATES_FROM_CHILDREN:I = 0x2000

.field private static final FLAG_ALPHA_LOWER_THAN_ONE:I = 0x1000

.field private static final FLAG_ALWAYS_DRAWN_WITH_CACHE:I = 0x4000

.field private static final FLAG_ANIMATION_CACHE:I = 0x40

.field private static final FLAG_ANIMATION_DONE:I = 0x10

.field private static final FLAG_CHILDREN_DRAWN_WITH_CACHE:I = 0x8000

.field private static final FLAG_CLEAR_TRANSFORMATION:I = 0x100

.field private static final FLAG_CLIP_CHILDREN:I = 0x1

.field private static final FLAG_CLIP_TO_PADDING:I = 0x2

.field protected static final FLAG_DISALLOW_INTERCEPT:I = 0x80000

.field private static final FLAG_INVALIDATE_REQUIRED:I = 0x4

.field private static final FLAG_MASK_FOCUSABILITY:I = 0x60000

.field private static final FLAG_NOTIFY_ANIMATION_LISTENER:I = 0x200

.field private static final FLAG_NOTIFY_CHILDREN_ON_DRAWABLE_STATE_CHANGE:I = 0x10000

.field private static final FLAG_OPTIMIZE_INVALIDATE:I = 0x80

.field private static final FLAG_PADDING_NOT_NULL:I = 0x20

.field private static final FLAG_RUN_ANIMATION:I = 0x8

.field private static final FLAG_SPLIT_MOTION_EVENTS:I = 0x200000

.field protected static final FLAG_SUPPORT_STATIC_TRANSFORMATIONS:I = 0x800

.field protected static final FLAG_USE_CHILD_DRAWING_ORDER:I = 0x400

.field public static final FOCUS_AFTER_DESCENDANTS:I = 0x40000

.field public static final FOCUS_BEFORE_DESCENDANTS:I = 0x20000

.field public static final FOCUS_BLOCK_DESCENDANTS:I = 0x60000

.field public static final PERSISTENT_ALL_CACHES:I = 0x3

.field public static final PERSISTENT_ANIMATION_CACHE:I = 0x1

.field public static final PERSISTENT_NO_CACHE:I = 0x0

.field public static final PERSISTENT_SCROLLING_CACHE:I = 0x2


# instance fields
.field private mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

.field private final mCachePaint:Landroid/graphics/Paint;

.field private mChildAcceptsDrag:Z

.field private final mChildTransformation:Landroid/view/animation/Transformation;

.field private mChildren:[Landroid/view/View;

.field private mChildrenCount:I

.field private mCurrentDrag:Landroid/view/DragEvent;

.field private mCurrentDragView:Landroid/view/View;

.field protected mDisappearingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDragNotifiedChildren:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mDrawLayers:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field private mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

.field private mFocused:Landroid/view/View;

.field protected mGroupFlags:I

.field private mInvalidateRegion:Landroid/graphics/RectF;

.field private mInvalidationTransformation:Landroid/view/animation/Transformation;

.field private mLastTouchDownIndex:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownTime:J
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownX:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLastTouchDownY:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "events"
    .end annotation
.end field

.field private mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

.field private mLayoutSuppressed:Z

.field private mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

.field private final mLocalPoint:Landroid/graphics/PointF;

.field protected mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

.field protected mPersistentDrawingCache:I

.field private mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTmpPointerIds:[I

.field private mTmpPointerIndexMap:[I

.field private mTransition:Landroid/animation/LayoutTransition;

.field private mTransitioningViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mVisibilityChangingChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 269
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    return-void

    nop

    :array_a
    .array-data 0x4
        0x0t 0x0t 0x2t 0x0t
        0x0t 0x0t 0x4t 0x0t
        0x0t 0x0t 0x6t 0x0t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .parameter "context"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 99
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 335
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4556
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 355
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 356
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 359
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 99
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 335
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4556
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 360
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 361
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 362
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 365
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 99
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    .line 123
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 327
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 335
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    .line 350
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 4556
    new-instance v0, Landroid/view/ViewGroup$3;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$3;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    .line 366
    invoke-direct {p0}, Landroid/view/ViewGroup;->initViewGroup()V

    .line 367
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 368
    return-void
.end method

.method static synthetic access$000(Landroid/view/ViewGroup;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/view/ViewGroup;->notifyAnimationListener()V

    return-void
.end method

.method static synthetic access$100(Landroid/view/ViewGroup;)Landroid/view/animation/LayoutAnimationController;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method static synthetic access$200(Landroid/view/ViewGroup;)Landroid/view/animation/Animation$AnimationListener;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/view/ViewGroup;)Z
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return v0
.end method

.method static synthetic access$302(Landroid/view/ViewGroup;Z)Z
    .registers 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    return p1
.end method

.method static synthetic access$400(Landroid/view/ViewGroup;)Ljava/util/ArrayList;
    .registers 2
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method private addDisappearingView(Landroid/view/View;)V
    .registers 3
    .parameter "v"

    .prologue
    .line 4458
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4460
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-nez v0, :cond_b

    .line 4461
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4464
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_b
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4465
    return-void
.end method

.method private addInArray(Landroid/view/View;I)V
    .registers 9
    .parameter "child"
    .parameter "index"

    .prologue
    const/4 v4, 0x0

    .line 3067
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3068
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3069
    .local v1, count:I
    array-length v2, v0

    .line 3070
    .local v2, size:I
    if-ne p2, v1, :cond_20

    .line 3071
    if-ne v2, v1, :cond_17

    .line 3072
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3073
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3074
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3076
    :cond_17
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object p1, v0, v3

    .line 3094
    :cond_1f
    :goto_1f
    return-void

    .line 3077
    :cond_20
    if-ge p2, v1, :cond_55

    .line 3078
    if-ne v2, v1, :cond_4d

    .line 3079
    add-int/lit8 v3, v2, 0xc

    new-array v3, v3, [Landroid/view/View;

    iput-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3080
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    invoke-static {v0, v4, v3, v4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3081
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    add-int/lit8 v4, p2, 0x1

    sub-int v5, v1, p2

    invoke-static {v0, p2, v3, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3082
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3086
    :goto_3a
    aput-object p1, v0, p2

    .line 3087
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3088
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-lt v3, p2, :cond_1f

    .line 3089
    iget v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_1f

    .line 3084
    :cond_4d
    add-int/lit8 v3, p2, 0x1

    sub-int v4, v1, p2

    invoke-static {v0, p2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3a

    .line 3092
    :cond_55
    new-instance v3, Ljava/lang/IndexOutOfBoundsException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "index="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;
    .registers 5
    .parameter "child"
    .parameter "pointerIdBits"

    .prologue
    .line 1446
    invoke-static {p1, p2}, Landroid/view/ViewGroup$TouchTarget;->obtain(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v0

    .line 1447
    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    iput-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1448
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1449
    return-object v0
.end method

.method private addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V
    .registers 10
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    const/high16 v4, 0x40

    .line 3004
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_c

    .line 3007
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/animation/LayoutTransition;->cancel(I)V

    .line 3010
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 3011
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "The specified child already has a parent. You must call removeView() on the child\'s parent first."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3015
    :cond_1a
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v2, :cond_23

    .line 3016
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v2, p0, p1}, Landroid/animation/LayoutTransition;->addChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3019
    :cond_23
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v2

    if-nez v2, :cond_2d

    .line 3020
    invoke-virtual {p0, p3}, Landroid/view/ViewGroup;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 3023
    :cond_2d
    if-eqz p4, :cond_7c

    .line 3024
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3029
    :goto_31
    if-gez p2, :cond_35

    .line 3030
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3033
    :cond_35
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3036
    if-eqz p4, :cond_80

    .line 3037
    invoke-virtual {p1, p0}, Landroid/view/View;->assignParent(Landroid/view/ViewParent;)V

    .line 3042
    :goto_3d
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_4a

    .line 3043
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3046
    :cond_4a
    iget-object v0, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 3047
    .local v0, ai:Landroid/view/View$AttachInfo;
    if-eqz v0, :cond_66

    .line 3048
    iget-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3049
    .local v1, lastKeepOn:Z
    const/4 v2, 0x0

    iput-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3050
    iget-object v2, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    invoke-virtual {p1, v2, v3}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 3051
    iget-boolean v2, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    if-eqz v2, :cond_64

    .line 3052
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3054
    :cond_64
    iput-boolean v1, v0, Landroid/view/View$AttachInfo;->mKeepScreenOn:Z

    .line 3057
    .end local v1           #lastKeepOn:Z
    :cond_66
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v2, :cond_6f

    .line 3058
    iget-object v2, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v2, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    .line 3061
    :cond_6f
    iget v2, p1, Landroid/view/View;->mViewFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7b

    .line 3062
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v3, 0x1

    or-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3064
    :cond_7b
    return-void

    .line 3026
    .end local v0           #ai:Landroid/view/View$AttachInfo;
    :cond_7c
    invoke-virtual {p1, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_31

    .line 3039
    :cond_80
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_3d
.end method

.method private bindLayoutAnimation(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 3154
    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    invoke-virtual {v1, p1}, Landroid/view/animation/LayoutAnimationController;->getAnimationForView(Landroid/view/View;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3155
    .local v0, a:Landroid/view/animation/Animation;
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 3156
    return-void
.end method

.method private cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V
    .registers 12
    .parameter "event"

    .prologue
    const/4 v5, 0x0

    .line 1407
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    if-eqz v2, :cond_31

    .line 1408
    const/4 v8, 0x0

    .line 1409
    .local v8, syntheticEvent:Z
    if-nez p1, :cond_15

    .line 1410
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1411
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v7, 0x0

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1413
    const/4 v8, 0x1

    .line 1416
    .end local v0           #now:J
    :cond_15
    iget-object v9, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v9, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_17
    if-eqz v9, :cond_29

    .line 1417
    iget-object v2, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    invoke-direct {p0, v2}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1418
    const/4 v2, 0x1

    iget-object v3, v9, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    iget v4, v9, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    invoke-direct {p0, p1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    .line 1416
    iget-object v9, v9, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_17

    .line 1420
    :cond_29
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1422
    if-eqz v8, :cond_31

    .line 1423
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 1426
    .end local v8           #syntheticEvent:Z
    .end local v9           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_31
    return-void
.end method

.method private clearTouchTargets()V
    .registers 4

    .prologue
    .line 1392
    iget-object v1, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1393
    .local v1, target:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v1, :cond_f

    .line 1395
    :cond_4
    iget-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1396
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    invoke-virtual {v1}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1397
    move-object v1, v0

    .line 1398
    if-nez v1, :cond_4

    .line 1399
    const/4 v2, 0x0

    iput-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1401
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_f
    return-void
.end method

.method private dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z
    .registers 46
    .parameter "event"
    .parameter "cancel"
    .parameter "child"
    .parameter "desiredPointerIdBits"

    .prologue
    .line 1514
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v32

    .line 1515
    .local v32, oldAction:I
    if-nez p2, :cond_c

    const/4 v5, 0x3

    move/from16 v0, v32

    move v1, v5

    if-ne v0, v1, :cond_2c

    .line 1516
    :cond_c
    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1517
    if-nez p3, :cond_23

    .line 1518
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .line 1522
    .local v23, handled:Z
    :goto_19
    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    move/from16 v5, v23

    .line 1680
    .end local v23           #handled:Z
    :goto_22
    return v5

    .line 1520
    :cond_23
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .restart local v23       #handled:Z
    goto :goto_19

    .line 1527
    .end local v23           #handled:Z
    :cond_2c
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v34

    .line 1528
    .local v34, oldPointerCount:I
    const/4 v10, 0x0

    .line 1529
    .local v10, newPointerCount:I
    const/4 v5, -0x1

    move/from16 v0, p4

    move v1, v5

    if-ne v0, v1, :cond_3d

    .line 1530
    move/from16 v10, v34

    .line 1543
    :cond_39
    if-nez v10, :cond_59

    .line 1544
    const/4 v5, 0x0

    goto :goto_22

    .line 1532
    :cond_3d
    const/16 v26, 0x0

    .local v26, i:I
    :goto_3f
    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_39

    .line 1533
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v36

    .line 1534
    .local v36, pointerId:I
    const/4 v5, 0x1

    shl-int v37, v5, v36

    .line 1535
    .local v37, pointerIdBit:I
    and-int v5, v37, p4

    if-eqz v5, :cond_56

    .line 1536
    add-int/lit8 v10, v10, 0x1

    .line 1532
    :cond_56
    add-int/lit8 v26, v26, 0x1

    goto :goto_3f

    .line 1550
    .end local v26           #i:I
    .end local v36           #pointerId:I
    .end local v37           #pointerIdBit:I
    :cond_59
    move v0, v10

    move/from16 v1, v34

    if-ne v0, v1, :cond_74

    if-eqz p3, :cond_66

    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v5

    if-eqz v5, :cond_74

    :cond_66
    const/4 v5, 0x1

    move/from16 v39, v5

    .line 1552
    .local v39, reuse:Z
    :goto_69
    if-eqz v39, :cond_b7

    .line 1553
    if-nez p3, :cond_78

    .line 1554
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .restart local v23       #handled:Z
    :goto_71
    move/from16 v5, v23

    .line 1564
    goto :goto_22

    .line 1550
    .end local v23           #handled:Z
    .end local v39           #reuse:Z
    :cond_74
    const/4 v5, 0x0

    move/from16 v39, v5

    goto :goto_69

    .line 1556
    .restart local v39       #reuse:Z
    :cond_78
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v30, v0

    .line 1557
    .local v30, offsetX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/View;->mTop:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v31, v0

    .line 1558
    .local v31, offsetY:F
    move-object/from16 v0, p1

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1560
    move-object/from16 v0, p3

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .line 1562
    .restart local v23       #handled:Z
    move/from16 v0, v30

    neg-float v0, v0

    move v5, v0

    move/from16 v0, v31

    neg-float v0, v0

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_71

    .line 1571
    .end local v23           #handled:Z
    .end local v30           #offsetX:F
    .end local v31           #offsetY:F
    :cond_b7
    move v0, v10

    move/from16 v1, v34

    if-ne v0, v1, :cond_d1

    .line 1572
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v40

    .line 1665
    .local v40, transformedEvent:Landroid/view/MotionEvent;
    :cond_c0
    if-nez p3, :cond_1e0

    .line 1666
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    invoke-super {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .line 1679
    .restart local v23       #handled:Z
    :goto_ca
    invoke-virtual/range {v40 .. v40}, Landroid/view/MotionEvent;->recycle()V

    move/from16 v5, v23

    .line 1680
    goto/16 :goto_22

    .line 1574
    .end local v23           #handled:Z
    .end local v40           #transformedEvent:Landroid/view/MotionEvent;
    :cond_d1
    move-object/from16 v0, p0

    move v1, v10

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->growTmpPointerArrays(I)V

    .line 1575
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTmpPointerIndexMap:[I

    move-object/from16 v29, v0

    .line 1576
    .local v29, newPointerIndexMap:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTmpPointerIds:[I

    move-object v11, v0

    .line 1577
    .local v11, newPointerIds:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    move-object v12, v0

    .line 1579
    .local v12, newPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    const/16 v28, 0x0

    .line 1580
    .local v28, newPointerIndex:I
    const/16 v35, 0x0

    .line 1581
    .local v35, oldPointerIndex:I
    :goto_eb
    move/from16 v0, v28

    move v1, v10

    if-ge v0, v1, :cond_113

    .line 1582
    move-object/from16 v0, p1

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v36

    .line 1583
    .restart local v36       #pointerId:I
    const/4 v5, 0x1

    shl-int v38, v5, v36

    .line 1584
    .local v38, pointerIdBits:I
    and-int v5, v38, p4

    if-eqz v5, :cond_110

    .line 1585
    aput v35, v29, v28

    .line 1586
    aput v36, v11, v28

    .line 1587
    aget-object v5, v12, v28

    if-nez v5, :cond_10e

    .line 1588
    new-instance v5, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v5}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v5, v12, v28

    .line 1591
    :cond_10e
    add-int/lit8 v28, v28, 0x1

    .line 1593
    :cond_110
    add-int/lit8 v35, v35, 0x1

    .line 1594
    goto :goto_eb

    .line 1597
    .end local v36           #pointerId:I
    .end local v38           #pointerIdBits:I
    :cond_113
    if-eqz p2, :cond_143

    .line 1598
    const/4 v9, 0x3

    .line 1631
    .local v9, newAction:I
    :goto_116
    const/16 v40, 0x0

    .line 1632
    .restart local v40       #transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v25

    .line 1633
    .local v25, historySize:I
    const/16 v24, 0x0

    .local v24, historyIndex:I
    :goto_11e
    move/from16 v0, v24

    move/from16 v1, v25

    if-gt v0, v1, :cond_c0

    .line 1634
    const/16 v28, 0x0

    :goto_126
    move/from16 v0, v28

    move v1, v10

    if-ge v0, v1, :cond_199

    .line 1635
    aget-object v20, v12, v28

    .line 1636
    .local v20, c:Landroid/view/MotionEvent$PointerCoords;
    aget v35, v29, v28

    .line 1637
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_18f

    .line 1638
    move-object/from16 v0, p1

    move/from16 v1, v35

    move/from16 v2, v24

    move-object/from16 v3, v20

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/MotionEvent;->getHistoricalPointerCoords(IILandroid/view/MotionEvent$PointerCoords;)V

    .line 1634
    :goto_140
    add-int/lit8 v28, v28, 0x1

    goto :goto_126

    .line 1600
    .end local v9           #newAction:I
    .end local v20           #c:Landroid/view/MotionEvent$PointerCoords;
    .end local v24           #historyIndex:I
    .end local v25           #historySize:I
    .end local v40           #transformedEvent:Landroid/view/MotionEvent;
    :cond_143
    move/from16 v0, v32

    and-int/lit16 v0, v0, 0xff

    move/from16 v33, v0

    .line 1601
    .local v33, oldMaskedAction:I
    const/4 v5, 0x5

    move/from16 v0, v33

    move v1, v5

    if-eq v0, v1, :cond_155

    const/4 v5, 0x6

    move/from16 v0, v33

    move v1, v5

    if-ne v0, v1, :cond_18c

    .line 1603
    :cond_155
    const v5, 0xff00

    and-int v5, v5, v32

    shr-int/lit8 v5, v5, 0x8

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 1606
    .local v21, changedPointerId:I
    const/4 v5, 0x1

    shl-int v22, v5, v21

    .line 1607
    .local v22, changedPointerIdBits:I
    and-int v5, v22, p4

    if-eqz v5, :cond_18a

    .line 1608
    const/4 v5, 0x1

    if-ne v10, v5, :cond_179

    .line 1610
    const/4 v5, 0x5

    move/from16 v0, v33

    move v1, v5

    if-ne v0, v1, :cond_176

    const/4 v5, 0x0

    move v9, v5

    .restart local v9       #newAction:I
    :goto_175
    goto :goto_116

    .end local v9           #newAction:I
    :cond_176
    const/4 v5, 0x1

    move v9, v5

    goto :goto_175

    .line 1614
    :cond_179
    const/16 v27, 0x0

    .line 1615
    .local v27, newChangedPointerIndex:I
    :goto_17b
    aget v5, v11, v27

    move v0, v5

    move/from16 v1, v21

    if-eq v0, v1, :cond_185

    .line 1616
    add-int/lit8 v27, v27, 0x1

    goto :goto_17b

    .line 1618
    :cond_185
    shl-int/lit8 v5, v27, 0x8

    or-int v9, v33, v5

    .line 1620
    .restart local v9       #newAction:I
    goto :goto_116

    .line 1623
    .end local v9           #newAction:I
    .end local v27           #newChangedPointerIndex:I
    :cond_18a
    const/4 v9, 0x2

    .restart local v9       #newAction:I
    goto :goto_116

    .line 1627
    .end local v9           #newAction:I
    .end local v21           #changedPointerId:I
    .end local v22           #changedPointerIdBits:I
    :cond_18c
    move/from16 v9, v33

    .restart local v9       #newAction:I
    goto :goto_116

    .line 1640
    .end local v33           #oldMaskedAction:I
    .restart local v20       #c:Landroid/view/MotionEvent$PointerCoords;
    .restart local v24       #historyIndex:I
    .restart local v25       #historySize:I
    .restart local v40       #transformedEvent:Landroid/view/MotionEvent;
    :cond_18f
    move-object/from16 v0, p1

    move/from16 v1, v35

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    goto :goto_140

    .line 1645
    .end local v20           #c:Landroid/view/MotionEvent$PointerCoords;
    :cond_199
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_1d1

    .line 1646
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    .line 1651
    .local v7, eventTime:J
    :goto_1a7
    if-nez v40, :cond_1d6

    .line 1652
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v15

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v17

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    invoke-static/range {v5 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;

    move-result-object v40

    .line 1633
    :goto_1cd
    add-int/lit8 v24, v24, 0x1

    goto/16 :goto_11e

    .line 1648
    .end local v7           #eventTime:J
    :cond_1d1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    .restart local v7       #eventTime:J
    goto :goto_1a7

    .line 1659
    :cond_1d6
    const/4 v5, 0x0

    move-object/from16 v0, v40

    move-wide v1, v7

    move-object v3, v12

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/MotionEvent;->addBatch(J[Landroid/view/MotionEvent$PointerCoords;I)V

    goto :goto_1cd

    .line 1668
    .end local v7           #eventTime:J
    .end local v9           #newAction:I
    .end local v11           #newPointerIds:[I
    .end local v12           #newPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    .end local v24           #historyIndex:I
    .end local v25           #historySize:I
    .end local v28           #newPointerIndex:I
    .end local v29           #newPointerIndexMap:[I
    .end local v35           #oldPointerIndex:I
    :cond_1e0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/View;->mLeft:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v30, v0

    .line 1669
    .restart local v30       #offsetX:F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move v5, v0

    move-object/from16 v0, p3

    iget v0, v0, Landroid/view/View;->mTop:I

    move v6, v0

    sub-int/2addr v5, v6

    move v0, v5

    int-to-float v0, v0

    move/from16 v31, v0

    .line 1670
    .restart local v31       #offsetY:F
    move-object/from16 v0, v40

    move/from16 v1, v30

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1671
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v5

    if-nez v5, :cond_217

    .line 1672
    invoke-virtual/range {p3 .. p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v5

    move-object/from16 v0, v40

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1675
    :cond_217
    move-object/from16 v0, p3

    move-object/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v23

    .restart local v23       #handled:Z
    goto/16 :goto_ca
.end method

.method private finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V
    .registers 6
    .parameter "view"
    .parameter "animation"

    .prologue
    const/high16 v2, 0x1

    .line 4475
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4476
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_1f

    .line 4477
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4478
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4480
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_16

    .line 4481
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4484
    :cond_16
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4485
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4489
    :cond_1f
    if-eqz p2, :cond_2a

    invoke-virtual {p2}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 4490
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 4493
    :cond_2a
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_40

    .line 4494
    invoke-virtual {p1}, Landroid/view/View;->onAnimationEnd()V

    .line 4497
    iget v1, p1, Landroid/view/View;->mPrivateFlags:I

    const v2, -0x10001

    and-int/2addr v1, v2

    iput v1, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4499
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4501
    :cond_40
    return-void
.end method

.method public static getChildMeasureSpec(III)I
    .registers 12
    .parameter "spec"
    .parameter "padding"
    .parameter "childDimension"

    .prologue
    const/4 v8, -0x1

    const/4 v7, -0x2

    .line 4374
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 4375
    .local v3, specMode:I
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 4377
    .local v4, specSize:I
    const/4 v5, 0x0

    sub-int v6, v4, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 4379
    .local v2, size:I
    const/4 v1, 0x0

    .line 4380
    .local v1, resultSize:I
    const/4 v0, 0x0

    .line 4382
    .local v0, resultMode:I
    sparse-switch v3, :sswitch_data_50

    .line 4438
    :cond_16
    :goto_16
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    return v5

    .line 4385
    :sswitch_1b
    if-ltz p2, :cond_21

    .line 4386
    move v1, p2

    .line 4387
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4388
    :cond_21
    if-ne p2, v8, :cond_27

    .line 4390
    move v1, v2

    .line 4391
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4392
    :cond_27
    if-ne p2, v7, :cond_16

    .line 4395
    move v1, v2

    .line 4396
    const/high16 v0, -0x8000

    goto :goto_16

    .line 4402
    :sswitch_2d
    if-ltz p2, :cond_33

    .line 4404
    move v1, p2

    .line 4405
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4406
    :cond_33
    if-ne p2, v8, :cond_39

    .line 4409
    move v1, v2

    .line 4410
    const/high16 v0, -0x8000

    goto :goto_16

    .line 4411
    :cond_39
    if-ne p2, v7, :cond_16

    .line 4414
    move v1, v2

    .line 4415
    const/high16 v0, -0x8000

    goto :goto_16

    .line 4421
    :sswitch_3f
    if-ltz p2, :cond_45

    .line 4423
    move v1, p2

    .line 4424
    const/high16 v0, 0x4000

    goto :goto_16

    .line 4425
    :cond_45
    if-ne p2, v8, :cond_4a

    .line 4428
    const/4 v1, 0x0

    .line 4429
    const/4 v0, 0x0

    goto :goto_16

    .line 4430
    :cond_4a
    if-ne p2, v7, :cond_16

    .line 4433
    const/4 v1, 0x0

    .line 4434
    const/4 v0, 0x0

    goto :goto_16

    .line 4382
    nop

    :sswitch_data_50
    .sparse-switch
        -0x80000000 -> :sswitch_2d
        0x0 -> :sswitch_3f
        0x40000000 -> :sswitch_1b
    .end sparse-switch
.end method

.method private getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;
    .registers 4
    .parameter "child"

    .prologue
    .line 1433
    iget-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .local v0, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_2
    if-eqz v0, :cond_d

    .line 1434
    iget-object v1, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    if-ne v1, p1, :cond_a

    move-object v1, v0

    .line 1438
    :goto_9
    return-object v1

    .line 1433
    :cond_a
    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_2

    .line 1438
    :cond_d
    const/4 v1, 0x0

    goto :goto_9
.end method

.method private growTmpPointerArrays(I)V
    .registers 7
    .parameter "desiredCapacity"

    .prologue
    const/4 v4, 0x0

    .line 1688
    iget-object v1, p0, Landroid/view/ViewGroup;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1690
    .local v1, oldTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;
    if-eqz v1, :cond_9

    .line 1691
    array-length v0, v1

    .line 1692
    .local v0, capacity:I
    if-gt p1, v0, :cond_a

    .line 1711
    :cond_8
    :goto_8
    return-void

    .line 1696
    .end local v0           #capacity:I
    :cond_9
    const/4 v0, 0x4

    .line 1699
    .restart local v0       #capacity:I
    :cond_a
    :goto_a
    if-ge v0, p1, :cond_f

    .line 1700
    mul-int/lit8 v0, v0, 0x2

    goto :goto_a

    .line 1703
    :cond_f
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/view/ViewGroup;->mTmpPointerIndexMap:[I

    .line 1704
    new-array v2, v0, [I

    iput-object v2, p0, Landroid/view/ViewGroup;->mTmpPointerIds:[I

    .line 1705
    new-array v2, v0, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v2, p0, Landroid/view/ViewGroup;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 1707
    if-eqz v1, :cond_8

    .line 1708
    iget-object v2, p0, Landroid/view/ViewGroup;->mTmpPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v3, v1

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_8
.end method

.method private initFromAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 394
    sget-object v6, Lcom/android/internal/R$styleable;->ViewGroup:[I

    invoke-virtual {p1, p2, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 397
    .local v1, a:Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 398
    .local v0, N:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_d
    if-ge v4, v0, :cond_7e

    .line 399
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 400
    .local v3, attr:I
    packed-switch v3, :pswitch_data_82

    .line 398
    :cond_16
    :goto_16
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    .line 402
    :pswitch_19
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    goto :goto_16

    .line 405
    :pswitch_21
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    goto :goto_16

    .line 408
    :pswitch_29
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAnimationCacheEnabled(Z)V

    goto :goto_16

    .line 411
    :pswitch_31
    const/4 v6, 0x2

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setPersistentDrawingCache(I)V

    goto :goto_16

    .line 414
    :pswitch_3a
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAddStatesFromChildren(Z)V

    goto :goto_16

    .line 417
    :pswitch_42
    invoke-virtual {v1, v3, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setAlwaysDrawnWithCacheEnabled(Z)V

    goto :goto_16

    .line 420
    :pswitch_4a
    const/4 v6, -0x1

    invoke-virtual {v1, v3, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    .line 421
    .local v5, id:I
    if-lez v5, :cond_16

    .line 422
    iget-object v6, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-static {v6, v5}, Landroid/view/animation/AnimationUtils;->loadLayoutAnimation(Landroid/content/Context;I)Landroid/view/animation/LayoutAnimationController;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V

    goto :goto_16

    .line 426
    .end local v5           #id:I
    :pswitch_5b
    sget-object v6, Landroid/view/ViewGroup;->DESCENDANT_FOCUSABILITY_FLAGS:[I

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aget v6, v6, v7

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto :goto_16

    .line 429
    :pswitch_67
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setMotionEventSplittingEnabled(Z)V

    goto :goto_16

    .line 432
    :pswitch_6f
    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 433
    .local v2, animateLayoutChanges:Z
    if-eqz v2, :cond_16

    .line 434
    new-instance v6, Landroid/animation/LayoutTransition;

    invoke-direct {v6}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_16

    .line 440
    .end local v2           #animateLayoutChanges:Z
    .end local v3           #attr:I
    :cond_7e
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 441
    return-void

    .line 400
    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_19
        :pswitch_21
        :pswitch_4a
        :pswitch_29
        :pswitch_31
        :pswitch_42
        :pswitch_3a
        :pswitch_5b
        :pswitch_67
        :pswitch_6f
    .end packed-switch
.end method

.method private initViewGroup()V
    .registers 4

    .prologue
    const/16 v0, 0x80

    const/4 v2, 0x0

    .line 372
    invoke-virtual {p0, v0, v0}, Landroid/view/ViewGroup;->setFlags(II)V

    .line 373
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 374
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 375
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 376
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 377
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 379
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_37

    .line 380
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 383
    :cond_37
    const/high16 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    .line 385
    const/16 v0, 0xc

    new-array v0, v0, [Landroid/view/View;

    iput-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 386
    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 388
    iget-object v0, p0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 390
    const/4 v0, 0x2

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 391
    return-void
.end method

.method private notifyAnimationListener()V
    .registers 4

    .prologue
    .line 2257
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v1, v1, -0x201

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2258
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2260
    iget-object v1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    if-eqz v1, :cond_18

    .line 2261
    new-instance v0, Landroid/view/ViewGroup$2;

    invoke-direct {v0, p0}, Landroid/view/ViewGroup$2;-><init>(Landroid/view/ViewGroup;)V

    .line 2266
    .local v0, end:Ljava/lang/Runnable;
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2269
    .end local v0           #end:Ljava/lang/Runnable;
    :cond_18
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v1, v1, 0x40

    const/16 v2, 0x40

    if-ne v1, v2, :cond_32

    .line 2270
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v2, -0x8001

    and-int/2addr v1, v2

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2271
    iget v1, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_32

    .line 2272
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2276
    :cond_32
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2277
    return-void
.end method

.method private removeFromArray(I)V
    .registers 8
    .parameter "index"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3098
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3099
    .local v0, children:[Landroid/view/View;
    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_12

    iget-object v2, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    aget-object v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    .line 3100
    :cond_12
    aget-object v2, v0, p1

    iput-object v5, v2, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3102
    :cond_16
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3103
    .local v1, count:I
    sub-int v2, v1, v4

    if-ne p1, v2, :cond_2f

    .line 3104
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    .line 3111
    :goto_23
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-ne v2, p1, :cond_49

    .line 3112
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 3113
    const/4 v2, -0x1

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 3117
    :cond_2e
    :goto_2e
    return-void

    .line 3105
    :cond_2f
    if-ltz p1, :cond_43

    if-ge p1, v1, :cond_43

    .line 3106
    add-int/lit8 v2, p1, 0x1

    sub-int v3, v1, p1

    sub-int/2addr v3, v4

    invoke-static {v0, v2, v0, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3107
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    aput-object v5, v0, v2

    goto :goto_23

    .line 3109
    :cond_43
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 3114
    :cond_49
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    if-le v2, p1, :cond_2e

    .line 3115
    iget v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    sub-int/2addr v2, v4

    iput v2, p0, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    goto :goto_2e
.end method

.method private removeFromArray(II)V
    .registers 9
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v5, 0x0

    .line 3121
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3122
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3124
    .local v1, childrenCount:I
    const/4 v4, 0x0

    invoke-static {v4, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3125
    add-int v4, p1, p2

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 3127
    .local v2, end:I
    if-ne p1, v2, :cond_13

    .line 3151
    :goto_12
    return-void

    .line 3131
    :cond_13
    if-ne v2, v1, :cond_21

    .line 3132
    move v3, p1

    .local v3, i:I
    :goto_16
    if-ge v3, v2, :cond_3b

    .line 3133
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3134
    aput-object v5, v0, v3

    .line 3132
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    .line 3137
    .end local v3           #i:I
    :cond_21
    move v3, p1

    .restart local v3       #i:I
    :goto_22
    if-ge v3, v2, :cond_2b

    .line 3138
    aget-object v4, v0, v3

    iput-object v5, v4, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3137
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 3143
    :cond_2b
    sub-int v4, v1, v2

    invoke-static {v0, v2, v0, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3145
    sub-int v4, v2, p1

    sub-int v3, v1, v4

    :goto_34
    if-ge v3, v1, :cond_3b

    .line 3146
    aput-object v5, v0, v3

    .line 3145
    add-int/lit8 v3, v3, 0x1

    goto :goto_34

    .line 3150
    :cond_3b
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    sub-int v5, v2, p1

    sub-int/2addr v4, v5

    iput v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    goto :goto_12
.end method

.method private removePointersFromTouchTargets(I)V
    .registers 7
    .parameter "pointerIdBits"

    .prologue
    .line 1456
    const/4 v1, 0x0

    .line 1457
    .local v1, predecessor:Landroid/view/ViewGroup$TouchTarget;
    iget-object v2, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1458
    .local v2, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_3
    if-eqz v2, :cond_26

    .line 1459
    iget-object v0, v2, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    .line 1460
    .local v0, next:Landroid/view/ViewGroup$TouchTarget;
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    and-int/2addr v3, p1

    if-eqz v3, :cond_23

    .line 1461
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    xor-int/lit8 v4, p1, -0x1

    and-int/2addr v3, v4

    iput v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1462
    iget v3, v2, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    if-nez v3, :cond_23

    .line 1463
    if-nez v1, :cond_20

    .line 1464
    iput-object v0, p0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1468
    :goto_1b
    invoke-virtual {v2}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1469
    move-object v2, v0

    .line 1470
    goto :goto_3

    .line 1466
    :cond_20
    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_1b

    .line 1473
    :cond_23
    move-object v1, v2

    .line 1474
    move-object v2, v0

    .line 1475
    goto :goto_3

    .line 1476
    .end local v0           #next:Landroid/view/ViewGroup$TouchTarget;
    :cond_26
    return-void
.end method

.method private removeViewInternal(ILandroid/view/View;)V
    .registers 5
    .parameter "index"
    .parameter "view"

    .prologue
    .line 3243
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v1, :cond_9

    .line 3244
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v1, p0, p2}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3247
    :cond_9
    const/4 v0, 0x0

    .line 3248
    .local v0, clearChildFocus:Z
    iget-object v1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p2, v1, :cond_12

    .line 3249
    invoke-virtual {p2}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3250
    const/4 v0, 0x1

    .line 3253
    :cond_12
    invoke-virtual {p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-nez v1, :cond_24

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_3d

    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3255
    :cond_24
    invoke-direct {p0, p2}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3260
    :cond_27
    :goto_27
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v1, :cond_30

    .line 3261
    iget-object v1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v1, p0, p2}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3264
    :cond_30
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3266
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3268
    if-eqz v0, :cond_3c

    .line 3269
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3271
    :cond_3c
    return-void

    .line 3256
    :cond_3d
    iget-object v1, p2, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_27

    .line 3257
    invoke-virtual {p2}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_27
.end method

.method private removeViewInternal(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 3235
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 3236
    .local v0, index:I
    if-ltz v0, :cond_9

    .line 3237
    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3239
    :cond_9
    return-void
.end method

.method private removeViewsInternal(II)V
    .registers 15
    .parameter "start"
    .parameter "count"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3307
    iget-object v7, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3308
    .local v7, onHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v7, :cond_47

    move v6, v11

    .line 3309
    .local v6, notifyListener:Z
    :goto_7
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3310
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_49

    move v2, v11

    .line 3311
    .local v2, detach:Z
    :goto_e
    const/4 v1, 0x0

    .line 3313
    .local v1, clearChildFocus:Landroid/view/View;
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3314
    .local v0, children:[Landroid/view/View;
    add-int v3, p1, p2

    .line 3316
    .local v3, end:I
    move v5, p1

    .local v5, i:I
    :goto_14
    if-ge v5, v3, :cond_51

    .line 3317
    aget-object v8, v0, v5

    .line 3319
    .local v8, view:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_21

    .line 3320
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3323
    :cond_21
    if-ne v8, v4, :cond_27

    .line 3324
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3325
    move-object v1, v8

    .line 3328
    :cond_27
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_39

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_4b

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    .line 3330
    :cond_39
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3335
    :cond_3c
    :goto_3c
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3337
    if-eqz v6, :cond_44

    .line 3338
    invoke-interface {v7, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3316
    :cond_44
    add-int/lit8 v5, v5, 0x1

    goto :goto_14

    .end local v0           #children:[Landroid/view/View;
    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v2           #detach:Z
    .end local v3           #end:I
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v6           #notifyListener:Z
    .end local v8           #view:Landroid/view/View;
    :cond_47
    move v6, v10

    .line 3308
    goto :goto_7

    .restart local v4       #focused:Landroid/view/View;
    .restart local v6       #notifyListener:Z
    :cond_49
    move v2, v10

    .line 3310
    goto :goto_e

    .line 3331
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v2       #detach:Z
    .restart local v3       #end:I
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_4b
    if-eqz v2, :cond_3c

    .line 3332
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_3c

    .line 3342
    .end local v8           #view:Landroid/view/View;
    :cond_51
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3344
    if-eqz v1, :cond_59

    .line 3345
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    .line 3347
    :cond_59
    return-void
.end method

.method private resetCancelNextUpFlag(Landroid/view/View;)Z
    .registers 4
    .parameter "view"

    .prologue
    .line 1381
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const/high16 v1, 0x400

    and-int/2addr v0, v1

    if-eqz v0, :cond_11

    .line 1382
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x4000001

    and-int/2addr v0, v1

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 1383
    const/4 v0, 0x1

    .line 1385
    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method private resetTouchState()V
    .registers 3

    .prologue
    .line 1371
    invoke-direct {p0}, Landroid/view/ViewGroup;->clearTouchTargets()V

    .line 1372
    invoke-direct {p0, p0}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1373
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1374
    return-void
.end method

.method private setBooleanFlag(IZ)V
    .registers 5
    .parameter "flag"
    .parameter "value"

    .prologue
    .line 4073
    if-eqz p2, :cond_8

    .line 4074
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4078
    :goto_7
    return-void

    .line 4076
    :cond_8
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_7
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;I)V
    .registers 4
    .parameter
    .parameter "direction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 711
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addFocusables(Ljava/util/ArrayList;II)V

    .line 712
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .registers 11
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
    .line 719
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 721
    .local v4, focusableCount:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 723
    .local v3, descendantFocusability:I
    const/high16 v6, 0x6

    if-eq v3, v6, :cond_21

    .line 724
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 725
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 727
    .local v1, children:[Landroid/view/View;
    const/4 v5, 0x0

    .local v5, i:I
    :goto_11
    if-ge v5, v2, :cond_21

    .line 728
    aget-object v0, v1, v5

    .line 729
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-nez v6, :cond_1e

    .line 730
    invoke-virtual {v0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 727
    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    .line 739
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v5           #i:I
    :cond_21
    const/high16 v6, 0x4

    if-ne v3, v6, :cond_2b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v4, v6, :cond_2e

    .line 743
    :cond_2b
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    .line 745
    :cond_2e
    return-void
.end method

.method public addStatesFromChildren()Z
    .registers 2

    .prologue
    .line 4730
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p1, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-super {p0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 767
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 768
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 770
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_18

    .line 771
    aget-object v0, v1, v3

    .line 772
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-nez v4, :cond_15

    .line 773
    invoke-virtual {v0, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    .line 770
    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 776
    .end local v0           #child:Landroid/view/View;
    :cond_18
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 2837
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 2838
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .registers 6
    .parameter "child"
    .parameter "index"

    .prologue
    .line 2850
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2851
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    if-nez v0, :cond_14

    .line 2852
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2853
    if-nez v0, :cond_14

    .line 2854
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "generateDefaultLayoutParams() cannot return null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2857
    :cond_14
    invoke-virtual {p0, p1, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2858
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 6
    .parameter "child"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 2867
    invoke-virtual {p0}, Landroid/view/ViewGroup;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 2868
    .local v0, params:Landroid/view/ViewGroup$LayoutParams;
    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 2869
    iput p3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 2870
    const/4 v1, -0x1

    invoke-virtual {p0, p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2871
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 2898
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 2899
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2900
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 2901
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .parameter "child"
    .parameter "params"

    .prologue
    .line 2880
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 2881
    return-void
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z
    .registers 5
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    .line 2968
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/view/ViewGroup;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z

    move-result v0

    return v0
.end method

.method protected addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)Z
    .registers 7
    .parameter "child"
    .parameter "index"
    .parameter "params"
    .parameter "preventRequestLayout"

    .prologue
    .line 2986
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 2987
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->addViewInner(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    .line 2988
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2989
    const/4 v0, 0x1

    return v0
.end method

.method protected attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V
    .registers 6
    .parameter "child"
    .parameter "params"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 3170
    iget-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3172
    .local v0, animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    if-nez v0, :cond_b

    .line 3173
    new-instance v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .end local v0           #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    invoke-direct {v0}, Landroid/view/animation/LayoutAnimationController$AnimationParameters;-><init>()V

    .line 3174
    .restart local v0       #animationParams:Landroid/view/animation/LayoutAnimationController$AnimationParameters;
    iput-object v0, p2, Landroid/view/ViewGroup$LayoutParams;->layoutAnimationParameters:Landroid/view/animation/LayoutAnimationController$AnimationParameters;

    .line 3177
    :cond_b
    iput p4, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->count:I

    .line 3178
    iput p3, v0, Landroid/view/animation/LayoutAnimationController$AnimationParameters;->index:I

    .line 3179
    return-void
.end method

.method protected attachViewToParent(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 7
    .parameter "child"
    .parameter "index"
    .parameter "params"

    .prologue
    const/high16 v2, -0x8000

    .line 3468
    iput-object p3, p1, Landroid/view/View;->mLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    .line 3470
    if-gez p2, :cond_8

    .line 3471
    iget p2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3474
    :cond_8
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 3476
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3477
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    const v1, -0x600001

    and-int/2addr v0, v1

    const v1, -0x8001

    and-int/2addr v0, v1

    or-int/lit8 v0, v0, 0x20

    or-int/2addr v0, v2

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 3479
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    or-int/2addr v0, v2

    iput v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3481
    invoke-virtual {p1}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2e

    .line 3482
    invoke-virtual {p1}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 3484
    :cond_2e
    return-void
.end method

.method public bringChildToFront(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 888
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 889
    .local v0, index:I
    if-ltz v0, :cond_10

    .line 890
    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 891
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    invoke-direct {p0, p1, v1}, Landroid/view/ViewGroup;->addInArray(Landroid/view/View;I)V

    .line 892
    iput-object p0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 894
    :cond_10
    return-void
.end method

.method protected canAnimate()Z
    .registers 2

    .prologue
    .line 3898
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .registers 3
    .parameter "p"

    .prologue
    .line 2920
    if-eqz p1, :cond_4

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public childDrawableStateChanged(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 4738
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_9

    .line 4739
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 4741
    :cond_9
    return-void
.end method

.method protected cleanupLayoutState(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 2998
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 2999
    return-void
.end method

.method public clearChildFocus(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 601
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_c

    .line 602
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->clearChildFocus(Landroid/view/View;)V

    .line 604
    :cond_c
    return-void
.end method

.method public clearDisappearingChildren()V
    .registers 2

    .prologue
    .line 4447
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    if-eqz v0, :cond_9

    .line 4448
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4450
    :cond_9
    return-void
.end method

.method public clearFocus()V
    .registers 2

    .prologue
    .line 611
    invoke-super {p0}, Landroid/view/View;->clearFocus()V

    .line 614
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 615
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 617
    :cond_c
    return-void
.end method

.method createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;
    .registers 11
    .parameter "quality"
    .parameter "backgroundColor"
    .parameter "skipChildren"

    .prologue
    .line 2096
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2097
    .local v2, count:I
    const/4 v4, 0x0

    .line 2099
    .local v4, visibilities:[I
    if-eqz p3, :cond_1f

    .line 2100
    new-array v4, v2, [I

    .line 2101
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_1f

    .line 2102
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 2103
    .local v1, child:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v5

    aput v5, v4, v3

    .line 2104
    aget v5, v4, v3

    if-nez v5, :cond_1c

    .line 2105
    const/4 v5, 0x4

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2101
    :cond_1c
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 2110
    .end local v1           #child:Landroid/view/View;
    .end local v3           #i:I
    :cond_1f
    invoke-super {p0, p1, p2, p3}, Landroid/view/View;->createSnapshot(Landroid/graphics/Bitmap$Config;IZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2112
    .local v0, b:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_34

    .line 2113
    const/4 v3, 0x0

    .restart local v3       #i:I
    :goto_26
    if-ge v3, v2, :cond_34

    .line 2114
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    aget v6, v4, v3

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2113
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 2118
    .end local v3           #i:I
    :cond_34
    return-object v0
.end method

.method protected debug(I)V
    .registers 8
    .parameter "depth"

    .prologue
    .line 4216
    invoke-super {p0, p1}, Landroid/view/View;->debug(I)V

    .line 4219
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v4, :cond_23

    .line 4220
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4221
    .local v3, output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mFocused"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4222
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4224
    .end local v3           #output:Ljava/lang/String;
    :cond_23
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_44

    .line 4225
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4226
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "{"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4227
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4229
    .end local v3           #output:Ljava/lang/String;
    :cond_44
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4230
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_47
    if-ge v2, v1, :cond_55

    .line 4231
    iget-object v4, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v4, v2

    .line 4232
    .local v0, child:Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v0, v4}, Landroid/view/View;->debug(I)V

    .line 4230
    add-int/lit8 v2, v2, 0x1

    goto :goto_47

    .line 4235
    .end local v0           #child:Landroid/view/View;
    :cond_55
    iget v4, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-eqz v4, :cond_76

    .line 4236
    invoke-static {p1}, Landroid/view/ViewGroup;->debugIndent(I)Ljava/lang/String;

    move-result-object v3

    .line 4237
    .restart local v3       #output:Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 4238
    const-string v4, "View"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4240
    .end local v3           #output:Ljava/lang/String;
    :cond_76
    return-void
.end method

.method protected detachAllViewsFromParent()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 3554
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3555
    .local v1, count:I
    if-gtz v1, :cond_6

    .line 3566
    :cond_5
    return-void

    .line 3559
    :cond_6
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3560
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    iput v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3562
    const/4 v3, 0x1

    sub-int v2, v1, v3

    .local v2, i:I
    :goto_e
    if-ltz v2, :cond_5

    .line 3563
    aget-object v3, v0, v2

    iput-object v4, v3, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3564
    aput-object v4, v0, v2

    .line 3562
    add-int/lit8 v2, v2, -0x1

    goto :goto_e
.end method

.method protected detachViewFromParent(I)V
    .registers 2
    .parameter "index"

    .prologue
    .line 3519
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3520
    return-void
.end method

.method protected detachViewFromParent(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 3501
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0}, Landroid/view/ViewGroup;->removeFromArray(I)V

    .line 3502
    return-void
.end method

.method protected detachViewsFromParent(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3538
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeFromArray(II)V

    .line 3539
    return-void
.end method

.method dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V
    .registers 7
    .parameter "info"
    .parameter "visibility"

    .prologue
    .line 1923
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1924
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p2, v3

    .line 1925
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1926
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1927
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 1928
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchAttachedToWindow(Landroid/view/View$AttachInfo;I)V

    .line 1927
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1930
    :cond_17
    return-void
.end method

.method dispatchCollectViewAttributes(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 875
    iget v3, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v3, v3, 0xc

    or-int/2addr p1, v3

    .line 876
    invoke-super {p0, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 877
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 878
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 879
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_d
    if-ge v2, v1, :cond_17

    .line 880
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchCollectViewAttributes(I)V

    .line 879
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 882
    :cond_17
    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6
    .parameter "newConfig"

    .prologue
    .line 855
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 856
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 857
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 858
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 859
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 858
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 861
    :cond_12
    return-void
.end method

.method protected dispatchConsistencyCheck(I)Z
    .registers 7
    .parameter "consistency"

    .prologue
    .line 4161
    invoke-super {p0, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v3

    .line 4163
    .local v3, result:Z
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4164
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4165
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_9
    if-ge v2, v1, :cond_17

    .line 4166
    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Landroid/view/View;->dispatchConsistencyCheck(I)Z

    move-result v4

    if-nez v4, :cond_14

    const/4 v3, 0x0

    .line 4165
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    .line 4169
    :cond_17
    return v3
.end method

.method dispatchDetachedFromWindow()V
    .registers 6

    .prologue
    const/4 v4, 0x0

    .line 1951
    invoke-direct {p0, v4}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 1954
    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    .line 1957
    iput-object v4, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 1958
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v3, :cond_14

    .line 1959
    iget-object v3, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {v3}, Landroid/view/DragEvent;->recycle()V

    .line 1960
    iput-object v4, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 1963
    :cond_14
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1964
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1965
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_19
    if-ge v2, v1, :cond_23

    .line 1966
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1965
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1968
    :cond_23
    invoke-super {p0}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 1969
    return-void
.end method

.method public dispatchDisplayHint(I)V
    .registers 6
    .parameter "hint"

    .prologue
    .line 783
    invoke-super {p0, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 784
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 785
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 786
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 787
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchDisplayHint(I)V

    .line 786
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 789
    :cond_12
    return-void
.end method

.method public dispatchDragEvent(Landroid/view/DragEvent;)Z
    .registers 21
    .parameter "event"

    .prologue
    .line 903
    const/4 v11, 0x0

    .line 904
    .local v11, retval:Z
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move v14, v0

    .line 905
    .local v14, tx:F
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move v15, v0

    .line 907
    .local v15, ty:F
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getViewRoot()Landroid/view/ViewRoot;

    move-result-object v12

    .line 910
    .local v12, root:Landroid/view/ViewRoot;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move/from16 v16, v0

    packed-switch v16, :pswitch_data_1ee

    .line 1042
    :cond_18
    :goto_18
    :pswitch_18
    if-nez v11, :cond_1e

    .line 1044
    invoke-super/range {p0 .. p1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1046
    :cond_1e
    return v11

    .line 913
    :pswitch_1f
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 916
    invoke-static/range {p1 .. p1}, Landroid/view/DragEvent;->obtain(Landroid/view/DragEvent;)Landroid/view/DragEvent;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    if-nez v16, :cond_78

    .line 918
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    .line 924
    :goto_44
    const/16 v16, 0x0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 925
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v7, v0

    .line 926
    .local v7, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v6, v0

    .line 927
    .local v6, children:[Landroid/view/View;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_57
    if-ge v9, v7, :cond_82

    .line 928
    aget-object v5, v6, v9

    .line 929
    .local v5, child:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v16

    if-nez v16, :cond_75

    .line 930
    aget-object v16, v6, v9

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    move-result v8

    .line 931
    .local v8, handled:Z
    if-eqz v8, :cond_75

    .line 932
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    .line 927
    .end local v8           #handled:Z
    :cond_75
    add-int/lit8 v9, v9, 0x1

    goto :goto_57

    .line 920
    .end local v5           #child:Landroid/view/View;
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :cond_78
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->clear()V

    goto :goto_44

    .line 938
    .restart local v6       #children:[Landroid/view/View;
    .restart local v7       #count:I
    .restart local v9       #i:I
    :cond_82
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 939
    const/4 v11, 0x1

    goto :goto_18

    .line 945
    .end local v6           #children:[Landroid/view/View;
    .end local v7           #count:I
    .end local v9           #i:I
    :pswitch_8c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    if-eqz v16, :cond_cb

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_9e
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_b1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 948
    .restart local v5       #child:Landroid/view/View;
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    goto :goto_9e

    .line 951
    .end local v5           #child:Landroid/view/View;
    :cond_b1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/util/HashSet;->clear()V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/DragEvent;->recycle()V

    .line 953
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    .line 958
    .end local v10           #i$:Ljava/util/Iterator;
    :cond_cb
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mChildAcceptsDrag:Z

    move/from16 v16, v0

    if-eqz v16, :cond_18

    .line 959
    const/4 v11, 0x1

    goto/16 :goto_18

    .line 965
    :pswitch_d6
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 973
    .local v13, target:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object v1, v13

    if-eq v0, v1, :cond_13e

    .line 974
    invoke-virtual {v12, v13}, Landroid/view/ViewRoot;->setDragFocus(Landroid/view/View;)V

    .line 976
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mAction:I

    move v4, v0

    .line 978
    .local v4, action:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_124

    .line 979
    const/16 v16, 0x6

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 980
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 982
    :cond_124
    move-object v0, v13

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    .line 985
    if-eqz v13, :cond_139

    .line 986
    const/16 v16, 0x5

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 987
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 989
    :cond_139
    move v0, v4

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mAction:I

    .line 993
    .end local v4           #action:I
    :cond_13e
    if-eqz v13, :cond_18

    .line 994
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 995
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 997
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 999
    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1000
    move v0, v15

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_18

    .line 1017
    .end local v13           #target:Landroid/view/View;
    :pswitch_177
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v16, :cond_18

    .line 1018
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    .line 1019
    const/16 v16, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mCurrentDragView:Landroid/view/View;

    goto/16 :goto_18

    .line 1025
    :pswitch_196
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mX:F

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/DragEvent;->mY:F

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/ViewGroup;->findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;

    move-result-object v13

    .line 1026
    .restart local v13       #target:Landroid/view/View;
    if-eqz v13, :cond_18

    .line 1028
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1029
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLocalPoint:Landroid/graphics/PointF;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget v0, v0, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    .line 1030
    move-object v0, v13

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v11

    .line 1031
    move v0, v14

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mX:F

    .line 1032
    move v0, v15

    move-object/from16 v1, p1

    iput v0, v1, Landroid/view/DragEvent;->mY:F

    goto/16 :goto_18

    .line 910
    nop

    :pswitch_data_1ee
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_d6
        :pswitch_196
        :pswitch_8c
        :pswitch_18
        :pswitch_177
    .end packed-switch
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 29
    .parameter "canvas"

    .prologue
    .line 2126
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v11, v0

    .line 2127
    .local v11, count:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v8, v0

    .line 2128
    .local v8, children:[Landroid/view/View;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2130
    .local v17, flags:I
    and-int/lit8 v22, v17, 0x8

    if-eqz v22, :cond_e4

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->canAnimate()Z

    move-result v22

    if-eqz v22, :cond_e4

    .line 2131
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0x40

    const/16 v23, 0x40

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_76

    const/16 v22, 0x1

    move/from16 v6, v22

    .line 2133
    .local v6, cache:Z
    :goto_2e
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v22

    if-nez v22, :cond_7b

    const/16 v22, 0x1

    move/from16 v5, v22

    .line 2134
    .local v5, buildCache:Z
    :goto_38
    const/16 v18, 0x0

    .local v18, i:I
    :goto_3a
    move/from16 v0, v18

    move v1, v11

    if-ge v0, v1, :cond_80

    .line 2135
    aget-object v7, v8, v18

    .line 2136
    .local v7, child:Landroid/view/View;
    move-object v0, v7

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-nez v22, :cond_73

    .line 2137
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v20

    .line 2138
    .local v20, params:Landroid/view/ViewGroup$LayoutParams;
    move-object/from16 v0, p0

    move-object v1, v7

    move-object/from16 v2, v20

    move/from16 v3, v18

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->attachLayoutAnimationParameters(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;II)V

    .line 2139
    move-object/from16 v0, p0

    move-object v1, v7

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->bindLayoutAnimation(Landroid/view/View;)V

    .line 2140
    if-eqz v6, :cond_73

    .line 2141
    const/16 v22, 0x1

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2142
    if-eqz v5, :cond_73

    .line 2143
    const/16 v22, 0x1

    move-object v0, v7

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2134
    .end local v20           #params:Landroid/view/ViewGroup$LayoutParams;
    :cond_73
    add-int/lit8 v18, v18, 0x1

    goto :goto_3a

    .line 2131
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v7           #child:Landroid/view/View;
    .end local v18           #i:I
    :cond_76
    const/16 v22, 0x0

    move/from16 v6, v22

    goto :goto_2e

    .line 2133
    .restart local v6       #cache:Z
    :cond_7b
    const/16 v22, 0x0

    move/from16 v5, v22

    goto :goto_38

    .line 2149
    .restart local v5       #buildCache:Z
    .restart local v18       #i:I
    :cond_80
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object v10, v0

    .line 2150
    .local v10, controller:Landroid/view/animation/LayoutAnimationController;
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->willOverlap()Z

    move-result v22

    if-eqz v22, :cond_9d

    .line 2151
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x80

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2154
    :cond_9d
    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->start()V

    .line 2156
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x9

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2157
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x11

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2159
    if-eqz v6, :cond_cf

    .line 2160
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    const v23, 0x8000

    or-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2163
    :cond_cf
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    if-eqz v22, :cond_e4

    .line 2164
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    move-object/from16 v22, v0

    invoke-virtual {v10}, Landroid/view/animation/LayoutAnimationController;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v23

    invoke-interface/range {v22 .. v23}, Landroid/view/animation/Animation$AnimationListener;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 2168
    .end local v5           #buildCache:Z
    .end local v6           #cache:Z
    .end local v10           #controller:Landroid/view/animation/LayoutAnimationController;
    .end local v18           #i:I
    :cond_e4
    const/16 v21, 0x0

    .line 2169
    .local v21, saveCount:I
    and-int/lit8 v22, v17, 0x22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_1b0

    const/16 v22, 0x1

    move/from16 v9, v22

    .line 2170
    .local v9, clipToPadding:Z
    :goto_f4
    if-eqz v9, :cond_15f

    .line 2171
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v21

    .line 2172
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingLeft:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingTop:I

    move/from16 v24, v0

    add-int v23, v23, v24

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollX:I

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mRight:I

    move/from16 v25, v0

    add-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mLeft:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingRight:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mScrollY:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mBottom:I

    move/from16 v26, v0

    add-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mTop:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPaddingBottom:I

    move/from16 v26, v0

    sub-int v25, v25, v26

    move-object/from16 v0, p1

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    move/from16 v4, v25

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2179
    :cond_15f
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x41

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2180
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, -0x5

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2182
    const/16 v19, 0x0

    .line 2183
    .local v19, more:Z
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getDrawingTime()J

    move-result-wide v14

    .line 2185
    .local v14, drawingTime:J
    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x400

    move/from16 v22, v0

    if-nez v22, :cond_1b6

    .line 2186
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_18b
    move/from16 v0, v18

    move v1, v11

    if-ge v0, v1, :cond_1e6

    .line 2187
    aget-object v7, v8, v18

    .line 2188
    .restart local v7       #child:Landroid/view/View;
    move-object v0, v7

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_1a1

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_1ad

    .line 2189
    :cond_1a1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2186
    :cond_1ad
    add-int/lit8 v18, v18, 0x1

    goto :goto_18b

    .line 2169
    .end local v7           #child:Landroid/view/View;
    .end local v9           #clipToPadding:Z
    .end local v14           #drawingTime:J
    .end local v18           #i:I
    .end local v19           #more:Z
    :cond_1b0
    const/16 v22, 0x0

    move/from16 v9, v22

    goto/16 :goto_f4

    .line 2193
    .restart local v9       #clipToPadding:Z
    .restart local v14       #drawingTime:J
    .restart local v19       #more:Z
    :cond_1b6
    const/16 v18, 0x0

    .restart local v18       #i:I
    :goto_1b8
    move/from16 v0, v18

    move v1, v11

    if-ge v0, v1, :cond_1e6

    .line 2194
    move-object/from16 v0, p0

    move v1, v11

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildDrawingOrder(II)I

    move-result v22

    aget-object v7, v8, v22

    .line 2195
    .restart local v7       #child:Landroid/view/View;
    move-object v0, v7

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v22, v0

    and-int/lit8 v22, v22, 0xc

    if-eqz v22, :cond_1d7

    invoke-virtual {v7}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v22

    if-eqz v22, :cond_1e3

    .line 2196
    :cond_1d7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2193
    :cond_1e3
    add-int/lit8 v18, v18, 0x1

    goto :goto_1b8

    .line 2202
    .end local v7           #child:Landroid/view/View;
    :cond_1e6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_217

    .line 2203
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    move-object v12, v0

    .line 2204
    .local v12, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    sub-int v13, v22, v23

    .line 2206
    .local v13, disappearingCount:I
    move/from16 v18, v13

    :goto_1fd
    if-ltz v18, :cond_217

    .line 2207
    move-object v0, v12

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/View;

    .line 2208
    .restart local v7       #child:Landroid/view/View;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v7

    move-wide v3, v14

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v22

    or-int v19, v19, v22

    .line 2206
    add-int/lit8 v18, v18, -0x1

    goto :goto_1fd

    .line 2212
    .end local v7           #child:Landroid/view/View;
    .end local v12           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    .end local v13           #disappearingCount:I
    :cond_217
    if-eqz v9, :cond_220

    .line 2213
    move-object/from16 v0, p1

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2217
    :cond_220
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v17, v0

    .line 2219
    and-int/lit8 v22, v17, 0x4

    const/16 v23, 0x4

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_239

    .line 2220
    const/16 v22, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2223
    :cond_239
    and-int/lit8 v22, v17, 0x10

    if-nez v22, :cond_275

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    if-nez v22, :cond_275

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/view/animation/LayoutAnimationController;->isDone()Z

    move-result v22

    if-eqz v22, :cond_275

    if-nez v19, :cond_275

    .line 2228
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v22, v0

    move/from16 v0, v22

    or-int/lit16 v0, v0, 0x200

    move/from16 v22, v0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2229
    new-instance v16, Landroid/view/ViewGroup$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup$1;-><init>(Landroid/view/ViewGroup;)V

    .line 2234
    .local v16, end:Ljava/lang/Runnable;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    .line 2236
    .end local v16           #end:Ljava/lang/Runnable;
    :cond_275
    return-void
.end method

.method public dispatchFinishTemporaryDetach()V
    .registers 5

    .prologue
    .line 1910
    invoke-super {p0}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1911
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1912
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1913
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 1914
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchFinishTemporaryDetach()V

    .line 1913
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1916
    :cond_12
    return-void
.end method

.method protected dispatchFreezeSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2010
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 2011
    return-void
.end method

.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .registers 15
    .parameter "event"

    .prologue
    const/4 v12, 0x1

    .line 1148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v10

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_70

    .line 1150
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1151
    .local v2, childrenCount:I
    if-eqz v2, :cond_6b

    .line 1152
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1153
    .local v1, children:[Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    .line 1154
    .local v8, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    .line 1156
    .local v9, y:F
    sub-int v4, v2, v12

    .local v4, i:I
    :goto_19
    if-ltz v4, :cond_6b

    .line 1157
    aget-object v0, v1, v4

    .line 1158
    .local v0, child:Landroid/view/View;
    iget v10, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v10, v10, 0xc

    if-eqz v10, :cond_2c

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v10

    if-nez v10, :cond_2c

    .line 1156
    :cond_29
    add-int/lit8 v4, v4, -0x1

    goto :goto_19

    .line 1164
    :cond_2c
    const/4 v10, 0x0

    invoke-virtual {p0, v8, v9, v0, v10}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v10

    if-eqz v10, :cond_29

    .line 1169
    iget v10, p0, Landroid/view/ViewGroup;->mScrollX:I

    iget v11, v0, Landroid/view/View;->mLeft:I

    sub-int/2addr v10, v11

    int-to-float v5, v10

    .line 1170
    .local v5, offsetX:F
    iget v10, p0, Landroid/view/ViewGroup;->mScrollY:I

    iget v11, v0, Landroid/view/View;->mTop:I

    sub-int/2addr v10, v11

    int-to-float v6, v10

    .line 1172
    .local v6, offsetY:F
    invoke-virtual {v0}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v10

    if-nez v10, :cond_5e

    .line 1173
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v7

    .line 1174
    .local v7, transformedEvent:Landroid/view/MotionEvent;
    invoke-virtual {v7, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1175
    invoke-virtual {v0}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    .line 1176
    invoke-virtual {v0, v7}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1177
    .local v3, handled:Z
    invoke-virtual {v7}, Landroid/view/MotionEvent;->recycle()V

    .line 1184
    .end local v7           #transformedEvent:Landroid/view/MotionEvent;
    :goto_5a
    if-eqz v3, :cond_29

    move v10, v12

    .line 1200
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #childrenCount:I
    .end local v3           #handled:Z
    .end local v4           #i:I
    .end local v5           #offsetX:F
    .end local v6           #offsetY:F
    .end local v8           #x:F
    .end local v9           #y:F
    :goto_5d
    return v10

    .line 1179
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v2       #childrenCount:I
    .restart local v4       #i:I
    .restart local v5       #offsetX:F
    .restart local v6       #offsetY:F
    .restart local v8       #x:F
    .restart local v9       #y:F
    :cond_5e
    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 1180
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v3

    .line 1181
    .restart local v3       #handled:Z
    neg-float v10, v5

    neg-float v11, v6

    invoke-virtual {p1, v10, v11}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    goto :goto_5a

    .line 1191
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #handled:Z
    .end local v4           #i:I
    .end local v5           #offsetX:F
    .end local v6           #offsetY:F
    .end local v8           #x:F
    .end local v9           #y:F
    :cond_6b
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_5d

    .line 1195
    .end local v2           #childrenCount:I
    :cond_70
    iget v10, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v10, v10, 0x12

    const/16 v11, 0x12

    if-ne v10, v11, :cond_7d

    .line 1196
    invoke-super {p0, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_5d

    .line 1197
    :cond_7d
    iget-object v10, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v10, :cond_92

    iget-object v10, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v10, v10, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v10, v10, 0x10

    const/16 v11, 0x10

    if-ne v10, v11, :cond_92

    .line 1198
    iget-object v10, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v10, p1}, Landroid/view/View;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v10

    goto :goto_5d

    .line 1200
    :cond_92
    const/4 v10, 0x0

    goto :goto_5d
.end method

.method protected dispatchGetDisplayList()V
    .registers 9

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x8000

    .line 2289
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2290
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2291
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_32

    .line 2292
    aget-object v0, v1, v3

    .line 2293
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    if-eqz v4, :cond_18

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 2294
    :cond_18
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v4, v6

    if-ne v4, v6, :cond_30

    const/4 v4, 0x1

    :goto_1e
    iput-boolean v4, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2295
    iget v4, v0, Landroid/view/View;->mPrivateFlags:I

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    iput v4, v0, Landroid/view/View;->mPrivateFlags:I

    .line 2296
    invoke-virtual {v0}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    .line 2297
    iput-boolean v7, v0, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2291
    :cond_2d
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_30
    move v4, v7

    .line 2294
    goto :goto_1e

    .line 2300
    .end local v0           #child:Landroid/view/View;
    :cond_32
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1109
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1110
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1114
    :goto_c
    return v0

    .line 1111
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1112
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 1114
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1096
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1097
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1101
    :goto_c
    return v0

    .line 1098
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1099
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 1101
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1122
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1123
    invoke-super {p0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1127
    :goto_c
    return v0

    .line 1124
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1125
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_c

    .line 1127
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 6
    .parameter "event"

    .prologue
    .line 1934
    const/4 v2, 0x0

    .line 1935
    .local v2, populated:Z
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, count:I
    :goto_6
    if-ge v1, v0, :cond_14

    .line 1936
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    or-int/2addr v2, v3

    .line 1935
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 1938
    :cond_14
    return v2
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 2018
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2019
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2020
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2021
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v2, :cond_19

    .line 2022
    aget-object v0, v1, v3

    .line 2023
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 2024
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2021
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 2027
    .end local v0           #c:Landroid/view/View;
    :cond_19
    return-void
.end method

.method protected dispatchSaveInstanceState(Landroid/util/SparseArray;)V
    .registers 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    const/high16 v5, 0x2000

    .line 1990
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1991
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1992
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1993
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_a
    if-ge v3, v2, :cond_19

    .line 1994
    aget-object v0, v1, v3

    .line 1995
    .local v0, c:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/2addr v4, v5

    if-eq v4, v5, :cond_16

    .line 1996
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSaveInstanceState(Landroid/util/SparseArray;)V

    .line 1993
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    .line 1999
    .end local v0           #c:Landroid/view/View;
    :cond_19
    return-void
.end method

.method public dispatchSetActivated(Z)V
    .registers 6
    .parameter "activated"

    .prologue
    .line 2704
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2705
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2706
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 2707
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setActivated(Z)V

    .line 2706
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2709
    :cond_f
    return-void
.end method

.method protected dispatchSetPressed(Z)V
    .registers 6
    .parameter "pressed"

    .prologue
    .line 2713
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2714
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2715
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 2716
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setPressed(Z)V

    .line 2715
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2718
    :cond_f
    return-void
.end method

.method public dispatchSetSelected(Z)V
    .registers 6
    .parameter "selected"

    .prologue
    .line 2692
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2693
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2694
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_f

    .line 2695
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setSelected(Z)V

    .line 2694
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 2697
    :cond_f
    return-void
.end method

.method public dispatchStartTemporaryDetach()V
    .registers 5

    .prologue
    .line 1895
    invoke-super {p0}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1896
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1897
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1898
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 1899
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->dispatchStartTemporaryDetach()V

    .line 1898
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 1901
    :cond_12
    return-void
.end method

.method public dispatchSystemUiVisibilityChanged(I)V
    .registers 6
    .parameter "visible"

    .prologue
    .line 1081
    invoke-super {p0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1083
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1084
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1085
    .local v1, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_8
    if-ge v3, v2, :cond_12

    .line 1086
    aget-object v0, v1, v3

    .line 1087
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchSystemUiVisibilityChanged(I)V

    .line 1085
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 1089
    .end local v0           #child:Landroid/view/View;
    :cond_12
    return-void
.end method

.method protected dispatchThawSelfOnly(Landroid/util/SparseArray;)V
    .registers 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2038
    .local p1, container:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-super {p0, p1}, Landroid/view/View;->dispatchRestoreInstanceState(Landroid/util/SparseArray;)V

    .line 2039
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 31
    .parameter "ev"

    .prologue
    .line 1208
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onFilterTouchEventForSecurity(Landroid/view/MotionEvent;)Z

    move-result v27

    if-nez v27, :cond_9

    .line 1209
    const/16 v27, 0x0

    .line 1364
    :goto_8
    return v27

    .line 1212
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    .line 1213
    .local v5, action:I
    and-int/lit16 v7, v5, 0xff

    .line 1216
    .local v7, actionMasked:I
    if-eqz v7, :cond_18

    const/16 v27, 0x7

    move v0, v7

    move/from16 v1, v27

    if-ne v0, v1, :cond_1e

    .line 1221
    :cond_18
    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;->cancelAndClearTouchTargets(Landroid/view/MotionEvent;)V

    .line 1222
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    .line 1227
    :cond_1e
    if-eqz v7, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_da

    .line 1229
    :cond_28
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    const/high16 v28, 0x8

    and-int v27, v27, v28

    if-eqz v27, :cond_d0

    const/16 v27, 0x1

    move/from16 v14, v27

    .line 1230
    .local v14, disallowIntercept:Z
    :goto_38
    if-nez v14, :cond_d6

    .line 1231
    invoke-virtual/range {p0 .. p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v19

    .line 1232
    .local v19, intercepted:Z
    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 1243
    .end local v14           #disallowIntercept:Z
    :goto_44
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v27

    if-nez v27, :cond_55

    const/16 v27, 0x3

    move v0, v7

    move/from16 v1, v27

    if-ne v0, v1, :cond_de

    :cond_55
    const/16 v27, 0x1

    move/from16 v10, v27

    .line 1247
    .local v10, canceled:Z
    :goto_59
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v27, v0

    const/high16 v28, 0x20

    and-int v27, v27, v28

    if-eqz v27, :cond_e4

    const/16 v27, 0x1

    move/from16 v23, v27

    .line 1248
    .local v23, split:Z
    :goto_69
    const/16 v20, 0x0

    .line 1249
    .local v20, newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    const/4 v8, 0x0

    .line 1250
    .local v8, alreadyDispatchedToNewTouchTarget:Z
    if-nez v10, :cond_189

    if-nez v19, :cond_189

    .line 1251
    if-eqz v7, :cond_82

    if-eqz v23, :cond_7b

    const/16 v27, 0x5

    move v0, v7

    move/from16 v1, v27

    if-eq v0, v1, :cond_82

    :cond_7b
    const/16 v27, 0x7

    move v0, v7

    move/from16 v1, v27

    if-ne v0, v1, :cond_189

    .line 1254
    :cond_82
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 1255
    .local v6, actionIndex:I
    if-eqz v23, :cond_e9

    const/16 v27, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    shl-int v27, v27, v28

    move/from16 v17, v27

    .line 1260
    .local v17, idBitsToAssign:I
    :goto_95
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    .line 1262
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mChildrenCount:I

    move v13, v0

    .line 1263
    .local v13, childrenCount:I
    if-eqz v13, :cond_116

    .line 1265
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    move-object v12, v0

    .line 1266
    .local v12, children:[Landroid/view/View;
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v25

    .line 1267
    .local v25, x:F
    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v26

    .line 1269
    .local v26, y:F
    const/16 v27, 0x1

    sub-int v16, v13, v27

    .local v16, i:I
    :goto_ba
    if-ltz v16, :cond_116

    .line 1270
    aget-object v11, v12, v16

    .line 1271
    .local v11, child:Landroid/view/View;
    move-object v0, v11

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v27, v0

    and-int/lit8 v27, v27, 0xc

    if-eqz v27, :cond_ee

    invoke-virtual {v11}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v27

    if-nez v27, :cond_ee

    .line 1269
    :cond_cd
    add-int/lit8 v16, v16, -0x1

    goto :goto_ba

    .line 1229
    .end local v6           #actionIndex:I
    .end local v8           #alreadyDispatchedToNewTouchTarget:Z
    .end local v10           #canceled:Z
    .end local v11           #child:Landroid/view/View;
    .end local v12           #children:[Landroid/view/View;
    .end local v13           #childrenCount:I
    .end local v16           #i:I
    .end local v17           #idBitsToAssign:I
    .end local v19           #intercepted:Z
    .end local v20           #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .end local v23           #split:Z
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_d0
    const/16 v27, 0x0

    move/from16 v14, v27

    goto/16 :goto_38

    .line 1234
    .restart local v14       #disallowIntercept:Z
    :cond_d6
    const/16 v19, 0x0

    .restart local v19       #intercepted:Z
    goto/16 :goto_44

    .line 1239
    .end local v14           #disallowIntercept:Z
    .end local v19           #intercepted:Z
    :cond_da
    const/16 v19, 0x1

    .restart local v19       #intercepted:Z
    goto/16 :goto_44

    .line 1243
    :cond_de
    const/16 v27, 0x0

    move/from16 v10, v27

    goto/16 :goto_59

    .line 1247
    .restart local v10       #canceled:Z
    :cond_e4
    const/16 v27, 0x0

    move/from16 v23, v27

    goto :goto_69

    .line 1255
    .restart local v6       #actionIndex:I
    .restart local v8       #alreadyDispatchedToNewTouchTarget:Z
    .restart local v20       #newTouchTarget:Landroid/view/ViewGroup$TouchTarget;
    .restart local v23       #split:Z
    :cond_e9
    const/16 v27, -0x1

    move/from16 v17, v27

    goto :goto_95

    .line 1277
    .restart local v11       #child:Landroid/view/View;
    .restart local v12       #children:[Landroid/view/View;
    .restart local v13       #childrenCount:I
    .restart local v16       #i:I
    .restart local v17       #idBitsToAssign:I
    .restart local v25       #x:F
    .restart local v26       #y:F
    :cond_ee
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v26

    move-object v3, v11

    move-object/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v27

    if-eqz v27, :cond_cd

    .line 1282
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->getTouchTarget(Landroid/view/View;)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v20

    .line 1283
    if-eqz v20, :cond_135

    .line 1286
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    or-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1304
    .end local v11           #child:Landroid/view/View;
    .end local v12           #children:[Landroid/view/View;
    .end local v16           #i:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_116
    :goto_116
    if-nez v20, :cond_189

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_189

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    .line 1308
    :goto_126
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17b

    .line 1309
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v20, v0

    goto :goto_126

    .line 1290
    .restart local v11       #child:Landroid/view/View;
    .restart local v12       #children:[Landroid/view/View;
    .restart local v16       #i:I
    .restart local v25       #x:F
    .restart local v26       #y:F
    :cond_135
    move-object/from16 v0, p0

    move-object v1, v11

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    .line 1291
    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v27

    move-object v3, v11

    move/from16 v4, v17

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v27

    if-eqz v27, :cond_cd

    .line 1293
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ViewGroup;->mLastTouchDownTime:J

    .line 1294
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownIndex:I

    .line 1295
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownX:F

    .line 1296
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v27

    move/from16 v0, v27

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mLastTouchDownY:F

    .line 1297
    move-object/from16 v0, p0

    move-object v1, v11

    move/from16 v2, v17

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup;->addTouchTarget(Landroid/view/View;I)Landroid/view/ViewGroup$TouchTarget;

    move-result-object v20

    .line 1298
    const/4 v8, 0x1

    .line 1299
    goto :goto_116

    .line 1311
    .end local v11           #child:Landroid/view/View;
    .end local v12           #children:[Landroid/view/View;
    .end local v16           #i:I
    .end local v25           #x:F
    .end local v26           #y:F
    :cond_17b
    move-object/from16 v0, v20

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v27, v0

    or-int v27, v27, v17

    move/from16 v0, v27

    move-object/from16 v1, v20

    iput v0, v1, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    .line 1317
    .end local v6           #actionIndex:I
    .end local v13           #childrenCount:I
    .end local v17           #idBitsToAssign:I
    :cond_189
    const/4 v15, 0x0

    .line 1318
    .local v15, handled:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v27, v0

    if-nez v27, :cond_1ba

    .line 1320
    const/16 v27, 0x0

    const/16 v28, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v10

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v15

    .line 1354
    :cond_1a3
    if-nez v10, :cond_1b3

    const/16 v27, 0x1

    move v0, v7

    move/from16 v1, v27

    if-eq v0, v1, :cond_1b3

    const/16 v27, 0x7

    move v0, v7

    move/from16 v1, v27

    if-ne v0, v1, :cond_226

    .line 1357
    :cond_1b3
    invoke-direct/range {p0 .. p0}, Landroid/view/ViewGroup;->resetTouchState()V

    :cond_1b6
    :goto_1b6
    move/from16 v27, v15

    .line 1364
    goto/16 :goto_8

    .line 1325
    :cond_1ba
    const/16 v22, 0x0

    .line 1326
    .local v22, predecessor:Landroid/view/ViewGroup$TouchTarget;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v24, v0

    .line 1327
    .local v24, target:Landroid/view/ViewGroup$TouchTarget;
    :goto_1c2
    if-eqz v24, :cond_1a3

    .line 1328
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    move-object/from16 v21, v0

    .line 1329
    .local v21, next:Landroid/view/ViewGroup$TouchTarget;
    if-eqz v8, :cond_1d8

    move-object/from16 v0, v24

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_1d8

    .line 1330
    const/4 v15, 0x1

    .line 1348
    :cond_1d3
    move-object/from16 v22, v24

    .line 1349
    move-object/from16 v24, v21

    .line 1350
    goto :goto_1c2

    .line 1332
    :cond_1d8
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->resetCancelNextUpFlag(Landroid/view/View;)Z

    move-result v27

    if-nez v27, :cond_1ea

    if-eqz v19, :cond_21a

    :cond_1ea
    const/16 v27, 0x1

    move/from16 v9, v27

    .line 1333
    .local v9, cancelChild:Z
    :goto_1ee
    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/view/ViewGroup$TouchTarget;->child:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/view/ViewGroup$TouchTarget;->pointerIdBits:I

    move/from16 v28, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v9

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->dispatchTransformedTouchEvent(Landroid/view/MotionEvent;ZLandroid/view/View;I)Z

    move-result v27

    if-eqz v27, :cond_20a

    .line 1335
    const/4 v15, 0x1

    .line 1337
    :cond_20a
    if-eqz v9, :cond_1d3

    .line 1338
    if-nez v22, :cond_21f

    .line 1339
    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mFirstTouchTarget:Landroid/view/ViewGroup$TouchTarget;

    .line 1343
    :goto_214
    invoke-virtual/range {v24 .. v24}, Landroid/view/ViewGroup$TouchTarget;->recycle()V

    .line 1344
    move-object/from16 v24, v21

    .line 1345
    goto :goto_1c2

    .line 1332
    .end local v9           #cancelChild:Z
    :cond_21a
    const/16 v27, 0x0

    move/from16 v9, v27

    goto :goto_1ee

    .line 1341
    .restart local v9       #cancelChild:Z
    :cond_21f
    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/view/ViewGroup$TouchTarget;->next:Landroid/view/ViewGroup$TouchTarget;

    goto :goto_214

    .line 1358
    .end local v9           #cancelChild:Z
    .end local v21           #next:Landroid/view/ViewGroup$TouchTarget;
    .end local v22           #predecessor:Landroid/view/ViewGroup$TouchTarget;
    .end local v24           #target:Landroid/view/ViewGroup$TouchTarget;
    :cond_226
    if-eqz v23, :cond_1b6

    const/16 v27, 0x6

    move v0, v7

    move/from16 v1, v27

    if-ne v0, v1, :cond_1b6

    .line 1359
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v6

    .line 1360
    .restart local v6       #actionIndex:I
    const/16 v27, 0x1

    move-object/from16 v0, p1

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v28

    shl-int v18, v27, v28

    .line 1361
    .local v18, idBitsToRemove:I
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/view/ViewGroup;->removePointersFromTouchTargets(I)V

    goto/16 :goto_1b6
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .registers 4
    .parameter "event"

    .prologue
    .line 1135
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x12

    const/16 v1, 0x12

    if-ne v0, v1, :cond_d

    .line 1136
    invoke-super {p0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1140
    :goto_c
    return v0

    .line 1137
    :cond_d
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_22

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_22

    .line 1138
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_c

    .line 1140
    :cond_22
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 588
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0, p1, p2}, Landroid/view/View;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected dispatchVisibilityChanged(Landroid/view/View;I)V
    .registers 7
    .parameter "changedView"
    .parameter "visibility"

    .prologue
    .line 829
    invoke-super {p0, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 830
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 831
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 832
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 833
    aget-object v3, v0, v2

    invoke-virtual {v3, p1, p2}, Landroid/view/View;->dispatchVisibilityChanged(Landroid/view/View;I)V

    .line 832
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 835
    :cond_12
    return-void
.end method

.method public dispatchWindowFocusChanged(Z)V
    .registers 6
    .parameter "hasFocus"

    .prologue
    .line 752
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 753
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 754
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 755
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 756
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 755
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 758
    :cond_12
    return-void
.end method

.method public dispatchWindowVisibilityChanged(I)V
    .registers 6
    .parameter "visibility"

    .prologue
    .line 842
    invoke-super {p0, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 843
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 844
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 845
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 846
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchWindowVisibilityChanged(I)V

    .line 845
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 848
    :cond_12
    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .registers 67
    .parameter "canvas"
    .parameter "child"
    .parameter "drawingTime"

    .prologue
    .line 2314
    const/16 v47, 0x0

    .line 2316
    .local v47, more:Z
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v32, v0

    .line 2317
    .local v32, cl:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v35, v0

    .line 2318
    .local v35, ct:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mRight:I

    move/from16 v34, v0

    .line 2319
    .local v34, cr:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mBottom:I

    move/from16 v30, v0

    .line 2321
    .local v30, cb:I
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v31

    .line 2323
    .local v31, childHasIdentityMatrix:Z
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move/from16 v37, v0

    .line 2325
    .local v37, flags:I
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x100

    move v6, v0

    const/16 v7, 0x100

    if-ne v6, v7, :cond_41

    .line 2326
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->clear()V

    .line 2327
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x101

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2330
    :cond_41
    const/16 v60, 0x0

    .line 2332
    .local v60, transformToApply:Landroid/view/animation/Transformation;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v5

    .line 2333
    .local v5, a:Landroid/view/animation/Animation;
    const/16 v33, 0x0

    .line 2335
    .local v33, concatMatrix:Z
    const/16 v51, 0x0

    .line 2337
    .local v51, scalingRequired:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ViewGroup;->mDrawLayers:Z

    move v6, v0

    if-eqz v6, :cond_14a

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getLayerType()I

    move-result v6

    move/from16 v45, v6

    .line 2339
    .local v45, layerType:I
    :goto_58
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v38

    .line 2340
    .local v38, hardwareAccelerated:Z
    const v6, 0x8000

    and-int v6, v6, v37

    const v7, 0x8000

    if-eq v6, v7, :cond_6f

    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x4000

    move v6, v0

    const/16 v7, 0x4000

    if-ne v6, v7, :cond_14f

    .line 2342
    :cond_6f
    const/16 v29, 0x1

    .line 2343
    .local v29, caching:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    if-eqz v6, :cond_82

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    move-object v0, v6

    iget-boolean v0, v0, Landroid/view/View$AttachInfo;->mScalingRequired:Z

    move/from16 v51, v0

    .line 2348
    :cond_82
    :goto_82
    if-eqz v5, :cond_1d4

    .line 2349
    invoke-virtual {v5}, Landroid/view/animation/Animation;->isInitialized()Z

    move-result v42

    .line 2350
    .local v42, initialized:Z
    if-nez v42, :cond_a5

    .line 2351
    sub-int v6, v34, v32

    sub-int v7, v30, v35

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 2352
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/view/animation/Animation;->initializeInvalidateRegion(IIII)V

    .line 2353
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->onAnimationStart()V

    .line 2356
    :cond_a5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-eqz v51, :cond_15c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    :goto_b3
    move-object v0, v5

    move-wide/from16 v1, p3

    move-object v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    move-result v47

    .line 2358
    if-eqz v51, :cond_160

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v6, v0

    iget v6, v6, Landroid/view/View$AttachInfo;->mApplicationScale:F

    const/high16 v7, 0x3f80

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_160

    .line 2359
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    if-nez v6, :cond_dc

    .line 2360
    new-instance v6, Landroid/view/animation/Transformation;

    invoke-direct {v6}, Landroid/view/animation/Transformation;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    .line 2362
    :cond_dc
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidationTransformation:Landroid/view/animation/Transformation;

    move-object v11, v0

    .line 2363
    .local v11, invalidationTransform:Landroid/view/animation/Transformation;
    const/high16 v6, 0x3f80

    move-object v0, v5

    move-wide/from16 v1, p3

    move-object v3, v11

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;F)Z

    .line 2367
    :goto_eb
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object/from16 v60, v0

    .line 2369
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeTransformationMatrix()Z

    move-result v33

    .line 2371
    if-eqz v47, :cond_112

    .line 2372
    invoke-virtual {v5}, Landroid/view/animation/Animation;->willChangeBounds()Z

    move-result v6

    if-nez v6, :cond_184

    .line 2373
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x90

    move v6, v0

    const/16 v7, 0x80

    if-ne v6, v7, :cond_166

    .line 2375
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x4

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2409
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    :cond_112
    :goto_112
    if-nez v31, :cond_217

    const/4 v6, 0x1

    :goto_115
    or-int v33, v33, v6

    .line 2413
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x20

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2415
    if-nez v33, :cond_21a

    move/from16 v0, v32

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move v14, v0

    move/from16 v0, v34

    int-to-float v0, v0

    move v15, v0

    move/from16 v0, v30

    int-to-float v0, v0

    move/from16 v16, v0

    sget-object v17, Landroid/graphics/Canvas$EdgeType;->BW:Landroid/graphics/Canvas$EdgeType;

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->quickReject(FFFFLandroid/graphics/Canvas$EdgeType;)Z

    move-result v6

    if-eqz v6, :cond_21a

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit8 v6, v6, 0x40

    if-nez v6, :cond_21a

    .line 2633
    .end local p3
    :cond_149
    :goto_149
    return v47

    .line 2337
    .end local v29           #caching:Z
    .end local v38           #hardwareAccelerated:Z
    .end local v45           #layerType:I
    .restart local p3
    :cond_14a
    const/4 v6, 0x0

    move/from16 v45, v6

    goto/16 :goto_58

    .line 2345
    .restart local v38       #hardwareAccelerated:Z
    .restart local v45       #layerType:I
    :cond_14f
    if-nez v45, :cond_153

    if-eqz v38, :cond_158

    :cond_153
    const/4 v6, 0x1

    move/from16 v29, v6

    .restart local v29       #caching:Z
    :goto_156
    goto/16 :goto_82

    .end local v29           #caching:Z
    :cond_158
    const/4 v6, 0x0

    move/from16 v29, v6

    goto :goto_156

    .line 2356
    .restart local v29       #caching:Z
    .restart local v42       #initialized:Z
    :cond_15c
    const/high16 v7, 0x3f80

    goto/16 :goto_b3

    .line 2365
    :cond_160
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v11, v0

    .restart local v11       #invalidationTransform:Landroid/view/animation/Transformation;
    goto :goto_eb

    .line 2376
    :cond_166
    and-int/lit8 v6, v37, 0x4

    if-nez v6, :cond_112

    .line 2379
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2380
    move-object/from16 v0, p0

    move/from16 v1, v32

    move/from16 v2, v35

    move/from16 v3, v34

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto :goto_112

    .line 2383
    :cond_184
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v6, v0

    if-nez v6, :cond_195

    .line 2384
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    move-object v0, v6

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    .line 2386
    :cond_195
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mInvalidateRegion:Landroid/graphics/RectF;

    move-object v10, v0

    .line 2387
    .local v10, region:Landroid/graphics/RectF;
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    invoke-virtual/range {v5 .. v11}, Landroid/view/animation/Animation;->getInvalidateRegion(IIIILandroid/graphics/RectF;Landroid/view/animation/Transformation;)V

    .line 2391
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move v6, v0

    or-int/lit8 v6, v6, 0x40

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 2393
    iget v6, v10, Landroid/graphics/RectF;->left:F

    float-to-int v6, v6

    add-int v46, v32, v6

    .line 2394
    .local v46, left:I
    iget v6, v10, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    add-int v56, v35, v6

    .line 2395
    .local v56, top:I
    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v6

    float-to-int v6, v6

    add-int v6, v6, v46

    invoke-virtual {v10}, Landroid/graphics/RectF;->height()F

    move-result v7

    float-to-int v7, v7

    add-int v7, v7, v56

    move-object/from16 v0, p0

    move/from16 v1, v46

    move/from16 v2, v56

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/ViewGroup;->invalidate(IIII)V

    goto/16 :goto_112

    .line 2398
    .end local v10           #region:Landroid/graphics/RectF;
    .end local v11           #invalidationTransform:Landroid/view/animation/Transformation;
    .end local v42           #initialized:Z
    .end local v46           #left:I
    .end local v56           #top:I
    :cond_1d4
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x800

    move v6, v0

    const/16 v7, 0x800

    if-ne v6, v7, :cond_112

    .line 2400
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z

    move-result v41

    .line 2401
    .local v41, hasTransform:Z
    if-eqz v41, :cond_112

    .line 2402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/view/animation/Transformation;->getTransformationType()I

    move-result v61

    .line 2403
    .local v61, transformType:I
    sget v6, Landroid/view/animation/Transformation;->TYPE_IDENTITY:I

    move/from16 v0, v61

    move v1, v6

    if-eq v0, v1, :cond_20f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mChildTransformation:Landroid/view/animation/Transformation;

    move-object v6, v0

    move-object/from16 v60, v6

    .line 2405
    :goto_204
    sget v6, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    and-int v6, v6, v61

    if-eqz v6, :cond_213

    const/4 v6, 0x1

    move/from16 v33, v6

    :goto_20d
    goto/16 :goto_112

    .line 2403
    :cond_20f
    const/4 v6, 0x0

    move-object/from16 v60, v6

    goto :goto_204

    .line 2405
    :cond_213
    const/4 v6, 0x0

    move/from16 v33, v6

    goto :goto_20d

    .line 2409
    .end local v41           #hasTransform:Z
    .end local v61           #transformType:I
    :cond_217
    const/4 v6, 0x0

    goto/16 :goto_115

    .line 2420
    :cond_21a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getAlpha()F

    move-result v26

    .line 2422
    .local v26, alpha:F
    const v6, 0x3caaaaab

    cmpg-float v6, v26, v6

    if-gtz v6, :cond_236

    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    if-nez v6, :cond_236

    move-object/from16 v0, p2

    instance-of v0, v0, Landroid/view/SurfaceView;

    move v6, v0

    if-eqz v6, :cond_149

    .line 2427
    :cond_236
    if-eqz v38, :cond_258

    .line 2430
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, -0x8000

    and-int/2addr v6, v7

    const/high16 v7, -0x8000

    if-ne v6, v7, :cond_467

    const/4 v6, 0x1

    :goto_245
    move v0, v6

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    .line 2431
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, 0x7fffffff

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2434
    :cond_258
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->computeScroll()V

    .line 2436
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollX:I

    move/from16 v54, v0

    .line 2437
    .local v54, sx:I
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mScrollY:I

    move/from16 v55, v0

    .line 2439
    .local v55, sy:I
    const/16 v36, 0x0

    .line 2440
    .local v36, displayList:Landroid/view/DisplayList;
    const/16 v27, 0x0

    .line 2441
    .local v27, cache:Landroid/graphics/Bitmap;
    const/16 v39, 0x0

    .line 2442
    .local v39, hasDisplayList:Z
    if-eqz v29, :cond_284

    .line 2443
    if-nez v38, :cond_46a

    .line 2444
    if-eqz v45, :cond_27c

    .line 2445
    const/16 v45, 0x1

    .line 2446
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2448
    :cond_27c
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2464
    :cond_284
    :goto_284
    if-eqz v27, :cond_288

    if-eqz v39, :cond_486

    :cond_288
    const/4 v6, 0x1

    move/from16 v40, v6

    .line 2465
    .local v40, hasNoCache:Z
    :goto_28b
    if-nez v27, :cond_48b

    if-nez v39, :cond_48b

    const/4 v6, 0x2

    move/from16 v0, v45

    move v1, v6

    if-eq v0, v1, :cond_48b

    const/4 v6, 0x1

    move/from16 v48, v6

    .line 2468
    .local v48, offsetForScroll:Z
    :goto_298
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v49

    .line 2469
    .local v49, restoreTo:I
    if-eqz v48, :cond_490

    .line 2470
    sub-int v6, v32, v54

    int-to-float v6, v6

    sub-int v7, v35, v55

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2480
    :cond_2ab
    :goto_2ab
    if-nez v60, :cond_2b9

    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-ltz v6, :cond_2b9

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v6

    if-nez v6, :cond_4ce

    .line 2481
    :cond_2b9
    if-nez v60, :cond_2bd

    if-nez v31, :cond_34f

    .line 2482
    :cond_2bd
    const/16 v57, 0x0

    .line 2483
    .local v57, transX:I
    const/16 v58, 0x0

    .line 2485
    .local v58, transY:I
    if-eqz v48, :cond_2cd

    .line 2486
    move/from16 v0, v54

    neg-int v0, v0

    move/from16 v57, v0

    .line 2487
    move/from16 v0, v55

    neg-int v0, v0

    move/from16 v58, v0

    .line 2490
    :cond_2cd
    if-eqz v60, :cond_323

    .line 2491
    if-eqz v33, :cond_307

    .line 2494
    move/from16 v0, v57

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2495
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2496
    move/from16 v0, v57

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v58

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2497
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2500
    :cond_307
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v59

    .line 2501
    .local v59, transformAlpha:F
    const/high16 v6, 0x3f80

    cmpg-float v6, v59, v6

    if-gez v6, :cond_323

    .line 2502
    invoke-virtual/range {v60 .. v60}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v6

    mul-float v26, v26, v6

    .line 2503
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2507
    .end local v59           #transformAlpha:F
    :cond_323
    if-nez v31, :cond_34f

    .line 2508
    move/from16 v0, v57

    neg-int v0, v0

    move v6, v0

    int-to-float v6, v6

    move/from16 v0, v58

    neg-int v0, v0

    move v7, v0

    int-to-float v7, v7

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2509
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    move-object/from16 v0, p1

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 2510
    move/from16 v0, v57

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v58

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2514
    .end local v57           #transX:I
    .end local v58           #transY:I
    :cond_34f
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_3a6

    .line 2515
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x100

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2516
    if-eqz v40, :cond_3a6

    .line 2517
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    move v0, v6

    float-to-int v0, v0

    move/from16 v17, v0

    .line 2518
    .local v17, multipliedAlpha:I
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    move-result v6

    if-nez v6, :cond_4bf

    .line 2519
    const/16 v18, 0x4

    .line 2520
    .local v18, layerFlags:I
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-eq v6, v7, :cond_37e

    if-eqz v45, :cond_380

    .line 2522
    :cond_37e
    or-int/lit8 v18, v18, 0x10

    .line 2524
    :cond_380
    if-nez v45, :cond_3a6

    .line 2525
    if-eqz v39, :cond_4b7

    const/4 v6, 0x0

    move/from16 v52, v6

    .line 2526
    .local v52, scrollX:I
    :goto_387
    if-eqz v39, :cond_4bb

    const/4 v6, 0x0

    move/from16 v53, v6

    .line 2527
    .local v53, scrollY:I
    :goto_38c
    move/from16 v0, v52

    int-to-float v0, v0

    move v13, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move v14, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    int-to-float v15, v6

    add-int v6, v53, v30

    sub-int v6, v6, v35

    move v0, v6

    int-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 2541
    .end local v17           #multipliedAlpha:I
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_3a6
    :goto_3a6
    and-int/lit8 v6, v37, 0x1

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3c0

    .line 2542
    if-eqz v48, :cond_4f2

    .line 2543
    sub-int v6, v34, v32

    add-int v6, v6, v54

    sub-int v7, v30, v35

    add-int v7, v7, v55

    move-object/from16 v0, p1

    move/from16 v1, v54

    move/from16 v2, v55

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 2553
    :cond_3c0
    :goto_3c0
    if-eqz v39, :cond_3c6

    .line 2554
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getDisplayList()Landroid/view/DisplayList;

    move-result-object v36

    .line 2557
    :cond_3c6
    if-eqz v40, :cond_583

    .line 2558
    const/16 v44, 0x0

    .line 2559
    .local v44, layerRendered:Z
    const/4 v6, 0x2

    move/from16 v0, v45

    move v1, v6

    if-ne v0, v1, :cond_402

    .line 2560
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHardwareLayer()Landroid/view/HardwareLayer;

    move-result-object v43

    .line 2561
    .local v43, layer:Landroid/view/HardwareLayer;
    if-eqz v43, :cond_51c

    invoke-virtual/range {v43 .. v43}, Landroid/view/HardwareLayer;->isValid()Z

    move-result v6

    if-eqz v6, :cond_51c

    .line 2562
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object v6, v0

    const/high16 v7, 0x437f

    mul-float v7, v7, v26

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2563
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/HardwareCanvas;

    move-object/from16 p3, v0

    .end local p3
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object v8, v0

    move-object/from16 v0, p3

    move-object/from16 v1, v43

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/HardwareCanvas;->drawHardwareLayer(Landroid/view/HardwareLayer;FFLandroid/graphics/Paint;)V

    .line 2564
    const/16 v44, 0x1

    .line 2574
    .end local v43           #layer:Landroid/view/HardwareLayer;
    :cond_402
    :goto_402
    if-nez v44, :cond_426

    .line 2575
    if-nez v39, :cond_55e

    .line 2577
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    and-int/lit16 v6, v6, 0x80

    const/16 v7, 0x80

    if-ne v6, v7, :cond_555

    .line 2581
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x600001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2582
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2611
    .end local v44           #layerRendered:Z
    :cond_426
    :goto_426
    move-object/from16 v0, p1

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 2613
    if-eqz v5, :cond_449

    if-nez v47, :cond_449

    .line 2614
    if-nez v38, :cond_441

    invoke-virtual {v5}, Landroid/view/animation/Animation;->getFillAfter()Z

    move-result v6

    if-nez v6, :cond_441

    .line 2615
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    .line 2617
    :cond_441
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup;->finishAnimatingView(Landroid/view/View;Landroid/view/animation/Animation;)V

    .line 2620
    :cond_449
    if-eqz v47, :cond_45f

    if-eqz v38, :cond_45f

    .line 2624
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2625
    instance-of v6, v5, Landroid/view/animation/AlphaAnimation;

    if-eqz v6, :cond_45f

    .line 2627
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->invalidate(Z)V

    .line 2631
    :cond_45f
    const/4 v6, 0x0

    move v0, v6

    move-object/from16 v1, p2

    iput-boolean v0, v1, Landroid/view/View;->mRecreateDisplayList:Z

    goto/16 :goto_149

    .line 2430
    .end local v27           #cache:Landroid/graphics/Bitmap;
    .end local v36           #displayList:Landroid/view/DisplayList;
    .end local v39           #hasDisplayList:Z
    .end local v40           #hasNoCache:Z
    .end local v48           #offsetForScroll:Z
    .end local v49           #restoreTo:I
    .end local v54           #sx:I
    .end local v55           #sy:I
    .restart local p3
    :cond_467
    const/4 v6, 0x0

    goto/16 :goto_245

    .line 2450
    .restart local v27       #cache:Landroid/graphics/Bitmap;
    .restart local v36       #displayList:Landroid/view/DisplayList;
    .restart local v39       #hasDisplayList:Z
    .restart local v54       #sx:I
    .restart local v55       #sy:I
    :cond_46a
    packed-switch v45, :pswitch_data_5f8

    goto/16 :goto_284

    .line 2458
    :pswitch_46f
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->canHaveDisplayList()Z

    move-result v39

    goto/16 :goto_284

    .line 2452
    :pswitch_475
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2453
    const/4 v6, 0x1

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v27

    .line 2454
    goto/16 :goto_284

    .line 2464
    :cond_486
    const/4 v6, 0x0

    move/from16 v40, v6

    goto/16 :goto_28b

    .line 2465
    .restart local v40       #hasNoCache:Z
    :cond_48b
    const/4 v6, 0x0

    move/from16 v48, v6

    goto/16 :goto_298

    .line 2472
    .restart local v48       #offsetForScroll:Z
    .restart local v49       #restoreTo:I
    :cond_490
    move/from16 v0, v32

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v35

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 2473
    if-eqz v51, :cond_2ab

    .line 2475
    const/high16 v6, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v7, v0

    iget v7, v7, Landroid/view/View$AttachInfo;->mApplicationScale:F

    div-float v50, v6, v7

    .line 2476
    .local v50, scale:F
    move-object/from16 v0, p1

    move/from16 v1, v50

    move/from16 v2, v50

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    goto/16 :goto_2ab

    .end local v50           #scale:F
    .restart local v17       #multipliedAlpha:I
    .restart local v18       #layerFlags:I
    :cond_4b7
    move/from16 v52, v54

    .line 2525
    goto/16 :goto_387

    .restart local v52       #scrollX:I
    :cond_4bb
    move/from16 v53, v55

    .line 2526
    goto/16 :goto_38c

    .line 2532
    .end local v18           #layerFlags:I
    .end local v52           #scrollX:I
    :cond_4bf
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    or-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_3a6

    .line 2536
    .end local v17           #multipliedAlpha:I
    :cond_4ce
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const/high16 v7, 0x4

    and-int/2addr v6, v7

    const/high16 v7, 0x4

    if-ne v6, v7, :cond_3a6

    .line 2537
    const/16 v6, 0xff

    move-object/from16 v0, p2

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/view/View;->onSetAlpha(I)Z

    .line 2538
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x40001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    goto/16 :goto_3a6

    .line 2545
    :cond_4f2
    if-eqz v51, :cond_4f6

    if-nez v27, :cond_507

    .line 2546
    :cond_4f6
    const/4 v6, 0x0

    const/4 v7, 0x0

    sub-int v8, v34, v32

    sub-int v9, v30, v35

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_3c0

    .line 2548
    :cond_507
    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    goto/16 :goto_3c0

    .line 2566
    .restart local v43       #layer:Landroid/view/HardwareLayer;
    .restart local v44       #layerRendered:Z
    :cond_51c
    if-eqz v39, :cond_54f

    const/4 v6, 0x0

    move/from16 v52, v6

    .line 2567
    .restart local v52       #scrollX:I
    :goto_521
    if-eqz v39, :cond_552

    const/4 v6, 0x0

    move/from16 v53, v6

    .line 2568
    .restart local v53       #scrollY:I
    :goto_526
    move/from16 v0, v52

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v53

    int-to-float v0, v0

    move/from16 v21, v0

    add-int v6, v52, v34

    sub-int v6, v6, v32

    move v0, v6

    int-to-float v0, v0

    move/from16 v22, v0

    add-int v6, v53, v30

    sub-int v6, v6, v35

    move v0, v6

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    const/16 v25, 0x14

    move-object/from16 v19, p1

    invoke-virtual/range {v19 .. v25}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    goto/16 :goto_402

    .end local v52           #scrollX:I
    .end local v53           #scrollY:I
    :cond_54f
    move/from16 v52, v54

    .line 2566
    goto :goto_521

    .restart local v52       #scrollX:I
    :cond_552
    move/from16 v53, v55

    .line 2567
    goto :goto_526

    .line 2584
    .end local v43           #layer:Landroid/view/HardwareLayer;
    .end local v52           #scrollX:I
    .end local p3
    :cond_555
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_426

    .line 2587
    :cond_55e
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x600001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2588
    move-object/from16 v0, p1

    check-cast v0, Landroid/view/HardwareCanvas;

    move-object/from16 p3, v0

    sub-int v6, v34, v32

    sub-int v7, v30, v35

    const/4 v8, 0x0

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/HardwareCanvas;->drawDisplayList(Landroid/view/DisplayList;IILandroid/graphics/Rect;)Z

    goto/16 :goto_426

    .line 2591
    .end local v44           #layerRendered:Z
    .restart local p3
    :cond_583
    if-eqz v27, :cond_426

    .line 2592
    move-object/from16 v0, p2

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move v6, v0

    const v7, -0x600001

    and-int/2addr v6, v7

    move v0, v6

    move-object/from16 v1, p2

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 2595
    if-nez v45, :cond_5e5

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mCachePaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 2597
    .local v28, cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x3f80

    cmpg-float v6, v26, v6

    if-gez v6, :cond_5c7

    .line 2598
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2599
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    or-int/lit16 v6, v6, 0x1000

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2608
    :cond_5b8
    :goto_5b8
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    move v2, v6

    move v3, v7

    move-object/from16 v4, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_426

    .line 2600
    :cond_5c7
    move/from16 v0, v37

    and-int/lit16 v0, v0, 0x1000

    move v6, v0

    const/16 v7, 0x1000

    if-ne v6, v7, :cond_5b8

    .line 2601
    const/16 v6, 0xff

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 2602
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mGroupFlags:I

    move v6, v0

    and-int/lit16 v6, v6, -0x1001

    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_5b8

    .line 2605
    .end local v28           #cachePaint:Landroid/graphics/Paint;
    :cond_5e5
    move-object/from16 v0, p2

    iget-object v0, v0, Landroid/view/View;->mLayerPaint:Landroid/graphics/Paint;

    move-object/from16 v28, v0

    .line 2606
    .restart local v28       #cachePaint:Landroid/graphics/Paint;
    const/high16 v6, 0x437f

    mul-float v6, v6, v26

    float-to-int v6, v6

    move-object/from16 v0, v28

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_5b8

    .line 2450
    nop

    :pswitch_data_5f8
    .packed-switch 0x0
        :pswitch_46f
        :pswitch_475
    .end packed-switch
.end method

.method protected drawableStateChanged()V
    .registers 7

    .prologue
    .line 4648
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    .line 4650
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v5, 0x1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2e

    .line 4651
    iget v4, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v4, v4, 0x2000

    if-eqz v4, :cond_18

    .line 4652
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "addStateFromChildren cannot be enabled if a child has duplicateParentState set to true"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 4656
    :cond_18
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4657
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4659
    .local v2, count:I
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1d
    if-ge v3, v2, :cond_2e

    .line 4660
    aget-object v0, v1, v3

    .line 4661
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    const/high16 v5, 0x40

    and-int/2addr v4, v5

    if-eqz v4, :cond_2b

    .line 4662
    invoke-virtual {v0}, Landroid/view/View;->refreshDrawableState()V

    .line 4659
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 4666
    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v3           #i:I
    :cond_2e
    return-void
.end method

.method public endViewTransition(Landroid/view/View;)V
    .registers 4
    .parameter "view"

    .prologue
    .line 4535
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_2d

    .line 4536
    iget-object v1, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4537
    iget-object v0, p0, Landroid/view/ViewGroup;->mDisappearingChildren:Ljava/util/ArrayList;

    .line 4538
    .local v0, disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v0, :cond_2d

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4539
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4540
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-eqz v1, :cond_2e

    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 4542
    iget-object v1, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4551
    :cond_27
    :goto_27
    iget v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4554
    .end local v0           #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2d
    return-void

    .line 4544
    .restart local v0       #disappearingChildren:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_2e
    iget-object v1, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_35

    .line 4545
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    .line 4547
    :cond_35
    iget-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eqz v1, :cond_27

    .line 4548
    const/4 v1, 0x0

    iput-object v1, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_27
.end method

.method public findFocus()Landroid/view/View;
    .registers 2

    .prologue
    .line 667
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_8

    move-object v0, p0

    .line 674
    :goto_7
    return-object v0

    .line 671
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_13

    .line 672
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v0

    goto :goto_7

    .line 674
    :cond_13
    const/4 v0, 0x0

    goto :goto_7
.end method

.method findFrontmostDroppableChildAt(FFLandroid/graphics/PointF;)Landroid/view/View;
    .registers 9
    .parameter "x"
    .parameter "y"
    .parameter "outLocalPoint"

    .prologue
    .line 1052
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1053
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1054
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x1

    sub-int v3, v2, v4

    .local v3, i:I
    :goto_7
    if-ltz v3, :cond_1a

    .line 1055
    aget-object v0, v1, v3

    .line 1056
    .local v0, child:Landroid/view/View;
    iget-boolean v4, v0, Landroid/view/View;->mCanAcceptDrop:Z

    if-nez v4, :cond_12

    .line 1054
    :cond_f
    add-int/lit8 v3, v3, -0x1

    goto :goto_7

    .line 1060
    :cond_12
    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/view/ViewGroup;->isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object v4, v0

    .line 1064
    .end local v0           #child:Landroid/view/View;
    :goto_19
    return-object v4

    :cond_1a
    const/4 v4, 0x0

    goto :goto_19
.end method

.method protected findViewByPredicateTraversal(Lcom/android/internal/util/Predicate;)Landroid/view/View;
    .registers 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Landroid/view/View;",
            ">;)",
            "Landroid/view/View;"
        }
    .end annotation

    .prologue
    .line 2806
    .local p1, predicate:Lcom/android/internal/util/Predicate;,"Lcom/android/internal/util/Predicate<Landroid/view/View;>;"
    invoke-interface {p1, p0}, Lcom/android/internal/util/Predicate;->apply(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object v4, p0

    .line 2825
    :goto_7
    return-object v4

    .line 2810
    :cond_8
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2811
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2813
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_d
    if-ge v0, v1, :cond_22

    .line 2814
    aget-object v2, v3, v0

    .line 2816
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1f

    .line 2817
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewByPredicate(Lcom/android/internal/util/Predicate;)Landroid/view/View;

    move-result-object v2

    .line 2819
    if-eqz v2, :cond_1f

    move-object v4, v2

    .line 2820
    goto :goto_7

    .line 2813
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_d

    .line 2825
    .end local v2           #v:Landroid/view/View;
    :cond_22
    const/4 v4, 0x0

    goto :goto_7
.end method

.method protected findViewTraversal(I)Landroid/view/View;
    .registers 7
    .parameter "id"

    .prologue
    .line 2752
    iget v4, p0, Landroid/view/ViewGroup;->mID:I

    if-ne p1, v4, :cond_6

    move-object v4, p0

    .line 2771
    :goto_5
    return-object v4

    .line 2756
    :cond_6
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2757
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2759
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_b
    if-ge v0, v1, :cond_20

    .line 2760
    aget-object v2, v3, v0

    .line 2762
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_1d

    .line 2763
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 2765
    if-eqz v2, :cond_1d

    move-object v4, v2

    .line 2766
    goto :goto_5

    .line 2759
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 2771
    .end local v2           #v:Landroid/view/View;
    :cond_20
    const/4 v4, 0x0

    goto :goto_5
.end method

.method protected findViewWithTagTraversal(Ljava/lang/Object;)Landroid/view/View;
    .registers 7
    .parameter "tag"

    .prologue
    .line 2779
    if-eqz p1, :cond_c

    iget-object v4, p0, Landroid/view/ViewGroup;->mTag:Ljava/lang/Object;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object v4, p0

    .line 2798
    :goto_b
    return-object v4

    .line 2783
    :cond_c
    iget-object v3, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2784
    .local v3, where:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2786
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_11
    if-ge v0, v1, :cond_26

    .line 2787
    aget-object v2, v3, v0

    .line 2789
    .local v2, v:Landroid/view/View;
    iget v4, v2, Landroid/view/View;->mPrivateFlags:I

    and-int/lit8 v4, v4, 0x8

    if-nez v4, :cond_23

    .line 2790
    invoke-virtual {v2, p1}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v2

    .line 2792
    if-eqz v2, :cond_23

    move-object v4, v2

    .line 2793
    goto :goto_b

    .line 2786
    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 2798
    .end local v2           #v:Landroid/view/View;
    :cond_26
    const/4 v4, 0x0

    goto :goto_b
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .registers 7
    .parameter "insets"

    .prologue
    .line 4622
    invoke-super {p0, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 4623
    .local v2, done:Z
    if-nez v2, :cond_15

    .line 4624
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4625
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4626
    .local v0, children:[Landroid/view/View;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_b
    if-ge v3, v1, :cond_15

    .line 4627
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Landroid/view/View;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v2

    .line 4628
    if-eqz v2, :cond_16

    .line 4633
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v3           #i:I
    :cond_15
    return v2

    .line 4626
    .restart local v0       #children:[Landroid/view/View;
    .restart local v1       #count:I
    .restart local v3       #i:I
    :cond_16
    add-int/lit8 v3, v3, 0x1

    goto :goto_b
.end method

.method public focusSearch(Landroid/view/View;I)Landroid/view/View;
    .registers 4
    .parameter "focused"
    .parameter "direction"

    .prologue
    .line 565
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isRootNamespace()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 569
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    .line 573
    :goto_e
    return-object v0

    .line 570
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1a

    .line 571
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    goto :goto_e

    .line 573
    :cond_1a
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public focusableViewAvailable(Landroid/view/View;)V
    .registers 4
    .parameter "v"

    .prologue
    .line 526
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-eq v0, v1, :cond_1f

    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x4

    if-ne v0, v1, :cond_1f

    .line 538
    :cond_1a
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->focusableViewAvailable(Landroid/view/View;)V

    .line 540
    :cond_1f
    return-void
.end method

.method public gatherTransparentRegion(Landroid/graphics/Region;)Z
    .registers 11
    .parameter "region"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 4587
    iget v6, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit16 v6, v6, 0x200

    if-nez v6, :cond_f

    move v4, v7

    .line 4588
    .local v4, meOpaque:Z
    :goto_9
    if-eqz v4, :cond_11

    if-nez p1, :cond_11

    move v6, v7

    .line 4604
    :goto_e
    return v6

    .end local v4           #meOpaque:Z
    :cond_f
    move v4, v8

    .line 4587
    goto :goto_9

    .line 4592
    .restart local v4       #meOpaque:Z
    :cond_11
    invoke-super {p0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    .line 4593
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4594
    .local v1, children:[Landroid/view/View;
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4595
    .local v2, count:I
    const/4 v5, 0x1

    .line 4596
    .local v5, noneOfTheChildrenAreTransparent:Z
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1a
    if-ge v3, v2, :cond_34

    .line 4597
    aget-object v0, v1, v3

    .line 4598
    .local v0, child:Landroid/view/View;
    iget v6, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v6, v6, 0xc

    if-eqz v6, :cond_2a

    invoke-virtual {v0}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v6

    if-eqz v6, :cond_31

    .line 4599
    :cond_2a
    invoke-virtual {v0, p1}, Landroid/view/View;->gatherTransparentRegion(Landroid/graphics/Region;)Z

    move-result v6

    if-nez v6, :cond_31

    .line 4600
    const/4 v5, 0x0

    .line 4596
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 4604
    .end local v0           #child:Landroid/view/View;
    :cond_34
    if-nez v4, :cond_38

    if-eqz v5, :cond_3a

    :cond_38
    move v6, v7

    goto :goto_e

    :cond_3a
    move v6, v8

    goto :goto_e
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .registers 3

    .prologue
    const/4 v1, -0x2

    .line 4153
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .registers 4
    .parameter "attrs"

    .prologue
    .line 4124
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .registers 2
    .parameter "p"

    .prologue
    .line 4142
    return-object p1
.end method

.method public getChildAt(I)Landroid/view/View;
    .registers 3
    .parameter "index"

    .prologue
    .line 4278
    if-ltz p1, :cond_6

    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-lt p1, v0, :cond_8

    .line 4279
    :cond_6
    const/4 v0, 0x0

    .line 4281
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v0, p1

    goto :goto_7
.end method

.method public getChildCount()I
    .registers 2

    .prologue
    .line 4267
    iget v0, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    return v0
.end method

.method protected getChildDrawingOrder(II)I
    .registers 3
    .parameter "childCount"
    .parameter "i"

    .prologue
    .line 2253
    return p2
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .registers 4
    .parameter "child"
    .parameter "t"

    .prologue
    .line 2744
    const/4 v0, 0x0

    return v0
.end method

.method public getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z
    .registers 10
    .parameter "child"
    .parameter "r"
    .parameter "offset"

    .prologue
    const/4 v5, 0x0

    .line 3860
    iget v2, p1, Landroid/view/View;->mLeft:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int v0, v2, v3

    .line 3861
    .local v0, dx:I
    iget v2, p1, Landroid/view/View;->mTop:I

    iget v3, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int v1, v2, v3

    .line 3862
    .local v1, dy:I
    if-eqz p3, :cond_19

    .line 3863
    iget v2, p3, Landroid/graphics/Point;->x:I

    add-int/2addr v2, v0

    iput v2, p3, Landroid/graphics/Point;->x:I

    .line 3864
    iget v2, p3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v1

    iput v2, p3, Landroid/graphics/Point;->y:I

    .line 3866
    :cond_19
    invoke-virtual {p2, v0, v1}, Landroid/graphics/Rect;->offset(II)V

    .line 3867
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-eqz v2, :cond_3a

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v2, :cond_38

    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v2, p0, p2, p3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-eqz v2, :cond_3a

    :cond_38
    const/4 v2, 0x1

    :goto_39
    return v2

    :cond_3a
    move v2, v5

    goto :goto_39
.end method

.method public getDescendantFocusability()I
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "focus"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x20000
                to = "FOCUS_BEFORE_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x40000
                to = "FOCUS_AFTER_DESCENDANTS"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x60000
                to = "FOCUS_BLOCK_DESCENDANTS"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 458
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v0, v1

    return v0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 2

    .prologue
    .line 642
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    return-object v0
.end method

.method public getLayoutAnimation()Landroid/view/animation/LayoutAnimationController;
    .registers 2

    .prologue
    .line 3942
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    return-object v0
.end method

.method public getLayoutAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .registers 2

    .prologue
    .line 4643
    iget-object v0, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    return-object v0
.end method

.method public getLayoutTransition()Landroid/animation/LayoutTransition;
    .registers 2

    .prologue
    .line 3303
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    return-object v0
.end method

.method public getPersistentDrawingCache()I
    .registers 2
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x0
                to = "NONE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x1
                to = "ANIMATION"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x2
                to = "SCROLLING"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = 0x3
                to = "ALL"
            .end subannotation
        }
    .end annotation

    .prologue
    .line 4097
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    return v0
.end method

.method handleFocusGainInternal(ILandroid/graphics/Rect;)V
    .registers 4
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 488
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 489
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 490
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 492
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/view/View;->handleFocusGainInternal(ILandroid/graphics/Rect;)V

    .line 493
    return-void
.end method

.method public hasFocus()Z
    .registers 2

    .prologue
    .line 652
    iget v0, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_a

    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public hasFocusable()Z
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 682
    iget v5, p0, Landroid/view/ViewGroup;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-eqz v5, :cond_a

    move v5, v6

    .line 703
    :goto_9
    return v5

    .line 686
    :cond_a
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isFocusable()Z

    move-result v5

    if-eqz v5, :cond_12

    move v5, v7

    .line 687
    goto :goto_9

    .line 690
    :cond_12
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v3

    .line 691
    .local v3, descendantFocusability:I
    const/high16 v5, 0x6

    if-eq v3, v5, :cond_2e

    .line 692
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 693
    .local v2, count:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 695
    .local v1, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1f
    if-ge v4, v2, :cond_2e

    .line 696
    aget-object v0, v1, v4

    .line 697
    .local v0, child:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->hasFocusable()Z

    move-result v5

    if-eqz v5, :cond_2b

    move v5, v7

    .line 698
    goto :goto_9

    .line 695
    :cond_2b
    add-int/lit8 v4, v4, 0x1

    goto :goto_1f

    .end local v0           #child:Landroid/view/View;
    .end local v1           #children:[Landroid/view/View;
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_2e
    move v5, v6

    .line 703
    goto :goto_9
.end method

.method public indexOfChild(Landroid/view/View;)I
    .registers 6
    .parameter "child"

    .prologue
    .line 4250
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4251
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4252
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_10

    .line 4253
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_d

    move v3, v2

    .line 4257
    :goto_c
    return v3

    .line 4252
    :cond_d
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4257
    :cond_10
    const/4 v3, -0x1

    goto :goto_c
.end method

.method public final invalidateChild(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 24
    .parameter "child"
    .parameter "dirty"

    .prologue
    .line 3577
    move-object/from16 v14, p0

    .line 3579
    .local v14, parent:Landroid/view/ViewParent;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    move-object v5, v0

    .line 3580
    .local v5, attachInfo:Landroid/view/View$AttachInfo;
    if-eqz v5, :cond_a6

    .line 3584
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x40

    const/16 v17, 0x40

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_a7

    const/16 v16, 0x1

    move/from16 v8, v16

    .line 3586
    .local v8, drawAnimation:Z
    :goto_1d
    if-nez p2, :cond_128

    .line 3587
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v16, v0

    if-eqz v16, :cond_51

    .line 3588
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v16, v0

    const/high16 v17, -0x8000

    or-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3589
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v16, v0

    const v17, -0x8001

    and-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3590
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->setEmpty()V

    .line 3593
    :cond_51
    const/4 v15, 0x0

    .line 3594
    .local v15, view:Landroid/view/View;
    move-object v0, v14

    instance-of v0, v0, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_ad

    .line 3595
    move-object v0, v14

    check-cast v0, Landroid/view/View;

    move-object v15, v0

    .line 3596
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v16, v0

    if-eqz v16, :cond_9b

    .line 3597
    move-object v0, v15

    iget-object v0, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Rect;->setEmpty()V

    .line 3598
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_9b

    .line 3599
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 3600
    .local v9, grandParent:Landroid/view/View;
    move-object v0, v9

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const/high16 v17, -0x8000

    or-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v9

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3601
    move-object v0, v9

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const v17, -0x8001

    and-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v9

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3604
    .end local v9           #grandParent:Landroid/view/View;
    :cond_9b
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const/high16 v17, 0x60

    and-int v16, v16, v17

    if-eqz v16, :cond_ad

    .line 3707
    .end local v8           #drawAnimation:Z
    .end local v15           #view:Landroid/view/View;
    :cond_a6
    :goto_a6
    return-void

    .line 3584
    :cond_a7
    const/16 v16, 0x0

    move/from16 v8, v16

    goto/16 :goto_1d

    .line 3610
    .restart local v8       #drawAnimation:Z
    .restart local v15       #view:Landroid/view/View;
    :cond_ad
    if-eqz v8, :cond_bd

    .line 3611
    if-eqz v15, :cond_cd

    .line 3612
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x40

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3618
    :cond_bd
    :goto_bd
    move-object v0, v14

    instance-of v0, v0, Landroid/view/ViewRoot;

    move/from16 v16, v0

    if-eqz v16, :cond_e2

    .line 3619
    check-cast v14, Landroid/view/ViewRoot;

    .end local v14           #parent:Landroid/view/ViewParent;
    invoke-virtual {v14}, Landroid/view/ViewRoot;->invalidate()V

    .line 3620
    const/4 v14, 0x0

    .line 3631
    .restart local v14       #parent:Landroid/view/ViewParent;
    :cond_ca
    :goto_ca
    if-nez v14, :cond_51

    goto :goto_a6

    .line 3613
    :cond_cd
    move-object v0, v14

    instance-of v0, v0, Landroid/view/ViewRoot;

    move/from16 v16, v0

    if-eqz v16, :cond_bd

    .line 3614
    move-object v0, v14

    check-cast v0, Landroid/view/ViewRoot;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    goto :goto_bd

    .line 3621
    :cond_e2
    if-eqz v15, :cond_ca

    .line 3622
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x20

    const/16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_106

    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const v17, 0x8000

    and-int v16, v16, v17

    const v17, 0x8000

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_126

    .line 3624
    :cond_106
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const v17, -0x8001

    and-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3625
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const/high16 v17, 0x20

    or-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3626
    iget-object v14, v15, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_ca

    .line 3628
    :cond_126
    const/4 v14, 0x0

    goto :goto_ca

    .line 3634
    .end local v15           #view:Landroid/view/View;
    :cond_128
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->isOpaque()Z

    move-result v16

    if-eqz v16, :cond_2c9

    if-nez v8, :cond_2c9

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v16

    if-nez v16, :cond_2c9

    const/16 v16, 0x1

    move/from16 v10, v16

    .line 3638
    .local v10, isOpaque:Z
    :goto_13a
    if-eqz v10, :cond_2cf

    const/high16 v16, 0x40

    move/from16 v13, v16

    .line 3640
    .local v13, opaqueFlag:I
    :goto_140
    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v16, v0

    if-eqz v16, :cond_176

    .line 3641
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v16, v0

    const/high16 v17, -0x8000

    or-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3642
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ViewGroup;->mPrivateFlags:I

    move/from16 v16, v0

    const v17, -0x8001

    and-int v16, v16, v17

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3643
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/view/View;->mLocalDirtyRect:Landroid/graphics/Rect;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3646
    :cond_176
    iget-object v11, v5, Landroid/view/View$AttachInfo;->mInvalidateChildLocation:[I

    .line 3647
    .local v11, location:[I
    const/16 v16, 0x0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mLeft:I

    move/from16 v17, v0

    aput v17, v11, v16

    .line 3648
    const/16 v16, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/view/View;->mTop:I

    move/from16 v17, v0

    aput v17, v11, v16

    .line 3649
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    .line 3650
    .local v7, childMatrix:Landroid/graphics/Matrix;
    invoke-virtual {v7}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v16

    if-nez v16, :cond_1de

    .line 3651
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 3652
    .local v6, boundingRect:Landroid/graphics/RectF;
    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3653
    invoke-virtual {v7, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3654
    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3660
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    :cond_1de
    const/4 v15, 0x0

    .line 3661
    .restart local v15       #view:Landroid/view/View;
    move-object v0, v14

    instance-of v0, v0, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_220

    .line 3662
    move-object v0, v14

    check-cast v0, Landroid/view/View;

    move-object v15, v0

    .line 3663
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mLayerType:I

    move/from16 v16, v0

    if-eqz v16, :cond_220

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    move-object/from16 v0, v16

    instance-of v0, v0, Landroid/view/View;

    move/from16 v16, v0

    if-eqz v16, :cond_220

    .line 3665
    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    .line 3666
    .restart local v9       #grandParent:Landroid/view/View;
    move-object v0, v9

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const/high16 v17, -0x8000

    or-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v9

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3667
    move-object v0, v9

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const v17, -0x8001

    and-int v16, v16, v17

    move/from16 v0, v16

    move-object v1, v9

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3671
    .end local v9           #grandParent:Landroid/view/View;
    :cond_220
    if-eqz v8, :cond_230

    .line 3672
    if-eqz v15, :cond_2d5

    .line 3673
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    or-int/lit8 v16, v16, 0x40

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3681
    :cond_230
    :goto_230
    if-eqz v15, :cond_269

    .line 3682
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mViewFlags:I

    move/from16 v16, v0

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0x3000

    move/from16 v16, v0

    if-eqz v16, :cond_247

    invoke-virtual {v15}, Landroid/view/View;->getSolidColor()I

    move-result v16

    if-nez v16, :cond_247

    .line 3684
    const/high16 v13, 0x20

    .line 3686
    :cond_247
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const/high16 v17, 0x60

    and-int v16, v16, v17

    const/high16 v17, 0x20

    move/from16 v0, v16

    move/from16 v1, v17

    if-eq v0, v1, :cond_269

    .line 3687
    move-object v0, v15

    iget v0, v0, Landroid/view/View;->mPrivateFlags:I

    move/from16 v16, v0

    const v17, -0x600001

    and-int v16, v16, v17

    or-int v16, v16, v13

    move/from16 v0, v16

    move-object v1, v15

    iput v0, v1, Landroid/view/View;->mPrivateFlags:I

    .line 3691
    :cond_269
    move-object v0, v14

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewParent;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v14

    .line 3692
    if-eqz v15, :cond_2c5

    .line 3694
    invoke-virtual {v15}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v12

    .line 3695
    .local v12, m:Landroid/graphics/Matrix;
    invoke-virtual {v12}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v16

    if-nez v16, :cond_2c5

    .line 3696
    iget-object v6, v5, Landroid/view/View$AttachInfo;->mTmpTransformRect:Landroid/graphics/RectF;

    .line 3697
    .restart local v6       #boundingRect:Landroid/graphics/RectF;
    move-object v0, v6

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 3698
    invoke-virtual {v12, v6}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 3699
    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-int v0, v0

    move/from16 v16, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v18, v0

    const/high16 v19, 0x3f00

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    move-object v0, v6

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v19, v0

    const/high16 v20, 0x3f00

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p2

    move/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3704
    .end local v6           #boundingRect:Landroid/graphics/RectF;
    .end local v12           #m:Landroid/graphics/Matrix;
    :cond_2c5
    if-nez v14, :cond_1de

    goto/16 :goto_a6

    .line 3634
    .end local v7           #childMatrix:Landroid/graphics/Matrix;
    .end local v10           #isOpaque:Z
    .end local v11           #location:[I
    .end local v13           #opaqueFlag:I
    .end local v15           #view:Landroid/view/View;
    :cond_2c9
    const/16 v16, 0x0

    move/from16 v10, v16

    goto/16 :goto_13a

    .line 3638
    .restart local v10       #isOpaque:Z
    :cond_2cf
    const/high16 v16, 0x20

    move/from16 v13, v16

    goto/16 :goto_140

    .line 3674
    .restart local v7       #childMatrix:Landroid/graphics/Matrix;
    .restart local v11       #location:[I
    .restart local v13       #opaqueFlag:I
    .restart local v15       #view:Landroid/view/View;
    :cond_2d5
    move-object v0, v14

    instance-of v0, v0, Landroid/view/ViewRoot;

    move/from16 v16, v0

    if-eqz v16, :cond_230

    .line 3675
    move-object v0, v14

    check-cast v0, Landroid/view/ViewRoot;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput-boolean v0, v1, Landroid/view/ViewRoot;->mIsAnimating:Z

    goto/16 :goto_230
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .registers 10
    .parameter "location"
    .parameter "dirty"

    .prologue
    const v4, 0x8000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 3722
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x20

    const/16 v3, 0x20

    if-eq v2, v3, :cond_12

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_80

    .line 3724
    :cond_12
    iget v2, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v2, v2, 0x90

    const/16 v3, 0x80

    if-eq v2, v3, :cond_57

    .line 3726
    aget v2, p1, v5

    iget v3, p0, Landroid/view/ViewGroup;->mScrollX:I

    sub-int/2addr v2, v3

    aget v3, p1, v6

    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 3729
    iget v0, p0, Landroid/view/ViewGroup;->mLeft:I

    .line 3730
    .local v0, left:I
    iget v1, p0, Landroid/view/ViewGroup;->mTop:I

    .line 3732
    .local v1, top:I
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    sub-int/2addr v2, v0

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    sub-int/2addr v3, v1

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->intersect(IIII)Z

    move-result v2

    if-nez v2, :cond_3f

    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/lit8 v2, v2, 0x40

    const/16 v3, 0x40

    if-ne v2, v3, :cond_80

    .line 3734
    :cond_3f
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8001

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3736
    aput v0, p1, v5

    .line 3737
    aput v1, p1, v6

    .line 3739
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_54

    .line 3740
    iget-object v2, p0, Landroid/view/ViewGroup;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3743
    :cond_54
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 3761
    .end local v0           #left:I
    .end local v1           #top:I
    :goto_56
    return-object v2

    .line 3746
    :cond_57
    iget v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    const v3, -0x8021

    and-int/2addr v2, v3

    iput v2, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    .line 3748
    iget v2, p0, Landroid/view/ViewGroup;->mLeft:I

    aput v2, p1, v5

    .line 3749
    iget v2, p0, Landroid/view/ViewGroup;->mTop:I

    aput v2, p1, v6

    .line 3751
    iget v2, p0, Landroid/view/ViewGroup;->mRight:I

    iget v3, p0, Landroid/view/ViewGroup;->mLeft:I

    sub-int/2addr v2, v3

    iget v3, p0, Landroid/view/ViewGroup;->mBottom:I

    iget v4, p0, Landroid/view/ViewGroup;->mTop:I

    sub-int/2addr v3, v4

    invoke-virtual {p2, v5, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 3753
    iget v2, p0, Landroid/view/ViewGroup;->mLayerType:I

    if-eqz v2, :cond_7d

    .line 3754
    iget-object v2, p0, Landroid/view/ViewGroup;->mLocalDirtyRect:Landroid/graphics/Rect;

    invoke-virtual {v2, p2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3757
    :cond_7d
    iget-object v2, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    goto :goto_56

    .line 3761
    :cond_80
    const/4 v2, 0x0

    goto :goto_56
.end method

.method public isAlwaysDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 3988
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x4000

    const/16 v1, 0x4000

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isAnimationCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .prologue
    .line 3958
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isChildrenDrawingOrderEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    .line 4055
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, 0x400

    const/16 v1, 0x400

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected isChildrenDrawnWithCacheEnabled()Z
    .registers 3
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation

    .prologue
    const v1, 0x8000

    .line 4023
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isMotionEventSplittingEnabled()Z
    .registers 3

    .prologue
    const/high16 v1, 0x20

    .line 1743
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    :goto_8
    return v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method

.method protected isTransformedTouchPointInView(FFLandroid/view/View;Landroid/graphics/PointF;)Z
    .registers 13
    .parameter "x"
    .parameter "y"
    .parameter "child"
    .parameter "outLocalPoint"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1486
    iget v4, p0, Landroid/view/ViewGroup;->mScrollX:I

    int-to-float v4, v4

    add-float/2addr v4, p1

    iget v5, p3, Landroid/view/View;->mLeft:I

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 1487
    .local v1, localX:F
    iget v4, p0, Landroid/view/ViewGroup;->mScrollY:I

    int-to-float v4, v4

    add-float/2addr v4, p2

    iget v5, p3, Landroid/view/View;->mTop:I

    int-to-float v5, v5

    sub-float v3, v4, v5

    .line 1488
    .local v3, localY:F
    invoke-virtual {p3}, Landroid/view/View;->hasIdentityMatrix()Z

    move-result v4

    if-nez v4, :cond_31

    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v4, :cond_31

    .line 1489
    iget-object v4, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-object v2, v4, Landroid/view/View$AttachInfo;->mTmpTransformLocation:[F

    .line 1490
    .local v2, localXY:[F
    aput v1, v2, v6

    .line 1491
    aput v3, v2, v7

    .line 1492
    invoke-virtual {p3}, Landroid/view/View;->getInverseMatrix()Landroid/graphics/Matrix;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 1493
    aget v1, v2, v6

    .line 1494
    aget v3, v2, v7

    .line 1496
    .end local v2           #localXY:[F
    :cond_31
    invoke-virtual {p3, v1, v3}, Landroid/view/View;->pointInView(FF)Z

    move-result v0

    .line 1497
    .local v0, isInView:Z
    if-eqz v0, :cond_3c

    if-eqz p4, :cond_3c

    .line 1498
    invoke-virtual {p4, v1, v3}, Landroid/graphics/PointF;->set(FF)V

    .line 1500
    :cond_3c
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .registers 5

    .prologue
    .line 4670
    invoke-super {p0}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4671
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4672
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4673
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_8
    if-ge v2, v1, :cond_12

    .line 4674
    aget-object v3, v0, v2

    invoke-virtual {v3}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    .line 4673
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 4676
    :cond_12
    return-void
.end method

.method public final layout(IIII)V
    .registers 6
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 3876
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_c

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0}, Landroid/animation/LayoutTransition;->isChangingLayout()Z

    move-result v0

    if-nez v0, :cond_10

    .line 3877
    :cond_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->layout(IIII)V

    .line 3882
    :goto_f
    return-void

    .line 3880
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/ViewGroup;->mLayoutSuppressed:Z

    goto :goto_f
.end method

.method protected measureChild(Landroid/view/View;II)V
    .registers 9
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "parentHeightMeasureSpec"

    .prologue
    .line 4315
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 4317
    .local v2, lp:Landroid/view/ViewGroup$LayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4319
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p3, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4322
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4323
    return-void
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .registers 11
    .parameter "child"
    .parameter "parentWidthMeasureSpec"
    .parameter "widthUsed"
    .parameter "parentHeightMeasureSpec"
    .parameter "heightUsed"

    .prologue
    .line 4342
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 4344
    .local v2, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v1

    .line 4347
    .local v1, childWidthMeasureSpec:I
    iget v3, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    iget v4, p0, Landroid/view/ViewGroup;->mPaddingBottom:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p5

    iget v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, v3, v4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v0

    .line 4351
    .local v0, childHeightMeasureSpec:I
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 4352
    return-void
.end method

.method protected measureChildren(II)V
    .registers 9
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 4294
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4295
    .local v3, size:I
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4296
    .local v1, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v3, :cond_17

    .line 4297
    aget-object v0, v1, v2

    .line 4298
    .local v0, child:Landroid/view/View;
    iget v4, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v4, v4, 0xc

    const/16 v5, 0x8

    if-eq v4, v5, :cond_14

    .line 4299
    invoke-virtual {p0, v0, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 4296
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 4302
    .end local v0           #child:Landroid/view/View;
    :cond_17
    return-void
.end method

.method notifyChildOfDrag(Landroid/view/View;)Z
    .registers 3
    .parameter "child"

    .prologue
    .line 1072
    iget-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 1073
    iget-object v0, p0, Landroid/view/ViewGroup;->mDragNotifiedChildren:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1074
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    invoke-virtual {p1, v0}, Landroid/view/View;->dispatchDragEvent(Landroid/view/DragEvent;)Z

    move-result v0

    iput-boolean v0, p1, Landroid/view/View;->mCanAcceptDrop:Z

    .line 1076
    :cond_15
    iget-boolean v0, p1, Landroid/view/View;->mCanAcceptDrop:Z

    return v0
.end method

.method public offsetChildrenTopAndBottom(I)V
    .registers 7
    .parameter "offset"

    .prologue
    .line 3846
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3847
    .local v1, count:I
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3849
    .local v0, children:[Landroid/view/View;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_5
    if-ge v2, v1, :cond_16

    .line 3850
    aget-object v3, v0, v2

    .line 3851
    .local v3, v:Landroid/view/View;
    iget v4, v3, Landroid/view/View;->mTop:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mTop:I

    .line 3852
    iget v4, v3, Landroid/view/View;->mBottom:I

    add-int/2addr v4, p1

    iput v4, v3, Landroid/view/View;->mBottom:I

    .line 3849
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 3854
    .end local v3           #v:Landroid/view/View;
    :cond_16
    return-void
.end method

.method public final offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 5
    .parameter "descendant"
    .parameter "rect"

    .prologue
    .line 3771
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 3772
    return-void
.end method

.method offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V
    .registers 12
    .parameter "descendant"
    .parameter "rect"
    .parameter "offsetFromChildToParent"
    .parameter "clipToBounds"

    .prologue
    const/4 v6, 0x0

    .line 3792
    if-ne p1, p0, :cond_4

    .line 3836
    :goto_3
    return-void

    .line 3796
    :cond_4
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3801
    .local v2, theParent:Landroid/view/ViewParent;
    :goto_6
    if-eqz v2, :cond_58

    instance-of v3, v2, Landroid/view/View;

    if-eqz v3, :cond_58

    if-eq v2, p0, :cond_58

    .line 3803
    if-eqz p3, :cond_37

    .line 3804
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 3806
    if-eqz p4, :cond_30

    .line 3807
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3808
    .local v1, p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 3819
    .end local v1           #p:Landroid/view/View;
    :cond_30
    :goto_30
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object p1, v0

    .line 3820
    iget-object v2, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    goto :goto_6

    .line 3811
    :cond_37
    if-eqz p4, :cond_4a

    .line 3812
    move-object v0, v2

    check-cast v0, Landroid/view/View;

    move-object v1, v0

    .line 3813
    .restart local v1       #p:Landroid/view/View;
    iget v3, v1, Landroid/view/View;->mRight:I

    iget v4, v1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, v1, Landroid/view/View;->mBottom:I

    iget v5, v1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v6, v6, v3, v4}, Landroid/graphics/Rect;->intersect(IIII)Z

    .line 3815
    .end local v1           #p:Landroid/view/View;
    :cond_4a
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_30

    .line 3825
    :cond_58
    if-ne v2, p0, :cond_78

    .line 3826
    if-eqz p3, :cond_6a

    .line 3827
    iget v3, p1, Landroid/view/View;->mLeft:I

    iget v4, p1, Landroid/view/View;->mScrollX:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mTop:I

    iget v5, p1, Landroid/view/View;->mScrollY:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 3830
    :cond_6a
    iget v3, p1, Landroid/view/View;->mScrollX:I

    iget v4, p1, Landroid/view/View;->mLeft:I

    sub-int/2addr v3, v4

    iget v4, p1, Landroid/view/View;->mScrollY:I

    iget v5, p1, Landroid/view/View;->mTop:I

    sub-int/2addr v4, v5

    invoke-virtual {p2, v3, v4}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_3

    .line 3834
    :cond_78
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "parameter must be a descendant of this view"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public final offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V
    .registers 4
    .parameter "descendant"
    .parameter "rect"

    .prologue
    const/4 v0, 0x0

    .line 3781
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/view/ViewGroup;->offsetRectBetweenParentAndChild(Landroid/view/View;Landroid/graphics/Rect;ZZ)V

    .line 3782
    return-void
.end method

.method protected onAnimationEnd()V
    .registers 3

    .prologue
    .line 2082
    invoke-super {p0}, Landroid/view/View;->onAnimationEnd()V

    .line 2085
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, 0x40

    const/16 v1, 0x40

    if-ne v0, v1, :cond_1d

    .line 2086
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x8001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2088
    iget v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1d

    .line 2089
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setChildrenDrawingCacheEnabled(Z)V

    .line 2092
    :cond_1d
    return-void
.end method

.method protected onAnimationStart()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    .line 2058
    invoke-super {p0}, Landroid/view/View;->onAnimationStart()V

    .line 2061
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v5, v5, 0x40

    const/16 v6, 0x40

    if-ne v5, v6, :cond_38

    .line 2062
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2063
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2064
    .local v2, children:[Landroid/view/View;
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isHardwareAccelerated()Z

    move-result v5

    if-nez v5, :cond_2d

    move v0, v7

    .line 2066
    .local v0, buildCache:Z
    :goto_17
    const/4 v4, 0x0

    .local v4, i:I
    :goto_18
    if-ge v4, v3, :cond_30

    .line 2067
    aget-object v1, v2, v4

    .line 2068
    .local v1, child:Landroid/view/View;
    iget v5, v1, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v5, v5, 0xc

    if-nez v5, :cond_2a

    .line 2069
    invoke-virtual {v1, v7}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2070
    if-eqz v0, :cond_2a

    .line 2071
    invoke-virtual {v1, v7}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2066
    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    .line 2064
    .end local v0           #buildCache:Z
    .end local v1           #child:Landroid/view/View;
    .end local v4           #i:I
    :cond_2d
    const/4 v5, 0x0

    move v0, v5

    goto :goto_17

    .line 2076
    .restart local v0       #buildCache:Z
    .restart local v4       #i:I
    :cond_30
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v6, 0x8000

    or-int/2addr v5, v6

    iput v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 2078
    .end local v0           #buildCache:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_38
    return-void
.end method

.method onChildVisibilityChanged(Landroid/view/View;I)V
    .registers 4
    .parameter "child"
    .parameter "visibility"

    .prologue
    .line 797
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_2c

    .line 798
    if-nez p2, :cond_36

    .line 799
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->showChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 803
    :goto_b
    if-eqz p2, :cond_2c

    .line 806
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    .line 807
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    .line 809
    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mVisibilityChangingChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 810
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 811
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 817
    :cond_2c
    iget-object v0, p0, Landroid/view/ViewGroup;->mCurrentDrag:Landroid/view/DragEvent;

    if-eqz v0, :cond_35

    .line 818
    if-nez p2, :cond_35

    .line 819
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->notifyChildOfDrag(Landroid/view/View;)Z

    .line 822
    :cond_35
    return-void

    .line 801
    :cond_36
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->hideChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    goto :goto_b
.end method

.method protected onConsistencyCheck(I)Z
    .registers 13
    .parameter "consistency"

    .prologue
    const/high16 v10, 0x60

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 4177
    invoke-super {p0, p1}, Landroid/view/View;->onConsistencyCheck(I)Z

    move-result v6

    .line 4179
    .local v6, result:Z
    and-int/lit8 v7, p1, 0x1

    if-eqz v7, :cond_4b

    move v1, v9

    .line 4180
    .local v1, checkLayout:Z
    :goto_d
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_4d

    move v0, v9

    .line 4182
    .local v0, checkDrawing:Z
    :goto_12
    if-eqz v1, :cond_4f

    .line 4183
    iget v3, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 4184
    .local v3, count:I
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 4185
    .local v2, children:[Landroid/view/View;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_19
    if-ge v4, v3, :cond_4f

    .line 4186
    aget-object v7, v2, v4

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eq v7, p0, :cond_48

    .line 4187
    const/4 v6, 0x0

    .line 4188
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v4

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " has no parent/a parent that is not "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4185
    :cond_48
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .end local v0           #checkDrawing:Z
    .end local v1           #checkLayout:Z
    .end local v2           #children:[Landroid/view/View;
    .end local v3           #count:I
    .end local v4           #i:I
    :cond_4b
    move v1, v8

    .line 4179
    goto :goto_d

    .restart local v1       #checkLayout:Z
    :cond_4d
    move v0, v8

    .line 4180
    goto :goto_12

    .line 4194
    .restart local v0       #checkDrawing:Z
    :cond_4f
    if-eqz v0, :cond_8a

    .line 4196
    iget v7, p0, Landroid/view/ViewGroup;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-eqz v7, :cond_8a

    .line 4197
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    .line 4198
    .local v5, parent:Landroid/view/ViewParent;
    if-eqz v5, :cond_8a

    instance-of v7, v5, Landroid/view/ViewRoot;

    if-nez v7, :cond_8a

    .line 4199
    check-cast v5, Landroid/view/View;

    .end local v5           #parent:Landroid/view/ViewParent;
    iget v7, v5, Landroid/view/View;->mPrivateFlags:I

    and-int/2addr v7, v10

    if-nez v7, :cond_8a

    .line 4200
    const/4 v6, 0x0

    .line 4201
    const-string v7, "ViewConsistency"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewGroup "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " is dirty but its parent is not: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4208
    :cond_8a
    return v6
.end method

.method protected onCreateDrawableState(I)[I
    .registers 8
    .parameter "extraSpace"

    .prologue
    .line 4680
    iget v5, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v5, v5, 0x2000

    if-nez v5, :cond_b

    .line 4681
    invoke-super {p0, p1}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v5

    .line 4704
    :goto_a
    return-object v5

    .line 4684
    :cond_b
    const/4 v3, 0x0

    .line 4685
    .local v3, need:I
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 4686
    .local v2, n:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_11
    if-ge v1, v2, :cond_22

    .line 4687
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 4689
    .local v0, childState:[I
    if-eqz v0, :cond_1f

    .line 4690
    array-length v5, v0

    add-int/2addr v3, v5

    .line 4686
    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 4694
    .end local v0           #childState:[I
    :cond_22
    add-int v5, p1, v3

    invoke-super {p0, v5}, Landroid/view/View;->onCreateDrawableState(I)[I

    move-result-object v4

    .line 4696
    .local v4, state:[I
    const/4 v1, 0x0

    :goto_29
    if-ge v1, v2, :cond_3c

    .line 4697
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getDrawableState()[I

    move-result-object v0

    .line 4699
    .restart local v0       #childState:[I
    if-eqz v0, :cond_39

    .line 4700
    invoke-static {v4, v0}, Landroid/view/ViewGroup;->mergeDrawableStates([I[I)[I

    move-result-object v4

    .line 4696
    :cond_39
    add-int/lit8 v1, v1, 0x1

    goto :goto_29

    .end local v0           #childState:[I
    :cond_3c
    move-object v5, v4

    .line 4704
    goto :goto_a
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .parameter "ev"

    .prologue
    .line 1806
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract onLayout(ZIIII)V
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .registers 12
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v8, 0x1

    .line 1866
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 1867
    .local v2, count:I
    and-int/lit8 v7, p1, 0x2

    if-eqz v7, :cond_1f

    .line 1868
    const/4 v6, 0x0

    .line 1869
    .local v6, index:I
    const/4 v5, 0x1

    .line 1870
    .local v5, increment:I
    move v3, v2

    .line 1876
    .local v3, end:I
    :goto_a
    iget-object v1, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 1877
    .local v1, children:[Landroid/view/View;
    move v4, v6

    .local v4, i:I
    :goto_d
    if-eq v4, v3, :cond_26

    .line 1878
    aget-object v0, v1, v4

    .line 1879
    .local v0, child:Landroid/view/View;
    iget v7, v0, Landroid/view/View;->mViewFlags:I

    and-int/lit8 v7, v7, 0xc

    if-nez v7, :cond_24

    .line 1880
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v7

    if-eqz v7, :cond_24

    move v7, v8

    .line 1885
    .end local v0           #child:Landroid/view/View;
    :goto_1e
    return v7

    .line 1872
    .end local v1           #children:[Landroid/view/View;
    .end local v3           #end:I
    .end local v4           #i:I
    .end local v5           #increment:I
    .end local v6           #index:I
    :cond_1f
    sub-int v6, v2, v8

    .line 1873
    .restart local v6       #index:I
    const/4 v5, -0x1

    .line 1874
    .restart local v5       #increment:I
    const/4 v3, -0x1

    .restart local v3       #end:I
    goto :goto_a

    .line 1877
    .restart local v0       #child:Landroid/view/View;
    .restart local v1       #children:[Landroid/view/View;
    .restart local v4       #i:I
    :cond_24
    add-int/2addr v4, v5

    goto :goto_d

    .line 1885
    .end local v0           #child:Landroid/view/View;
    :cond_26
    const/4 v7, 0x0

    goto :goto_1e
.end method

.method public recomputeViewAttributes(Landroid/view/View;)V
    .registers 4
    .parameter "child"

    .prologue
    .line 867
    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v1, :cond_11

    iget-object v1, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    iget-boolean v1, v1, Landroid/view/View$AttachInfo;->mRecomputeGlobalAttributes:Z

    if-nez v1, :cond_11

    .line 868
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    .line 869
    .local v0, parent:Landroid/view/ViewParent;
    if-eqz v0, :cond_11

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->recomputeViewAttributes(Landroid/view/View;)V

    .line 871
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_11
    return-void
.end method

.method public removeAllViews()V
    .registers 2

    .prologue
    .line 3354
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 3355
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3356
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3357
    return-void
.end method

.method public removeAllViewsInLayout()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 3369
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3370
    .local v2, count:I
    if-gtz v2, :cond_8

    .line 3415
    :cond_7
    :goto_7
    return-void

    .line 3374
    :cond_8
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 3375
    .local v0, children:[Landroid/view/View;
    iput v10, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 3377
    iget-object v6, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 3378
    .local v6, listener:Landroid/view/ViewGroup$OnHierarchyChangeListener;
    if-eqz v6, :cond_52

    move v7, v11

    .line 3379
    .local v7, notify:Z
    :goto_11
    iget-object v4, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 3380
    .local v4, focused:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v9, :cond_54

    move v3, v11

    .line 3381
    .local v3, detach:Z
    :goto_18
    const/4 v1, 0x0

    .line 3383
    .local v1, clearChildFocus:Landroid/view/View;
    invoke-virtual {p0, v10}, Landroid/view/ViewGroup;->needGlobalAttributesUpdate(Z)V

    .line 3385
    sub-int v5, v2, v11

    .local v5, i:I
    :goto_1e
    if-ltz v5, :cond_5c

    .line 3386
    aget-object v8, v0, v5

    .line 3388
    .local v8, view:Landroid/view/View;
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v9, :cond_2b

    .line 3389
    iget-object v9, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v9, p0, v8}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3392
    :cond_2b
    if-ne v8, v4, :cond_31

    .line 3393
    invoke-virtual {v8}, Landroid/view/View;->clearFocusForRemoval()V

    .line 3394
    move-object v1, v8

    .line 3397
    :cond_31
    invoke-virtual {v8}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v9

    if-nez v9, :cond_43

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v9, :cond_56

    iget-object v9, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_56

    .line 3399
    :cond_43
    invoke-direct {p0, v8}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3404
    :cond_46
    :goto_46
    if-eqz v7, :cond_4b

    .line 3405
    invoke-interface {v6, p0, v8}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3408
    :cond_4b
    iput-object v12, v8, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 3409
    aput-object v12, v0, v5

    .line 3385
    add-int/lit8 v5, v5, -0x1

    goto :goto_1e

    .end local v1           #clearChildFocus:Landroid/view/View;
    .end local v3           #detach:Z
    .end local v4           #focused:Landroid/view/View;
    .end local v5           #i:I
    .end local v7           #notify:Z
    .end local v8           #view:Landroid/view/View;
    :cond_52
    move v7, v10

    .line 3378
    goto :goto_11

    .restart local v4       #focused:Landroid/view/View;
    .restart local v7       #notify:Z
    :cond_54
    move v3, v10

    .line 3380
    goto :goto_18

    .line 3400
    .restart local v1       #clearChildFocus:Landroid/view/View;
    .restart local v3       #detach:Z
    .restart local v5       #i:I
    .restart local v8       #view:Landroid/view/View;
    :cond_56
    if-eqz v3, :cond_46

    .line 3401
    invoke-virtual {v8}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_46

    .line 3412
    .end local v8           #view:Landroid/view/View;
    :cond_5c
    if-eqz v1, :cond_7

    .line 3413
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->clearChildFocus(Landroid/view/View;)V

    goto :goto_7
.end method

.method protected removeDetachedView(Landroid/view/View;Z)V
    .registers 4
    .parameter "child"
    .parameter "animate"

    .prologue
    .line 3431
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_9

    .line 3432
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, p0, p1}, Landroid/animation/LayoutTransition;->removeChild(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 3435
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-ne p1, v0, :cond_10

    .line 3436
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    .line 3439
    :cond_10
    if-eqz p2, :cond_18

    invoke-virtual {p1}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-nez v0, :cond_24

    :cond_18
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_31

    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 3441
    :cond_24
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->addDisappearingView(Landroid/view/View;)V

    .line 3446
    :cond_27
    :goto_27
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    if-eqz v0, :cond_30

    .line 3447
    iget-object v0, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    invoke-interface {v0, p0, p1}, Landroid/view/ViewGroup$OnHierarchyChangeListener;->onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V

    .line 3449
    :cond_30
    return-void

    .line 3442
    :cond_31
    iget-object v0, p1, Landroid/view/View;->mAttachInfo:Landroid/view/View$AttachInfo;

    if-eqz v0, :cond_27

    .line 3443
    invoke-virtual {p1}, Landroid/view/View;->dispatchDetachedFromWindow()V

    goto :goto_27
.end method

.method public removeView(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 3185
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3186
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3187
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3188
    return-void
.end method

.method public removeViewAt(I)V
    .registers 3
    .parameter "index"

    .prologue
    .line 3217
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup;->removeViewInternal(ILandroid/view/View;)V

    .line 3218
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3219
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3220
    return-void
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .registers 2
    .parameter "view"

    .prologue
    .line 3197
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;->removeViewInternal(Landroid/view/View;)V

    .line 3198
    return-void
.end method

.method public removeViews(II)V
    .registers 4
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3229
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3230
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3231
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 3232
    return-void
.end method

.method public removeViewsInLayout(II)V
    .registers 3
    .parameter "start"
    .parameter "count"

    .prologue
    .line 3208
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInternal(II)V

    .line 3209
    return-void
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .registers 5
    .parameter "child"
    .parameter "focused"

    .prologue
    .line 502
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    const/high16 v1, 0x6

    if-ne v0, v1, :cond_9

    .line 520
    :cond_8
    :goto_8
    return-void

    .line 507
    :cond_9
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 510
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eq v0, p1, :cond_1b

    .line 511
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_19

    .line 512
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 515
    :cond_19
    iput-object p1, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 517
    :cond_1b
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_8

    .line 518
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0, p2}, Landroid/view/ViewParent;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    goto :goto_8
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 5
    .parameter "child"
    .parameter "rectangle"
    .parameter "immediate"

    .prologue
    .line 580
    const/4 v0, 0x0

    return v0
.end method

.method public requestDisallowInterceptTouchEvent(Z)V
    .registers 4
    .parameter "disallowIntercept"

    .prologue
    const/high16 v1, 0x8

    .line 1751
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_8
    if-ne p1, v0, :cond_d

    .line 1766
    :cond_a
    :goto_a
    return-void

    .line 1751
    :cond_b
    const/4 v0, 0x0

    goto :goto_8

    .line 1756
    :cond_d
    if-eqz p1, :cond_1e

    .line 1757
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1763
    :goto_14
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_a

    .line 1764
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_a

    .line 1759
    :cond_1e
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x80001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_14
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .registers 8
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 1829
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getDescendantFocusability()I

    move-result v0

    .line 1831
    .local v0, descendantFocusability:I
    sparse-switch v0, :sswitch_data_40

    .line 1843
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "descendant focusability must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS but is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1833
    :sswitch_20
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    .line 1840
    :goto_24
    return v2

    .line 1835
    :sswitch_25
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1836
    .local v1, took:Z
    if-eqz v1, :cond_2d

    move v2, v1

    goto :goto_24

    :cond_2d
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_24

    .line 1839
    .end local v1           #took:Z
    :sswitch_32
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    .line 1840
    .restart local v1       #took:Z
    if-eqz v1, :cond_3a

    move v2, v1

    goto :goto_24

    :cond_3a
    invoke-super {p0, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v2

    goto :goto_24

    .line 1831
    nop

    :sswitch_data_40
    .sparse-switch
        0x20000 -> :sswitch_25
        0x40000 -> :sswitch_32
        0x60000 -> :sswitch_20
    .end sparse-switch
.end method

.method public requestTransparentRegion(Landroid/view/View;)V
    .registers 3
    .parameter "child"

    .prologue
    .line 4611
    if-eqz p1, :cond_11

    .line 4612
    iget v0, p1, Landroid/view/View;->mPrivateFlags:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p1, Landroid/view/View;->mPrivateFlags:I

    .line 4613
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_11

    .line 4614
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p0}, Landroid/view/ViewParent;->requestTransparentRegion(Landroid/view/View;)V

    .line 4617
    :cond_11
    return-void
.end method

.method public scheduleLayoutAnimation()V
    .registers 2

    .prologue
    .line 3919
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3920
    return-void
.end method

.method public setAddStatesFromChildren(Z)V
    .registers 3
    .parameter "addsStates"

    .prologue
    .line 4714
    if-eqz p1, :cond_c

    .line 4715
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 4720
    :goto_8
    invoke-virtual {p0}, Landroid/view/ViewGroup;->refreshDrawableState()V

    .line 4721
    return-void

    .line 4717
    :cond_c
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_8
.end method

.method public setAlwaysDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter "always"

    .prologue
    .line 4009
    const/16 v0, 0x4000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4010
    return-void
.end method

.method public setAnimationCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 3973
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 3974
    return-void
.end method

.method protected setChildrenDrawingCacheEnabled(Z)V
    .registers 7
    .parameter "enabled"

    .prologue
    .line 2047
    if-nez p1, :cond_9

    iget v3, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    and-int/lit8 v3, v3, 0x3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_18

    .line 2048
    :cond_9
    iget-object v0, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    .line 2049
    .local v0, children:[Landroid/view/View;
    iget v1, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    .line 2050
    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_e
    if-ge v2, v1, :cond_18

    .line 2051
    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 2050
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 2054
    .end local v0           #children:[Landroid/view/View;
    .end local v1           #count:I
    .end local v2           #i:I
    :cond_18
    return-void
.end method

.method protected setChildrenDrawingOrderEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4069
    const/16 v0, 0x400

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4070
    return-void
.end method

.method protected setChildrenDrawnWithCacheEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4040
    const v0, 0x8000

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 4041
    return-void
.end method

.method public setChildrenLayersEnabled(Z)V
    .registers 6
    .parameter "enabled"

    .prologue
    const/4 v3, 0x1

    .line 2643
    iget-boolean v2, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    if-eq p1, v2, :cond_1d

    .line 2644
    iput-boolean p1, p0, Landroid/view/ViewGroup;->mDrawLayers:Z

    .line 2645
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->invalidate(Z)V

    .line 2654
    const/4 v1, 0x0

    .local v1, i:I
    :goto_b
    iget v2, p0, Landroid/view/ViewGroup;->mChildrenCount:I

    if-ge v1, v2, :cond_1d

    .line 2655
    iget-object v2, p0, Landroid/view/ViewGroup;->mChildren:[Landroid/view/View;

    aget-object v0, v2, v1

    .line 2656
    .local v0, child:Landroid/view/View;
    iget v2, v0, Landroid/view/View;->mLayerType:I

    if-eqz v2, :cond_1a

    .line 2657
    invoke-virtual {v0, v3}, Landroid/view/View;->invalidate(Z)V

    .line 2654
    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 2661
    .end local v0           #child:Landroid/view/View;
    .end local v1           #i:I
    :cond_1d
    return-void
.end method

.method public setClipChildren(Z)V
    .registers 3
    .parameter "clipChildren"

    .prologue
    .line 2672
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2673
    return-void
.end method

.method public setClipToPadding(Z)V
    .registers 3
    .parameter "clipToPadding"

    .prologue
    .line 2684
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2685
    return-void
.end method

.method public setDescendantFocusability(I)V
    .registers 4
    .parameter "focusability"

    .prologue
    .line 470
    sparse-switch p1, :sswitch_data_1c

    .line 476
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "must be one of FOCUS_BEFORE_DESCENDANTS, FOCUS_AFTER_DESCENDANTS, FOCUS_BLOCK_DESCENDANTS"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 479
    :sswitch_b
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x60001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 480
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x6

    and-int/2addr v1, p1

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 481
    return-void

    .line 470
    :sswitch_data_1c
    .sparse-switch
        0x20000 -> :sswitch_b
        0x40000 -> :sswitch_b
        0x60000 -> :sswitch_b
    .end sparse-switch
.end method

.method public setLayoutAnimation(Landroid/view/animation/LayoutAnimationController;)V
    .registers 3
    .parameter "controller"

    .prologue
    .line 3929
    iput-object p1, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    .line 3930
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_c

    .line 3931
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3933
    :cond_c
    return-void
.end method

.method public setLayoutAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
    .registers 2
    .parameter "animationListener"

    .prologue
    .line 4754
    iput-object p1, p0, Landroid/view/ViewGroup;->mAnimationListener:Landroid/view/animation/Animation$AnimationListener;

    .line 4755
    return-void
.end method

.method public setLayoutTransition(Landroid/animation/LayoutTransition;)V
    .registers 4
    .parameter "transition"

    .prologue
    .line 3284
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_b

    .line 3285
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3287
    :cond_b
    iput-object p1, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    .line 3288
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    if-eqz v0, :cond_18

    .line 3289
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransition:Landroid/animation/LayoutTransition;

    iget-object v1, p0, Landroid/view/ViewGroup;->mLayoutTransitionListener:Landroid/animation/LayoutTransition$TransitionListener;

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 3291
    :cond_18
    return-void
.end method

.method public setMotionEventSplittingEnabled(Z)V
    .registers 4
    .parameter "split"

    .prologue
    .line 1731
    if-eqz p1, :cond_a

    .line 1732
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const/high16 v1, 0x20

    or-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1736
    :goto_9
    return-void

    .line 1734
    :cond_a
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    const v1, -0x200001

    and-int/2addr v0, v1

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_9
.end method

.method public setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V
    .registers 2
    .parameter "listener"

    .prologue
    .line 2953
    iput-object p1, p0, Landroid/view/ViewGroup;->mOnHierarchyChangeListener:Landroid/view/ViewGroup$OnHierarchyChangeListener;

    .line 2954
    return-void
.end method

.method public setPadding(IIII)V
    .registers 7
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    .line 1976
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->setPadding(IIII)V

    .line 1978
    iget v0, p0, Landroid/view/ViewGroup;->mPaddingLeft:I

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingTop:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    iget v1, p0, Landroid/view/ViewGroup;->mPaddingRight:I

    or-int/2addr v0, v1

    if-eqz v0, :cond_17

    .line 1979
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 1983
    :goto_16
    return-void

    .line 1981
    :cond_17
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    goto :goto_16
.end method

.method public setPersistentDrawingCache(I)V
    .registers 3
    .parameter "drawingCacheToKeep"

    .prologue
    .line 4112
    and-int/lit8 v0, p1, 0x3

    iput v0, p0, Landroid/view/ViewGroup;->mPersistentDrawingCache:I

    .line 4113
    return-void
.end method

.method protected setStaticTransformationsEnabled(Z)V
    .registers 3
    .parameter "enabled"

    .prologue
    .line 2735
    const/16 v0, 0x800

    invoke-direct {p0, v0, p1}, Landroid/view/ViewGroup;->setBooleanFlag(IZ)V

    .line 2736
    return-void
.end method

.method public showContextMenuForChild(Landroid/view/View;)Z
    .registers 3
    .parameter "originalView"

    .prologue
    .line 546
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->showContextMenuForChild(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .registers 4
    .parameter "originalView"
    .parameter "callback"

    .prologue
    .line 553
    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/view/ViewGroup;->mParent:Landroid/view/ViewParent;

    invoke-interface {v0, p1, p2}, Landroid/view/ViewParent;->startActionModeForChild(Landroid/view/View;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public startLayoutAnimation()V
    .registers 2

    .prologue
    .line 3906
    iget-object v0, p0, Landroid/view/ViewGroup;->mLayoutAnimationController:Landroid/view/animation/LayoutAnimationController;

    if-eqz v0, :cond_d

    .line 3907
    iget v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/view/ViewGroup;->mGroupFlags:I

    .line 3908
    invoke-virtual {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 3910
    :cond_d
    return-void
.end method

.method public startViewTransition(Landroid/view/View;)V
    .registers 3
    .parameter "view"

    .prologue
    .line 4516
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-ne v0, p0, :cond_14

    .line 4517
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    if-nez v0, :cond_f

    .line 4518
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    .line 4520
    :cond_f
    iget-object v0, p0, Landroid/view/ViewGroup;->mTransitioningViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4522
    :cond_14
    return-void
.end method

.method unFocus()V
    .registers 2

    .prologue
    .line 628
    invoke-super {p0}, Landroid/view/View;->unFocus()V

    .line 629
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    if-eqz v0, :cond_c

    .line 630
    iget-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->unFocus()V

    .line 632
    :cond_c
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ViewGroup;->mFocused:Landroid/view/View;

    .line 633
    return-void
.end method

.method public updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 6
    .parameter "view"
    .parameter "params"

    .prologue
    .line 2907
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 2908
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid LayoutParams supplied to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2910
    :cond_1f
    iget-object v0, p1, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    if-eq v0, p0, :cond_3c

    .line 2911
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given view not a child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2913
    :cond_3c
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2914
    return-void
.end method
