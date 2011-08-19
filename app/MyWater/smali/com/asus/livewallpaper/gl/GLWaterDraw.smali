.class public Lcom/asus/livewallpaper/gl/GLWaterDraw;
.super Ljava/lang/Object;
.source "GLWaterDraw.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;
    }
.end annotation


# static fields
.field public static sBackTexture:I

.field public static sIceTexture:I

.field public static sSurfaceAboveTexture:I

.field public static sSurfaceBelowTexture:I

.field public static sWaterBody:I


# instance fields
.field private m2ndTouchBubbleAction:I

.field private m2ndTouchBubbleX:I

.field private m2ndTouchBubbleY:I

.field private mAmplitude:F

.field private mBoatClip:Landroid/graphics/RectF;

.field private mBoatH:I

.field private mBoatOffset:F

.field private mBoatW:I

.field private mBoatX:F

.field private mBoatY:F

.field private final mBubbleList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/asus/livewallpaper/gl/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingBubbleTime:J

.field private mContainRect:Landroid/graphics/Rect;

.field private mCurState:I

.field private mCurrentTime:J

.field private mDegree:F

.field private mDegreeIncrease:F

.field private mDstHorizonRect:Landroid/graphics/RectF;

.field private mFPS:F

.field private mGLBackgroundItem:Lcom/asus/livewallpaper/gl/GLBackgroundItem;

.field private mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

.field private mGLIceItem:Lcom/asus/livewallpaper/gl/GLIceItem;

.field private mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

.field private mGLWaterBodyItem:Lcom/asus/livewallpaper/gl/GLWaterBodyItem;

.field private mHorizonH:I

.field private mHorizonW:I

.field private mHorizonX:F

.field private mHorizonY:F

.field mInit:Z

.field private mInitWaterHeight:F

.field private mIs2ndTouchBubbleRepeat:I

.field private mIsCreate2ndTouchBubble:Z

.field private mIsCreateChargingBubble:Z

.field private mIsCreateTouchBubble:Z

.field private mIsTouchBubbleRepeat:I

.field private mPreviousTime:J

.field private mRandomBubbleRepeat:I

.field private mRandomBubbleTime:J

.field mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

.field private mScreenRect:Landroid/graphics/Rect;

.field mStringBuilder:Ljava/lang/StringBuilder;

.field private mTimePeriod:F

.field private mTimePeriodInc:F

.field private mTouchBubbleAction:I

.field private mTouchBubbleTime:J

.field private mTouchBubbleX:I

.field private mTouchBubbleY:I

.field private final mVerts:[F

.field private mWaterHeight:F

.field mWaterLocalMatrix:Landroid/graphics/Matrix;

.field private mWaterShader:Landroid/graphics/Shader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 39
    sput v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sBackTexture:I

    .line 41
    sput v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sIceTexture:I

    .line 43
    sput v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sWaterBody:I

    .line 45
    sput v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sSurfaceAboveTexture:I

    .line 46
    sput v0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sSurfaceBelowTexture:I

    return-void
.end method

.method public constructor <init>(Lcom/asus/livewallpaper/gl/GLWaterPaperService;)V
    .locals 6
    .parameter "glWaterPaper"

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-boolean v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInit:Z

    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 324
    new-instance v0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    invoke-direct {v0, p0}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;-><init>(Lcom/asus/livewallpaper/gl/GLWaterDraw;)V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    .line 327
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    .line 330
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    .line 331
    iput-wide v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mPreviousTime:J

    .line 332
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mFPS:F

    .line 335
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    .line 336
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegreeIncrease:F

    .line 339
    const/high16 v0, 0x43b4

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mWaterHeight:F

    .line 340
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInitWaterHeight:F

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mWaterShader:Landroid/graphics/Shader;

    .line 344
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mWaterLocalMatrix:Landroid/graphics/Matrix;

    .line 347
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBubbleList:Ljava/util/LinkedList;

    .line 350
    iput-boolean v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateChargingBubble:Z

    .line 351
    iput-wide v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mChargingBubbleTime:J

    .line 354
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleRepeat:I

    .line 355
    iput-wide v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleTime:J

    .line 358
    iput-boolean v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateTouchBubble:Z

    .line 359
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleX:I

    .line 360
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleY:I

    .line 361
    const/4 v0, 0x2

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleAction:I

    .line 362
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    .line 363
    iput-wide v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleTime:J

    .line 366
    iput-boolean v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreate2ndTouchBubble:Z

    .line 367
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleX:I

    .line 368
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleY:I

    .line 369
    const/4 v0, 0x1

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleAction:I

    .line 370
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    .line 373
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriod:F

    .line 374
    const v0, 0x3c23d70a

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    .line 375
    const/high16 v0, 0x4040

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mAmplitude:F

    .line 376
    const/16 v0, 0xa4

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mVerts:[F

    .line 377
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDstHorizonRect:Landroid/graphics/RectF;

    .line 380
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    .line 381
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    .line 382
    const/16 v0, 0x50

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonH:I

    .line 383
    const/16 v0, 0x8e0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonW:I

    .line 386
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    .line 387
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatY:F

    .line 388
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatW:I

    .line 389
    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatH:I

    .line 390
    const/high16 v0, -0x3cb8

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatOffset:F

    .line 391
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatClip:Landroid/graphics/RectF;

    .line 393
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mContainRect:Landroid/graphics/Rect;

    .line 394
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreenRect:Landroid/graphics/Rect;

    .line 49
    new-instance v0, Lcom/asus/livewallpaper/gl/GLBackgroundItem;

    invoke-direct {v0}, Lcom/asus/livewallpaper/gl/GLBackgroundItem;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBackgroundItem:Lcom/asus/livewallpaper/gl/GLBackgroundItem;

    .line 50
    new-instance v0, Lcom/asus/livewallpaper/gl/GLIceItem;

    invoke-direct {v0}, Lcom/asus/livewallpaper/gl/GLIceItem;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLIceItem:Lcom/asus/livewallpaper/gl/GLIceItem;

    .line 51
    new-instance v0, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;

    invoke-direct {v0}, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLWaterBodyItem:Lcom/asus/livewallpaper/gl/GLWaterBodyItem;

    .line 52
    new-instance v0, Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    invoke-direct {v0}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    .line 53
    new-instance v0, Lcom/asus/livewallpaper/gl/GLBubbleItems;

    invoke-direct {v0}, Lcom/asus/livewallpaper/gl/GLBubbleItems;-><init>()V

    iput-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/asus/livewallpaper/gl/GLWaterDraw;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->changeState(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/asus/livewallpaper/gl/GLWaterDraw;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    return v0
.end method

.method static synthetic access$200(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    return v0
.end method

.method static synthetic access$202(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    return p1
.end method

.method static synthetic access$300(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    return v0
.end method

.method static synthetic access$302(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    return p1
.end method

.method static synthetic access$402(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mAmplitude:F

    return p1
.end method

.method static synthetic access$500(F)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    invoke-static {p0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->getCurrentAmplitude(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$602(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    return p1
.end method

.method static synthetic access$702(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    return p1
.end method

.method static synthetic access$800(Lcom/asus/livewallpaper/gl/GLWaterDraw;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInitWaterHeight:F

    return v0
.end method

.method static synthetic access$902(Lcom/asus/livewallpaper/gl/GLWaterDraw;F)F
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 25
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mWaterHeight:F

    return p1
.end method

.method private calculateAllBubblePositions(FFFF)V
    .locals 7
    .parameter "theta"
    .parameter "cos"
    .parameter "sin"
    .parameter "skip"

    .prologue
    .line 793
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBubbleList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 794
    .local v2, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/asus/livewallpaper/gl/Bubble;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 795
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/livewallpaper/gl/Bubble;

    .line 796
    .local v1, bubble:Lcom/asus/livewallpaper/gl/Bubble;
    invoke-static {v1, p2, p3, p4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->calculateBubblePostion(Lcom/asus/livewallpaper/gl/Bubble;FFF)V

    .line 798
    iget v4, v1, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    iget v5, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    sub-float/2addr v4, v5

    neg-float v4, v4

    neg-float v5, p1

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    mul-float/2addr v4, v5

    iget v5, v1, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    iget v6, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    sub-float/2addr v5, v6

    neg-float v6, p1

    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v6

    mul-float/2addr v5, v6

    add-float v3, v4, v5

    .line 799
    .local v3, rot_y:F
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonH:I

    .line 800
    .local v0, bound:I
    int-to-float v4, v0

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_0

    .line 801
    invoke-virtual {v1}, Lcom/asus/livewallpaper/gl/Bubble;->recycle()V

    .line 802
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 805
    .end local v0           #bound:I
    .end local v1           #bubble:Lcom/asus/livewallpaper/gl/Bubble;
    .end local v3           #rot_y:F
    :cond_1
    return-void
.end method

.method private static calculateBubblePostion(Lcom/asus/livewallpaper/gl/Bubble;FFF)V
    .locals 5
    .parameter "bubble"
    .parameter "cos"
    .parameter "sin"
    .parameter "skip"

    .prologue
    .line 814
    iget v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->type:I

    packed-switch v0, :pswitch_data_0

    .line 867
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    rem-long/2addr v0, v2

    long-to-float v0, v0

    .line 868
    .local v0, time:F
    const/high16 v1, 0x4120

    mul-float/2addr v1, p3

    .line 869
    .local v1, v_offset:F
    const/high16 p3, 0x4100

    iget v2, p0, Lcom/asus/livewallpaper/gl/Bubble;->id:F

    .end local p3
    const v3, 0x40490fdb

    mul-float/2addr v2, v3

    add-float/2addr v0, v2

    invoke-static {v0}, Landroid/util/FloatMath;->sin(F)F

    .end local v0           #time:F
    move-result v0

    mul-float/2addr p3, v0

    .line 871
    .local p3, h_offset:F
    iget v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    mul-float v2, v1, p1

    sub-float/2addr v0, v2

    mul-float v2, p3, p2

    sub-float/2addr v0, v2

    .line 872
    .local v0, y:F
    iget v2, p0, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    mul-float/2addr p2, v1

    sub-float p2, v2, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    .line 874
    .local p1, x:F
    invoke-virtual {p0, p1, v0}, Lcom/asus/livewallpaper/gl/Bubble;->set(FF)V

    .line 875
    .end local p2
    invoke-virtual {p0, p1, v0}, Lcom/asus/livewallpaper/gl/Bubble;->setTranslate(FF)V

    move p2, v0

    .end local v0           #y:F
    .local p2, y:F
    move p0, v1

    .line 878
    .end local v1           #v_offset:F
    .end local p3           #h_offset:F
    .local p0, v_offset:F
    :goto_0
    return-void

    .line 816
    .local p0, bubble:Lcom/asus/livewallpaper/gl/Bubble;
    .local p1, cos:F
    .local p2, sin:F
    .local p3, skip:F
    :pswitch_0
    iget v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    const v1, 0x3dcccccd

    add-float/2addr v0, v1

    iput v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    .line 817
    const/high16 v0, 0x4110

    mul-float/2addr p3, v0

    iget v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    .end local p3           #skip:F
    add-float/2addr v0, p3

    .line 818
    .local v0, v_offset:F
    const/4 p3, 0x0

    .line 820
    .local p3, h_offset:F
    iget v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    mul-float v2, v0, p1

    sub-float/2addr v1, v2

    mul-float v2, p3, p2

    sub-float/2addr v1, v2

    .line 821
    .local v1, y:F
    iget v2, p0, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    mul-float/2addr p2, v0

    sub-float p2, v2, p2

    mul-float/2addr p1, p3

    add-float/2addr p1, p2

    .line 822
    .local p1, x:F
    invoke-virtual {p0, p1, v1}, Lcom/asus/livewallpaper/gl/Bubble;->set(FF)V

    .line 823
    .end local p2           #sin:F
    invoke-virtual {p0, p1, v1}, Lcom/asus/livewallpaper/gl/Bubble;->setTranslate(FF)V

    move p2, v1

    .end local v1           #y:F
    .local p2, y:F
    move p0, v0

    .line 842
    .end local v0           #v_offset:F
    .local p0, v_offset:F
    goto :goto_0

    .line 846
    .local p0, bubble:Lcom/asus/livewallpaper/gl/Bubble;
    .local p1, cos:F
    .local p2, sin:F
    .local p3, skip:F
    :pswitch_1
    iget v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    const v1, 0x3e19999a

    iget v2, p0, Lcom/asus/livewallpaper/gl/Bubble;->bitmapid:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/livewallpaper/gl/Bubble;->id:F

    add-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    .line 847
    const/high16 v0, 0x4120

    iget v1, p0, Lcom/asus/livewallpaper/gl/Bubble;->speed:F

    add-float/2addr v0, v1

    mul-float/2addr v0, p3

    .line 850
    .restart local v0       #v_offset:F
    iget p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->y:F

    .end local p3           #skip:F
    mul-float v1, v0, p1

    sub-float v2, p3, v1

    .line 851
    .local v2, y:F
    iget p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->x:F

    mul-float v1, v0, p2

    sub-float v1, p3, v1

    .line 852
    .local v1, x:F
    invoke-virtual {p0, v1, v2}, Lcom/asus/livewallpaper/gl/Bubble;->set(FF)V

    .line 856
    iget p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->bitmapid:I

    add-int/lit8 p3, p3, 0x1

    mul-int/lit8 p3, p3, 0x5

    .line 857
    .local p3, bound:I
    iget v3, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    int-to-float v4, p3

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_0

    iget v3, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    neg-int p3, p3

    int-to-float p3, p3

    cmpg-float p3, v3, p3

    if-gez p3, :cond_1

    .line 858
    .end local p3           #bound:I
    :cond_0
    iget p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->shift:F

    neg-float p3, p3

    iput p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->shift:F

    .line 860
    :cond_1
    iget p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    iget v3, p0, Lcom/asus/livewallpaper/gl/Bubble;->shift:F

    add-float/2addr p3, v3

    iput p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    .line 861
    iget p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    mul-float/2addr p1, p3

    add-float/2addr p1, v1

    .line 862
    .local p1, bubbleX:F
    iget p3, p0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    mul-float/2addr p2, p3

    sub-float p2, v2, p2

    .line 863
    .local p2, bubbleY:F
    invoke-virtual {p0, p1, p2}, Lcom/asus/livewallpaper/gl/Bubble;->setTranslate(FF)V

    move p2, v2

    .end local v2           #y:F
    .local p2, y:F
    move p1, v1

    .end local v1           #x:F
    .local p1, x:F
    move p0, v0

    .line 864
    .end local v0           #v_offset:F
    .local p0, v_offset:F
    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private calculateHorizonPosition()V
    .locals 1

    .prologue
    .line 563
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    invoke-virtual {v0}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->calculateWaterFront()V

    .line 564
    return-void
.end method

.method private changeState(I)V
    .locals 3
    .parameter "newState"

    .prologue
    const/4 v2, 0x4

    .line 398
    packed-switch p1, :pswitch_data_0

    .line 421
    :cond_0
    :goto_0
    :pswitch_0
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    .line 422
    :cond_1
    :goto_1
    return-void

    .line 401
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInitWaterHeight:F

    .line 402
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v0, v0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    int-to-float v0, v0

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    .line 403
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v1, v1, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mScreenRotation:I

    iput v1, v0, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    goto :goto_0

    .line 407
    :pswitch_2
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 415
    :pswitch_3
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    if-ne v0, v2, :cond_0

    goto :goto_1

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private checkCreateBubble(FF)V
    .locals 4
    .parameter "cos"
    .parameter "sin"

    .prologue
    .line 637
    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    iget-wide v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mChargingBubbleTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 638
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateChargingBubble:Z

    if-eqz v0, :cond_0

    .line 639
    invoke-direct {p0, p1, p2}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createChargingBubble(FF)V

    .line 640
    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    const-wide/16 v2, 0x18b

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mChargingBubbleTime:J

    .line 644
    :cond_0
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleRepeat:I

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    iget-wide v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_4

    .line 645
    const/4 v0, 0x5

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleRepeat:I

    .line 646
    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    const-wide/16 v2, 0xbb8

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleTime:J

    .line 661
    :cond_1
    :goto_0
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleAction:I

    if-nez v0, :cond_5

    .line 662
    :cond_2
    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    iput-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleTime:J

    .line 663
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createTouchBubble()V

    .line 675
    :cond_3
    :goto_1
    return-void

    .line 648
    :cond_4
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleRepeat:I

    if-lez v0, :cond_1

    .line 649
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleRepeat:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleRepeat:I

    .line 650
    invoke-direct {p0, p1, p2}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createRandomBubble(FF)V

    goto :goto_0

    .line 665
    :cond_5
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    if-gtz v0, :cond_6

    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleAction:I

    if-nez v0, :cond_7

    .line 666
    :cond_6
    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    iput-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleTime:J

    .line 667
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createTouchBubble()V

    goto :goto_1

    .line 669
    :cond_7
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateTouchBubble:Z

    if-eqz v0, :cond_3

    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    iget-wide v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    .line 670
    iget-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleTime:J

    .line 671
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createTouchBubble()V

    goto :goto_1
.end method

.method private final createBubble(FFI)Lcom/asus/livewallpaper/gl/Bubble;
    .locals 9
    .parameter "x"
    .parameter "y"
    .parameter "type"

    .prologue
    .line 756
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    double-to-float v4, v7

    .line 757
    .local v4, id:F
    const/4 v0, 0x0

    .line 759
    .local v0, b:Lcom/asus/livewallpaper/gl/Bubble;
    if-nez p3, :cond_0

    .line 760
    sget-object v7, Lcom/asus/livewallpaper/gl/Bubble;->CHARGEBUBBLEIDS:[I

    array-length v6, v7

    .line 761
    .local v6, length:I
    int-to-float v7, v6

    mul-float/2addr v7, v4

    float-to-int v1, v7

    .line 762
    .local v1, bid:I
    invoke-static {v4, p1, p2, p3, v1}, Lcom/asus/livewallpaper/gl/Bubble;->obtain(FFFII)Lcom/asus/livewallpaper/gl/Bubble;

    move-result-object v0

    .line 763
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBubbleList:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 782
    :goto_0
    return-object v0

    .line 769
    .end local v1           #bid:I
    .end local v6           #length:I
    :cond_0
    sget-object v7, Lcom/asus/livewallpaper/gl/Bubble;->BUBBLEIDS:[I

    array-length v6, v7

    .line 770
    .restart local v6       #length:I
    mul-int/lit8 v7, v6, 0x4

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v3, v7

    .line 772
    .local v3, flag:I
    rem-int/lit8 v5, v3, 0x2

    .line 773
    .local v5, left:I
    rem-int/lit8 v1, v3, 0x3

    .line 774
    .restart local v1       #bid:I
    rem-int/lit8 v2, v3, 0x8

    .line 776
    .local v2, color:I
    const/4 v7, 0x3

    if-ge v2, v7, :cond_1

    shl-int/lit8 v7, v1, 0x1

    or-int/lit8 v7, v7, 0x1

    move v1, v7

    .line 777
    :goto_1
    invoke-static {v4, p1, p2, p3, v1}, Lcom/asus/livewallpaper/gl/Bubble;->obtain(FFFII)Lcom/asus/livewallpaper/gl/Bubble;

    move-result-object v0

    .line 778
    const/4 v7, 0x1

    if-ge v5, v7, :cond_2

    const v7, 0x3f4ccccd

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    add-float/2addr v8, v4

    mul-float/2addr v7, v8

    :goto_2
    iput v7, v0, Lcom/asus/livewallpaper/gl/Bubble;->shift:F

    .line 779
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBubbleList:Ljava/util/LinkedList;

    invoke-virtual {v7, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_1
    shl-int/lit8 v7, v1, 0x1

    move v1, v7

    goto :goto_1

    .line 778
    :cond_2
    const v7, -0x40b33333

    add-int/lit8 v8, v1, 0x1

    int-to-float v8, v8

    sub-float/2addr v8, v4

    mul-float/2addr v7, v8

    goto :goto_2
.end method

.method private createBubble(FFII)V
    .locals 2
    .parameter "x"
    .parameter "y"
    .parameter "type"
    .parameter "offset"

    .prologue
    .line 787
    invoke-direct {p0, p1, p2, p3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFI)Lcom/asus/livewallpaper/gl/Bubble;

    move-result-object v0

    .line 788
    .local v0, b:Lcom/asus/livewallpaper/gl/Bubble;
    shl-int/lit8 v1, p4, 0x1

    rem-int/lit8 v1, v1, 0x5

    int-to-float v1, v1

    iput v1, v0, Lcom/asus/livewallpaper/gl/Bubble;->offset:F

    .line 789
    return-void
.end method

.method private createChargingBubble(FF)V
    .locals 12
    .parameter "cos"
    .parameter "sin"

    .prologue
    const/4 v11, 0x0

    .line 682
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    iget-object v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mContainRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, p1

    add-float v8, v9, v10

    .line 683
    .local v8, y:F
    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    iget-object v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mContainRect:Landroid/graphics/Rect;

    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    int-to-float v10, v10

    mul-float/2addr v10, p2

    add-float v7, v9, v10

    .line 685
    .local v7, x:F
    invoke-direct {p0, v7, v8, v11, v11}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFII)V

    .line 687
    const/16 v3, 0xc8

    .line 688
    .local v3, interval:I
    const/16 v0, 0x64

    .line 690
    .local v0, bound:I
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mContainRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->left:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v9, v0

    div-int v5, v9, v3

    .line 691
    .local v5, leftnum:I
    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mContainRect:Landroid/graphics/Rect;

    iget v9, v9, Landroid/graphics/Rect;->right:I

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    sub-int/2addr v9, v0

    div-int v6, v9, v3

    .line 694
    .local v6, rightnum:I
    const/4 v4, 0x1

    .local v4, j:I
    :goto_0
    if-gt v4, v5, :cond_0

    .line 695
    mul-int v9, v3, v4

    int-to-float v9, v9

    mul-float/2addr v9, p1

    sub-float v1, v7, v9

    .line 696
    .local v1, bubbleX:F
    mul-int v9, v3, v4

    int-to-float v9, v9

    mul-float/2addr v9, p2

    add-float v2, v8, v9

    .line 697
    .local v2, bubbleY:F
    invoke-direct {p0, v1, v2, v11, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFII)V

    .line 694
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 699
    .end local v1           #bubbleX:F
    .end local v2           #bubbleY:F
    :cond_0
    const/4 v4, 0x1

    :goto_1
    if-gt v4, v6, :cond_1

    .line 700
    mul-int v9, v3, v4

    int-to-float v9, v9

    mul-float/2addr v9, p1

    add-float v1, v7, v9

    .line 701
    .restart local v1       #bubbleX:F
    mul-int v9, v3, v4

    int-to-float v9, v9

    mul-float/2addr v9, p2

    sub-float v2, v8, v9

    .line 702
    .restart local v2       #bubbleY:F
    invoke-direct {p0, v1, v2, v11, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFII)V

    .line 699
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 704
    .end local v1           #bubbleX:F
    .end local v2           #bubbleY:F
    :cond_1
    return-void
.end method

.method private createRandomBubble(FF)V
    .locals 6
    .parameter "cos"
    .parameter "sin"

    .prologue
    .line 745
    iget-object v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v4, v4, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    iget-object v5, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v5, v5, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 746
    .local v0, bound:I
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v4

    double-to-float v4, v4

    int-to-float v5, v0

    mul-float/2addr v4, v5

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    sub-float v1, v4, v5

    .line 748
    .local v1, random:F
    iget v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    iget v5, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mWaterHeight:F

    mul-float/2addr v5, p1

    add-float/2addr v4, v5

    mul-float v5, v1, p2

    sub-float v3, v4, v5

    .line 749
    .local v3, y:F
    iget v4, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    iget v5, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mWaterHeight:F

    mul-float/2addr v5, p2

    add-float/2addr v4, v5

    mul-float v5, v1, p1

    add-float v2, v4, v5

    .line 751
    .local v2, x:F
    const/4 v4, 0x1

    invoke-direct {p0, v2, v3, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFI)Lcom/asus/livewallpaper/gl/Bubble;

    .line 752
    return-void
.end method

.method private createTouchBubble()V
    .locals 6

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 709
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleAction:I

    if-nez v0, :cond_0

    .line 710
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleAction:I

    .line 711
    iput v5, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    .line 714
    :cond_0
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    .line 715
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    if-lez v0, :cond_3

    .line 716
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleX:I

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0x111

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleY:I

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsTouchBubbleRepeat:I

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFI)Lcom/asus/livewallpaper/gl/Bubble;

    .line 727
    :goto_0
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleAction:I

    if-nez v0, :cond_1

    .line 728
    iput v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleAction:I

    .line 729
    iput v5, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    .line 732
    :cond_1
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    .line 733
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    if-lez v0, :cond_4

    .line 734
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleX:I

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    shl-int/lit8 v1, v1, 0x4

    and-int/lit16 v1, v1, 0x111

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleY:I

    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIs2ndTouchBubbleRepeat:I

    and-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFI)Lcom/asus/livewallpaper/gl/Bubble;

    .line 741
    :cond_2
    :goto_1
    return-void

    .line 719
    :cond_3
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleY:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFI)Lcom/asus/livewallpaper/gl/Bubble;

    goto :goto_0

    .line 737
    :cond_4
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreate2ndTouchBubble:Z

    if-eqz v0, :cond_2

    .line 738
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleY:I

    int-to-float v1, v1

    invoke-direct {p0, v0, v1, v3}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->createBubble(FFI)Lcom/asus/livewallpaper/gl/Bubble;

    goto :goto_1
.end method

.method private static getCurrentAmplitude(F)F
    .locals 2
    .parameter "timeperiodinc"

    .prologue
    .line 426
    const/high16 v0, 0x40a0

    const v1, 0x3c75c28f

    sub-float v1, p0, v1

    mul-float/2addr v0, v1

    const v1, 0x3ca3d70a

    div-float/2addr v0, v1

    const/high16 v1, 0x4040

    add-float/2addr v0, v1

    return v0
.end method

.method private increaseDegree(F)F
    .locals 5
    .parameter "skip"

    .prologue
    .line 541
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v2, v2, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_1

    .line 543
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v2, v2, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    invoke-static {v2, v3}, Lcom/asus/livewallpaper/gl/MyFloatMath;->getCircleDegreeDiffer(FF)F

    move-result v1

    .line 544
    .local v1, differ:F
    const/high16 v2, 0x4120

    const/high16 v3, 0x3f00

    const v4, 0x3e051eb8

    invoke-static {v1, v2, v3, v4}, Lcom/asus/livewallpaper/gl/MyFloatMath;->getAppropriateIncValue(FFFF)F

    move-result v2

    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegreeIncrease:F

    .line 545
    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegreeIncrease:F

    mul-float v0, p1, v2

    .line 547
    .local v0, degreeinc:F
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    .line 548
    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v2, v2, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mSensorOrientation:I

    int-to-float v2, v2

    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    .line 558
    .end local v0           #degreeinc:F
    .end local v1           #differ:F
    :goto_0
    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    return v2

    .line 551
    .restart local v0       #degreeinc:F
    .restart local v1       #differ:F
    :cond_0
    iget v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    add-float/2addr v2, v0

    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegree:F

    goto :goto_0

    .line 555
    .end local v0           #degreeinc:F
    .end local v1           #differ:F
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegreeIncrease:F

    goto :goto_0
.end method


# virtual methods
.method public drawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/16 v3, 0xbe2

    const/4 v2, 0x1

    .line 98
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 101
    const/4 v0, 0x0

    invoke-static {p1, v2, v0}, Lcom/asus/livewallpaper/gl/Grid;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;ZZ)V

    .line 104
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 105
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 108
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBackgroundItem:Lcom/asus/livewallpaper/gl/GLBackgroundItem;

    sget v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sBackTexture:I

    invoke-virtual {v0, p1, v1}, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 109
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLWaterBodyItem:Lcom/asus/livewallpaper/gl/GLWaterBodyItem;

    sget v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sWaterBody:I

    invoke-virtual {v0, p1, v1}, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 112
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 113
    const/16 v0, 0x303

    invoke-interface {p1, v2, v0}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 116
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    sget v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sSurfaceBelowTexture:I

    invoke-virtual {v0, p1, v1}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 117
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLIceItem:Lcom/asus/livewallpaper/gl/GLIceItem;

    sget v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sIceTexture:I

    invoke-virtual {v0, p1, v1}, Lcom/asus/livewallpaper/gl/GLIceItem;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 118
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    sget v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sSurfaceAboveTexture:I

    invoke-virtual {v0, p1, v1}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 119
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBubbleList:Ljava/util/LinkedList;

    invoke-virtual {v0, p1, v1}, Lcom/asus/livewallpaper/gl/GLBubbleItems;->draw(Ljavax/microedition/khronos/opengles/GL10;Ljava/util/LinkedList;)V

    .line 122
    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 125
    invoke-static {p1}, Lcom/asus/livewallpaper/gl/Grid;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 126
    return-void
.end method

.method public getIsDelayFPS()Z
    .locals 1

    .prologue
    .line 431
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected init(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 58
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInit:Z

    if-nez v0, :cond_0

    .line 59
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 60
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInit:Z

    .line 63
    :cond_0
    return-void
.end method

.method public loadBitmap(Landroid/content/Context;Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "ctx"
    .parameter "gl"

    .prologue
    const/4 v3, 0x1

    .line 135
    const v1, 0x7f02000b

    invoke-static {p2, p1, v1, v3}, Lcom/asus/livewallpaper/gl/MyGLUtils;->LoadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)I

    move-result v1

    sput v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sBackTexture:I

    .line 136
    const v1, 0x7f02000d

    const/4 v2, 0x0

    invoke-static {p2, p1, v1, v2}, Lcom/asus/livewallpaper/gl/MyGLUtils;->LoadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)I

    move-result v1

    sput v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sIceTexture:I

    .line 137
    const v1, 0x7f02000c

    invoke-static {p2, p1, v1, v3}, Lcom/asus/livewallpaper/gl/MyGLUtils;->LoadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)I

    move-result v1

    sput v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sWaterBody:I

    .line 138
    const v1, 0x7f020011

    invoke-static {p2, p1, v1, v3}, Lcom/asus/livewallpaper/gl/MyGLUtils;->LoadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)I

    move-result v1

    sput v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sSurfaceBelowTexture:I

    .line 139
    const v1, 0x7f020010

    invoke-static {p2, p1, v1, v3}, Lcom/asus/livewallpaper/gl/MyGLUtils;->LoadTexture(Ljavax/microedition/khronos/opengles/GL10;Landroid/content/Context;IZ)I

    move-result v1

    sput v1, Lcom/asus/livewallpaper/gl/GLWaterDraw;->sSurfaceAboveTexture:I

    .line 141
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

    iget-object v1, v1, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 142
    iget-object v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

    iget-object v1, v1, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

    iget-object v2, v2, Lcom/asus/livewallpaper/gl/GLBubbleItems;->mBubbleItem:[Lcom/asus/livewallpaper/gl/GLBubbleItem;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/asus/livewallpaper/gl/GLBubbleItem;->mDrawableId:I

    invoke-static {p2, v2, p1}, Lcom/asus/livewallpaper/gl/MyGLUtils;->LoadTexture(Ljavax/microedition/khronos/opengles/GL10;ILandroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/asus/livewallpaper/gl/GLBubbleItem;->setTexture(I)V

    .line 141
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 144
    :cond_0
    return-void
.end method

.method public moveBoatPosition(F)V
    .locals 2
    .parameter "x"

    .prologue
    .line 883
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatOffset:F

    const/high16 v1, -0x3cb8

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 884
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatOffset:F

    .line 890
    :goto_0
    return-void

    .line 887
    :cond_0
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    iget v1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatOffset:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    .line 888
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatOffset:F

    goto :goto_0
.end method

.method resize(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "w"
    .parameter "h"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/high16 v0, 0x3f80

    .line 67
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 71
    const/16 v0, 0xbd0

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 74
    const/16 v0, 0xc50

    const/16 v1, 0x1101

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 79
    invoke-interface {p1, v3, v3, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 81
    const/16 v0, 0x1701

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 82
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 84
    int-to-float v0, p2

    int-to-float v1, p3

    invoke-static {p1, v2, v0, v2, v1}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 86
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 87
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 89
    iget-object v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

    invoke-virtual {v0, p2, p3}, Lcom/asus/livewallpaper/gl/GLBubbleItems;->setScreen(II)V

    .line 90
    return-void
.end method

.method public run(J)V
    .locals 12
    .parameter "currentTime"

    .prologue
    .line 436
    iget-wide v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mPreviousTime:J

    cmp-long v7, p1, v7

    if-gtz v7, :cond_0

    .line 437
    iget-wide v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mPreviousTime:J

    const-wide/16 v9, 0x1

    add-long p1, v7, v9

    .line 440
    :cond_0
    iget-wide v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mPreviousTime:J

    sub-long v7, p1, v7

    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v9

    iget v9, v9, Lcom/asus/livewallpaper/gl/ConfigLoader;->fix_sec_per_frame:I

    int-to-long v9, v9

    div-long/2addr v7, v9

    long-to-float v7, v7

    const/high16 v8, 0x3f80

    const/high16 v9, 0x40c0

    invoke-static {v7, v8, v9}, Lcom/asus/livewallpaper/gl/MyFloatMath;->bound(FFF)F

    move-result v5

    .line 441
    .local v5, skip:F
    iput-wide p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    .line 442
    const-wide/16 v7, 0x3e8

    iget-wide v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mPreviousTime:J

    sub-long v9, p1, v9

    div-long/2addr v7, v9

    long-to-float v7, v7

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mFPS:F

    .line 444
    const/4 v3, 0x0

    .line 445
    .local v3, eraseOrientation:F
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    if-eqz v7, :cond_2

    .line 446
    invoke-direct {p0, v5}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->increaseDegree(F)F

    move-result v2

    .line 447
    .local v2, degree:F
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    invoke-virtual {v7, v2}, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->eraseScreenOrientation(F)F

    move-result v3

    .line 452
    .end local v2           #degree:F
    :goto_0
    invoke-static {v3}, Lcom/asus/livewallpaper/gl/MyFloatMath;->toRadians(F)F

    move-result v6

    .line 453
    .local v6, theta:F
    invoke-static {v6}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    .line 454
    .local v1, cos:F
    invoke-static {v6}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 456
    .local v4, sin:F
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreenRect:Landroid/graphics/Rect;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v10, v10, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    iget-object v11, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v11, v11, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 457
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreenRect:Landroid/graphics/Rect;

    iget-object v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mContainRect:Landroid/graphics/Rect;

    invoke-static {v7, v8, v3, v9, v10}, Lcom/asus/livewallpaper/gl/Utils$Graph;->calculateBoundingRect(FFFLandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 460
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurState:I

    packed-switch v7, :pswitch_data_0

    .line 504
    :cond_1
    :goto_1
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriod:F

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriod:F

    .line 506
    invoke-direct {p0}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->calculateHorizonPosition()V

    .line 508
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDstHorizonRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonW:I

    neg-int v8, v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 509
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDstHorizonRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonW:I

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 510
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDstHorizonRect:Landroid/graphics/RectF;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonH:I

    const/16 v9, 0x28

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 511
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDstHorizonRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v8, v8, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    int-to-float v8, v8

    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 514
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBackgroundItem:Lcom/asus/livewallpaper/gl/GLBackgroundItem;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    const/4 v10, 0x0

    sub-int/2addr v9, v10

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Lcom/asus/livewallpaper/gl/GLBackgroundItem;->moveToWorld(FF)V

    .line 517
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->moveToWorld(FF)V

    .line 518
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v3}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->moveTo(FFFF)V

    .line 519
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriod:F

    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mAmplitude:F

    invoke-virtual {v7, v8, v9}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->prepareHorizonMesh(FF)V

    .line 520
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->loadMesh(Z)V

    .line 523
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLWaterBodyItem:Lcom/asus/livewallpaper/gl/GLWaterBodyItem;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->moveToWorld(FF)V

    .line 524
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLWaterBodyItem:Lcom/asus/livewallpaper/gl/GLWaterBodyItem;

    const/4 v8, 0x0

    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonH:I

    const/16 v10, 0x28

    sub-int/2addr v9, v10

    neg-int v9, v9

    int-to-float v9, v9

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10, v3}, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->moveTo(FFFF)V

    .line 525
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLWaterBodyItem:Lcom/asus/livewallpaper/gl/GLWaterBodyItem;

    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mContainRect:Landroid/graphics/Rect;

    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    invoke-virtual {v7, v8}, Lcom/asus/livewallpaper/gl/GLWaterBodyItem;->setBundaryHeight(F)V

    .line 528
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLIceItem:Lcom/asus/livewallpaper/gl/GLIceItem;

    iget-object v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v8, v8, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mWidth:I

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    invoke-virtual {v7, v8, v9, v10}, Lcom/asus/livewallpaper/gl/GLIceItem;->calculateBoatX(IIF)F

    move-result v7

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    .line 529
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLIceItem:Lcom/asus/livewallpaper/gl/GLIceItem;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriod:F

    iget v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mAmplitude:F

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    iget-object v11, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLSurfaceItem:Lcom/asus/livewallpaper/gl/GLSurfaceItem;

    iget v11, v11, Lcom/asus/livewallpaper/gl/GLSurfaceItem;->mWidth:F

    invoke-virtual {v7, v8, v9, v10, v11}, Lcom/asus/livewallpaper/gl/GLIceItem;->calculateBoatY(FFFF)F

    move-result v0

    .line 530
    .local v0, boaty:F
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLIceItem:Lcom/asus/livewallpaper/gl/GLIceItem;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonX:F

    iget-object v9, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mScreen:Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;

    iget v9, v9, Lcom/asus/livewallpaper/gl/GLWaterDraw$DeviceEnvironment;->mHeight:I

    int-to-float v9, v9

    iget v10, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mHorizonY:F

    sub-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Lcom/asus/livewallpaper/gl/GLIceItem;->moveToWorld(FF)V

    .line 531
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLIceItem:Lcom/asus/livewallpaper/gl/GLIceItem;

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v0, v9, v3}, Lcom/asus/livewallpaper/gl/GLIceItem;->moveTo(FFFF)V

    .line 533
    invoke-direct {p0, v6, v1, v4, v5}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->calculateAllBubblePositions(FFFF)V

    .line 534
    iget-object v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mGLBubbleItems:Lcom/asus/livewallpaper/gl/GLBubbleItems;

    invoke-virtual {v7, v3}, Lcom/asus/livewallpaper/gl/GLBubbleItems;->setRotate(F)V

    .line 535
    iput-wide p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mPreviousTime:J

    .line 537
    return-void

    .line 450
    .end local v0           #boaty:F
    .end local v1           #cos:F
    .end local v4           #sin:F
    .end local v6           #theta:F
    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    .line 463
    .restart local v1       #cos:F
    .restart local v4       #sin:F
    .restart local v6       #theta:F
    :pswitch_0
    const v7, 0x3d0f5c29

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    .line 464
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInitWaterHeight:F

    const/high16 v8, 0x4080

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInitWaterHeight:F

    .line 465
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    invoke-static {v7}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->getCurrentAmplitude(F)F

    move-result v7

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mAmplitude:F

    .line 466
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mInitWaterHeight:F

    iget v8, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mWaterHeight:F

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_1

    .line 467
    iget-wide v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mCurrentTime:J

    const-wide/16 v9, 0xbb8

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mRandomBubbleTime:J

    .line 468
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->changeState(I)V

    goto/16 :goto_1

    .line 473
    :pswitch_1
    invoke-direct {p0, v1, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->checkCreateBubble(FF)V

    goto/16 :goto_1

    .line 477
    :pswitch_2
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    const v8, 0x3951b717

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    .line 478
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    invoke-static {v7}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->getCurrentAmplitude(F)F

    move-result v7

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mAmplitude:F

    .line 479
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    const v8, 0x3c75c28f

    cmpg-float v7, v7, v8

    if-gtz v7, :cond_3

    .line 480
    const v7, 0x3c75c28f

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTimePeriodInc:F

    .line 481
    const/high16 v7, 0x4040

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mAmplitude:F

    .line 482
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->changeState(I)V

    .line 484
    :cond_3
    invoke-direct {p0, v1, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->checkCreateBubble(FF)V

    goto/16 :goto_1

    .line 488
    :pswitch_3
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    const/high16 v8, 0x4040

    mul-float/2addr v8, v5

    sub-float/2addr v7, v8

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    .line 489
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegreeIncrease:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 490
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->changeState(I)V

    .line 492
    :cond_4
    invoke-direct {p0, v1, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->checkCreateBubble(FF)V

    goto/16 :goto_1

    .line 496
    :pswitch_4
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    const/high16 v8, 0x4040

    mul-float/2addr v8, v5

    add-float/2addr v7, v8

    iput v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mBoatX:F

    .line 497
    iget v7, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mDegreeIncrease:F

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_5

    .line 498
    const/4 v7, 0x4

    invoke-direct {p0, v7}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->changeState(I)V

    .line 500
    :cond_5
    invoke-direct {p0, v1, v4}, Lcom/asus/livewallpaper/gl/GLWaterDraw;->checkCreateBubble(FF)V

    goto/16 :goto_1

    .line 460
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_2
    .end packed-switch
.end method

.method public set2ndTouchBubbleCreatePostion(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "action"

    .prologue
    .line 615
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 617
    :cond_0
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleX:I

    .line 618
    iput p2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleY:I

    .line 620
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreate2ndTouchBubble:Z

    if-nez v0, :cond_1

    .line 621
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreate2ndTouchBubble:Z

    .line 622
    const/4 p3, 0x0

    .line 625
    :cond_1
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleAction:I

    if-eqz v0, :cond_2

    .line 627
    iput p3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->m2ndTouchBubbleAction:I

    .line 633
    :cond_2
    :goto_0
    return-void

    .line 631
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreate2ndTouchBubble:Z

    goto :goto_0
.end method

.method public setContinueCreate2ndTouchBubble(Z)V
    .locals 0
    .parameter "isContinue"

    .prologue
    .line 581
    iput-boolean p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreate2ndTouchBubble:Z

    .line 582
    return-void
.end method

.method public setContinueCreateChargingBubble(Z)V
    .locals 1
    .parameter "isContinue"

    .prologue
    .line 567
    invoke-static {}, Lcom/asus/livewallpaper/gl/ConfigLoader;->getInstance()Lcom/asus/livewallpaper/gl/ConfigLoader;

    move-result-object v0

    iget-boolean v0, v0, Lcom/asus/livewallpaper/gl/ConfigLoader;->test_force_charge:Z

    if-eqz v0, :cond_0

    .line 568
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateChargingBubble:Z

    .line 572
    :goto_0
    return-void

    .line 570
    :cond_0
    iput-boolean p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateChargingBubble:Z

    goto :goto_0
.end method

.method public setContinueCreateTouchBubble(Z)V
    .locals 0
    .parameter "isContinue"

    .prologue
    .line 576
    iput-boolean p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateTouchBubble:Z

    .line 577
    return-void
.end method

.method public setTouchBubbleCreatePostion(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "action"

    .prologue
    .line 586
    iput p1, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleX:I

    .line 587
    iput p2, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleY:I

    .line 596
    if-eqz p3, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_3

    .line 598
    :cond_0
    iget-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateTouchBubble:Z

    if-nez v0, :cond_1

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateTouchBubble:Z

    .line 600
    const/4 p3, 0x0

    .line 603
    :cond_1
    iget v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleAction:I

    if-eqz v0, :cond_2

    .line 605
    iput p3, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mTouchBubbleAction:I

    .line 611
    :cond_2
    :goto_0
    return-void

    .line 609
    :cond_3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/livewallpaper/gl/GLWaterDraw;->mIsCreateTouchBubble:Z

    goto :goto_0
.end method
