.class public Lcom/splashtop/remote/DesktopView;
.super Landroid/view/SurfaceView;
.source "DesktopView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Ljava/util/Observer;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "IRISView"


# instance fields
.field private bHotkeyPressed:Z

.field private hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

.field private final mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

.field private mAudio:Lcom/splashtop/remote/AudioRunner;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mConfig:Landroid/content/res/Configuration;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIgnoreNativeClose:Z

.field private final mRectDst:Landroid/graphics/Rect;

.field private final mRectSrc:Landroid/graphics/Rect;

.field private mState:Lcom/splashtop/remote/zoom/ZoomState;

.field private mVideo:Lcom/splashtop/remote/VideoRender;

.field private mVideoHeight:I

.field private mVideoWidth:I

.field private mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 7
    .parameter "context"
    .parameter "videoWidth"
    .parameter "videoHeight"

    .prologue
    const/4 v4, 0x0

    .line 70
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 51
    iput-boolean v4, p0, Lcom/splashtop/remote/DesktopView;->bHotkeyPressed:Z

    .line 54
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    .line 57
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    .line 60
    new-instance v0, Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-direct {v0}, Lcom/splashtop/remote/zoom/AspectQuotient;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopView;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    .line 64
    iput-boolean v4, p0, Lcom/splashtop/remote/DesktopView;->mIgnoreNativeClose:Z

    .line 71
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 72
    .local v6, settings:Landroid/content/SharedPreferences;
    const-string v0, "ANTIALIASING"

    const/4 v1, 0x1

    invoke-interface {v6, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 73
    .local v5, bUsePaint:Z
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/DesktopView;->mBitmap:Landroid/graphics/Bitmap;

    .line 74
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/splashtop/remote/DesktopView;->mHolder:Landroid/view/SurfaceHolder;

    .line 75
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 76
    new-instance v0, Lcom/splashtop/remote/AudioRunner;

    invoke-direct {v0}, Lcom/splashtop/remote/AudioRunner;-><init>()V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopView;->mAudio:Lcom/splashtop/remote/AudioRunner;

    .line 77
    new-instance v0, Lcom/splashtop/remote/VideoRender;

    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mHolder:Landroid/view/SurfaceHolder;

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/splashtop/remote/VideoRender;-><init>(Landroid/view/SurfaceHolder;IIZZ)V

    iput-object v0, p0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    .line 78
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/VideoRender;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 79
    iput p2, p0, Lcom/splashtop/remote/DesktopView;->mVideoWidth:I

    .line 80
    iput p3, p0, Lcom/splashtop/remote/DesktopView;->mVideoHeight:I

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/splashtop/remote/DesktopView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopView;->bHotkeyPressed:Z

    return v0
.end method

.method static synthetic access$100(Lcom/splashtop/remote/DesktopView;)Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

    return-object v0
.end method


# virtual methods
.method public beforeDraw()V
    .locals 22

    .prologue
    .line 154
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    move-object/from16 v18, v0

    if-eqz v18, :cond_4

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/zoom/AspectQuotient;->get()F

    move-result v5

    .line 157
    .local v5, aspectQuotient:F
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopView;->getWidth()I

    move-result v14

    .line 158
    .local v14, viewWidth:I
    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopView;->getHeight()I

    move-result v13

    .line 159
    .local v13, viewHeight:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/splashtop/remote/DesktopView;->mVideoWidth:I

    move v7, v0

    .line 160
    .local v7, bitmapWidth:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/splashtop/remote/DesktopView;->mVideoHeight:I

    move v6, v0

    .line 162
    .local v6, bitmapHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/zoom/ZoomState;->getPanX()F

    move-result v11

    .line 163
    .local v11, panX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/zoom/ZoomState;->getPanY()F

    move-result v12

    .line 164
    .local v12, panY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomX(F)F

    move-result v18

    move v0, v14

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v16, v18, v19

    .line 166
    .local v16, zoomX:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/splashtop/remote/zoom/ZoomState;->getZoomY(F)F

    move-result v18

    move v0, v13

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v18, v18, v19

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v17, v18, v19

    .line 170
    .local v17, zoomY:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move v0, v7

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v11

    move v0, v14

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, v16

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 171
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move v0, v6

    int-to-float v0, v0

    move/from16 v19, v0

    mul-float v19, v19, v12

    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    const/high16 v21, 0x4000

    mul-float v21, v21, v17

    div-float v20, v20, v21

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 173
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v14

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v16

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move v0, v13

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v20, v20, v17

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 175
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopView;->getLeft()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 176
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopView;->getTop()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopView;->getRight()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    invoke-virtual/range {p0 .. p0}, Lcom/splashtop/remote/DesktopView;->getBottom()I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 182
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-gez v18, :cond_0

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->left:I

    .line 186
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v7

    if-le v0, v1, :cond_1

    .line 187
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    sub-int v20, v20, v7

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v16

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 188
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move v0, v7

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->right:I

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    if-gez v18, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v20

    neg-int v0, v0

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v17

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 192
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->top:I

    .line 194
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v18, v0

    move/from16 v0, v18

    move v1, v6

    if-le v0, v1, :cond_3

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    sub-int v20, v20, v6

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    mul-float v20, v20, v17

    sub-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move v0, v6

    move-object/from16 v1, v18

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    .line 199
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v18 .. v20}, Lcom/splashtop/remote/VideoRender;->setRect(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    if-nez v18, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/zoom/ZoomState;->getZoom()F

    move-result v18

    const/high16 v19, 0x3f80

    cmpl-float v18, v18, v19

    if-nez v18, :cond_5

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v9, v18, v19

    .line 208
    .local v9, leftX:I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    if-nez v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/splashtop/remote/zoom/ZoomState;->getZoom()F

    move-result v18

    const/high16 v19, 0x3f80

    cmpl-float v18, v18, v19

    if-nez v18, :cond_6

    .line 209
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v10, v18, v19

    .line 213
    .local v10, leftY:I
    :goto_1
    move v0, v7

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v15, v18, v16

    .line 214
    .local v15, w:F
    move v0, v6

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v8, v18, v17

    .line 222
    .local v8, h:F
    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v18

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v19

    move v0, v9

    move v1, v10

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v0, v1, v2, v3}, Lcom/splashtop/remote/JNILib;->nativeSetRealVideoSize(IIII)V

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    move-object/from16 v18, v0

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v19

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v20

    move-object/from16 v0, v18

    move v1, v9

    move v2, v10

    move/from16 v3, v19

    move/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/splashtop/remote/VideoRender;->setRealVideo(IIII)V

    .line 226
    .end local v5           #aspectQuotient:F
    .end local v6           #bitmapHeight:I
    .end local v7           #bitmapWidth:I
    .end local v8           #h:F
    .end local v9           #leftX:I
    .end local v10           #leftY:I
    .end local v11           #panX:F
    .end local v12           #panY:F
    .end local v13           #viewHeight:I
    .end local v14           #viewWidth:I
    .end local v15           #w:F
    .end local v16           #zoomX:F
    .end local v17           #zoomY:F
    :cond_4
    return-void

    .line 204
    .restart local v5       #aspectQuotient:F
    .restart local v6       #bitmapHeight:I
    .restart local v7       #bitmapWidth:I
    .restart local v11       #panX:F
    .restart local v12       #panY:F
    .restart local v13       #viewHeight:I
    .restart local v14       #viewWidth:I
    .restart local v16       #zoomX:F
    .restart local v17       #zoomY:F
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v16

    move/from16 v0, v18

    float-to-int v0, v0

    move v9, v0

    .restart local v9       #leftX:I
    goto/16 :goto_0

    .line 211
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectDst:Landroid/graphics/Rect;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/splashtop/remote/DesktopView;->mRectSrc:Landroid/graphics/Rect;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    mul-float v18, v18, v17

    move/from16 v0, v18

    float-to-int v0, v0

    move v10, v0

    .restart local v10       #leftY:I
    goto/16 :goto_1
.end method

.method public getAspectQuotient()Lcom/splashtop/remote/zoom/AspectQuotient;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    return-object v0
.end method

.method public getConfig()Landroid/content/res/Configuration;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mConfig:Landroid/content/res/Configuration;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    .prologue
    .line 242
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    invoke-virtual {v0}, Lcom/splashtop/remote/VideoRender;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 3
    .parameter "outAttrs"

    .prologue
    const/4 v2, 0x1

    .line 254
    iput v2, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    .line 255
    const/high16 v1, 0x1000

    iput v1, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 259
    new-instance v0, Lcom/splashtop/remote/DesktopView$1;

    invoke-direct {v0, p0, p0, v2}, Lcom/splashtop/remote/DesktopView$1;-><init>(Lcom/splashtop/remote/DesktopView;Landroid/view/View;Z)V

    .line 316
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    return-object v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 322
    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    iget-object v2, p0, Lcom/splashtop/remote/DesktopView;->hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

    invoke-interface {v2}, Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;->isHotkeyShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopView;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 324
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 325
    new-instance v1, Landroid/content/Intent;

    const-string v2, "HIDE_HOTKEY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 326
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v2, v5

    .line 329
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    move v2, v4

    goto :goto_0
.end method

.method public resetFrameCount()V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    invoke-virtual {v0}, Lcom/splashtop/remote/VideoRender;->resetFrameCount()V

    .line 247
    return-void
.end method

.method public setConfig(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "config"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/splashtop/remote/DesktopView;->mConfig:Landroid/content/res/Configuration;

    .line 89
    return-void
.end method

.method public setIgnoreNativeClose(Z)V
    .locals 0
    .parameter "ignore"

    .prologue
    .line 238
    iput-boolean p1, p0, Lcom/splashtop/remote/DesktopView;->mIgnoreNativeClose:Z

    .line 239
    return-void
.end method

.method public setOnKeyDownListener(Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;)V
    .locals 0
    .parameter "hotkeyListener"

    .prologue
    .line 337
    iput-object p1, p0, Lcom/splashtop/remote/DesktopView;->hotkeyListener:Lcom/splashtop/remote/softkeyboard/Softkeyboard$HotkeyCallback;

    .line 338
    return-void
.end method

.method public setZoomControl(Lcom/splashtop/remote/zoom/DynamicZoomControl;)V
    .locals 0
    .parameter "zoomControl"

    .prologue
    .line 92
    iput-object p1, p0, Lcom/splashtop/remote/DesktopView;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    .line 93
    return-void
.end method

.method public setZoomState(Lcom/splashtop/remote/zoom/ZoomState;)V
    .locals 1
    .parameter "state"

    .prologue
    .line 144
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v0, p0}, Lcom/splashtop/remote/zoom/ZoomState;->deleteObserver(Ljava/util/Observer;)V

    .line 148
    :cond_0
    iput-object p1, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    .line 149
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v0, p0}, Lcom/splashtop/remote/zoom/ZoomState;->addObserver(Ljava/util/Observer;)V

    .line 151
    return-void
.end method

.method public setbHotkeyPressed(Z)V
    .locals 0
    .parameter "bHotkeyPressed"

    .prologue
    .line 333
    iput-boolean p1, p0, Lcom/splashtop/remote/DesktopView;->bHotkeyPressed:Z

    .line 334
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 7
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v6, 0x0

    .line 98
    invoke-static {p3, p4}, Lcom/splashtop/remote/JNILib;->nativeInitVideo(II)V

    .line 99
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    invoke-virtual {v1, p3, p4}, Lcom/splashtop/remote/VideoRender;->setSurface(II)V

    .line 100
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    int-to-float v2, p3

    int-to-float v3, p4

    iget v4, p0, Lcom/splashtop/remote/DesktopView;->mVideoWidth:I

    int-to-float v4, v4

    iget v5, p0, Lcom/splashtop/remote/DesktopView;->mVideoHeight:I

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/splashtop/remote/zoom/AspectQuotient;->updateAspectQuotient(FFFF)V

    .line 101
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v1}, Lcom/splashtop/remote/zoom/AspectQuotient;->notifyObservers()V

    .line 103
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mAspectQuotient:Lcom/splashtop/remote/zoom/AspectQuotient;

    invoke-virtual {v1}, Lcom/splashtop/remote/zoom/AspectQuotient;->get()F

    move-result v0

    .line 104
    .local v0, zoom:F
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mConfig:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 106
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v1, v0, v6, v6}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->zoom(FFF)V

    .line 107
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    iget-object v2, p0, Lcom/splashtop/remote/DesktopView;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v2}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getmPanMinY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/zoom/ZoomState;->setPanY(F)V

    .line 113
    :goto_0
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    iget-object v2, p0, Lcom/splashtop/remote/DesktopView;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v2}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getmPanMinX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/zoom/ZoomState;->setPanX(F)V

    .line 114
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    invoke-virtual {v1}, Lcom/splashtop/remote/zoom/ZoomState;->notifyObservers()V

    .line 116
    return-void

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    const/high16 v2, 0x3f80

    div-float/2addr v2, v0

    invoke-virtual {v1, v2, v6, v6}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->zoom(FFF)V

    .line 111
    iget-object v1, p0, Lcom/splashtop/remote/DesktopView;->mState:Lcom/splashtop/remote/zoom/ZoomState;

    iget-object v2, p0, Lcom/splashtop/remote/DesktopView;->mZoomControl:Lcom/splashtop/remote/zoom/DynamicZoomControl;

    invoke-virtual {v2}, Lcom/splashtop/remote/zoom/DynamicZoomControl;->getmPanMaxY()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/zoom/ZoomState;->setPanY(F)V

    goto :goto_0
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 121
    iget v0, p0, Lcom/splashtop/remote/DesktopView;->mVideoWidth:I

    iget v1, p0, Lcom/splashtop/remote/DesktopView;->mVideoHeight:I

    invoke-static {v0, v1}, Lcom/splashtop/remote/JNILib;->nativeInitClient(II)V

    .line 122
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mAudio:Lcom/splashtop/remote/AudioRunner;

    invoke-virtual {v0}, Lcom/splashtop/remote/AudioRunner;->start()V

    .line 123
    invoke-static {}, Lcom/splashtop/remote/JNILib;->nativeStartClient()V

    .line 124
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    invoke-virtual {v0}, Lcom/splashtop/remote/VideoRender;->start()V

    .line 126
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .parameter "holder"

    .prologue
    .line 131
    iget-boolean v0, p0, Lcom/splashtop/remote/DesktopView;->mIgnoreNativeClose:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/splashtop/remote/JNILib;->nativeCloseClient(Z)V

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mAudio:Lcom/splashtop/remote/AudioRunner;

    invoke-virtual {v0}, Lcom/splashtop/remote/AudioRunner;->close()V

    .line 133
    iget-object v0, p0, Lcom/splashtop/remote/DesktopView;->mVideo:Lcom/splashtop/remote/VideoRender;

    invoke-virtual {v0}, Lcom/splashtop/remote/VideoRender;->close()V

    .line 135
    return-void
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0
    .parameter "observable"
    .parameter "data"

    .prologue
    .line 234
    invoke-virtual {p0}, Lcom/splashtop/remote/DesktopView;->beforeDraw()V

    .line 235
    return-void
.end method
