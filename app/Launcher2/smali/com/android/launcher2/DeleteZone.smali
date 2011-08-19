.class public Lcom/android/launcher2/DeleteZone;
.super Lcom/android/launcher2/IconDropTarget;
.source "DeleteZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/DeleteZone$FastAnimationSet;,
        Lcom/android/launcher2/DeleteZone$FastTranslateAnimation;
    }
.end annotation


# instance fields
.field private mDragController:Lcom/android/launcher2/DragController;

.field private mDragTextColor:I

.field private mHandleInAnimation:Landroid/view/animation/Animation;

.field private mHandleOutAnimation:Landroid/view/animation/Animation;

.field private mInAnimation:Landroid/view/animation/AnimationSet;

.field private mOrientation:I

.field private mOutAnimation:Landroid/view/animation/AnimationSet;

.field private final mRegion:Landroid/graphics/Rect;

.field private final mRegionF:Landroid/graphics/RectF;

.field private mTextColor:I

.field private mTransition:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher2/DeleteZone;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v7, 0x0

    .line 64
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher2/IconDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 53
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/DeleteZone;->mRegionF:Landroid/graphics/RectF;

    .line 54
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/android/launcher2/DeleteZone;->mRegion:Landroid/graphics/Rect;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090003

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 67
    .local v2, srcColor:I
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mHoverPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v2, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 69
    sget-object v4, Lcom/android/launcher/R$styleable;->DeleteZone:[I

    invoke-virtual {p1, p2, v4, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 70
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v0, v7, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Lcom/android/launcher2/DeleteZone;->mOrientation:I

    .line 71
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 73
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0023

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 76
    .local v3, tb:I
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0024

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 78
    .local v1, lr:I
    invoke-virtual {p0, v3, v1, v3, v1}, Lcom/android/launcher2/DeleteZone;->setDragPadding(IIII)V

    .line 80
    .end local v1           #lr:I
    .end local v3           #tb:I
    :cond_0
    return-void
.end method

.method private createAnimations()V
    .locals 11

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/android/launcher2/DeleteZone;->getAnimationDuration()I

    move-result v10

    .line 211
    .local v10, duration:I
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_0

    .line 212
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    .line 213
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_1

    .line 217
    new-instance v0, Lcom/android/launcher2/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/android/launcher2/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 218
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-nez v0, :cond_5

    .line 219
    iget-object v9, p0, Lcom/android/launcher2/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    .line 220
    .local v9, animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 221
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 222
    iget v0, p0, Lcom/android/launcher2/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 223
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/high16 v6, 0x3f80

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 231
    :goto_0
    int-to-long v0, v10

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 237
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    if-nez v0, :cond_2

    .line 238
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    .line 239
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 240
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    int-to-long v1, v10

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-nez v0, :cond_3

    .line 244
    new-instance v0, Lcom/android/launcher2/DeleteZone$FastAnimationSet;

    invoke-direct {v0}, Lcom/android/launcher2/DeleteZone$FastAnimationSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 245
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-nez v0, :cond_7

    .line 246
    iget-object v9, p0, Lcom/android/launcher2/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    .line 247
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 248
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f80

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 249
    iget v0, p0, Lcom/android/launcher2/DeleteZone;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 250
    new-instance v0, Lcom/android/launcher2/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f80

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 258
    :goto_2
    int-to-long v0, v10

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 263
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_3
    :goto_3
    return-void

    .line 227
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_4
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 233
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_5
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 254
    .restart local v9       #animationSet:Landroid/view/animation/AnimationSet;
    :cond_6
    new-instance v0, Lcom/android/launcher2/DeleteZone$FastTranslateAnimation;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/high16 v4, 0x3f80

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher2/DeleteZone$FastTranslateAnimation;-><init>(IFIFIFIF)V

    invoke-virtual {v9, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_2

    .line 260
    .end local v9           #animationSet:Landroid/view/animation/AnimationSet;
    :cond_7
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    goto :goto_3
.end method

.method private getAnimationDuration()I
    .locals 2

    .prologue
    const/16 v1, 0xc8

    .line 275
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private getTransitionAnimationDuration()I
    .locals 1

    .prologue
    .line 270
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x96

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0xfa

    goto :goto_0
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
    .line 97
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()V
    .locals 6

    .prologue
    .line 195
    iget-boolean v4, p0, Lcom/android/launcher2/DeleteZone;->mActive:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/launcher2/DeleteZone;->mDragAndDropEnabled:Z

    if-eqz v4, :cond_2

    .line 196
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/launcher2/DeleteZone;->mActive:Z

    .line 197
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mDragController:Lcom/android/launcher2/DragController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/launcher2/DragController;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 199
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mOutAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v4}, Lcom/android/launcher2/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 200
    :cond_0
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mOverlappingViews:[Landroid/view/View;

    if-eqz v4, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mOverlappingViews:[Landroid/view/View;

    .local v0, arr$:[Landroid/view/View;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 202
    .local v3, view:Landroid/view/View;
    iget-object v4, p0, Lcom/android/launcher2/DeleteZone;->mHandleInAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 205
    .end local v0           #arr$:[Landroid/view/View;
    .end local v1           #i$:I
    .end local v2           #len$:I
    .end local v3           #view:Landroid/view/View;
    :cond_1
    const/16 v4, 0x8

    invoke-virtual {p0, v4}, Lcom/android/launcher2/DeleteZone;->setVisibility(I)V

    .line 207
    :cond_2
    return-void
.end method

.method public onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteZone;->mDragAndDropEnabled:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p0}, Lcom/android/launcher2/DeleteZone;->getTransitionAnimationDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 150
    iget v0, p0, Lcom/android/launcher2/DeleteZone;->mDragTextColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteZone;->setTextColor(I)V

    .line 151
    invoke-super/range {p0 .. p7}, Lcom/android/launcher2/IconDropTarget;->onDragEnter(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    .line 153
    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 2
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/launcher2/DeleteZone;->mDragAndDropEnabled:Z

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-direct {p0}, Lcom/android/launcher2/DeleteZone;->getTransitionAnimationDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    .line 159
    iget v0, p0, Lcom/android/launcher2/DeleteZone;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/android/launcher2/DeleteZone;->setTextColor(I)V

    .line 160
    invoke-super/range {p0 .. p7}, Lcom/android/launcher2/IconDropTarget;->onDragExit(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V

    .line 162
    :cond_0
    return-void
.end method

.method public onDragStart(Lcom/android/launcher2/DragSource;Ljava/lang/Object;I)V
    .locals 8
    .parameter "source"
    .parameter "info"
    .parameter "dragAction"

    .prologue
    .line 165
    move-object v0, p2

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v3, v0

    .line 166
    .local v3, item:Lcom/android/launcher2/ItemInfo;
    if-eqz v3, :cond_2

    iget-boolean v6, p0, Lcom/android/launcher2/DeleteZone;->mDragAndDropEnabled:Z

    if-eqz v6, :cond_2

    .line 167
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/launcher2/DeleteZone;->mActive:Z

    .line 168
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/DeleteZone;->getHitRect(Landroid/graphics/Rect;)V

    .line 169
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mRegionF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/launcher2/DeleteZone;->mRegion:Landroid/graphics/Rect;

    invoke-virtual {v6, v7}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 171
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 174
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mRegionF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getTop()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->top:F

    .line 175
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mRegionF:Landroid/graphics/RectF;

    iget-object v7, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher2/Workspace;->getRight()I

    move-result v7

    int-to-float v7, v7

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 178
    :cond_0
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mDragController:Lcom/android/launcher2/DragController;

    iget-object v7, p0, Lcom/android/launcher2/DeleteZone;->mRegionF:Landroid/graphics/RectF;

    invoke-virtual {v6, v7}, Lcom/android/launcher2/DragController;->setDeleteRegion(Landroid/graphics/RectF;)V

    .line 181
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    .line 183
    invoke-direct {p0}, Lcom/android/launcher2/DeleteZone;->createAnimations()V

    .line 184
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mInAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {p0, v6}, Lcom/android/launcher2/DeleteZone;->startAnimation(Landroid/view/animation/Animation;)V

    .line 185
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mOverlappingViews:[Landroid/view/View;

    if-eqz v6, :cond_1

    .line 186
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mOverlappingViews:[Landroid/view/View;

    .local v1, arr$:[Landroid/view/View;
    array-length v4, v1

    .local v4, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v5, v1, v2

    .line 187
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mHandleOutAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 186
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 190
    .end local v1           #arr$:[Landroid/view/View;
    .end local v2           #i$:I
    .end local v4           #len$:I
    .end local v5           #view:Landroid/view/View;
    :cond_1
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/android/launcher2/DeleteZone;->setVisibility(I)V

    .line 192
    :cond_2
    return-void
.end method

.method public onDrop(Lcom/android/launcher2/DragSource;IIIILcom/android/launcher2/DragView;Ljava/lang/Object;)V
    .locals 10
    .parameter "source"
    .parameter "x"
    .parameter "y"
    .parameter "xOffset"
    .parameter "yOffset"
    .parameter "dragView"
    .parameter "dragInfo"

    .prologue
    .line 102
    iget-boolean v6, p0, Lcom/android/launcher2/DeleteZone;->mDragAndDropEnabled:Z

    if-nez v6, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    move-object/from16 v0, p7

    check-cast v0, Lcom/android/launcher2/ItemInfo;

    move-object v2, v0

    .line 107
    .local v2, item:Lcom/android/launcher2/ItemInfo;
    instance-of v6, v2, Lcom/android/launcher2/ApplicationInfo;

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 108
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/ApplicationInfo;

    move-object v3, v0

    invoke-virtual {v6, v3}, Lcom/android/launcher2/Launcher;->startApplicationUninstallActivity(Lcom/android/launcher2/ApplicationInfo;)V

    .line 111
    :cond_2
    iget-wide v6, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x1

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 113
    iget-wide v6, v2, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v8, -0x64

    cmp-long v6, v6, v8

    if-nez v6, :cond_5

    .line 114
    instance-of v6, v2, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v6, :cond_3

    .line 115
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v3, v0

    invoke-virtual {v6, v3}, Lcom/android/launcher2/Launcher;->removeAppWidget(Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    .line 125
    :cond_3
    :goto_1
    instance-of v6, v2, Lcom/android/launcher2/UserFolderInfo;

    if-eqz v6, :cond_6

    .line 126
    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v5, v0

    .line 127
    .local v5, userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v6, v5}, Lcom/android/launcher2/LauncherModel;->deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)V

    .line 128
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6, v5}, Lcom/android/launcher2/Launcher;->removeFolder(Lcom/android/launcher2/FolderInfo;)V

    .line 143
    .end local v5           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_4
    :goto_2
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-static {v6, v2}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_0

    .line 117
    :cond_5
    instance-of v6, p1, Lcom/android/launcher2/UserFolder;

    if-eqz v6, :cond_3

    .line 118
    move-object v0, p1

    check-cast v0, Lcom/android/launcher2/UserFolder;

    move-object v4, v0

    .line 119
    .local v4, userFolder:Lcom/android/launcher2/UserFolder;
    invoke-virtual {v4}, Lcom/android/launcher2/UserFolder;->getInfo()Lcom/android/launcher2/FolderInfo;

    move-result-object v5

    check-cast v5, Lcom/android/launcher2/UserFolderInfo;

    .line 122
    .restart local v5       #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v3, v0

    invoke-virtual {v5, v3}, Lcom/android/launcher2/UserFolderInfo;->remove(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_1

    .line 129
    .end local v4           #userFolder:Lcom/android/launcher2/UserFolder;
    .end local v5           #userFolderInfo:Lcom/android/launcher2/UserFolderInfo;
    :cond_6
    instance-of v6, v2, Lcom/android/launcher2/LauncherAppWidgetInfo;

    if-eqz v6, :cond_4

    .line 130
    move-object v0, v2

    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v3, v0

    .line 131
    .local v3, launcherAppWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    iget-object v6, p0, Lcom/android/launcher2/DeleteZone;->mLauncher:Lcom/android/launcher2/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher2/Launcher;->getAppWidgetHost()Lcom/android/launcher2/LauncherAppWidgetHost;

    move-result-object v1

    .line 132
    .local v1, appWidgetHost:Lcom/android/launcher2/LauncherAppWidgetHost;
    if-eqz v1, :cond_4

    .line 135
    new-instance v6, Lcom/android/launcher2/DeleteZone$1;

    const-string v7, "deleteAppWidgetId"

    invoke-direct {v6, p0, v7, v1, v3}, Lcom/android/launcher2/DeleteZone$1;-><init>(Lcom/android/launcher2/DeleteZone;Ljava/lang/String;Lcom/android/launcher2/LauncherAppWidgetHost;Lcom/android/launcher2/LauncherAppWidgetInfo;)V

    invoke-virtual {v6}, Lcom/android/launcher2/DeleteZone$1;->start()V

    goto :goto_2
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 84
    invoke-super {p0}, Lcom/android/launcher2/IconDropTarget;->onFinishInflate()V

    .line 85
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    aget-object v1, v1, v2

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v1, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    .line 86
    invoke-static {}, Lcom/android/launcher2/LauncherApplication;->isScreenXLarge()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/android/launcher2/DeleteZone;->mTransition:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 90
    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher2/DeleteZone;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 91
    .local v0, r:Landroid/content/res/Resources;
    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DeleteZone;->mTextColor:I

    .line 92
    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher2/DeleteZone;->mDragTextColor:I

    .line 93
    return-void
.end method

.method setDragController(Lcom/android/launcher2/DragController;)V
    .locals 0
    .parameter "dragController"

    .prologue
    .line 266
    iput-object p1, p0, Lcom/android/launcher2/DeleteZone;->mDragController:Lcom/android/launcher2/DragController;

    .line 267
    return-void
.end method
