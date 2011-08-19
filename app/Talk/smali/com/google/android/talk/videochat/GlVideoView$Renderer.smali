.class Lcom/google/android/talk/videochat/GlVideoView$Renderer;
.super Ljava/lang/Object;
.source "GlVideoView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/talk/videochat/GlVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Renderer"
.end annotation


# instance fields
.field private mBackgroundTextureName:I

.field private mCameraCaptureFlip:Z

.field private mCameraCaptureHeight:I

.field private mCameraCaptureWidth:I

.field private mCameraRotation:I

.field private mLastRotation:I

.field private mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

.field private final mOwningView:Lcom/google/android/talk/videochat/GlVideoView;

.field mRemoteDestRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

.field mRemoteSrcRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

.field mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

.field mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

.field private mSelfViewTransformMatrix:[F

.field private mViewHeight:I

.field private mViewWidth:I

.field mWindowManager:Landroid/view/WindowManager;

.field final synthetic this$0:Lcom/google/android/talk/videochat/GlVideoView;


# direct methods
.method public constructor <init>(Lcom/google/android/talk/videochat/GlVideoView;Lcom/google/android/talk/videochat/GlVideoView;)V
    .locals 2
    .parameter
    .parameter "view"

    .prologue
    .line 226
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mSelfViewTransformMatrix:[F

    .line 346
    new-instance v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    .line 347
    new-instance v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    .line 349
    new-instance v0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteSrcRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 350
    new-instance v0, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    invoke-direct {v0}, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;-><init>()V

    iput-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteDestRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 227
    iput-object p2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mOwningView:Lcom/google/android/talk/videochat/GlVideoView;

    .line 228
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    new-instance v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer$1;-><init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer;Lcom/google/android/talk/videochat/GlVideoView;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CameraManager;->setCameraParametersChangeCallback(Lcom/google/android/talk/videochat/CameraManager$CameraParametersCallback;)V

    .line 258
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Lcom/google/android/talk/videochat/GlVideoView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mOwningView:Lcom/google/android/talk/videochat/GlVideoView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->handleSurfaceChange()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/talk/videochat/GlVideoView$Renderer;Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 210
    invoke-direct {p0, p1}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->unpackCameraParameters(Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureWidth:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureHeight:I

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraRotation:I

    return v0
.end method

.method static synthetic access$800(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Lcom/google/android/talk/videochat/Libjingle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureFlip:Z

    return v0
.end method

.method private handleSurfaceChange()V
    .locals 11

    .prologue
    const/16 v10, 0xde1

    const/4 v9, 0x0

    .line 265
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "handleSurfaceChange"

    invoke-static {v6, v7}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    new-instance v3, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;

    invoke-direct {v3}, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;-><init>()V

    .line 267
    .local v3, inputData:Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;
    new-instance v4, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;

    invoke-direct {v4}, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;-><init>()V

    .line 269
    .local v4, outputData:Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;
    iget v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewWidth:I

    iput v6, v3, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;->width:I

    .line 270
    iget v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewHeight:I

    iput v6, v3, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;->height:I

    .line 271
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v6, v3, v4}, Lcom/google/android/talk/videochat/Libjingle;->rendererSurfaceChanged(Lcom/google/android/talk/videochat/GlVideoView$RendererSetupInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;)Z

    .line 272
    iget v6, v4, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;->backgroundTextureName:I

    iput v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mBackgroundTextureName:I

    .line 273
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    new-instance v7, Landroid/graphics/SurfaceTexture;

    iget v8, v4, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;->cameraTextureName:I

    invoke-direct {v7, v8}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v6, v7}, Lcom/google/android/talk/videochat/GlVideoView;->access$1102(Lcom/google/android/talk/videochat/GlVideoView;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 275
    iget v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mBackgroundTextureName:I

    invoke-static {v10, v6}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 276
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v6}, Lcom/google/android/talk/videochat/GlVideoView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 277
    .local v5, r:Landroid/content/res/Resources;
    const v6, 0x7f020006

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 280
    .local v2, drawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 281
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-static {v10, v9, v0, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 283
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v1

    .line 284
    .local v1, camera:Lcom/google/android/talk/videochat/CameraManager;
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-virtual {v6}, Lcom/google/android/talk/videochat/GlVideoView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "window"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    iput-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mWindowManager:Landroid/view/WindowManager;

    .line 286
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Display;->getRotation()I

    move-result v6

    iput v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLastRotation:I

    .line 288
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v6}, Lcom/google/android/talk/videochat/GlVideoView;->access$1100(Lcom/google/android/talk/videochat/GlVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    new-instance v7, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;

    invoke-direct {v7, p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer$2;-><init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)V

    invoke-virtual {v6, v7}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 307
    iget v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLastRotation:I

    invoke-virtual {v1, v6}, Lcom/google/android/talk/videochat/CameraManager;->setRotation(I)V

    .line 308
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v6}, Lcom/google/android/talk/videochat/GlVideoView;->access$1100(Lcom/google/android/talk/videochat/GlVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/google/android/talk/videochat/CameraManager;->setPreviewSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 309
    iget v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureWidth:I

    if-gtz v6, :cond_0

    .line 310
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "setPreviewSurfaceTexture == 0, so calling getCurrentCaptureParameters"

    invoke-static {v6, v7}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v1}, Lcom/google/android/talk/videochat/CameraManager;->getCurrentCaptureParameters()Lcom/google/android/talk/videochat/CameraManager$CameraParameters;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->unpackCameraParameters(Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V

    .line 314
    :cond_0
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleSurfaceChanged textureName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v4, Lcom/google/android/talk/videochat/GlVideoView$RendererSetupOutputData;->cameraTextureName:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " view "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " camera "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureWidth:I

    if-lez v6, :cond_1

    .line 318
    iget-object v6, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-boolean v7, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureFlip:Z

    iget v8, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureWidth:I

    iget v9, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureHeight:I

    iget v10, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraRotation:I

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/google/android/talk/videochat/Libjingle;->setSelfViewFrameParameters(ZIII)V

    .line 323
    :cond_1
    return-void
.end method

.method private unpackCameraParameters(Lcom/google/android/talk/videochat/CameraManager$CameraParameters;)V
    .locals 1
    .parameter "params"

    .prologue
    .line 220
    iget v0, p1, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->width:I

    iput v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureWidth:I

    .line 221
    iget v0, p1, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->height:I

    iput v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureHeight:I

    .line 222
    iget-boolean v0, p1, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->shouldFlip:Z

    iput-boolean v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraCaptureFlip:Z

    .line 223
    iget v0, p1, Lcom/google/android/talk/videochat/CameraManager$CameraParameters;->frameRotationForDisplay:I

    iput v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mCameraRotation:I

    .line 224
    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 11
    .parameter "gl"

    .prologue
    const/4 v10, 0x0

    .line 357
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    if-eqz v0, :cond_6

    .line 366
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_1

    .line 367
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    .line 368
    .local v9, rotation:I
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLastRotation:I

    if-eq v9, v0, :cond_1

    .line 369
    const/4 v6, 0x0

    .line 370
    .local v6, isFlip:Z
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLastRotation:I

    packed-switch v0, :pswitch_data_0

    .line 392
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 393
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDrawFrame changing rotation from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLastRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGD(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    iput v9, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLastRotation:I

    .line 396
    invoke-static {}, Lcom/google/android/talk/videochat/CameraManager;->getInstance()Lcom/google/android/talk/videochat/CameraManager;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLastRotation:I

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/CameraManager;->setRotation(I)V

    .line 401
    .end local v6           #isFlip:Z
    .end local v9           #rotation:I
    :cond_1
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$100(Lcom/google/android/talk/videochat/GlVideoView;)Z

    move-result v8

    .line 402
    .local v8, localVideoReady:Z
    const/4 v7, 0x0

    .line 403
    .local v7, localFrameReady:Z
    if-eqz v8, :cond_3

    .line 404
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$1200()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 405
    :try_start_0
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$200(Lcom/google/android/talk/videochat/GlVideoView;)Z

    move-result v7

    .line 406
    if-eqz v7, :cond_2

    .line 407
    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/talk/videochat/GlVideoView;->access$202(Lcom/google/android/talk/videochat/GlVideoView;Z)Z

    .line 409
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 412
    :cond_3
    if-eqz v7, :cond_4

    .line 413
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$1100(Lcom/google/android/talk/videochat/GlVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 414
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$1100(Lcom/google/android/talk/videochat/GlVideoView;)Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mSelfViewTransformMatrix:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 416
    :cond_4
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoAnimator;->getBackgroundColor()I

    move-result v1

    iput v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->backgroundColor:I

    .line 417
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoAnimator;->getRemoteVideoAlpha()F

    move-result v1

    iput v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->remoteVideoAlpha:F

    .line 418
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteSrcRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iput-object v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->remoteVideoSourceRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 419
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteDestRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iput-object v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->remoteVideoDestinationRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 420
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoAnimator;->getLocalVideoAlpha()F

    move-result v1

    iput v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->localVideoAlpha:F

    .line 421
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoAnimator;->getLocalVideoRect()Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->localVideoRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 422
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mSelfViewTransformMatrix:[F

    iput-object v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->localVideoTransform:[F

    .line 423
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v1}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/talk/videochat/VideoAnimator;->getBackgroundImageAlpha()F

    move-result v1

    iput v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->backgroundImageAlpha:F

    .line 424
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iput-boolean v8, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->localVideoIsReady:Z

    .line 425
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iput-boolean v7, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->localFrameIsReady:Z

    .line 427
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    iget-object v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/videochat/Libjingle;->rendererRenderFrame(Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;)V

    .line 428
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    iget-boolean v0, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;->remoteFrameSizeChanged:Z

    if-eqz v0, :cond_5

    .line 429
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewWidth:I

    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewHeight:I

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    iget v2, v2, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;->remoteFrameWidth:I

    iget-object v3, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    iget v3, v3, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;->remoteFrameHeight:I

    iget-object v4, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteSrcRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget-object v5, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteDestRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/GlVideoView;->calculateRemoteSrcDestRects(IIIILcom/google/android/talk/videochat/GlVideoView$FloatRect;Lcom/google/android/talk/videochat/GlVideoView$FloatRect;)V

    .line 438
    :cond_5
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$1500(Lcom/google/android/talk/videochat/GlVideoView;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz v8, :cond_6

    .line 439
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    new-instance v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer$4;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer$4;-><init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->post(Ljava/lang/Runnable;)Z

    .line 447
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0, v10}, Lcom/google/android/talk/videochat/GlVideoView;->access$1502(Lcom/google/android/talk/videochat/GlVideoView;Z)Z

    .line 448
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$1600(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 449
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$1600(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/talk/videochat/GlVideoView$DrawingStartedCallback;->onDrawingStarted()V

    .line 453
    .end local v7           #localFrameReady:Z
    .end local v8           #localVideoReady:Z
    :cond_6
    return-void

    .line 372
    .restart local v6       #isFlip:Z
    .restart local v9       #rotation:I
    :pswitch_0
    const/4 v0, 0x2

    if-ne v9, v0, :cond_0

    .line 373
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 377
    :pswitch_1
    const/4 v0, 0x3

    if-ne v9, v0, :cond_0

    .line 378
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 382
    :pswitch_2
    if-nez v9, :cond_0

    .line 383
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 387
    :pswitch_3
    const/4 v0, 0x1

    if-ne v9, v0, :cond_0

    .line 388
    const/4 v6, 0x1

    goto/16 :goto_0

    .line 409
    .end local v6           #isFlip:Z
    .end local v9           #rotation:I
    .restart local v7       #localFrameReady:Z
    .restart local v8       #localVideoReady:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 370
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 6
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 457
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Buddy onSurfaceChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iput p2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewWidth:I

    .line 459
    iput p3, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewHeight:I

    .line 460
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$700(Lcom/google/android/talk/videochat/GlVideoView;)Lcom/google/android/talk/videochat/VideoAnimator;

    move-result-object v0

    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewWidth:I

    iget v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/google/android/talk/videochat/VideoAnimator;->setViewportSize(II)V

    .line 462
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewWidth:I

    iget v1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewHeight:I

    iget-object v2, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    iget v2, v2, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;->remoteFrameWidth:I

    iget-object v3, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererOutputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;

    iget v3, v3, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameOutputData;->remoteFrameHeight:I

    iget-object v4, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteSrcRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    iget-object v5, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRemoteDestRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    invoke-static/range {v0 .. v5}, Lcom/google/android/talk/videochat/GlVideoView;->calculateRemoteSrcDestRects(IIIILcom/google/android/talk/videochat/GlVideoView$FloatRect;Lcom/google/android/talk/videochat/GlVideoView$FloatRect;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    if-eqz v0, :cond_0

    .line 474
    invoke-direct {p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->handleSurfaceChange()V

    .line 477
    :cond_0
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .parameter "gl"
    .parameter "config"

    .prologue
    const/high16 v3, 0x3f80

    const/4 v2, 0x0

    .line 481
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Buddy onSurfaceCreated"

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    invoke-virtual {v0}, Lcom/google/android/talk/videochat/Libjingle;->initializeRenderer()V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mRendererInputParams:Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;

    new-instance v1, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    invoke-direct {v1, v2, v2, v3, v3}, Lcom/google/android/talk/videochat/GlVideoView$FloatRect;-><init>(FFFF)V

    iput-object v1, v0, Lcom/google/android/talk/videochat/GlVideoView$RendererRenderFrameInputData;->backgroundImageRect:Lcom/google/android/talk/videochat/GlVideoView$FloatRect;

    .line 486
    return-void
.end method

.method public setLibjingleTarget(Lcom/google/android/talk/videochat/Libjingle;)V
    .locals 3
    .parameter "lj"

    .prologue
    .line 326
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->this$0:Lcom/google/android/talk/videochat/GlVideoView;

    invoke-static {v0}, Lcom/google/android/talk/videochat/GlVideoView;->access$1300(Lcom/google/android/talk/videochat/GlVideoView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    invoke-static {}, Lcom/google/android/talk/videochat/GlVideoView;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoRendererView.Renderer.setLibjingleTarget "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/talk/TalkApp;->LOGV(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iput-object p1, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mLibjingle:Lcom/google/android/talk/videochat/Libjingle;

    .line 331
    iget v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mViewWidth:I

    if-eqz v0, :cond_0

    .line 336
    iget-object v0, p0, Lcom/google/android/talk/videochat/GlVideoView$Renderer;->mOwningView:Lcom/google/android/talk/videochat/GlVideoView;

    new-instance v1, Lcom/google/android/talk/videochat/GlVideoView$Renderer$3;

    invoke-direct {v1, p0}, Lcom/google/android/talk/videochat/GlVideoView$Renderer$3;-><init>(Lcom/google/android/talk/videochat/GlVideoView$Renderer;)V

    invoke-virtual {v0, v1}, Lcom/google/android/talk/videochat/GlVideoView;->queueEvent(Ljava/lang/Runnable;)V

    .line 344
    :cond_0
    return-void
.end method
