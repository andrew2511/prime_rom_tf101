.class Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;
.super Landroid/widget/ImageView;
.source "SnowView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/ui/SnowView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnowFlake"
.end annotation


# static fields
.field private static final MAX_ANIM_DURATION_IN_MS:I = 0x258

.field private static final MAX_X_MOVEMENT_DIPS:I = 0xd

.field private static final MAX_Y_MOVEMENT_DIPS:I = 0x1b

.field private static final MIN_ANIM_DURATION_IN_MS:I = 0x190

.field private static final MIN_X_MOVEMENT_DIPS:I = -0xd

.field private static final MIN_Y_MOVEMENT_DIPS:I = 0xd


# instance fields
.field private absoluteX:F

.field private absoluteY:F

.field private parent:Lcom/amazon/kcp/library/ui/SnowView;

.field final synthetic this$0:Lcom/amazon/kcp/library/ui/SnowView;


# direct methods
.method public constructor <init>(Lcom/amazon/kcp/library/ui/SnowView;Landroid/content/Context;Lcom/amazon/kcp/library/ui/SnowView;)V
    .locals 2
    .parameter
    .parameter "context"
    .parameter "parent"

    .prologue
    const/4 v0, 0x0

    .line 96
    iput-object p1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->this$0:Lcom/amazon/kcp/library/ui/SnowView;

    .line 97
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 90
    iput v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteX:F

    .line 91
    iput v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    .line 98
    iput-object p3, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    .line 101
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02003a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 104
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getRandomXStartPosition()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteX:F

    .line 105
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getRandomYStartPosition()F

    move-result v0

    iput v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    .line 106
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getSnowFallingAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->setAnimation(Landroid/view/animation/Animation;)V

    .line 107
    return-void
.end method

.method static synthetic access$200(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    iget v0, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    return v0
.end method

.method static synthetic access$202(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    return p1
.end method

.method static synthetic access$302(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 75
    iput p1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteX:F

    return p1
.end method

.method static synthetic access$400(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getRandomXStartPosition()F

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)Landroid/view/animation/Animation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 75
    invoke-direct {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getSnowFallingAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method private getRandomXStartPosition()F
    .locals 3

    .prologue
    .line 111
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/SnowView;->getWidth()I

    move-result v0

    .line 112
    .local v0, parentWidth:I
    if-nez v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 118
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    invoke-static {v1}, Lcom/amazon/kcp/library/ui/SnowView;->access$000(Lcom/amazon/kcp/library/ui/SnowView;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

.method private getRandomYStartPosition()F
    .locals 3

    .prologue
    .line 123
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    invoke-virtual {v1}, Lcom/amazon/kcp/library/ui/SnowView;->getHeight()I

    move-result v0

    .line 124
    .local v0, parentHeight:I
    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 130
    :cond_0
    iget-object v1, p0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    invoke-static {v1}, Lcom/amazon/kcp/library/ui/SnowView;->access$000(Lcom/amazon/kcp/library/ui/SnowView;)Ljava/util/Random;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v1, v2

    return v1
.end method

.method private getSnowFallingAnimation()Landroid/view/animation/Animation;
    .locals 18

    .prologue
    .line 136
    invoke-virtual/range {p0 .. p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v11, v3, Landroid/util/DisplayMetrics;->density:F

    .line 137
    .local v11, displayDensity:F
    const/high16 v3, 0x41d0

    mul-float v15, v11, v3

    .line 138
    .local v15, xRandRange:F
    const/high16 v3, -0x3eb0

    mul-float v14, v3, v11

    .line 139
    .local v14, xRandOffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    move-object v3, v0

    invoke-static {v3}, Lcom/amazon/kcp/library/ui/SnowView;->access$000(Lcom/amazon/kcp/library/ui/SnowView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float/2addr v3, v15

    add-float v12, v3, v14

    .line 141
    .local v12, randX:F
    const/high16 v3, 0x4160

    mul-float v17, v11, v3

    .line 142
    .local v17, yRandRange:F
    const/high16 v3, 0x4150

    mul-float v16, v3, v11

    .line 143
    .local v16, yRandOffset:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    move-object v3, v0

    invoke-static {v3}, Lcom/amazon/kcp/library/ui/SnowView;->access$000(Lcom/amazon/kcp/library/ui/SnowView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    mul-float v3, v3, v17

    add-float v13, v3, v16

    .line 146
    .local v13, randY:F
    new-instance v2, Landroid/view/animation/TranslateAnimation;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteX:F

    move v4, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteX:F

    move v6, v0

    add-float/2addr v6, v12

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    move v8, v0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    move v10, v0

    add-float/2addr v10, v13

    invoke-direct/range {v2 .. v10}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 152
    .local v2, falling:Landroid/view/animation/Animation;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteX:F

    move v3, v0

    add-float/2addr v3, v12

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteX:F

    .line 153
    move-object/from16 v0, p0

    iget v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    move v3, v0

    add-float/2addr v3, v13

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->absoluteY:F

    .line 155
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    move-object v3, v0

    invoke-static {v3}, Lcom/amazon/kcp/library/ui/SnowView;->access$000(Lcom/amazon/kcp/library/ui/SnowView;)Ljava/util/Random;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Random;->nextFloat()F

    move-result v3

    const/high16 v4, 0x4348

    mul-float/2addr v3, v4

    const/high16 v4, 0x43c8

    add-float/2addr v3, v4

    float-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->parent:Lcom/amazon/kcp/library/ui/SnowView;

    move-object v3, v0

    invoke-static {v3}, Lcom/amazon/kcp/library/ui/SnowView;->access$100(Lcom/amazon/kcp/library/ui/SnowView;)Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 159
    invoke-direct/range {p0 .. p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;->newAnimationListener()Landroid/view/animation/Animation$AnimationListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 161
    return-object v2
.end method

.method private newAnimationListener()Landroid/view/animation/Animation$AnimationListener;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 166
    new-instance v0, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;

    new-instance v1, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;

    invoke-direct {v1, p0}, Lcom/amazon/kcp/library/ui/SnowView$SnowFlake$1;-><init>(Lcom/amazon/kcp/library/ui/SnowView$SnowFlake;)V

    invoke-direct {v0, v2, v2, v1}, Lcom/amazon/kcp/ui/RunnableExecutorAnimationListener;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    return-object v0
.end method
