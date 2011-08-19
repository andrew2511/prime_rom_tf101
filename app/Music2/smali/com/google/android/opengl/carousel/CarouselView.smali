.class public Lcom/google/android/opengl/carousel/CarouselView;
.super Lcom/google/android/opengl/glview/GLSurfaceView;
.source "CarouselView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/opengl/carousel/CarouselView$ScaleListener;,
        Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;,
        Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;,
        Lcom/google/android/opengl/carousel/CarouselView$DetailAlignment;
    }
.end annotation


# static fields
.field private static final CONTINUOUS_DRAW:Z = false

.field private static final DBG:Z = false

.field private static final DBG_BACKGROUND:Z = false

.field public static final DRAG_MODEL_CYLINDER_INSIDE:I = 0x2

.field public static final DRAG_MODEL_CYLINDER_OUTSIDE:I = 0x3

.field public static final DRAG_MODEL_PLANE:I = 0x1

.field public static final DRAG_MODEL_SCREEN_DELTA:I = 0x0

.field public static final DRAG_MODEL_TRAJECTORY:I = 0x4

.field private static final ENABLE_DEBUG_KEYS:Z = false

.field public static final FILL_DIRECTION_CCW:I = 0x1

.field public static final FILL_DIRECTION_CW:I = -0x1

.field private static INVALID_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CarouselView"


# instance fields
.field private bitmap1:Landroid/graphics/Bitmap;

.field private bitmap2:Landroid/graphics/Bitmap;

.field private currentBGBitmap:I

.field private mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

.field mConfigLandscape:Lcom/google/android/opengl/carousel/CarouselConfig;

.field mConfigPortrait:Lcom/google/android/opengl/carousel/CarouselConfig;

.field private mGestureDetector:Landroid/view/ScaleGestureDetector;

.field private mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

.field private mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

.field private mTracking:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 926
    const/4 v0, -0x2

    sput v0, Lcom/google/android/opengl/carousel/CarouselView;->INVALID_INDEX:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/opengl/carousel/CarouselView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 202
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/glview/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    iput-boolean v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    .line 49
    iput v2, p0, Lcom/google/android/opengl/carousel/CarouselView;->currentBGBitmap:I

    .line 53
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselConfig;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/CarouselConfig;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigLandscape:Lcom/google/android/opengl/carousel/CarouselConfig;

    .line 54
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselConfig;

    invoke-direct {v0, v3}, Lcom/google/android/opengl/carousel/CarouselConfig;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigPortrait:Lcom/google/android/opengl/carousel/CarouselConfig;

    .line 204
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setEGLContextClientVersion(I)V

    .line 205
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/CarouselSetting;-><init>()V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    .line 206
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    invoke-direct {v0, p1, p0, v1}, Lcom/google/android/opengl/carousel/CarouselRenderer;-><init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/opengl/carousel/CarouselSetting;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    .line 208
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRenderer(Lcom/google/android/opengl/glview/GLSurfaceView$Renderer;)V

    .line 211
    invoke-virtual {p0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setRenderMode(I)V

    .line 215
    invoke-virtual {p0, v3}, Lcom/google/android/opengl/carousel/CarouselView;->setFocusableInTouchMode(Z)V

    .line 216
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->applySettings()V

    .line 219
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/google/android/opengl/carousel/CarouselView$ScaleListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/android/opengl/carousel/CarouselView$ScaleListener;-><init>(Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/opengl/carousel/CarouselView$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 221
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$1;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselView$1;-><init>(Lcom/google/android/opengl/carousel/CarouselView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 231
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/opengl/carousel/CarouselView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->currentBGBitmap:I

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/opengl/carousel/CarouselView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->currentBGBitmap:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/opengl/carousel/CarouselView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->bitmap2:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->bitmap2:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/android/opengl/carousel/CarouselView;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->bitmap1:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/android/opengl/carousel/CarouselView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 32
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->bitmap1:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselRenderer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/android/opengl/carousel/CarouselView;)Lcom/google/android/opengl/carousel/CarouselSetting;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    return-object v0
.end method


# virtual methods
.method public applySettings()V
    .locals 0

    .prologue
    .line 244
    return-void
.end method

.method public createCards(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 433
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$2;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 444
    return-void
.end method

.method public enableFpsLog(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 973
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableFpsLog:Z

    .line 974
    return-void
.end method

.method public getCardCount()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardCount:I

    return v0
.end method

.method public getCarouselConfig(Z)Lcom/google/android/opengl/carousel/CarouselConfig;
    .locals 1
    .parameter "portrait"

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigPortrait:Lcom/google/android/opengl/carousel/CarouselConfig;

    .line 160
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigLandscape:Lcom/google/android/opengl/carousel/CarouselConfig;

    goto :goto_0
.end method

.method public getFpsLog(Z)Ljava/util/ArrayList;
    .locals 2
    .parameter "clean"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 982
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsLog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 983
    .local v0, fpsLog:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/google/android/opengl/carousel/CarouselView$FpsInfo;>;"
    if-eqz p1, :cond_0

    .line 984
    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mFpsLog:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 986
    :cond_0
    return-object v0
.end method

.method public getIntArray([I)Ljava/lang/String;
    .locals 7
    .parameter "array"

    .prologue
    .line 959
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 960
    .local v4, sb:Ljava/lang/StringBuilder;
    const/16 v5, 0x5b

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 961
    move-object v1, p1

    .local v1, arr$:[I
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget v0, v1, v2

    .line 962
    .local v0, a:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 961
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 964
    .end local v0           #a:I
    :cond_0
    const/16 v5, 0x5d

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 965
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public getRealtimeCarouselRotationAngle()F
    .locals 1

    .prologue
    .line 753
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselScene;->getRealtimeCarouselRotationAngle()F

    move-result v0

    return v0
.end method

.method public initTextureForItem(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 502
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$5;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$5;-><init>(Lcom/google/android/opengl/carousel/CarouselView;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 508
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 509
    return-void
.end method

.method public interpretLongPressEvents()Z
    .locals 1

    .prologue
    .line 458
    const/4 v0, 0x1

    return v0
.end method

.method public loadGeometry(I)Lcom/google/android/opengl/carousel/Mesh;
    .locals 1
    .parameter "resId"

    .prologue
    .line 873
    new-instance v0, Lcom/google/android/opengl/carousel/Mesh;

    invoke-direct {v0}, Lcom/google/android/opengl/carousel/Mesh;-><init>()V

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Lcom/google/android/opengl/glview/GLSurfaceView;->onDetachedFromWindow()V

    .line 167
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    invoke-interface {v0}, Lcom/google/android/opengl/carousel/CarouselCallback;->onDetachedFromWindow()V

    .line 170
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 249
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 252
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 253
    .local v1, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 255
    .local v2, y:F
    packed-switch v0, :pswitch_data_0

    .line 273
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v3}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 274
    return v4

    .line 257
    :pswitch_0
    iput-boolean v4, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    .line 258
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doStart(FF)V

    goto :goto_0

    .line 262
    :pswitch_1
    iget-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    if-eqz v3, :cond_0

    .line 263
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doMotion(FF)V

    goto :goto_0

    .line 268
    :pswitch_2
    iget-object v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v3, v3, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    invoke-virtual {v3, v1, v2}, Lcom/google/android/opengl/carousel/CarouselScene;->doStop(FF)V

    .line 269
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/android/opengl/carousel/CarouselView;->mTracking:Z

    goto :goto_0

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public setAccelerationFactor(F)V
    .locals 1
    .parameter "factor"

    .prologue
    .line 631
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationFactor:F

    .line 632
    return-void
.end method

.method public setAccelerationRatio(F)V
    .locals 1
    .parameter "ratio"

    .prologue
    .line 627
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mAccelerationRatio:F

    .line 628
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 645
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V

    .line 646
    return-void
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V
    .locals 1
    .parameter "bitmap"
    .parameter "animate"

    .prologue
    .line 649
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/carousel/Background;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 650
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 651
    return-void
.end method

.method public setBackgroundColor(FFFF)V
    .locals 2
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mBackground:Lcom/google/android/opengl/carousel/Background;

    new-instance v1, Lcom/google/android/opengl/carousel/Float4;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/google/android/opengl/carousel/Float4;-><init>(FFFF)V

    iput-object v1, v0, Lcom/google/android/opengl/carousel/Background;->mColor:Lcom/google/android/opengl/carousel/Float4;

    .line 610
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 611
    return-void
.end method

.method public setBackgroundTransitionDuration(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 858
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-wide p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mBackgroundTransitionDuration:J

    .line 859
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 860
    return-void
.end method

.method public setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V
    .locals 1
    .parameter "callback"

    .prologue
    .line 659
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    .line 660
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCallback:Lcom/google/android/opengl/carousel/CarouselCallback;

    .line 661
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 662
    return-void
.end method

.method public setCardGlowScale(F)V
    .locals 1
    .parameter "scale"

    .prologue
    .line 636
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardGlowScale:F

    .line 637
    return-void
.end method

.method public setCardRotation(F)V
    .locals 1
    .parameter "cardRotation"

    .prologue
    .line 709
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$7;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$7;-><init>(Lcom/google/android/opengl/carousel/CarouselView;F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 716
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 717
    return-void
.end method

.method public setCardXYScale(FF)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 771
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/carousel/Float2;

    iput p1, v0, Lcom/google/android/opengl/carousel/Float2;->x:F

    .line 772
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardXYScale:Lcom/google/android/opengl/carousel/Float2;

    iput p2, v0, Lcom/google/android/opengl/carousel/Float2;->y:F

    .line 773
    return-void
.end method

.method public setCardsFaceTangent(Z)V
    .locals 1
    .parameter "faceTangent"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mCardFaceTangent:Z

    .line 763
    return-void
.end method

.method public setCarouselConfig(Lcom/google/android/opengl/carousel/CarouselConfig;Lcom/google/android/opengl/carousel/CarouselConfig;)V
    .locals 0
    .parameter "landscape"
    .parameter "portrait"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigLandscape:Lcom/google/android/opengl/carousel/CarouselConfig;

    .line 149
    iput-object p2, p0, Lcom/google/android/opengl/carousel/CarouselView;->mConfigPortrait:Lcom/google/android/opengl/carousel/CarouselConfig;

    .line 150
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselRotationAngle:F

    .line 736
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$8;

    invoke-direct {v0, p0}, Lcom/google/android/opengl/carousel/CarouselView$8;-><init>(Lcom/google/android/opengl/carousel/CarouselView;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 743
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 744
    return-void
.end method

.method public setDefaultBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/16 v2, 0xde1

    const/4 v1, 0x0

    .line 564
    if-nez p1, :cond_0

    .line 571
    :goto_0
    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    .line 568
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mDefaultId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 569
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 570
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    goto :goto_0
.end method

.method public setDefaultGeometry(Lcom/google/android/opengl/carousel/Mesh;)V
    .locals 1
    .parameter "mesh"

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultGeometry:Lcom/google/android/opengl/carousel/Mesh;

    .line 901
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 902
    return-void
.end method

.method public setDetailLineBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 683
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDefaultLineBitmap:Landroid/graphics/Bitmap;

    .line 684
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 685
    return-void
.end method

.method public setDetailLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 671
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailLoadingBitmap:Landroid/graphics/Bitmap;

    .line 672
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 673
    return-void
.end method

.method public setDetailTextureAlignment(I)V
    .locals 1
    .parameter "alignment"

    .prologue
    .line 551
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDetailAlignment:I

    .line 552
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 553
    return-void
.end method

.method public setDetailTextureForItem(IFFFFLandroid/graphics/Bitmap;)V
    .locals 8
    .parameter "n"
    .parameter "offx"
    .parameter "offy"
    .parameter "loffx"
    .parameter "loffy"
    .parameter "bitmap"

    .prologue
    .line 534
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$6;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/google/android/opengl/carousel/CarouselView$6;-><init>(Lcom/google/android/opengl/carousel/CarouselView;IFFFFLandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 541
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 542
    return-void
.end method

.method public setDragFactor(F)V
    .locals 1
    .parameter "dragFactor"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragFactor:F

    .line 795
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 796
    return-void
.end method

.method public setDragModel(I)V
    .locals 1
    .parameter "model"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDragModel:I

    .line 800
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 801
    return-void
.end method

.method public setDrawCardsWithBlending(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 812
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawCardsWithBlending:Z

    .line 813
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 814
    return-void
.end method

.method public setDrawRuler(Z)V
    .locals 1
    .parameter "drawRuler"

    .prologue
    .line 419
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDrawRuler:Z

    .line 420
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 421
    return-void
.end method

.method public setEnableBoostArea(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 619
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-boolean p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mEnableBoostArea:Z

    .line 620
    return-void
.end method

.method public setFadeInDuration(J)V
    .locals 1
    .parameter "t"

    .prologue
    .line 853
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-wide p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFadeInDuration:J

    .line 854
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 855
    return-void
.end method

.method public setFillDirection(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 789
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFillDirection:I

    .line 790
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 791
    return-void
.end method

.method public setFormat(I)V
    .locals 1
    .parameter "format"

    .prologue
    .line 923
    invoke-virtual {p0}, Lcom/google/android/opengl/carousel/CarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 924
    return-void
.end method

.method public setFrictionCoefficient(F)V
    .locals 1
    .parameter "frictionCoefficient"

    .prologue
    .line 781
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mFrictionCoeff:F

    .line 782
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 783
    return-void
.end method

.method public setGeometryForItem(ILcom/google/android/opengl/carousel/Mesh;)V
    .locals 1
    .parameter "n"
    .parameter "mesh"

    .prologue
    .line 883
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$10;-><init>(Lcom/google/android/opengl/carousel/CarouselView;ILcom/google/android/opengl/carousel/Mesh;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 890
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 891
    return-void
.end method

.method public setGlowingBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bitmap"

    .prologue
    .line 591
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mGlowingBitmap:Landroid/graphics/Bitmap;

    .line 592
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 593
    return-void
.end method

.method public setLoadingBitmap(Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "bitmap"

    .prologue
    const/16 v2, 0xde1

    const/4 v1, 0x0

    .line 581
    if-nez p1, :cond_0

    .line 588
    :goto_0
    return-void

    .line 584
    :cond_0
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingBitmap:Landroid/graphics/Bitmap;

    .line 585
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mTexture:Lcom/google/android/opengl/carousel/CarouselTexture;

    iget v0, v0, Lcom/google/android/opengl/carousel/CarouselTexture;->mLoadingId:I

    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 586
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselRenderer;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v0, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingBitmap:Landroid/graphics/Bitmap;

    invoke-static {v2, v1, v0, v1}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 587
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    goto :goto_0
.end method

.method public setLoadingGeometry(Lcom/google/android/opengl/carousel/Mesh;)V
    .locals 1
    .parameter "mesh"

    .prologue
    .line 911
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mLoadingGeometry:Lcom/google/android/opengl/carousel/Mesh;

    .line 912
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 913
    return-void
.end method

.method public setLookAt([F[F[F)V
    .locals 1
    .parameter "eye"
    .parameter "at"
    .parameter "up"

    .prologue
    .line 817
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$9;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/opengl/carousel/CarouselView$9;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[F[F[F)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 827
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 828
    return-void
.end method

.method public setPrefetchCardCount(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mPrefetchCardCount:I

    .line 409
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 410
    return-void
.end method

.method public setRadius(F)V
    .locals 2
    .parameter "radius"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iget-object v1, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselRenderer;->mScene:Lcom/google/android/opengl/carousel/CarouselScene;

    iget-object v1, v1, Lcom/google/android/opengl/carousel/CarouselScene;->mCarouselCylinder:Lcom/google/android/opengl/carousel/Cylinder;

    iput p1, v1, Lcom/google/android/opengl/carousel/Cylinder;->mRadius:F

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRadius:F

    .line 701
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 702
    return-void
.end method

.method public setRecycler(Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;)V
    .locals 1
    .parameter "bitmapRecycler"

    .prologue
    .line 720
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput-object p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRecycler:Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;

    .line 721
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 722
    return-void
.end method

.method public setRezInCardCount(F)V
    .locals 1
    .parameter "n"

    .prologue
    .line 839
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRezInCardCount:F

    .line 840
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 841
    return-void
.end method

.method public setRowCount(I)V
    .locals 1
    .parameter "row"

    .prologue
    .line 705
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mRowCount:I

    .line 706
    return-void
.end method

.method public setSlotCount(I)V
    .locals 5
    .parameter "n"

    .prologue
    .line 369
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSlotCount:I

    .line 370
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    const-wide v1, 0x401921fb54442d18L

    int-to-double v3, p1

    div-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mDividAngle:F

    .line 371
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 372
    return-void
.end method

.method public setStartAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 695
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mStartAngle:F

    .line 696
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 697
    return-void
.end method

.method public setSwaySensitivity(F)V
    .locals 1
    .parameter "swaySensitivity"

    .prologue
    .line 776
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mSwaySensitivity:F

    .line 777
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 778
    return-void
.end method

.method public setTextureForItem(ILandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "n"
    .parameter "bitmap"

    .prologue
    .line 474
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$3;-><init>(Lcom/google/android/opengl/carousel/CarouselView;ILandroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 481
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 482
    return-void
.end method

.method public setTextureState(II)V
    .locals 1
    .parameter "n"
    .parameter "state"

    .prologue
    .line 485
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselView$4;-><init>(Lcom/google/android/opengl/carousel/CarouselView;II)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 491
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 492
    return-void
.end method

.method public setVisibleDetails(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 393
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleDetailCount:I

    .line 394
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 395
    return-void
.end method

.method public setVisibleSlots(I)V
    .locals 1
    .parameter "n"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mSetting:Lcom/google/android/opengl/carousel/CarouselSetting;

    iput p1, v0, Lcom/google/android/opengl/carousel/CarouselSetting;->mVisibleSlotCount:I

    .line 383
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 384
    return-void
.end method

.method public shuffle([I)V
    .locals 1
    .parameter "comeFrom"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 950
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselView$11;

    invoke-direct {v0, p0, p1}, Lcom/google/android/opengl/carousel/CarouselView$11;-><init>(Lcom/google/android/opengl/carousel/CarouselView;[I)V

    invoke-virtual {p0, v0}, Lcom/google/android/opengl/carousel/CarouselView;->queueEvent(Ljava/lang/Runnable;)V

    .line 955
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 956
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 235
    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/opengl/glview/GLSurfaceView;->surfaceChanged(Landroid/view/SurfaceHolder;III)V

    .line 236
    const-string v0, "CarouselView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v0, p0, Lcom/google/android/opengl/carousel/CarouselView;->mRenderer:Lcom/google/android/opengl/carousel/CarouselRenderer;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselRenderer;->requestRedraw()V

    .line 238
    return-void
.end method
