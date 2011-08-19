.class public final Lcom/ecareme/pixwe/media/RenderView;
.super Landroid/opengl/GLSurfaceView;
.source "RenderView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ecareme/pixwe/media/RenderView$Lists;,
        Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;,
        Lcom/ecareme/pixwe/media/RenderView$TextureReference;
    }
.end annotation


# static fields
.field private static final EVENT_FOCUS:I = 0x3

.field private static final EVENT_KEY:I = 0x2

.field private static final EVENT_NONE:I = 0x0

.field private static final MAX_LOADING_COUNT:I = 0x8

.field private static final NUM_TEXTURE_LOAD_THREADS:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RenderView"

.field private static sCachedTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

.field private static final sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

.field private static final sLoadInputQueue:Lcom/ecareme/pixwe/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Deque",
            "<",
            "Lcom/ecareme/pixwe/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadInputQueueCached:Lcom/ecareme/pixwe/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Deque",
            "<",
            "Lcom/ecareme/pixwe/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadInputQueueVideo:Lcom/ecareme/pixwe/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Deque",
            "<",
            "Lcom/ecareme/pixwe/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sLoadOutputQueue:Lcom/ecareme/pixwe/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Deque",
            "<",
            "Lcom/ecareme/pixwe/media/Texture;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTextureLoadThreads:[Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

.field private static sVideoTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

.field static final textureId:[I


# instance fields
.field private final mActiveTextureList:Lcom/ecareme/pixwe/media/DirectLinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/DirectLinkedList",
            "<",
            "Lcom/ecareme/pixwe/media/RenderView$TextureReference;",
            ">;"
        }
    .end annotation
.end field

.field private mAlpha:F

.field private mBoundTexture:Lcom/ecareme/pixwe/media/Texture;

.field private mCurrentEventType:I

.field private mCurrentKeyEvent:Landroid/view/KeyEvent;

.field private mCurrentKeyEventResult:Z

.field private mFirstDraw:Z

.field private mFrameInterval:F

.field private mFrameTime:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field private mListsDirty:Z

.field private mLoadingCount:I

.field private mLoadingExpensiveTexturesStartTime:J

.field private volatile mPendingSensorEvent:Z

.field private mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private final mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ecareme/pixwe/media/Deque",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation
.end field

.field private mTouchEventTarget:Lcom/ecareme/pixwe/media/Layer;

.field private final mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

.field private mViewHeight:I

.field private mViewWidth:I

.field private final sCacheScaled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/ResourceTexture;",
            ">;"
        }
    .end annotation
.end field

.field private final sCacheUnscaled:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/ResourceTexture;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    new-instance v0, Lcom/ecareme/pixwe/media/RenderView$Lists;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/RenderView$Lists;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    .line 75
    new-instance v0, Lcom/ecareme/pixwe/media/Deque;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Deque;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueue:Lcom/ecareme/pixwe/media/Deque;

    .line 76
    new-instance v0, Lcom/ecareme/pixwe/media/Deque;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Deque;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueueCached:Lcom/ecareme/pixwe/media/Deque;

    .line 77
    new-instance v0, Lcom/ecareme/pixwe/media/Deque;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Deque;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueueVideo:Lcom/ecareme/pixwe/media/Deque;

    .line 78
    new-instance v0, Lcom/ecareme/pixwe/media/Deque;

    invoke-direct {v0}, Lcom/ecareme/pixwe/media/Deque;-><init>()V

    sput-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadOutputQueue:Lcom/ecareme/pixwe/media/Deque;

    .line 79
    sput-object v1, Lcom/ecareme/pixwe/media/RenderView;->sCachedTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    .line 80
    sput-object v1, Lcom/ecareme/pixwe/media/RenderView;->sVideoTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    .line 81
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    sput-object v0, Lcom/ecareme/pixwe/media/RenderView;->sTextureLoadThreads:[Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    .line 480
    const/4 v0, 0x1

    new-array v0, v0, [I

    sput-object v0, Lcom/ecareme/pixwe/media/RenderView;->textureId:[I

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 134
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 59
    iput-object v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 60
    iput v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewWidth:I

    .line 61
    iput v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    .line 63
    iput-object v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    .line 64
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mListsDirty:Z

    .line 67
    iput-object v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventTarget:Lcom/ecareme/pixwe/media/Layer;

    .line 69
    iput v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentEventType:I

    .line 70
    iput-object v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 71
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentKeyEventResult:Z

    .line 72
    iput-boolean v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mPendingSensorEvent:Z

    .line 74
    iput v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    .line 83
    new-instance v2, Lcom/ecareme/pixwe/media/Deque;

    invoke-direct {v2}, Lcom/ecareme/pixwe/media/Deque;-><init>()V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;

    .line 84
    new-instance v2, Lcom/ecareme/pixwe/media/DirectLinkedList;

    invoke-direct {v2}, Lcom/ecareme/pixwe/media/DirectLinkedList;-><init>()V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mActiveTextureList:Lcom/ecareme/pixwe/media/DirectLinkedList;

    .line 86
    new-instance v2, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v2}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    .line 90
    iput-wide v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mFrameTime:J

    .line 91
    const/4 v2, 0x0

    iput v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mFrameInterval:F

    .line 94
    iput-wide v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 95
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    .line 96
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    .line 135
    invoke-virtual {p0, v3}, Lcom/ecareme/pixwe/media/RenderView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 136
    invoke-virtual {p0, v4}, Lcom/ecareme/pixwe/media/RenderView;->setFocusable(Z)V

    .line 137
    invoke-virtual {p0, p0}, Lcom/ecareme/pixwe/media/RenderView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 138
    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    .line 139
    sget-object v2, Lcom/ecareme/pixwe/media/RenderView;->sCachedTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    if-nez v2, :cond_0

    .line 140
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    .line 152
    .end local v0           #i:I
    :cond_0
    return-void

    .line 141
    .restart local v0       #i:I
    :cond_1
    new-instance v1, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    invoke-direct {v1, p0}, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;-><init>(Lcom/ecareme/pixwe/media/RenderView;)V

    .line 142
    .local v1, thread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;
    if-nez v0, :cond_2

    .line 143
    sput-object v1, Lcom/ecareme/pixwe/media/RenderView;->sCachedTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    .line 145
    :cond_2
    if-ne v0, v4, :cond_3

    .line 146
    sput-object v1, Lcom/ecareme/pixwe/media/RenderView;->sVideoTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    .line 148
    :cond_3
    sget-object v2, Lcom/ecareme/pixwe/media/RenderView;->sTextureLoadThreads:[Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    aput-object v1, v2, v0

    .line 149
    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;->start()V

    .line 140
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static synthetic access$0()Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;
    .locals 1

    .prologue
    .line 80
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sVideoTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    return-object v0
.end method

.method static synthetic access$1()Lcom/ecareme/pixwe/media/Deque;
    .locals 1

    .prologue
    .line 77
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueueVideo:Lcom/ecareme/pixwe/media/Deque;

    return-object v0
.end method

.method static synthetic access$2()Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sCachedTextureLoadThread:Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    return-object v0
.end method

.method static synthetic access$3()Lcom/ecareme/pixwe/media/Deque;
    .locals 1

    .prologue
    .line 76
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueueCached:Lcom/ecareme/pixwe/media/Deque;

    return-object v0
.end method

.method static synthetic access$4()Lcom/ecareme/pixwe/media/Deque;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueue:Lcom/ecareme/pixwe/media/Deque;

    return-object v0
.end method

.method static synthetic access$5()Lcom/ecareme/pixwe/media/Deque;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLoadOutputQueue:Lcom/ecareme/pixwe/media/Deque;

    return-object v0
.end method

.method static synthetic access$6(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/Texture;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 230
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->loadTextureAsync(Lcom/ecareme/pixwe/media/Texture;)V

    return-void
.end method

.method private clearTextureArray(Landroid/util/SparseArray;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/ecareme/pixwe/media/ResourceTexture;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/ecareme/pixwe/media/ResourceTexture;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 198
    return-void
.end method

.method private getResourceInternal(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;
    .locals 3
    .parameter "resourceId"
    .parameter "scaled"

    .prologue
    .line 177
    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    move-object v0, v2

    .line 178
    .local v0, cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/ecareme/pixwe/media/ResourceTexture;>;"
    :goto_0
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/ResourceTexture;

    .line 179
    .local v1, texture:Lcom/ecareme/pixwe/media/ResourceTexture;
    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 180
    new-instance v1, Lcom/ecareme/pixwe/media/ResourceTexture;

    .end local v1           #texture:Lcom/ecareme/pixwe/media/ResourceTexture;
    invoke-direct {v1, p1, p2}, Lcom/ecareme/pixwe/media/ResourceTexture;-><init>(IZ)V

    .line 181
    .restart local v1       #texture:Lcom/ecareme/pixwe/media/ResourceTexture;
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 183
    :cond_0
    return-object v1

    .line 177
    .end local v0           #cache:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/ecareme/pixwe/media/ResourceTexture;>;"
    .end local v1           #texture:Lcom/ecareme/pixwe/media/ResourceTexture;
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    move-object v0, v2

    goto :goto_0
.end method

.method private hitTest(FF)Lcom/ecareme/pixwe/media/Layer;
    .locals 7
    .parameter "x"
    .parameter "y"

    .prologue
    .line 748
    sget-object v5, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    iget-object v0, v5, Lcom/ecareme/pixwe/media/RenderView$Lists;->hitTestList:Ljava/util/ArrayList;

    .line 749
    .local v0, hitTestList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int v1, v5, v6

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_0

    .line 760
    const/4 v5, 0x0

    :goto_1
    return-object v5

    .line 750
    :cond_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ecareme/pixwe/media/Layer;

    .line 751
    .local v2, layer:Lcom/ecareme/pixwe/media/Layer;
    if-eqz v2, :cond_1

    iget-boolean v5, v2, Lcom/ecareme/pixwe/media/Layer;->mHidden:Z

    if-nez v5, :cond_1

    .line 752
    iget v3, v2, Lcom/ecareme/pixwe/media/Layer;->mX:F

    .line 753
    .local v3, layerX:F
    iget v4, v2, Lcom/ecareme/pixwe/media/Layer;->mY:F

    .line 754
    .local v4, layerY:F
    cmpl-float v5, p1, v3

    if-ltz v5, :cond_1

    cmpl-float v5, p2, v4

    if-ltz v5, :cond_1

    iget v5, v2, Lcom/ecareme/pixwe/media/Layer;->mWidth:F

    add-float/2addr v5, v3

    cmpg-float v5, p1, v5

    if-gez v5, :cond_1

    iget v5, v2, Lcom/ecareme/pixwe/media/Layer;->mHeight:F

    add-float/2addr v5, v4

    cmpg-float v5, p2, v5

    if-gez v5, :cond_1

    .line 755
    invoke-virtual {v2, p1, p2}, Lcom/ecareme/pixwe/media/Layer;->containsPoint(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v2

    .line 756
    goto :goto_1

    .line 749
    .end local v3           #layerX:F
    .end local v4           #layerY:F
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method private loadTextureAsync(Lcom/ecareme/pixwe/media/Texture;)V
    .locals 14
    .parameter "texture"

    .prologue
    const/4 v13, 0x0

    .line 232
    :try_start_0
    invoke-virtual {p1, p0}, Lcom/ecareme/pixwe/media/Texture;->load(Lcom/ecareme/pixwe/media/RenderView;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 233
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 234
    const/16 v10, 0x400

    invoke-static {v0, v10}, Lcom/ecareme/pixwe/media/Utils;->resizeBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 235
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    .line 236
    .local v9, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 237
    .local v5, height:I
    iput v9, p1, Lcom/ecareme/pixwe/media/Texture;->mWidth:I

    .line 238
    iput v5, p1, Lcom/ecareme/pixwe/media/Texture;->mHeight:I

    .line 241
    invoke-static {v9}, Lcom/ecareme/pixwe/media/Shared;->isPowerOf2(I)Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-static {v5}, Lcom/ecareme/pixwe/media/Shared;->isPowerOf2(I)Z

    move-result v10

    if-nez v10, :cond_4

    .line 242
    :cond_0
    invoke-static {v9}, Lcom/ecareme/pixwe/media/Shared;->nextPowerOf2(I)I

    move-result v8

    .line 243
    .local v8, paddedWidth:I
    invoke-static {v5}, Lcom/ecareme/pixwe/media/Shared;->nextPowerOf2(I)I

    move-result v7

    .line 244
    .local v7, paddedHeight:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v2

    .line 245
    .local v2, config:Landroid/graphics/Bitmap$Config;
    if-nez v2, :cond_1

    .line 246
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 247
    :cond_1
    mul-int v10, v9, v5

    const/high16 v11, 0x4

    if-lt v10, v11, :cond_2

    .line 248
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    .line 249
    :cond_2
    invoke-static {v8, v7, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 250
    .local v6, padded:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 251
    .local v1, canvas:Landroid/graphics/Canvas;
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v1, v0, v10, v11, v12}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 252
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 253
    move-object v0, v6

    .line 256
    int-to-float v10, v9

    int-to-float v11, v8

    div-float/2addr v10, v11

    iput v10, p1, Lcom/ecareme/pixwe/media/Texture;->mNormalizedWidth:F

    .line 257
    int-to-float v10, v5

    int-to-float v11, v7

    div-float/2addr v10, v11

    iput v10, p1, Lcom/ecareme/pixwe/media/Texture;->mNormalizedHeight:F

    .line 263
    .end local v1           #canvas:Landroid/graphics/Canvas;
    .end local v2           #config:Landroid/graphics/Bitmap$Config;
    .end local v5           #height:I
    .end local v6           #padded:Landroid/graphics/Bitmap;
    .end local v7           #paddedHeight:I
    .end local v8           #paddedWidth:I
    .end local v9           #width:I
    :cond_3
    :goto_0
    iput-object v0, p1, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 270
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :goto_1
    return-void

    .line 259
    .restart local v0       #bitmap:Landroid/graphics/Bitmap;
    .restart local v5       #height:I
    .restart local v9       #width:I
    :cond_4
    const/high16 v10, 0x3f80

    iput v10, p1, Lcom/ecareme/pixwe/media/Texture;->mNormalizedWidth:F

    .line 260
    const/high16 v10, 0x3f80

    iput v10, p1, Lcom/ecareme/pixwe/media/Texture;->mNormalizedHeight:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 264
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v5           #height:I
    .end local v9           #width:I
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 265
    .local v3, e:Ljava/lang/Exception;
    iput-object v13, p1, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 266
    .end local v3           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v10

    move-object v4, v10

    .line 267
    .local v4, eMem:Ljava/lang/OutOfMemoryError;
    const-string v10, "RenderView"

    const-string v11, "Bitmap power of 2 creation fail, outofmemory"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->handleLowMemory()V

    goto :goto_1
.end method

.method private processCurrentEvent()V
    .locals 2

    .prologue
    .line 667
    iget v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentEventType:I

    .line 668
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 678
    :goto_0
    monitor-enter p0

    .line 679
    const/4 v1, 0x0

    :try_start_0
    iput v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentEventType:I

    .line 680
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 678
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    return-void

    .line 670
    :pswitch_0
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/RenderView;->processKeyEvent()V

    goto :goto_0

    .line 673
    :pswitch_1
    invoke-direct {p0}, Lcom/ecareme/pixwe/media/RenderView;->processFocusEvent()V

    goto :goto_0

    .line 678
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 668
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private processFocusEvent()V
    .locals 0

    .prologue
    .line 745
    return-void
.end method

.method private processKeyEvent()V
    .locals 4

    .prologue
    .line 725
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 726
    .local v0, event:Landroid/view/KeyEvent;
    const/4 v1, 0x0

    .line 727
    .local v1, result:Z
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 730
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v2, :cond_0

    .line 731
    invoke-virtual {v0}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    .line 732
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/ecareme/pixwe/media/RootLayer;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 737
    :cond_0
    :goto_0
    iput-boolean v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentKeyEventResult:Z

    .line 738
    return-void

    .line 734
    :cond_1
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/ecareme/pixwe/media/RootLayer;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method private processTextures(Z)V
    .locals 9
    .parameter "processAll"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 485
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 487
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    :goto_0
    iget-object v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v5}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v4

    check-cast v4, Lcom/ecareme/pixwe/media/RenderView$TextureReference;

    .local v4, textureReference:Lcom/ecareme/pixwe/media/RenderView$TextureReference;
    if-nez v4, :cond_2

    .line 495
    sget-object v2, Lcom/ecareme/pixwe/media/RenderView;->sLoadOutputQueue:Lcom/ecareme/pixwe/media/Deque;

    .line 499
    .local v2, outputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    :cond_0
    monitor-enter v2

    .line 500
    :try_start_0
    invoke-virtual {v2}, Lcom/ecareme/pixwe/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ecareme/pixwe/media/Texture;

    .line 499
    .local v3, texture:Lcom/ecareme/pixwe/media/Texture;
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 502
    if-eqz v3, :cond_1

    .line 504
    sget-object v5, Lcom/ecareme/pixwe/media/RenderView;->textureId:[I

    invoke-direct {p0, v3, v5}, Lcom/ecareme/pixwe/media/RenderView;->uploadTexture(Lcom/ecareme/pixwe/media/Texture;[I)V

    .line 507
    iget v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    sub-int/2addr v5, v8

    iput v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    .line 497
    if-nez p1, :cond_0

    .line 512
    :cond_1
    return-void

    .line 488
    .end local v2           #outputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    .end local v3           #texture:Lcom/ecareme/pixwe/media/Texture;
    :cond_2
    sget-object v5, Lcom/ecareme/pixwe/media/RenderView;->textureId:[I

    iget v6, v4, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->textureId:I

    aput v6, v5, v7

    .line 489
    iget-object v1, v4, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->gl:Ljavax/microedition/khronos/opengles/GL11;

    .line 490
    .local v1, glOld:Ljavax/microedition/khronos/opengles/GL11;
    if-ne v1, v0, :cond_3

    .line 491
    sget-object v5, Lcom/ecareme/pixwe/media/RenderView;->textureId:[I

    invoke-interface {v0, v8, v5, v7}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteTextures(I[II)V

    .line 493
    :cond_3
    iget-object v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mActiveTextureList:Lcom/ecareme/pixwe/media/DirectLinkedList;

    iget-object v6, v4, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->activeListEntry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    invoke-virtual {v5, v6}, Lcom/ecareme/pixwe/media/DirectLinkedList;->remove(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    goto :goto_0

    .line 499
    .end local v1           #glOld:Ljavax/microedition/khronos/opengles/GL11;
    .restart local v2       #outputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method private processTouchEvent()V
    .locals 8

    .prologue
    .line 685
    const/4 v2, 0x0

    .line 686
    .local v2, event:Landroid/view/MotionEvent;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/Deque;->size()I

    move-result v4

    .line 687
    .local v4, numEvents:I
    const/4 v3, 0x0

    .line 690
    .local v3, i:I
    :cond_0
    iget-object v7, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;

    monitor-enter v7

    .line 691
    :try_start_0
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/Deque;->pollFirst()Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/view/MotionEvent;

    move-object v2, v0

    .line 690
    monitor-exit v7

    .line 693
    if-nez v2, :cond_1

    .line 721
    :goto_0
    return-void

    .line 690
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 697
    :cond_1
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 699
    .local v1, action:I
    if-nez v1, :cond_6

    .line 700
    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    invoke-direct {p0, v6, v7}, Lcom/ecareme/pixwe/media/RenderView;->hitTest(FF)Lcom/ecareme/pixwe/media/Layer;

    move-result-object v5

    .line 701
    .local v5, target:Lcom/ecareme/pixwe/media/Layer;
    iput-object v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventTarget:Lcom/ecareme/pixwe/media/Layer;

    .line 707
    :goto_1
    if-eqz v5, :cond_2

    .line 708
    invoke-virtual {v5, v2}, Lcom/ecareme/pixwe/media/Layer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 712
    :cond_2
    const/4 v6, 0x1

    if-eq v1, v6, :cond_3

    const/4 v6, 0x3

    if-ne v1, v6, :cond_4

    .line 713
    :cond_3
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventTarget:Lcom/ecareme/pixwe/media/Layer;

    .line 715
    :cond_4
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 716
    add-int/lit8 v3, v3, 0x1

    .line 717
    if-eqz v2, :cond_5

    if-lt v3, v4, :cond_0

    .line 718
    :cond_5
    monitor-enter p0

    .line 719
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 718
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v6

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v6

    .line 703
    .end local v5           #target:Lcom/ecareme/pixwe/media/Layer;
    :cond_6
    iget-object v5, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventTarget:Lcom/ecareme/pixwe/media/Layer;

    .restart local v5       #target:Lcom/ecareme/pixwe/media/Layer;
    goto :goto_1
.end method

.method private queueLoad(Lcom/ecareme/pixwe/media/Texture;Z)V
    .locals 4
    .parameter "texture"
    .parameter "highPriority"

    .prologue
    .line 336
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Texture;->shouldQueue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 363
    :goto_0
    return-void

    .line 341
    :cond_0
    const/4 v2, 0x2

    iput v2, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 344
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Texture;->isUncachedVideo()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueueVideo:Lcom/ecareme/pixwe/media/Deque;

    move-object v0, v2

    .line 347
    .local v0, inputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    :goto_1
    monitor-enter v0

    .line 348
    if-eqz p2, :cond_4

    .line 349
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/Deque;->addFirst(Ljava/lang/Object;)V

    .line 352
    iget v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    const/16 v3, 0x8

    if-lt v2, v3, :cond_1

    .line 353
    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/Deque;->pollLast()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ecareme/pixwe/media/Texture;

    .line 354
    .local v1, unloadTexture:Lcom/ecareme/pixwe/media/Texture;
    const/4 v2, 0x0

    iput v2, v1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 355
    iget v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    .line 360
    .end local v1           #unloadTexture:Lcom/ecareme/pixwe/media/Texture;
    :cond_1
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 347
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    iget v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    goto :goto_0

    .line 345
    .end local v0           #inputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    :cond_2
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Texture;->isCached()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueueCached:Lcom/ecareme/pixwe/media/Deque;

    move-object v0, v2

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/ecareme/pixwe/media/RenderView;->sLoadInputQueue:Lcom/ecareme/pixwe/media/Deque;

    move-object v0, v2

    goto :goto_1

    .line 358
    .restart local v0       #inputQueue:Lcom/ecareme/pixwe/media/Deque;,"Lcom/ecareme/pixwe/media/Deque<Lcom/ecareme/pixwe/media/Texture;>;"
    :cond_4
    :try_start_1
    invoke-virtual {v0, p1}, Lcom/ecareme/pixwe/media/Deque;->addLast(Ljava/lang/Object;)V

    goto :goto_2

    .line 347
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private updateLists()V
    .locals 3

    .prologue
    .line 764
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v0, :cond_0

    .line 765
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    monitor-enter v0

    .line 766
    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView$Lists;->clear()V

    .line 767
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    sget-object v2, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    invoke-virtual {v1, p0, v2}, Lcom/ecareme/pixwe/media/RootLayer;->generate(Lcom/ecareme/pixwe/media/RenderView;Lcom/ecareme/pixwe/media/RenderView$Lists;)V

    .line 765
    monitor-exit v0

    .line 770
    :cond_0
    return-void

    .line 765
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private uploadTexture(Lcom/ecareme/pixwe/media/Texture;[I)V
    .locals 13
    .parameter "texture"
    .parameter "textureId"

    .prologue
    const/4 v12, 0x3

    const/4 v8, 0x1

    const v11, 0x46180400

    const/16 v9, 0xde1

    const/4 v10, 0x0

    .line 515
    iget-object v0, p1, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 516
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 517
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v3, 0x0

    .line 518
    .local v3, glError:I
    if-eqz v0, :cond_2

    .line 519
    iget v6, p1, Lcom/ecareme/pixwe/media/Texture;->mWidth:I

    .line 520
    .local v6, width:I
    iget v4, p1, Lcom/ecareme/pixwe/media/Texture;->mHeight:I

    .line 523
    .local v4, height:I
    const/4 v7, 0x4

    new-array v1, v7, [I

    aput v4, v1, v8

    const/4 v7, 0x2

    aput v6, v1, v7

    neg-int v7, v4

    aput v7, v1, v12

    .line 526
    .local v1, cropRect:[I
    invoke-interface {v2, v8, p2, v10}, Ljavax/microedition/khronos/opengles/GL11;->glGenTextures(I[II)V

    .line 527
    aget v7, p2, v10

    invoke-interface {v2, v9, v7}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 528
    const v7, 0x8b9d

    invoke-interface {v2, v9, v7, v1, v10}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 529
    const/16 v7, 0x2802

    const v8, 0x812f

    invoke-interface {v2, v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 530
    const/16 v7, 0x2803

    const v8, 0x812f

    invoke-interface {v2, v9, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteri(III)V

    .line 531
    const/16 v7, 0x2801

    invoke-interface {v2, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 532
    const/16 v7, 0x2800

    invoke-interface {v2, v9, v7, v11}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameterf(IIF)V

    .line 533
    invoke-static {v9, v10, v0, v10}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 534
    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL11;->glGetError()I

    move-result v3

    .line 536
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 537
    const/16 v7, 0x505

    if-ne v3, v7, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->handleLowMemory()V

    .line 540
    :cond_0
    if-eqz v3, :cond_1

    .line 543
    const-string v7, "RenderView"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Texture creation fail, glError "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    iput v10, p1, Lcom/ecareme/pixwe/media/Texture;->mId:I

    .line 545
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 546
    iput v10, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 562
    .end local v1           #cropRect:[I
    .end local v4           #height:I
    .end local v6           #width:I
    :goto_0
    return-void

    .line 549
    .restart local v1       #cropRect:[I
    .restart local v4       #height:I
    .restart local v6       #width:I
    :cond_1
    const/4 v7, 0x0

    iput-object v7, p1, Lcom/ecareme/pixwe/media/Texture;->mBitmap:Landroid/graphics/Bitmap;

    .line 550
    aget v7, p2, v10

    iput v7, p1, Lcom/ecareme/pixwe/media/Texture;->mId:I

    .line 551
    iput v12, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 554
    new-instance v5, Lcom/ecareme/pixwe/media/RenderView$TextureReference;

    iget-object v7, p0, Lcom/ecareme/pixwe/media/RenderView;->mUnreferencedTextureQueue:Ljava/lang/ref/ReferenceQueue;

    aget v8, p2, v10

    invoke-direct {v5, p1, v2, v7, v8}, Lcom/ecareme/pixwe/media/RenderView$TextureReference;-><init>(Lcom/ecareme/pixwe/media/Texture;Ljavax/microedition/khronos/opengles/GL11;Ljava/lang/ref/ReferenceQueue;I)V

    .line 555
    .local v5, textureRef:Lcom/ecareme/pixwe/media/RenderView$TextureReference;
    iget-object v7, p0, Lcom/ecareme/pixwe/media/RenderView;->mActiveTextureList:Lcom/ecareme/pixwe/media/DirectLinkedList;

    iget-object v8, v5, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->activeListEntry:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    invoke-virtual {v7, v8}, Lcom/ecareme/pixwe/media/DirectLinkedList;->add(Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;)V

    .line 556
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    goto :goto_0

    .line 559
    .end local v1           #cropRect:[I
    .end local v4           #height:I
    .end local v5           #textureRef:Lcom/ecareme/pixwe/media/RenderView$TextureReference;
    .end local v6           #width:I
    :cond_2
    const/4 v7, 0x4

    iput v7, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/ecareme/pixwe/media/Texture;)Z
    .locals 4
    .parameter "texture"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 273
    if-eqz p1, :cond_1

    .line 274
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mBoundTexture:Lcom/ecareme/pixwe/media/Texture;

    if-ne p1, v0, :cond_0

    move v0, v3

    .line 294
    :goto_0
    return v0

    .line 276
    :cond_0
    iget v0, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_1
    :pswitch_0
    move v0, v2

    .line 294
    goto :goto_0

    .line 278
    :pswitch_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/ecareme/pixwe/media/ResourceTexture;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 279
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->loadTexture(Lcom/ecareme/pixwe/media/Texture;)V

    move v0, v2

    .line 280
    goto :goto_0

    .line 282
    :cond_2
    iget v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 283
    invoke-direct {p0, p1, v2}, Lcom/ecareme/pixwe/media/RenderView;->queueLoad(Lcom/ecareme/pixwe/media/Texture;Z)V

    goto :goto_1

    .line 287
    :pswitch_2
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    const/16 v1, 0xde1

    iget v2, p1, Lcom/ecareme/pixwe/media/Texture;->mId:I

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL11;->glBindTexture(II)V

    .line 288
    iput-object p1, p0, Lcom/ecareme/pixwe/media/RenderView;->mBoundTexture:Lcom/ecareme/pixwe/media/Texture;

    move v0, v3

    .line 289
    goto :goto_0

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public bindMixed(Lcom/ecareme/pixwe/media/Texture;Lcom/ecareme/pixwe/media/Texture;F)Z
    .locals 10
    .parameter "from"
    .parameter "to"
    .parameter "ratio"

    .prologue
    const v9, 0x47057500

    const v8, 0x44408000

    const/4 v7, 0x0

    const/high16 v6, 0x3f80

    const/16 v5, 0x2300

    .line 391
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 392
    .local v2, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/4 v0, 0x1

    .line 393
    .local v0, bind:Z
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 394
    const v3, 0x84c1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 395
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mBoundTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 396
    invoke-virtual {p0, p2}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v3

    and-int/2addr v0, v3

    .line 397
    if-nez v0, :cond_0

    move v3, v7

    .line 421
    :goto_0
    return v3

    .line 402
    :cond_0
    const/16 v3, 0xde1

    invoke-interface {v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 405
    const/16 v3, 0x2200

    const v4, 0x47057000

    invoke-interface {v2, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 406
    const v3, 0x8571

    invoke-interface {v2, v5, v3, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 407
    const v3, 0x8572

    invoke-interface {v2, v5, v3, v9}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 411
    const/4 v3, 0x4

    new-array v1, v3, [F

    aput v6, v1, v7

    const/4 v3, 0x1

    aput v6, v1, v3

    const/4 v3, 0x2

    aput v6, v1, v3

    const/4 v3, 0x3

    aput p3, v1, v3

    .line 412
    .local v1, color:[F
    const/16 v3, 0x2201

    invoke-interface {v2, v5, v3, v1, v7}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 415
    const v3, 0x8582

    const v4, 0x47057600

    invoke-interface {v2, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 416
    const v3, 0x8592

    invoke-interface {v2, v5, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 419
    const v3, 0x858a

    const v4, 0x47057600

    invoke-interface {v2, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 420
    const v3, 0x859a

    invoke-interface {v2, v5, v3, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 421
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public clearCache()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->sCacheScaled:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/RenderView;->clearTextureArray(Landroid/util/SparseArray;)V

    .line 188
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->sCacheUnscaled:Landroid/util/SparseArray;

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/RenderView;->clearTextureArray(Landroid/util/SparseArray;)V

    .line 189
    return-void
.end method

.method public draw2D(FFFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    sub-float v2, v1, p5

    move v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 387
    return-void
.end method

.method public draw2D(Lcom/ecareme/pixwe/media/Texture;FF)V
    .locals 6
    .parameter "texture"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 366
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 367
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Texture;->getWidth()I

    move-result v0

    int-to-float v4, v0

    .line 368
    .local v4, width:F
    invoke-virtual {p1}, Lcom/ecareme/pixwe/media/Texture;->getHeight()I

    move-result v0

    int-to-float v5, v0

    .line 369
    .local v5, height:F
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    sub-float v2, v1, v5

    const/4 v3, 0x0

    move v1, p2

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 371
    .end local v4           #width:F
    .end local v5           #height:F
    :cond_0
    return-void
.end method

.method public draw2D(Lcom/ecareme/pixwe/media/Texture;FFFF)V
    .locals 6
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 374
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    int-to-float v1, v1

    sub-float/2addr v1, p3

    sub-float v2, v1, p5

    const/4 v3, 0x0

    move v1, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 377
    :cond_0
    return-void
.end method

.method public draw2D(Lcom/ecareme/pixwe/media/Texture;IIII)V
    .locals 6
    .parameter "texture"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 381
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    iget v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    sub-int/2addr v1, p3

    sub-int v2, v1, p5

    const/4 v3, 0x0

    move v1, p2

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 383
    :cond_0
    return-void
.end method

.method public drawMixed2D(Lcom/ecareme/pixwe/media/Texture;Lcom/ecareme/pixwe/media/Texture;FFFFFF)V
    .locals 9
    .parameter "from"
    .parameter "to"
    .parameter "ratio"
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 435
    iget-object v8, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 438
    .local v8, gl:Ljavax/microedition/khronos/opengles/GL11;
    invoke-virtual {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 439
    const v1, 0x84c1

    invoke-interface {v8, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 440
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mBoundTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 441
    invoke-virtual {p0, p2}, Lcom/ecareme/pixwe/media/RenderView;->bind(Lcom/ecareme/pixwe/media/Texture;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 443
    const/16 v1, 0xde1

    invoke-interface {v8, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 446
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x47057000

    invoke-interface {v8, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 447
    const/16 v1, 0x2300

    const v2, 0x8571

    const v3, 0x47057500

    invoke-interface {v8, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 448
    const/16 v1, 0x2300

    const v2, 0x8572

    const v3, 0x47057500

    invoke-interface {v8, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 452
    const/4 v1, 0x4

    new-array v7, v1, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f80

    aput v2, v7, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f80

    aput v2, v7, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f80

    aput v2, v7, v1

    const/4 v1, 0x3

    aput p3, v7, v1

    .line 453
    .local v7, color:[F
    const/16 v1, 0x2300

    const/16 v2, 0x2201

    const/4 v3, 0x0

    invoke-interface {v8, v1, v2, v7, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvfv(II[FI)V

    .line 456
    const/16 v1, 0x2300

    const v2, 0x8582

    const v3, 0x47057600

    invoke-interface {v8, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 457
    const/16 v1, 0x2300

    const v2, 0x8592

    const v3, 0x44408000

    invoke-interface {v8, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 460
    const/16 v1, 0x2300

    const v2, 0x858a

    const v3, 0x47057600

    invoke-interface {v8, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 461
    const/16 v1, 0x2300

    const v2, 0x859a

    const v3, 0x44408000

    invoke-interface {v8, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 464
    move-object v0, v8

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11Ext;

    move-object v1, v0

    iget v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    int-to-float v2, v2

    sub-float/2addr v2, p5

    sub-float v3, v2, p8

    move v2, p4

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-interface/range {v1 .. v6}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 467
    const/16 v1, 0xde1

    invoke-interface {v8, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 471
    .end local v7           #color:[F
    :cond_0
    const v1, 0x84c0

    invoke-interface {v8, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 472
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mBoundTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 474
    :cond_1
    return-void
.end method

.method public elapsedLoadingExpensiveTextures()J
    .locals 4

    .prologue
    .line 326
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 327
    .local v0, startTime:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 328
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    .line 330
    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 305
    iget v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mAlpha:F

    return v0
.end method

.method public getFrameInterval()F
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mFrameInterval:F

    return v0
.end method

.method public getFrameTime()J
    .locals 2

    .prologue
    .line 203
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mFrameTime:J

    return-wide v0
.end method

.method public getLists()Lcom/ecareme/pixwe/media/RenderView$Lists;
    .locals 1

    .prologue
    .line 1048
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    return-object v0
.end method

.method public getResource(I)Lcom/ecareme/pixwe/media/ResourceTexture;
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 169
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->getResourceInternal(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getResource(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;
    .locals 1
    .parameter "resourceId"
    .parameter "scaled"

    .prologue
    .line 173
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/media/RenderView;->getResourceInternal(IZ)Lcom/ecareme/pixwe/media/ResourceTexture;

    move-result-object v0

    return-object v0
.end method

.method public getRootLayer()Lcom/ecareme/pixwe/media/RootLayer;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    return-object v0
.end method

.method public handleLowMemory()V
    .locals 2

    .prologue
    .line 1041
    const-string v0, "RenderView"

    const-string v1, "Handling low memory condition"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1042
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v0, :cond_0

    .line 1043
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RootLayer;->handleLowMemory()V

    .line 1045
    :cond_0
    return-void
.end method

.method public isLoadingExpensiveTextures()Z
    .locals 4

    .prologue
    .line 322
    iget-wide v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public loadTexture(Lcom/ecareme/pixwe/media/Texture;)V
    .locals 2
    .parameter "texture"

    .prologue
    .line 217
    if-eqz p1, :cond_0

    .line 218
    iget v1, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    packed-switch v1, :pswitch_data_0

    .line 228
    :cond_0
    :goto_0
    return-void

    .line 221
    :pswitch_0
    const/4 v1, 0x1

    new-array v0, v1, [I

    .line 222
    .local v0, textureId:[I
    const/4 v1, 0x2

    iput v1, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 223
    invoke-direct {p0, p1}, Lcom/ecareme/pixwe/media/RenderView;->loadTextureAsync(Lcom/ecareme/pixwe/media/Texture;)V

    .line 224
    invoke-direct {p0, p1, v0}, Lcom/ecareme/pixwe/media/RenderView;->uploadTexture(Lcom/ecareme/pixwe/media/Texture;[I)V

    goto :goto_0

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 890
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 980
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onAttachedToWindow()V

    .line 981
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 985
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 986
    return-void
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 26
    .parameter "gl1"

    .prologue
    .line 589
    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v7, v0

    .line 590
    .local v7, gl:Ljavax/microedition/khronos/opengles/GL11;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/RenderView;->mFirstDraw:Z

    move/from16 v21, v0

    if-nez v21, :cond_0

    .line 591
    const-string v21, "RenderView"

    const-string v22, "First Draw"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    :cond_0
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/ecareme/pixwe/media/RenderView;->mFirstDraw:Z

    .line 596
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/RenderView;->mListsDirty:Z

    move/from16 v21, v0

    if-eqz v21, :cond_1

    .line 597
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RenderView;->updateLists()V

    .line 600
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RenderView;->isLoadingExpensiveTextures()Z

    move-result v20

    .line 601
    .local v20, wasLoadingExpensiveTextures:Z
    const/4 v12, 0x0

    .line 602
    .local v12, loadingExpensiveTextures:Z
    sget-object v21, Lcom/ecareme/pixwe/media/RenderView;->sTextureLoadThreads:[Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    move-object/from16 v0, v21

    array-length v0, v0

    move v15, v0

    .line 603
    .local v15, numTextureThreads:I
    const/4 v8, 0x2

    .local v8, i:I
    :goto_0
    if-lt v8, v15, :cond_4

    .line 609
    :goto_1
    move v0, v12

    move/from16 v1, v20

    if-eq v0, v1, :cond_2

    .line 610
    if-eqz v12, :cond_6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v21

    :goto_2
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/RenderView;->mLoadingExpensiveTexturesStartTime:J

    .line 614
    :cond_2
    const/16 v21, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/ecareme/pixwe/media/RenderView;->processTextures(Z)V

    .line 617
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 618
    .local v13, now:J
    const v21, 0x3a83126f

    const-wide/16 v22, 0x32

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/ecareme/pixwe/media/RenderView;->mFrameTime:J

    move-wide/from16 v24, v0

    sub-long v24, v13, v24

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-float v0, v0

    move/from16 v22, v0

    mul-float v6, v21, v22

    .line 619
    .local v6, dt:F
    move v0, v6

    move-object/from16 v1, p0

    iput v0, v1, Lcom/ecareme/pixwe/media/RenderView;->mFrameInterval:F

    .line 620
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/ecareme/pixwe/media/RenderView;->mFrameTime:J

    .line 623
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RenderView;->processCurrentEvent()V

    .line 624
    invoke-direct/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RenderView;->processTouchEvent()V

    .line 626
    sget-object v11, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    .line 627
    .local v11, lists:Lcom/ecareme/pixwe/media/RenderView$Lists;
    monitor-enter v11

    .line 628
    :try_start_0
    move-object v0, v11

    iget-object v0, v0, Lcom/ecareme/pixwe/media/RenderView$Lists;->updateList:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 629
    .local v19, updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    const/4 v9, 0x0

    .line 630
    .local v9, isDirty:Z
    const/4 v8, 0x0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v18

    .end local p1
    .local v18, size:I
    :goto_3
    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 634
    if-eqz v9, :cond_3

    .line 635
    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 639
    :cond_3
    const/16 v21, 0x100

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 640
    const/16 v21, 0xc11

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 641
    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RenderView;->getWidth()I

    move-result v23

    invoke-virtual/range {p0 .. p0}, Lcom/ecareme/pixwe/media/RenderView;->getHeight()I

    move-result v24

    move-object v0, v7

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glScissor(IIII)V

    .line 644
    const/16 v21, 0xbe2

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 645
    move-object v0, v11

    iget-object v0, v0, Lcom/ecareme/pixwe/media/RenderView$Lists;->opaqueList:Ljava/util/ArrayList;

    move-object/from16 v16, v0

    .line 646
    .local v16, opaqueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x1

    sub-int v8, v21, v22

    :goto_4
    if-gez v8, :cond_8

    .line 654
    const/16 v21, 0xbe2

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 655
    iget-object v5, v11, Lcom/ecareme/pixwe/media/RenderView$Lists;->blendedList:Ljava/util/ArrayList;

    .line 656
    .local v5, blendedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    const/4 v8, 0x0

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v18

    :goto_5
    move v0, v8

    move/from16 v1, v18

    if-ne v0, v1, :cond_a

    .line 662
    const/16 v21, 0xbe2

    move-object v0, v7

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 627
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    return-void

    .line 604
    .end local v5           #blendedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    .end local v6           #dt:F
    .end local v9           #isDirty:Z
    .end local v11           #lists:Lcom/ecareme/pixwe/media/RenderView$Lists;
    .end local v13           #now:J
    .end local v16           #opaqueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    .end local v18           #size:I
    .end local v19           #updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    .restart local p1
    :cond_4
    sget-object v21, Lcom/ecareme/pixwe/media/RenderView;->sTextureLoadThreads:[Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;

    aget-object v21, v21, v8

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/RenderView$TextureLoadThread;->mIsLoading:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    .line 605
    const/4 v12, 0x1

    .line 606
    goto/16 :goto_1

    .line 603
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 610
    :cond_6
    const-wide/16 v21, 0x0

    goto/16 :goto_2

    .line 631
    .end local p1
    .restart local v6       #dt:F
    .restart local v9       #isDirty:Z
    .restart local v11       #lists:Lcom/ecareme/pixwe/media/RenderView$Lists;
    .restart local v13       #now:J
    .restart local v18       #size:I
    .restart local v19       #updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    :cond_7
    :try_start_1
    move-object/from16 v0, v19

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ecareme/pixwe/media/Layer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ecareme/pixwe/media/RenderView;->mFrameInterval:F

    move/from16 v21, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/Layer;->update(Lcom/ecareme/pixwe/media/RenderView;F)Z

    move-result v17

    .line 632
    .local v17, retVal:Z
    or-int v9, v9, v17

    .line 630
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_3

    .line 647
    .end local v17           #retVal:Z
    .restart local v16       #opaqueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    :cond_8
    move-object/from16 v0, v16

    move v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ecareme/pixwe/media/Layer;

    .line 648
    .local v10, layer:Lcom/ecareme/pixwe/media/Layer;
    move-object v0, v10

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/Layer;->mHidden:Z

    move/from16 v21, v0

    if-nez v21, :cond_9

    .line 649
    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/Layer;->renderOpaque(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 646
    :cond_9
    add-int/lit8 v8, v8, -0x1

    goto :goto_4

    .line 657
    .end local v10           #layer:Lcom/ecareme/pixwe/media/Layer;
    .restart local v5       #blendedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    :cond_a
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/ecareme/pixwe/media/Layer;

    .line 658
    .restart local v10       #layer:Lcom/ecareme/pixwe/media/Layer;
    move-object v0, v10

    iget-boolean v0, v0, Lcom/ecareme/pixwe/media/Layer;->mHidden:Z

    move/from16 v21, v0

    if-nez v21, :cond_b

    .line 659
    move-object v0, v10

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/Layer;->renderBlended(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 656
    :cond_b
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 627
    .end local v5           #blendedList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    .end local v9           #isDirty:Z
    .end local v10           #layer:Lcom/ecareme/pixwe/media/Layer;
    .end local v16           #opaqueList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    .end local v18           #size:I
    .end local v19           #updateList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    :catchall_0
    move-exception v21

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v21
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 0
    .parameter "gainFocus"
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    .line 922
    invoke-super {p0, p1, p2, p3}, Landroid/opengl/GLSurfaceView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 936
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 937
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const-wide/16 v5, 0x32

    .line 943
    iget-object v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v3, :cond_0

    .line 944
    const/4 v3, 0x0

    .line 970
    :goto_0
    return v3

    .line 949
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 950
    :try_start_1
    iput-object p2, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentKeyEvent:Landroid/view/KeyEvent;

    .line 951
    const/4 v3, 0x2

    iput v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentEventType:I

    .line 952
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    add-long v1, v3, v5

    .line 955
    .local v1, timeout:J
    :cond_1
    const-wide/16 v3, 0x32

    invoke-virtual {p0, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 956
    iget v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentEventType:I

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    cmp-long v3, v3, v1

    if-ltz v3, :cond_1

    .line 949
    :cond_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 963
    .end local v1           #timeout:J
    :goto_1
    const/4 v0, 0x0

    .line 964
    .local v0, retVal:Z
    iget-boolean v3, p0, Lcom/ecareme/pixwe/media/RenderView;->mCurrentKeyEventResult:Z

    if-nez v3, :cond_3

    .line 965
    invoke-super {p0, p1, p2}, Landroid/opengl/GLSurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    .line 969
    :goto_2
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    move v3, v0

    .line 970
    goto :goto_0

    .line 949
    .end local v0           #retVal:Z
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 958
    :catch_0
    move-exception v3

    goto :goto_1

    .line 967
    .restart local v0       #retVal:Z
    :cond_3
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 578
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 579
    const-string v0, "RenderView"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnPause RenderView "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 581
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v0}, Lcom/ecareme/pixwe/media/RootLayer;->onPause()V

    .line 584
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 566
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 567
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    .line 568
    .local v0, sensorAccelerometer:Landroid/hardware/Sensor;
    if-eqz v0, :cond_0

    .line 569
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 571
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v1, :cond_1

    .line 572
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RootLayer;->onResume()V

    .line 574
    :cond_1
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3
    .parameter "event"

    .prologue
    .line 894
    iget-object v2, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    .line 895
    .local v1, type:I
    iget-boolean v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mPendingSensorEvent:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 896
    move-object v0, p1

    .line 897
    .local v0, e:Landroid/hardware/SensorEvent;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v2, :cond_0

    .line 898
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v2, p0, v0}, Lcom/ecareme/pixwe/media/RootLayer;->onSensorChanged(Lcom/ecareme/pixwe/media/RenderView;Landroid/hardware/SensorEvent;)V

    .line 900
    .end local v0           #e:Landroid/hardware/SensorEvent;
    :cond_0
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 8
    .parameter "gl1"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v7, 0x0

    .line 777
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 778
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iput-boolean v7, p0, Lcom/ecareme/pixwe/media/RenderView;->mFirstDraw:Z

    .line 779
    iput p2, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewWidth:I

    .line 780
    iput p3, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    .line 781
    iget-object v4, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v4, :cond_0

    .line 782
    iget-object v4, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    int-to-float v5, p2

    int-to-float v6, p3

    invoke-virtual {v4, v5, v6}, Lcom/ecareme/pixwe/media/RootLayer;->setSize(FF)V

    .line 786
    :cond_0
    const v3, 0x3dcccccd

    .line 787
    .local v3, zNear:F
    const/high16 v2, 0x42c8

    .line 788
    .local v2, zFar:F
    invoke-interface {v1, v7, v7, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glViewport(IIII)V

    .line 789
    const/16 v4, 0x1701

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 790
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 791
    const/high16 v4, 0x4234

    int-to-float v5, p2

    int-to-float v6, p3

    div-float/2addr v5, v6

    const v6, 0x3dcccccd

    const/high16 v7, 0x42c8

    invoke-static {v1, v4, v5, v6, v7}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 792
    iget-object v4, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v4, :cond_1

    .line 793
    iget-object v4, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v4, p0, p2, p3}, Lcom/ecareme/pixwe/media/RootLayer;->onSurfaceChanged(Lcom/ecareme/pixwe/media/RenderView;II)V

    .line 795
    :cond_1
    const/16 v4, 0x1700

    invoke-interface {v1, v4}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 796
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 13
    .parameter "gl1"
    .parameter "config"

    .prologue
    const v12, 0x8078

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 813
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->clearCache()V

    .line 815
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    .line 816
    .local v1, gl:Ljavax/microedition/khronos/opengles/GL11;
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v6, :cond_2

    .line 817
    iput-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 823
    :goto_0
    invoke-virtual {p0, v10}, Lcom/ecareme/pixwe/media/RenderView;->setRenderMode(I)V

    .line 829
    const/16 v6, 0xbd0

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 830
    const/16 v6, 0xb50

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 836
    const/16 v6, 0xde1

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 837
    const/16 v6, 0x2300

    const/16 v7, 0x2200

    const v8, 0x45f00800

    invoke-interface {v1, v6, v7, v8}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 848
    const v6, 0x8074

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 849
    invoke-interface {v1, v12}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 850
    const v6, 0x84c1

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 851
    invoke-interface {v1, v12}, Ljavax/microedition/khronos/opengles/GL11;->glEnableClientState(I)V

    .line 852
    const v6, 0x84c0

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glClientActiveTexture(I)V

    .line 855
    const/16 v6, 0xb71

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glEnable(I)V

    .line 856
    const/16 v6, 0x203

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glDepthFunc(I)V

    .line 859
    const/16 v6, 0x303

    invoke-interface {v1, v11, v6}, Ljavax/microedition/khronos/opengles/GL11;->glBlendFunc(II)V

    .line 862
    const/high16 v6, 0x3f80

    invoke-interface {v1, v9, v9, v9, v6}, Ljavax/microedition/khronos/opengles/GL11;->glClearColor(FFFF)V

    .line 863
    const/16 v6, 0x4000

    invoke-interface {v1, v6}, Ljavax/microedition/khronos/opengles/GL11;->glClear(I)V

    .line 866
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mActiveTextureList:Lcom/ecareme/pixwe/media/DirectLinkedList;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/DirectLinkedList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 867
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mActiveTextureList:Lcom/ecareme/pixwe/media/DirectLinkedList;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/DirectLinkedList;->getHead()Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    move-result-object v3

    .line 868
    .local v3, iter:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/RenderView$TextureReference;>;"
    :goto_1
    if-nez v3, :cond_3

    .line 876
    .end local v3           #iter:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/RenderView$TextureReference;>;"
    :cond_0
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mActiveTextureList:Lcom/ecareme/pixwe/media/DirectLinkedList;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/DirectLinkedList;->clear()V

    .line 877
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eqz v6, :cond_1

    .line 878
    iget-object v6, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    invoke-virtual {v6, p0, v1}, Lcom/ecareme/pixwe/media/RootLayer;->onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 880
    :cond_1
    sget-object v7, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    monitor-enter v7

    .line 881
    :try_start_0
    sget-object v6, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    iget-object v4, v6, Lcom/ecareme/pixwe/media/RenderView$Lists;->systemList:Ljava/util/ArrayList;

    .line 882
    .local v4, systemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int v2, v6, v11

    .local v2, i:I
    :goto_2
    if-gez v2, :cond_5

    .line 880
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 886
    return-void

    .line 820
    .end local v2           #i:I
    .end local v4           #systemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    :cond_2
    const-string v6, "RenderView"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "GLObject has changed from "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iput-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    goto/16 :goto_0

    .line 869
    .restart local v3       #iter:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/RenderView$TextureReference;>;"
    :cond_3
    iget-object v6, v3, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->value:Ljava/lang/Object;

    check-cast v6, Lcom/ecareme/pixwe/media/RenderView$TextureReference;

    invoke-virtual {v6}, Lcom/ecareme/pixwe/media/RenderView$TextureReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ecareme/pixwe/media/Texture;

    .line 870
    .local v5, texture:Lcom/ecareme/pixwe/media/Texture;
    if-eqz v5, :cond_4

    .line 871
    iput v10, v5, Lcom/ecareme/pixwe/media/Texture;->mState:I

    .line 873
    :cond_4
    iget-object v3, v3, Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;->next:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;

    goto :goto_1

    .line 883
    .end local v3           #iter:Lcom/ecareme/pixwe/media/DirectLinkedList$Entry;,"Lcom/ecareme/pixwe/media/DirectLinkedList$Entry<Lcom/ecareme/pixwe/media/RenderView$TextureReference;>;"
    .end local v5           #texture:Lcom/ecareme/pixwe/media/Texture;
    .restart local v2       #i:I
    .restart local v4       #systemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    :cond_5
    :try_start_1
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/ecareme/pixwe/media/Layer;

    invoke-virtual {v6, p0, v1}, Lcom/ecareme/pixwe/media/Layer;->onSurfaceCreated(Lcom/ecareme/pixwe/media/RenderView;Ljavax/microedition/khronos/opengles/GL11;)V

    .line 882
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 880
    .end local v2           #i:I
    .end local v4           #systemList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ecareme/pixwe/media/Layer;>;"
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .parameter "event"

    .prologue
    const/4 v3, 0x1

    .line 906
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-nez v1, :cond_0

    .line 907
    const/4 v1, 0x0

    .line 917
    :goto_0
    return v1

    .line 910
    :cond_0
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/Deque;->size()I

    move-result v1

    const/16 v2, 0x8

    if-le v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    move v1, v3

    .line 911
    goto :goto_0

    .line 912
    :cond_1
    iget-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;

    monitor-enter v1

    .line 913
    :try_start_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 914
    .local v0, eventCopy:Landroid/view/MotionEvent;
    iget-object v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mTouchEventQueue:Lcom/ecareme/pixwe/media/Deque;

    invoke-virtual {v2, v0}, Lcom/ecareme/pixwe/media/Deque;->addLast(Ljava/lang/Object;)V

    .line 915
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->requestRender()V

    .line 912
    monitor-exit v1

    move v1, v3

    .line 917
    goto :goto_0

    .line 912
    .end local v0           #eventCopy:Landroid/view/MotionEvent;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public prime(Lcom/ecareme/pixwe/media/Texture;Z)V
    .locals 2
    .parameter "texture"
    .parameter "highPriority"

    .prologue
    .line 211
    if-eqz p1, :cond_1

    iget v0, p1, Lcom/ecareme/pixwe/media/Texture;->mState:I

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    iget v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mLoadingCount:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    .line 212
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/ecareme/pixwe/media/RenderView;->queueLoad(Lcom/ecareme/pixwe/media/Texture;Z)V

    .line 214
    :cond_1
    return-void
.end method

.method public processAllTextures()V
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/ecareme/pixwe/media/RenderView;->processTextures(Z)V

    .line 478
    return-void
.end method

.method public resetColor()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    .line 316
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 317
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const v3, 0x45f00800

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 318
    invoke-interface {v0, v4, v4, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 319
    return-void
.end method

.method public setAlpha(F)V
    .locals 4
    .parameter "alpha"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 299
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 300
    invoke-interface {v0, p1, p1, p1, p1}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 301
    iput p1, p0, Lcom/ecareme/pixwe/media/RenderView;->mAlpha:F

    .line 302
    return-void
.end method

.method public setColor(FFFF)V
    .locals 4
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 309
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 310
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexEnvf(IIF)V

    .line 311
    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glColor4f(FFFF)V

    .line 312
    iput p4, p0, Lcom/ecareme/pixwe/media/RenderView;->mAlpha:F

    .line 313
    return-void
.end method

.method public setFov(F)V
    .locals 6
    .parameter "fov"

    .prologue
    .line 799
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 800
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v3, 0x1701

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 801
    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL11;->glLoadIdentity()V

    .line 802
    const v2, 0x3dcccccd

    .line 803
    .local v2, zNear:F
    const/high16 v1, 0x42c8

    .line 804
    .local v1, zFar:F
    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/ecareme/pixwe/media/RenderView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    const v4, 0x3dcccccd

    const/high16 v5, 0x42c8

    invoke-static {v0, p1, v3, v4, v5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 805
    const/16 v3, 0x1700

    invoke-interface {v0, v3}, Ljavax/microedition/khronos/opengles/GL11;->glMatrixMode(I)V

    .line 806
    return-void
.end method

.method public setRootLayer(Lcom/ecareme/pixwe/media/RootLayer;)V
    .locals 3
    .parameter "layer"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    if-eq v0, p1, :cond_0

    .line 156
    iput-object p1, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mListsDirty:Z

    .line 158
    if-eqz p1, :cond_0

    .line 159
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    iget v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ecareme/pixwe/media/RenderView;->mViewHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/ecareme/pixwe/media/RootLayer;->setSize(FF)V

    .line 162
    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1034
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mRootLayer:Lcom/ecareme/pixwe/media/RootLayer;

    .line 1035
    sget-object v0, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    monitor-enter v0

    .line 1036
    :try_start_0
    sget-object v1, Lcom/ecareme/pixwe/media/RenderView;->sLists:Lcom/ecareme/pixwe/media/RenderView$Lists;

    invoke-virtual {v1}, Lcom/ecareme/pixwe/media/RenderView$Lists;->clear()V

    .line 1035
    monitor-exit v0

    .line 1038
    return-void

    .line 1035
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0
    .parameter "holder"

    .prologue
    .line 975
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 976
    return-void
.end method

.method public unbindMixed()V
    .locals 2

    .prologue
    .line 426
    iget-object v0, p0, Lcom/ecareme/pixwe/media/RenderView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 427
    .local v0, gl:Ljavax/microedition/khronos/opengles/GL11;
    const/16 v1, 0xde1

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glDisable(I)V

    .line 430
    const v1, 0x84c0

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL11;->glActiveTexture(I)V

    .line 431
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ecareme/pixwe/media/RenderView;->mBoundTexture:Lcom/ecareme/pixwe/media/Texture;

    .line 432
    return-void
.end method
