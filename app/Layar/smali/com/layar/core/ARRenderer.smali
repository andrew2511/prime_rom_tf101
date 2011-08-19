.class public Lcom/layar/core/ARRenderer;
.super Ljava/lang/Object;
.source "ARRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;
.implements Lcom/layar/core/animation/AnimationEventType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/core/ARRenderer$POIClickListener;,
        Lcom/layar/core/ARRenderer$ScreenshotListener;
    }
.end annotation


# static fields
.field public static BIRD_EYE:Z = false

.field protected static final BIW_MARGIN:I = 0x11

.field protected static final BIW_MENU_HEIGHT:I = 0x2a

.field public static BIW_MENU_RAWS_NUMBER:I = 0x0

.field protected static final BIW_WIDTH_LANDSCAPE:I = 0x74

.field protected static final BIW_WIDTH_PORTRAIT:I = 0x74

.field protected static final EYE_ALT_FACTOR:F = 0.05f

.field protected static final EYE_ANIM_TIME:F = 1000.0f

.field protected static final EYE_MAX:F = 1000.0f

.field protected static final EYE_MIN:F = 50.0f

.field protected static final FOV:F = 30.0f

#the value of this static final field might be set in the static constructor
.field protected static final FOV_RAD:F = 0.0f

.field public static SHOW_GRID:Z = false

.field private static final TAG:Ljava/lang/String; = null

.field protected static VIEW_HEIGHT:I = 0x0

#the value of this static final field might be set in the static constructor
.field protected static final VIEW_PLANE:F = 0.0f

.field protected static final ZFARMIN:F = 20000.0f

.field protected static final ZNEAR:F = 0.5f

.field private static final _tempGluUnProjectData:[F = null

.field private static final _temp_A:I = 0x10

.field private static final _temp_in:I = 0x20

.field private static final _temp_m:I = 0x0

.field private static final _temp_out:I = 0x24


# instance fields
.field protected arSettingsDialogShowing:Z

.field arrowInitialized:Z

.field private arrowTextureId:I

.field arrowVisible:Z

.field protected aspect:F

.field protected biwMargin:I

.field protected biwWidthLandscape:I

.field protected biwWidthPortrait:I

.field protected density:F

.field protected eyeAnimTime:J

.field protected focus:Lcom/layar/data/BasePOI;

.field protected frameCount:I

.field protected frameStart:J

.field protected grid:Lcom/layar/core/Grid;

.field handleTouch:Z

.field protected iconRenderer:Lcom/layar/core/IconRenderer;

.field protected icons:[[Landroid/graphics/Bitmap;

.field protected lightAmbient:[F

.field protected lightDiffuse:[F

.field protected lightPosition:[F

.field protected lightSpecular:[F

.field private lineBuffer:Ljava/nio/FloatBuffer;

.field protected final mArrowTextureBuffer:Ljava/nio/IntBuffer;

.field protected mContext:Landroid/content/Context;

.field protected final mModelProvider:Lcom/layar/core/ModelProvider;

.field protected mSensor:Lcom/layar/util/SensorHelper;

.field protected final mVertexBuffer:Ljava/nio/IntBuffer;

.field protected matrixGrabber:Lcom/layar/core/MatrixGrabber;

.field poiClickListener:Lcom/layar/core/ARRenderer$POIClickListener;

.field public poiRenderers:[Lcom/layar/core/POIRenderer;

.field protected poisContainer:Lcom/layar/core/POIsContainer;

.field radar:Lcom/layar/core/GLRadar;

.field protected rotation:I

.field screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;

.field protected textureIds:[[I

.field protected textureReady:[[Z

.field protected throbberId:I

.field protected throbberReady:Z

.field touchX:F

.field touchY:F

.field protected view:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "layar."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 48
    const-class v1, Lcom/layar/core/ARRenderer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    .line 51
    const-wide/high16 v0, 0x403e

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/layar/core/ARRenderer;->FOV_RAD:F

    .line 58
    const-wide v0, 0x3fd0c152408e1c81L

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 60
    const/high16 v1, 0x3f00

    .line 58
    div-float/2addr v0, v1

    sput v0, Lcom/layar/core/ARRenderer;->VIEW_PLANE:F

    .line 62
    sput-boolean v2, Lcom/layar/core/ARRenderer;->SHOW_GRID:Z

    .line 63
    sput-boolean v2, Lcom/layar/core/ARRenderer;->BIRD_EYE:Z

    .line 64
    sput v2, Lcom/layar/core/ARRenderer;->VIEW_HEIGHT:I

    .line 79
    sput v2, Lcom/layar/core/ARRenderer;->BIW_MENU_RAWS_NUMBER:I

    .line 1047
    const/16 v0, 0x28

    new-array v0, v0, [F

    sput-object v0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .parameter "context"

    .prologue
    const/4 v13, 0x6

    const/4 v12, 0x3

    const/4 v11, 0x1

    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/layar/core/ARRenderer;->eyeAnimTime:J

    .line 70
    iput-boolean v9, p0, Lcom/layar/core/ARRenderer;->arSettingsDialogShowing:Z

    .line 74
    sget-boolean v7, Lcom/layar/util/MyConfig;->FORCE_LANDSCAPE:Z

    if-eqz v7, :cond_0

    move v7, v11

    .line 75
    :goto_0
    iput v7, p0, Lcom/layar/core/ARRenderer;->rotation:I

    .line 82
    const/16 v7, 0x11

    iput v7, p0, Lcom/layar/core/ARRenderer;->biwMargin:I

    .line 83
    const/16 v7, 0x74

    iput v7, p0, Lcom/layar/core/ARRenderer;->biwWidthPortrait:I

    .line 84
    const/16 v7, 0x74

    iput v7, p0, Lcom/layar/core/ARRenderer;->biwWidthLandscape:I

    .line 100
    new-array v7, v10, [I

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->view:[I

    .line 103
    new-array v7, v10, [F

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->lightAmbient:[F

    .line 104
    new-array v7, v10, [F

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->lightDiffuse:[F

    .line 105
    new-array v7, v10, [F

    fill-array-data v7, :array_2

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->lightSpecular:[F

    .line 106
    new-array v7, v10, [F

    fill-array-data v7, :array_3

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->lightPosition:[F

    .line 108
    iput v9, p0, Lcom/layar/core/ARRenderer;->frameCount:I

    .line 109
    const-wide/16 v7, 0x0

    iput-wide v7, p0, Lcom/layar/core/ARRenderer;->frameStart:J

    .line 117
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;

    .line 121
    const/4 v7, -0x1

    iput v7, p0, Lcom/layar/core/ARRenderer;->arrowTextureId:I

    .line 122
    iput-boolean v9, p0, Lcom/layar/core/ARRenderer;->arrowInitialized:Z

    .line 123
    iput-boolean v11, p0, Lcom/layar/core/ARRenderer;->arrowVisible:Z

    .line 134
    iput-object p1, p0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    .line 135
    invoke-static {p1}, Lcom/layar/util/SensorHelper;->getInstance(Landroid/content/Context;)Lcom/layar/util/SensorHelper;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->mSensor:Lcom/layar/util/SensorHelper;

    .line 136
    new-instance v7, Lcom/layar/core/ModelProvider;

    invoke-direct {v7, p1}, Lcom/layar/core/ModelProvider;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->mModelProvider:Lcom/layar/core/ModelProvider;

    .line 138
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    iput v7, p0, Lcom/layar/core/ARRenderer;->density:F

    .line 140
    new-instance v7, Lcom/layar/core/MatrixGrabber;

    invoke-direct {v7}, Lcom/layar/core/MatrixGrabber;-><init>()V

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    .line 142
    new-instance v7, Lcom/layar/core/Grid;

    invoke-direct {v7}, Lcom/layar/core/Grid;-><init>()V

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->grid:Lcom/layar/core/Grid;

    .line 143
    new-array v7, v9, [Lcom/layar/core/POIRenderer;

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    .line 144
    new-instance v7, Lcom/layar/core/IconRenderer;

    invoke-direct {v7}, Lcom/layar/core/IconRenderer;-><init>()V

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->iconRenderer:Lcom/layar/core/IconRenderer;

    .line 147
    new-instance v7, Lcom/layar/core/GLRadar;

    iget v8, p0, Lcom/layar/core/ARRenderer;->density:F

    invoke-direct {v7, p1, v8}, Lcom/layar/core/GLRadar;-><init>(Landroid/content/Context;F)V

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    .line 149
    const/high16 v0, 0x1

    .line 150
    .local v0, i:I
    mul-int/lit8 v2, v0, 0x10

    .line 151
    .local v2, sw:I
    mul-int/lit8 v1, v0, 0x10

    .line 153
    .local v1, sh:I
    const/16 v7, 0xc

    new-array v6, v7, [I

    neg-int v7, v2

    aput v7, v6, v9

    aput v2, v6, v12

    neg-int v7, v2

    aput v7, v6, v13

    const/4 v7, 0x7

    mul-int/lit8 v8, v1, 0x2

    aput v8, v6, v7

    const/16 v7, 0x9

    aput v2, v6, v7

    const/16 v7, 0xa

    .line 154
    mul-int/lit8 v8, v1, 0x2

    aput v8, v6, v7

    .line 156
    .local v6, vertices:[I
    const/16 v7, 0x8

    new-array v4, v7, [I

    aput v0, v4, v11

    const/4 v7, 0x2

    aput v0, v4, v7

    aput v0, v4, v12

    aput v0, v4, v13

    .line 158
    .local v4, texCoords:[I
    array-length v7, v6

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 159
    .local v5, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 160
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 161
    iget-object v7, p0, Lcom/layar/core/ARRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v6}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 162
    iget-object v7, p0, Lcom/layar/core/ARRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 164
    array-length v7, v4

    mul-int/lit8 v7, v7, 0x4

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 165
    .local v3, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 166
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    iput-object v7, p0, Lcom/layar/core/ARRenderer;->mArrowTextureBuffer:Ljava/nio/IntBuffer;

    .line 167
    iget-object v7, p0, Lcom/layar/core/ARRenderer;->mArrowTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 168
    iget-object v7, p0, Lcom/layar/core/ARRenderer;->mArrowTextureBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v9}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 169
    return-void

    .end local v0           #i:I
    .end local v1           #sh:I
    .end local v2           #sw:I
    .end local v3           #tbb:Ljava/nio/ByteBuffer;
    .end local v4           #texCoords:[I
    .end local v5           #vbb:Ljava/nio/ByteBuffer;
    .end local v6           #vertices:[I
    :cond_0
    move v7, v9

    .line 75
    goto/16 :goto_0

    .line 103
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x0t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 104
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 105
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 106
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private RadarClick()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 696
    iget-boolean v1, p0, Lcom/layar/core/ARRenderer;->arSettingsDialogShowing:Z

    if-nez v1, :cond_0

    .line 697
    new-instance v0, Lcom/layar/adapters/ArSettingAdapter;

    iget-object v1, p0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/layar/adapters/ArSettingAdapter;-><init>(Landroid/content/Context;)V

    .line 698
    .local v0, adapter:Lcom/layar/adapters/ArSettingAdapter;
    const-string v1, "prefs.ar.birdeye"

    .line 699
    const v2, 0x7f0901b1

    .line 698
    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/adapters/ArSettingAdapter;->add(Ljava/lang/String;IZ)V

    .line 700
    const-string v1, "prefs.grid.show"

    .line 701
    const v2, 0x7f0901b2

    .line 700
    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/adapters/ArSettingAdapter;->add(Ljava/lang/String;IZ)V

    .line 702
    new-instance v1, Lcom/layar/ui/SmartDialog$Builder;

    iget-object v2, p0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 703
    const v2, 0x7f0901b0

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setTitle(I)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 704
    invoke-virtual {v1, v0}, Lcom/layar/ui/SmartDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 705
    invoke-virtual {v1, v4}, Lcom/layar/ui/SmartDialog$Builder;->setCancelable(Z)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 706
    new-instance v2, Lcom/layar/core/ARRenderer$1;

    invoke-direct {v2, p0}, Lcom/layar/core/ARRenderer$1;-><init>(Lcom/layar/core/ARRenderer;)V

    invoke-virtual {v1, v2}, Lcom/layar/ui/SmartDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/layar/ui/SmartDialog$Builder;

    move-result-object v1

    .line 713
    invoke-virtual {v1}, Lcom/layar/ui/SmartDialog$Builder;->show()Lcom/layar/ui/SmartDialog;

    .line 714
    iput-boolean v4, p0, Lcom/layar/core/ARRenderer;->arSettingsDialogShowing:Z

    .line 716
    .end local v0           #adapter:Lcom/layar/adapters/ArSettingAdapter;
    :cond_0
    return-void
.end method

.method private drawFocusLine(Ljavax/microedition/khronos/opengles/GL10;Lcom/layar/core/POIRenderer;)V
    .locals 10
    .parameter "gl"
    .parameter "renderer"

    .prologue
    const/high16 v4, 0x4188

    const/4 v9, 0x1

    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x2

    .line 772
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    if-nez v2, :cond_0

    .line 773
    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 774
    .local v0, bb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 775
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    .line 778
    .end local v0           #bb:Ljava/nio/ByteBuffer;
    :cond_0
    new-array v1, v8, [F

    .line 780
    .local v1, win:[F
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    aget v3, v1, v7

    invoke-virtual {v2, v7, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 781
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    aget v3, v1, v9

    invoke-virtual {v2, v9, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 782
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    aget v3, v1, v6

    invoke-virtual {v2, v6, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 784
    iget v2, p0, Lcom/layar/core/ARRenderer;->rotation:I

    if-ne v2, v9, :cond_4

    .line 785
    aget v2, v1, v7

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    aget v2, v1, v7

    iget-object v3, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v3, v3, v6

    const/16 v4, 0x11

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    .line 832
    :cond_1
    :goto_0
    return-void

    .line 787
    :cond_2
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    aget v3, v1, v7

    invoke-virtual {v2, v8, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 788
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    const/high16 v4, 0x41f0

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 789
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    aget v4, v1, v6

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 810
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v7}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 812
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 813
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 815
    const/16 v2, 0x1701

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 816
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 818
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 819
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v3, v3, v6

    int-to-float v3, v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v5, v5, v8

    int-to-float v5, v5

    invoke-static {p1, v2, v3, v4, v5}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 821
    const/16 v2, 0xde1

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 822
    const/high16 v2, 0x2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 823
    const/high16 v2, 0x1

    const/high16 v3, 0x1

    const/high16 v4, 0x1

    const v5, 0xcccc

    invoke-interface {p1, v2, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 825
    const/16 v2, 0x1406

    iget-object v3, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v8, v2, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 826
    invoke-interface {p1, v9, v7, v6}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 828
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 830
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 831
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0

    .line 790
    :cond_4
    iget v2, p0, Lcom/layar/core/ARRenderer;->rotation:I

    if-ne v2, v8, :cond_5

    .line 791
    aget v2, v1, v7

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    aget v2, v1, v7

    iget-object v3, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v3, v3, v6

    const/16 v4, 0x11

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 793
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    aget v3, v1, v7

    invoke-virtual {v2, v8, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 794
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v4, v4, v8

    const/16 v5, 0x1e

    sub-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 795
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    aget v4, v1, v6

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1

    .line 796
    :cond_5
    iget v2, p0, Lcom/layar/core/ARRenderer;->rotation:I

    if-nez v2, :cond_6

    .line 797
    aget v2, v1, v9

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    aget v2, v1, v9

    iget-object v3, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v3, v3, v8

    const/16 v4, 0x11

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 799
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    iget-object v3, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v3, v3, v6

    const/16 v4, 0x1e

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v2, v8, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 800
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    aget v4, v1, v9

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 801
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    aget v4, v1, v6

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1

    .line 802
    :cond_6
    iget v2, p0, Lcom/layar/core/ARRenderer;->rotation:I

    if-ne v2, v6, :cond_3

    .line 803
    aget v2, v1, v9

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_1

    aget v2, v1, v9

    iget-object v3, p0, Lcom/layar/core/ARRenderer;->view:[I

    aget v3, v3, v8

    const/16 v4, 0x11

    sub-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_1

    .line 805
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/high16 v3, 0x41f0

    invoke-virtual {v2, v8, v3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 806
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x4

    aget v4, v1, v9

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    .line 807
    iget-object v2, p0, Lcom/layar/core/ARRenderer;->lineBuffer:Ljava/nio/FloatBuffer;

    const/4 v3, 0x5

    aget v4, v1, v6

    invoke-virtual {v2, v3, v4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    goto/16 :goto_1
.end method

.method public static getMaxPoiSize()F
    .locals 1

    .prologue
    .line 751
    sget v0, Lcom/layar/core/ARRenderer;->VIEW_HEIGHT:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    return v0
.end method

.method public static getPixelSize(FF)F
    .locals 6
    .parameter "size"
    .parameter "distance"

    .prologue
    .line 747
    float-to-double v0, p0

    float-to-double v2, p1

    sget v4, Lcom/layar/core/ARRenderer;->FOV_RAD:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->tan(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    sget v2, Lcom/layar/core/ARRenderer;->VIEW_HEIGHT:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public static getScaleFromSize(FF)F
    .locals 2
    .parameter "minSize"
    .parameter "distance"

    .prologue
    .line 755
    mul-float v0, p0, p1

    sget v1, Lcom/layar/core/ARRenderer;->VIEW_PLANE:F

    mul-float/2addr v0, v1

    sget v1, Lcom/layar/core/ARRenderer;->VIEW_HEIGHT:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method public static gluUnProject(FFF[FI[FI[II[FI)I
    .locals 6
    .parameter "winx"
    .parameter "winy"
    .parameter "winz"
    .parameter "model"
    .parameter "offsetM"
    .parameter "proj"
    .parameter "offsetP"
    .parameter "viewport"
    .parameter "offsetV"
    .parameter "xyz"
    .parameter "offset"

    .prologue
    .line 1062
    sget-object v0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 v1, 0x20

    aget v2, p7, p8

    int-to-float v2, v2

    sub-float/2addr p0, v2

    .line 1063
    const/high16 v2, 0x4000

    mul-float/2addr p0, v2

    add-int/lit8 v2, p8, 0x2

    aget v2, p7, v2

    .end local p0
    int-to-float v2, v2

    div-float/2addr p0, v2

    const/high16 v2, 0x3f80

    sub-float/2addr p0, v2

    .line 1062
    aput p0, v0, v1

    .line 1064
    sget-object p0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 v0, 0x21

    add-int/lit8 v1, p8, 0x1

    aget v1, p7, v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    .line 1065
    const/high16 v1, 0x4000

    mul-float/2addr p1, v1

    add-int/lit8 p8, p8, 0x3

    aget p7, p7, p8

    .end local p1
    .end local p7
    .end local p8
    int-to-float p7, p7

    div-float/2addr p1, p7

    const/high16 p7, 0x3f80

    sub-float/2addr p1, p7

    .line 1064
    aput p1, p0, v0

    .line 1066
    sget-object p0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p1, 0x22

    const/high16 p7, 0x4000

    mul-float/2addr p2, p7

    const/high16 p7, 0x3f80

    sub-float/2addr p2, p7

    aput p2, p0, p1

    .line 1067
    .end local p2
    sget-object p0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p1, 0x23

    const/high16 p2, 0x3f80

    aput p2, p0, p1

    .line 1069
    sget-object v0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 v1, 0x10

    move-object v2, p5

    move v3, p6

    move-object v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 1071
    sget-object p0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/4 p1, 0x0

    .line 1072
    sget-object p2, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p3, 0x10

    .line 1071
    invoke-static {p0, p1, p2, p3}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 1073
    .end local p3
    sget-object v0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 v1, 0x24

    .line 1074
    sget-object v2, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/4 v3, 0x0

    .line 1075
    sget-object v4, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 v5, 0x20

    .line 1073
    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMV([FI[FI[FI)V

    .line 1076
    sget-object p0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p1, 0x27

    aget p0, p0, p1

    float-to-double p0, p0

    const-wide/16 p2, 0x0

    cmpl-double p0, p0, p2

    if-nez p0, :cond_0

    .line 1077
    const/4 p0, 0x0

    .line 1084
    :goto_0
    return p0

    .line 1078
    :cond_0
    sget-object p0, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p1, 0x24

    aget p0, p0, p1

    .line 1079
    sget-object p1, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p2, 0x27

    aget p1, p1, p2

    div-float/2addr p0, p1

    .line 1078
    aput p0, p9, p10

    .line 1080
    add-int/lit8 p0, p10, 0x1

    sget-object p1, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p2, 0x25

    aget p1, p1, p2

    .line 1081
    sget-object p2, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p3, 0x27

    aget p2, p2, p3

    div-float/2addr p1, p2

    .line 1080
    aput p1, p9, p0

    .line 1082
    add-int/lit8 p0, p10, 0x2

    sget-object p1, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p2, 0x26

    aget p1, p1, p2

    .line 1083
    sget-object p2, Lcom/layar/core/ARRenderer;->_tempGluUnProjectData:[F

    const/16 p3, 0x27

    aget p2, p2, p3

    div-float/2addr p1, p2

    .line 1082
    aput p1, p9, p0

    .line 1084
    const/4 p0, 0x1

    goto :goto_0
.end method

.method private isLowTextureSize(Ljavax/microedition/khronos/opengles/GL10;)Z
    .locals 5
    .parameter "gl"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 544
    new-array v0, v4, [I

    .line 545
    .local v0, res:[I
    const/16 v1, 0xd33

    invoke-interface {p1, v1, v0, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 546
    aget v1, v0, v3

    const/16 v2, 0x400

    if-gt v1, v2, :cond_0

    move v1, v4

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method public static savePixels(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;
    .locals 17
    .parameter "x"
    .parameter "y"
    .parameter "w"
    .parameter "h"
    .parameter "gl"

    .prologue
    .line 719
    sget-object v8, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    const-string v9, "saving pixeld to bitmap"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    add-int v8, p1, p3

    mul-int v8, v8, p2

    new-array v15, v8, [I

    .line 721
    .local v15, b:[I
    mul-int v8, p2, p3

    move v0, v8

    new-array v0, v0, [I

    move-object/from16 v16, v0

    .line 722
    .local v16, bt:[I
    invoke-static {v15}, Ljava/nio/IntBuffer;->wrap([I)Ljava/nio/IntBuffer;

    move-result-object v14

    .line 723
    .local v14, ib:Ljava/nio/IntBuffer;
    const/4 v8, 0x0

    invoke-virtual {v14, v8}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 724
    const/4 v9, 0x0

    add-int v11, p1, p3

    const/16 v12, 0x1908

    const/16 v13, 0x1401

    move/from16 v8, p0

    move/from16 v10, p2

    move-object/from16 v0, p4

    move v1, v8

    move v2, v9

    move v3, v10

    move v4, v11

    move v5, v12

    move v6, v13

    move-object v7, v14

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 726
    const/16 p0, 0x0

    .local p0, i:I
    const/16 p1, 0x0

    .local p1, k:I
    move/from16 p4, p1

    .end local p1           #k:I
    .local p4, k:I
    :goto_0
    move/from16 v0, p0

    move/from16 v1, p3

    if-lt v0, v1, :cond_0

    .line 742
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .end local p0           #i:I
    move-object/from16 v0, v16

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 743
    .local p0, sb:Landroid/graphics/Bitmap;
    return-object p0

    .line 729
    .local p0, i:I
    :cond_0
    const/16 p1, 0x0

    .local p1, j:I
    :goto_1
    move/from16 v0, p1

    move/from16 v1, p2

    if-lt v0, v1, :cond_1

    .line 726
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p4, 0x1

    .end local p4           #k:I
    .local p1, k:I
    move/from16 p4, p1

    .end local p1           #k:I
    .restart local p4       #k:I
    goto :goto_0

    .line 730
    .local p1, j:I
    :cond_1
    mul-int v8, p0, p2

    add-int v8, v8, p1

    aget v9, v15, v8

    .line 731
    .local v9, pix:I
    shr-int/lit8 v8, v9, 0x10

    and-int/lit16 v8, v8, 0xff

    .line 732
    .local v8, pb:I
    shl-int/lit8 v10, v9, 0x10

    const/high16 v11, 0xff

    and-int/2addr v10, v11

    .line 733
    .local v10, pr:I
    const v11, -0xff0100

    and-int/2addr v11, v9

    or-int/2addr v10, v11

    or-int/2addr v8, v10

    .line 735
    .local v8, pix1:I
    sget-boolean v10, Lcom/layar/util/MyConfig;->OPENGL_SCREENSHOT_SWAPCOLORS:Z

    .end local v10           #pr:I
    if-eqz v10, :cond_2

    .line 736
    sub-int v8, p3, p4

    const/4 v10, 0x1

    sub-int/2addr v8, v10

    mul-int v8, v8, p2

    add-int v8, v8, p1

    aput v9, v16, v8

    .line 729
    .end local v8           #pix1:I
    .end local v9           #pix:I
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 738
    .restart local v8       #pix1:I
    .restart local v9       #pix:I
    :cond_2
    sub-int v9, p3, p4

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    mul-int v9, v9, p2

    add-int v9, v9, p1

    aput v8, v16, v9

    goto :goto_2
.end method


# virtual methods
.method protected createSpotBitmap(II)V
    .locals 10
    .parameter "part"
    .parameter "color"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/16 v9, 0x40

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 179
    iget-object v4, p0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    const-string v5, "spot_d1_fill.png"

    invoke-static {v4, v5}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 180
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 181
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 180
    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 182
    .local v1, bmResult:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 183
    .local v2, c:Landroid/graphics/Canvas;
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    .line 184
    .local v3, paint:Landroid/graphics/Paint;
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    .line 185
    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, p2, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 184
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 186
    invoke-virtual {v2, v0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 187
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 189
    iget-object v4, p0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    const-string v5, "spot_d1_outline.png"

    invoke-static {v4, v5}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    new-instance v4, Landroid/graphics/PorterDuffColorFilter;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v8, v5}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 191
    invoke-virtual {v2, v0, v7, v7, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    iget-object v4, p0, Lcom/layar/core/ARRenderer;->icons:[[Landroid/graphics/Bitmap;

    aget-object v4, v4, v8

    const/4 v5, 0x1

    invoke-static {v1, v9, v9, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v5

    aput-object v5, v4, p1

    .line 194
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 195
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 197
    iget-object v4, p0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    aget-object v4, v4, v8

    aput-boolean v8, v4, p1

    .line 198
    return-void
.end method

.method protected createSpotBitmapNew(III)V
    .locals 16
    .parameter "part"
    .parameter "poiColor"
    .parameter "borderColor"

    .prologue
    .line 207
    const/16 v8, 0x35

    .line 208
    .local v8, outerRadius:I
    const/16 v7, 0x1e

    .line 209
    .local v7, innerRadius:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "poi128glow.png"

    invoke-static {v13, v14}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 210
    .local v5, glow:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "poi128shadow.png"

    invoke-static {v13, v14}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 211
    .local v11, shadow:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    move-object v13, v0

    const-string v14, "poi128border.png"

    invoke-static {v13, v14}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 213
    .local v3, border:Landroid/graphics/Bitmap;
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    .line 214
    .local v12, width:I
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 216
    .local v6, height:I
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 215
    invoke-static {v12, v6, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 217
    .local v10, result:Landroid/graphics/Bitmap;
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 219
    .local v4, canvas:Landroid/graphics/Canvas;
    new-instance v9, Landroid/graphics/Paint;

    invoke-direct {v9}, Landroid/graphics/Paint;-><init>()V

    .line 220
    .local v9, paint:Landroid/graphics/Paint;
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 221
    const/4 v13, 0x1

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 224
    const/16 v13, 0xb2

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 225
    new-instance v13, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v13

    move/from16 v1, p3

    move-object v2, v14

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 226
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v3, v13, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    .line 230
    const/16 v13, 0xff

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 231
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 232
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual {v4, v11, v13, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 233
    invoke-virtual {v11}, Landroid/graphics/Bitmap;->recycle()V

    .line 236
    move-object v0, v9

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 237
    div-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v6, 0x2

    int-to-float v14, v14

    const/high16 v15, 0x4254

    invoke-virtual {v4, v13, v14, v15, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 240
    const/16 v13, 0x4c

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 241
    new-instance v13, Landroid/graphics/PorterDuffXfermode;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->XOR:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v13, v14}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 242
    div-int/lit8 v13, v12, 0x2

    int-to-float v13, v13

    div-int/lit8 v14, v6, 0x2

    int-to-float v14, v14

    const/high16 v15, 0x41f0

    invoke-virtual {v4, v13, v14, v15, v9}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 245
    const/16 v13, 0xff

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 246
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 247
    const/4 v13, 0x0

    const/high16 v14, 0x4000

    invoke-virtual {v4, v5, v13, v14, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 248
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->icons:[[Landroid/graphics/Bitmap;

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    aput-object v10, v13, p1

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    move-object v13, v0

    const/4 v14, 0x0

    aget-object v13, v13, v14

    const/4 v14, 0x0

    aput-boolean v14, v13, p1

    .line 252
    return-void
.end method

.method drawFocusArrow(Ljavax/microedition/khronos/opengles/GL10;Lcom/layar/core/POIRenderer;)V
    .locals 25
    .parameter "gl"
    .parameter "renderer"

    .prologue
    .line 835
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/core/ARRenderer;->arrowInitialized:Z

    move v5, v0

    if-nez v5, :cond_2

    .line 836
    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 837
    .local v21, ids:[I
    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v21

    move v3, v6

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 838
    const/4 v5, 0x0

    aget v5, v21, v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/layar/core/ARRenderer;->arrowTextureId:I

    .line 840
    const v5, 0x84c0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 841
    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->arrowTextureId:I

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 842
    const/16 v5, 0xde1

    const/16 v6, 0x2801

    .line 843
    const/high16 v7, 0x4618

    .line 842
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 844
    const/16 v5, 0xde1

    const/16 v6, 0x2800

    .line 845
    const v7, 0x46180400

    .line 844
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 846
    const/16 v5, 0xde1

    const/16 v6, 0x2802

    .line 847
    const v7, 0x47012f00

    .line 846
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 848
    const/16 v5, 0xde1

    const/16 v6, 0x2803

    .line 849
    const v7, 0x47012f00

    .line 848
    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v5, v0

    invoke-interface {v5}, Lcom/layar/core/POIsContainer;->hasContent()Z

    move-result v5

    if-nez v5, :cond_1

    .line 948
    .end local v21           #ids:[I
    :cond_0
    :goto_0
    return-void

    .line 855
    .restart local v21       #ids:[I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    move-object v5, v0

    const-string v6, "biw_arrow_mask.png"

    invoke-static {v5, v6}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v17

    .line 856
    .local v17, bm:Landroid/graphics/Bitmap;
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 857
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 856
    invoke-static {v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 858
    .local v18, bmResult:Landroid/graphics/Bitmap;
    new-instance v19, Landroid/graphics/Canvas;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 859
    .local v19, c:Landroid/graphics/Canvas;
    new-instance v22, Landroid/graphics/Paint;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Paint;-><init>()V

    .line 860
    .local v22, paint:Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08000e

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v20

    .line 861
    .local v20, color:I
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    move-object v0, v5

    move/from16 v1, v20

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 862
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move v2, v5

    move v3, v6

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 863
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->recycle()V

    .line 865
    const/16 v5, 0xde1

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v0, v5

    move v1, v6

    move-object/from16 v2, v18

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 866
    invoke-virtual/range {v18 .. v18}, Landroid/graphics/Bitmap;->recycle()V

    .line 867
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/core/ARRenderer;->arrowInitialized:Z

    .line 870
    .end local v17           #bm:Landroid/graphics/Bitmap;
    .end local v18           #bmResult:Landroid/graphics/Bitmap;
    .end local v19           #c:Landroid/graphics/Canvas;
    .end local v20           #color:I
    .end local v21           #ids:[I
    .end local v22           #paint:Landroid/graphics/Paint;
    :cond_2
    const/16 v23, 0x0

    .line 871
    .local v23, x:F
    const/16 v24, 0x0

    .line 872
    .local v24, y:F
    const/16 v16, 0x0

    .line 874
    .local v16, angle:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/layar/core/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 875
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/layar/core/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 877
    const/4 v5, 0x3

    new-array v14, v5, [F

    .line 879
    .local v14, win:[F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object v5, v0

    iget v5, v5, Lcom/layar/data/BasePOI;->x:F

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object v6, v0

    iget v6, v6, Lcom/layar/data/BasePOI;->y:F

    .line 880
    move-object/from16 v0, p2

    iget v0, v0, Lcom/layar/core/POIRenderer;->centerAltitude:F

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v8, v0

    iget-object v8, v8, Lcom/layar/core/MatrixGrabber;->mModelView:[F

    const/4 v9, 0x0

    .line 881
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v10, v0

    iget-object v10, v10, Lcom/layar/core/MatrixGrabber;->mProjection:[F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v15, 0x0

    .line 879
    invoke-static/range {v5 .. v15}, Landroid/opengl/GLU;->gluProject(FFF[FI[FI[II[FI)I

    .line 883
    const/4 v5, 0x2

    aget v5, v14, v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 886
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->rotation:I

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    .line 887
    const/4 v5, 0x0

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 888
    const/4 v5, 0x0

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 889
    const/4 v5, 0x1

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthLandscape:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 891
    const/4 v5, 0x0

    aget v23, v14, v5

    .line 892
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthLandscape:I

    move v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x4228

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->density:F

    move v7, v0

    mul-float/2addr v6, v7

    sget v7, Lcom/layar/core/ARRenderer;->BIW_MENU_RAWS_NUMBER:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v24, v5, v6

    .line 893
    const/16 v16, 0x0

    .line 920
    :cond_3
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 921
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 923
    const/16 v5, 0x1701

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 924
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 926
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 927
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    int-to-float v6, v6

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v8, v0

    const/4 v9, 0x3

    aget v8, v8, v9

    int-to-float v8, v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluOrtho2D(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 929
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 930
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 931
    const/4 v5, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v23

    move/from16 v2, v24

    move v3, v5

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 932
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/high16 v7, 0x3f80

    move-object/from16 v0, p1

    move/from16 v1, v16

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 933
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->density:F

    move v5, v0

    const v6, 0x3f19999a

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->density:F

    move v6, v0

    const v7, 0x3f19999a

    mul-float/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->density:F

    move v7, v0

    const v8, 0x3f19999a

    mul-float/2addr v7, v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 935
    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->arrowTextureId:I

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 936
    const/16 v5, 0xde1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 937
    const/4 v5, 0x3

    const/16 v6, 0x140c

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mVertexBuffer:Ljava/nio/IntBuffer;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 938
    const/4 v5, 0x2

    const/16 v6, 0x140c

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mArrowTextureBuffer:Ljava/nio/IntBuffer;

    move-object v8, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move-object v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 940
    const/high16 v5, 0x3f80

    const/high16 v6, 0x3f80

    const/high16 v7, 0x3f80

    const/high16 v8, 0x3f80

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 941
    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v7, 0x4

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 943
    const/16 v5, 0x1701

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 944
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 946
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 947
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto/16 :goto_0

    .line 894
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->rotation:I

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_5

    .line 895
    const/4 v5, 0x0

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 896
    const/4 v5, 0x0

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 897
    const/4 v5, 0x1

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthLandscape:I

    move v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 899
    const/4 v5, 0x0

    aget v23, v14, v5

    .line 900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v5, v0

    const/4 v6, 0x3

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthLandscape:I

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4228

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->density:F

    move v7, v0

    mul-float/2addr v6, v7

    sget v7, Lcom/layar/core/ARRenderer;->BIW_MENU_RAWS_NUMBER:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float v24, v5, v6

    .line 901
    const/high16 v16, 0x4334

    goto/16 :goto_1

    .line 902
    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->rotation:I

    move v5, v0

    if-nez v5, :cond_6

    .line 903
    const/4 v5, 0x1

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 904
    const/4 v5, 0x1

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 905
    const/4 v5, 0x0

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthPortrait:I

    move v7, v0

    add-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v5, v0

    const/4 v6, 0x2

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthPortrait:I

    move v6, v0

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v6, 0x4228

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->density:F

    move v7, v0

    mul-float/2addr v6, v7

    sget v7, Lcom/layar/core/ARRenderer;->BIW_MENU_RAWS_NUMBER:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    sub-float v23, v5, v6

    .line 908
    const/4 v5, 0x1

    aget v24, v14, v5

    .line 909
    const/high16 v16, 0x42b4

    goto/16 :goto_1

    .line 910
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->rotation:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 911
    const/4 v5, 0x1

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 912
    const/4 v5, 0x1

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x3

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwMargin:I

    move v7, v0

    sub-int/2addr v6, v7

    int-to-float v6, v6

    cmpl-float v5, v5, v6

    if-gtz v5, :cond_0

    .line 913
    const/4 v5, 0x0

    aget v5, v14, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthPortrait:I

    move v6, v0

    int-to-float v6, v6

    cmpg-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->biwWidthPortrait:I

    move v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x4228

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->density:F

    move v7, v0

    mul-float/2addr v6, v7

    sget v7, Lcom/layar/core/ARRenderer;->BIW_MENU_RAWS_NUMBER:I

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float v23, v5, v6

    .line 916
    const/4 v5, 0x1

    aget v24, v14, v5

    .line 917
    const/high16 v16, -0x3d4c

    goto/16 :goto_1
.end method

.method public handleTouch(FFLcom/layar/core/ARRenderer$POIClickListener;)Z
    .locals 5
    .parameter "x"
    .parameter "y"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 673
    monitor-enter p0

    .line 675
    :try_start_0
    iget-boolean v1, p0, Lcom/layar/core/ARRenderer;->handleTouch:Z

    if-eqz v1, :cond_0

    monitor-exit p0

    move v1, v3

    .line 691
    :goto_0
    return v1

    .line 678
    :cond_0
    iget-object v1, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    iget v2, p0, Lcom/layar/core/ARRenderer;->rotation:I

    invoke-virtual {v1, p1, p2, v2}, Lcom/layar/core/GLRadar;->isInTouch(FFI)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 679
    invoke-direct {p0}, Lcom/layar/core/ARRenderer;->RadarClick()V

    .line 682
    :cond_1
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    .line 683
    .local v0, renderers:[Lcom/layar/core/POIRenderer;
    if-eqz v0, :cond_2

    array-length v1, v0

    if-nez v1, :cond_3

    .line 684
    :cond_2
    monitor-exit p0

    move v1, v3

    goto :goto_0

    .line 686
    :cond_3
    iput p1, p0, Lcom/layar/core/ARRenderer;->touchX:F

    .line 687
    iget-object v1, p0, Lcom/layar/core/ARRenderer;->view:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, p2

    iput v1, p0, Lcom/layar/core/ARRenderer;->touchY:F

    .line 688
    iput-object p3, p0, Lcom/layar/core/ARRenderer;->poiClickListener:Lcom/layar/core/ARRenderer$POIClickListener;

    .line 689
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/layar/core/ARRenderer;->handleTouch:Z

    .line 691
    monitor-exit p0

    move v1, v4

    goto :goto_0

    .line 673
    .end local v0           #renderers:[Lcom/layar/core/POIRenderer;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method initTexture(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 12
    .parameter "gl"
    .parameter "type"
    .parameter "part"

    .prologue
    const v11, 0x47012f00

    const v10, 0x46180400

    const/4 v9, 0x0

    const/4 v8, 0x1

    const/16 v7, 0xde1

    .line 597
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->icons:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, p2

    aget-object v3, v3, p3

    if-nez v3, :cond_2

    .line 598
    if-nez p2, :cond_1

    .line 636
    :cond_0
    :goto_0
    return-void

    .line 601
    :cond_1
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    invoke-interface {v3}, Lcom/layar/core/POIsContainer;->getCustomCiws()[[Landroid/graphics/Bitmap;

    move-result-object v0

    .line 602
    .local v0, ciws:[[Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lt v3, p2, :cond_0

    sub-int v3, p2, v8

    aget-object v3, v0, v3

    aget-object v3, v3, p3

    if-eqz v3, :cond_0

    .line 603
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->icons:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, p2

    sub-int v4, p2, v8

    aget-object v4, v0, v4

    aget-object v4, v4, p3

    const/16 v5, 0x40

    .line 604
    const/16 v6, 0x40

    .line 603
    invoke-static {v4, v5, v6, v8}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    aput-object v4, v3, p3

    .line 610
    .end local v0           #ciws:[[Landroid/graphics/Bitmap;
    :cond_2
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 612
    new-array v2, v8, [I

    .line 613
    .local v2, hardwareId:[I
    invoke-interface {p1, v8, v2, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 614
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->textureIds:[[I

    aget-object v3, v3, p2

    aget v4, v2, v9

    aput v4, v3, p3

    .line 615
    const v3, 0x84c0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 616
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->textureIds:[[I

    aget-object v3, v3, p2

    aget v3, v3, p3

    invoke-interface {p1, v7, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 617
    const/16 v3, 0x2801

    invoke-interface {p1, v7, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 619
    const/16 v3, 0x2800

    invoke-interface {p1, v7, v3, v10}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 621
    const/16 v3, 0x2802

    invoke-interface {p1, v7, v3, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 623
    const/16 v3, 0x2803

    invoke-interface {p1, v7, v3, v11}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 625
    const/16 v3, 0x2300

    const/16 v4, 0x2200

    const v5, 0x45f00800

    invoke-interface {p1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 627
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->icons:[[Landroid/graphics/Bitmap;

    aget-object v3, v3, p2

    aget-object v3, v3, p3

    invoke-static {v7, v9, v3, v9}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 629
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v1

    .line 630
    .local v1, error:I
    sget-object v3, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GL error code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    if-lez v1, :cond_3

    .line 632
    sget-object v3, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GL error string: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    :cond_3
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    aget-object v3, v3, p2

    aput-boolean v8, v3, p3

    goto/16 :goto_0
.end method

.method initThrobber(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 9
    .parameter "gl"

    .prologue
    const v8, 0x47012f00

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/16 v5, 0xde1

    .line 568
    iget-object v3, p0, Lcom/layar/core/ARRenderer;->mContext:Landroid/content/Context;

    const-string v4, "throbber_texture.png"

    invoke-static {v3, v4}, Lcom/layar/data/ImageCache;->getTextureImage(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 570
    .local v2, throbber:Landroid/graphics/Bitmap;
    new-array v1, v7, [I

    .line 572
    .local v1, id:[I
    invoke-interface {p1, v7, v1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 573
    const v3, 0x84c0

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 574
    aget v3, v1, v6

    invoke-interface {p1, v5, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 575
    const/16 v3, 0x2801

    .line 576
    const/high16 v4, 0x4618

    .line 575
    invoke-interface {p1, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 577
    const/16 v3, 0x2800

    .line 578
    const v4, 0x46180400

    .line 577
    invoke-interface {p1, v5, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 579
    const/16 v3, 0x2802

    invoke-interface {p1, v5, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 581
    const/16 v3, 0x2803

    invoke-interface {p1, v5, v3, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 584
    invoke-static {v5, v6, v2, v6}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 586
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 587
    .local v0, error:I
    sget-object v3, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GL error code: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    if-lez v0, :cond_0

    .line 589
    sget-object v3, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "GL error string: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/opengl/GLU;->gluErrorString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_0
    aget v3, v1, v6

    iput v3, p0, Lcom/layar/core/ARRenderer;->throbberId:I

    .line 593
    iput-boolean v7, p0, Lcom/layar/core/ARRenderer;->throbberReady:Z

    .line 594
    return-void
.end method

.method public isBirdseye()Z
    .locals 1

    .prologue
    .line 656
    sget-boolean v0, Lcom/layar/core/ARRenderer;->BIRD_EYE:Z

    return v0
.end method

.method public onClick(Lcom/layar/data/BasePOI;)V
    .locals 5
    .parameter "poi"

    .prologue
    .line 1112
    iget-object v1, p0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 1116
    return-void

    .line 1112
    :cond_0
    aget-object v0, v1, v3

    .line 1113
    .local v0, rend:Lcom/layar/core/POIRenderer;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    if-ne v4, p1, :cond_1

    .line 1114
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 1112
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onCreate()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1088
    iget-object v1, p0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    array-length v2, v1

    move v3, v4

    :goto_0
    if-lt v3, v2, :cond_0

    .line 1092
    return-void

    .line 1088
    :cond_0
    aget-object v0, v1, v3

    .line 1089
    .local v0, rend:Lcom/layar/core/POIRenderer;
    if-eqz v0, :cond_1

    .line 1090
    invoke-virtual {v0, v4}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 1088
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 46
    .parameter "gl"

    .prologue
    .line 266
    move-object/from16 v0, p1

    check-cast v0, Lcom/layar/core/MatrixTrackingGL;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/layar/core/MatrixTrackingGL;->startTracking()V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v6, v0

    invoke-interface {v6}, Lcom/layar/core/POIsContainer;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/layar/data/BasePOI;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 268
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/layar/core/ARRenderer;->onUnFocus()V

    .line 269
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v5, v0

    invoke-interface {v5}, Lcom/layar/core/POIsContainer;->getFocus()Lcom/layar/data/BasePOI;

    move-result-object v5

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v5, v0

    if-eqz v5, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v5, v0

    move-object/from16 v0, p0

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/layar/core/ARRenderer;->onFocus(Lcom/layar/data/BasePOI;)V

    .line 273
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v5, v0

    invoke-interface {v5}, Lcom/layar/core/POIsContainer;->getScope()I

    move-result v42

    .line 275
    .local v42, scope:I
    const/16 v5, 0x1701

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 276
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 277
    const/high16 v5, 0x41f0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->aspect:F

    move v6, v0

    const/high16 v7, 0x3f00

    const v8, 0x3f8ccccd

    move/from16 v0, v42

    int-to-float v0, v0

    move v9, v0

    mul-float/2addr v8, v9

    const v9, 0x469c4000

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 279
    const/16 v5, 0x4100

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 281
    const/16 v5, 0x1700

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 282
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 284
    sget-boolean v5, Lcom/layar/util/MyConfig;->OPENGL_LIGHTING:Z

    if-eqz v5, :cond_2

    .line 285
    const/16 v5, 0x4000

    const/16 v6, 0x1200

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->lightAmbient:[F

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 286
    const/16 v5, 0x4000

    const/16 v6, 0x1201

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->lightDiffuse:[F

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 287
    const/16 v5, 0x4000

    const/16 v6, 0x1202

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->lightSpecular:[F

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 288
    const/16 v5, 0x4000

    const/16 v6, 0x1203

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->lightPosition:[F

    move-object v7, v0

    const/4 v8, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move-object v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 289
    const/16 v5, 0x4000

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 292
    :cond_2
    const v5, 0x8074

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mSensor:Lcom/layar/util/SensorHelper;

    move-object v5, v0

    iget-object v5, v5, Lcom/layar/util/SensorHelper;->Rsmooth:[F

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 296
    const/high16 v30, 0x3fe0

    .line 297
    .local v30, eyeHeight:F
    move/from16 v0, v42

    int-to-float v0, v0

    move v5, v0

    const v6, 0x3d4ccccd

    mul-float v26, v5, v6

    .line 298
    .local v26, birdsHeight:F
    const/high16 v5, 0x4248

    cmpg-float v5, v26, v5

    if-gez v5, :cond_9

    .line 299
    const/high16 v26, 0x4248

    .line 303
    :cond_3
    :goto_0
    sget-boolean v5, Lcom/layar/core/ARRenderer;->BIRD_EYE:Z

    if-eqz v5, :cond_a

    move/from16 v31, v26

    .line 305
    .local v31, eyeLevel:F
    :goto_1
    sget-boolean v5, Lcom/layar/core/ARRenderer;->BIRD_EYE:Z

    if-eqz v5, :cond_b

    const/4 v5, 0x0

    :goto_2
    move v0, v5

    int-to-float v0, v0

    move/from16 v32, v0

    .line 306
    .local v32, fade:F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/layar/core/ARRenderer;->eyeAnimTime:J

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_4

    .line 307
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/layar/core/ARRenderer;->eyeAnimTime:J

    move-wide v7, v0

    sub-long/2addr v5, v7

    long-to-float v5, v5

    const/high16 v6, 0x447a

    div-float v44, v5, v6

    .line 308
    .local v44, t:F
    const/high16 v5, 0x3f80

    cmpl-float v5, v44, v5

    if-lez v5, :cond_c

    .line 309
    const-wide/16 v5, 0x0

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/layar/core/ARRenderer;->eyeAnimTime:J

    .line 322
    .end local v44           #t:F
    :cond_4
    :goto_3
    const/4 v5, 0x0

    const/4 v6, 0x0

    move/from16 v0, v31

    neg-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 324
    const/16 v5, 0xbc0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 325
    const/16 v5, 0x204

    const v6, 0x3dcccccd

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 327
    const/16 v5, 0xbe2

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;

    move-object/from16 v43, v0

    .line 330
    .local v43, screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;
    sget-boolean v5, Lcom/layar/core/ARRenderer;->SHOW_GRID:Z

    if-eqz v5, :cond_5

    .line 332
    if-nez v43, :cond_5

    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->grid:Lcom/layar/core/Grid;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/Grid;->draw(Ljavax/microedition/khronos/opengles/GL10;F)V

    .line 336
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    move-object/from16 v40, v0

    .line 337
    .local v40, renderers:[Lcom/layar/core/POIRenderer;
    if-eqz v40, :cond_6

    move-object/from16 v0, v40

    array-length v0, v0

    move v5, v0

    if-nez v5, :cond_e

    .line 340
    :cond_6
    if-nez v43, :cond_7

    .line 342
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/layar/core/GLRadar;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 346
    :cond_7
    if-eqz v43, :cond_8

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    .line 350
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v8, v0

    const/4 v9, 0x3

    aget v8, v8, v9

    .line 349
    move v0, v5

    move v1, v6

    move v2, v7

    move v3, v8

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layar/core/ARRenderer;->savePixels(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/layar/core/ARRenderer$ScreenshotListener;->screenshotReady(Landroid/graphics/Bitmap;)V

    .line 351
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/core/ARRenderer;->screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;

    .line 516
    .end local p1
    :cond_8
    :goto_4
    return-void

    .line 300
    .end local v31           #eyeLevel:F
    .end local v32           #fade:F
    .end local v40           #renderers:[Lcom/layar/core/POIRenderer;
    .end local v43           #screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;
    .restart local p1
    :cond_9
    const/high16 v5, 0x447a

    cmpl-float v5, v26, v5

    if-lez v5, :cond_3

    .line 301
    const/high16 v26, 0x447a

    goto/16 :goto_0

    :cond_a
    move/from16 v31, v30

    .line 303
    goto/16 :goto_1

    .line 305
    .restart local v31       #eyeLevel:F
    :cond_b
    const/4 v5, 0x1

    goto/16 :goto_2

    .line 311
    .restart local v32       #fade:F
    .restart local v44       #t:F
    :cond_c
    sget-boolean v5, Lcom/layar/core/ARRenderer;->BIRD_EYE:Z

    if-eqz v5, :cond_d

    .line 312
    move/from16 v0, v44

    float-to-double v0, v0

    move-wide v5, v0

    const/high16 v7, 0x4000

    const/high16 v8, 0x4040

    const/high16 v9, 0x4000

    mul-float v9, v9, v44

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v32, v0

    .line 313
    sub-float v5, v26, v30

    mul-float v5, v5, v32

    add-float v31, v30, v5

    .line 314
    const/high16 v5, 0x3f80

    sub-float v32, v5, v32

    goto/16 :goto_3

    .line 316
    :cond_d
    move/from16 v0, v44

    float-to-double v0, v0

    move-wide v5, v0

    const/high16 v7, 0x4000

    const/high16 v8, 0x4040

    const/high16 v9, 0x4000

    mul-float v9, v9, v44

    sub-float/2addr v8, v9

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    move-wide v0, v5

    double-to-float v0, v0

    move/from16 v32, v0

    .line 317
    sub-float v5, v26, v30

    mul-float v5, v5, v32

    sub-float v31, v26, v5

    goto/16 :goto_3

    .line 356
    .end local v44           #t:F
    .restart local v40       #renderers:[Lcom/layar/core/POIRenderer;
    .restart local v43       #screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/core/ARRenderer;->handleTouch:Z

    move v5, v0

    if-eqz v5, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poiClickListener:Lcom/layar/core/ARRenderer$POIClickListener;

    move-object v5, v0

    if-eqz v5, :cond_f

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poiClickListener:Lcom/layar/core/ARRenderer$POIClickListener;

    move-object/from16 v27, v0

    .line 360
    .local v27, clickListener:Lcom/layar/core/ARRenderer$POIClickListener;
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/core/ARRenderer;->poiClickListener:Lcom/layar/core/ARRenderer$POIClickListener;

    .line 361
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/layar/core/MatrixGrabber;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/layar/core/MatrixGrabber;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 364
    const/4 v5, 0x3

    new-array v14, v5, [F

    .line 365
    .local v14, near:[F
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [F

    move-object/from16 v24, v0

    .line 367
    .local v24, far:[F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->touchX:F

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->touchY:F

    move v6, v0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v8, v0

    iget-object v8, v8, Lcom/layar/core/MatrixGrabber;->mModelView:[F

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v10, v0

    iget-object v10, v10, Lcom/layar/core/MatrixGrabber;->mProjection:[F

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v12, v0

    const/4 v13, 0x0

    const/4 v15, 0x0

    invoke-static/range {v5 .. v15}, Lcom/layar/core/ARRenderer;->gluUnProject(FFF[FI[FI[II[FI)I

    .line 368
    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->touchX:F

    move v15, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->touchY:F

    move/from16 v16, v0

    const/high16 v17, 0x3f80

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/layar/core/MatrixGrabber;->mModelView:[F

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->matrixGrabber:Lcom/layar/core/MatrixGrabber;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Lcom/layar/core/MatrixGrabber;->mProjection:[F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object/from16 v22, v0

    const/16 v23, 0x0

    const/16 v25, 0x0

    invoke-static/range {v15 .. v25}, Lcom/layar/core/ARRenderer;->gluUnProject(FFF[FI[FI[II[FI)I

    .line 370
    const v36, 0x7f7fffff

    .line 371
    .local v36, nearest:F
    const/16 v37, 0x0

    .line 373
    .local v37, nearestPOI:Lcom/layar/core/POIRenderer;
    move-object/from16 v0, v40

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x0

    :goto_5
    if-lt v6, v5, :cond_13

    .line 388
    if-eqz v37, :cond_18

    .line 391
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object v5, v0

    iget-boolean v5, v5, Lcom/layar/data/BasePOI;->showBiwOnClick:Z

    if-eqz v5, :cond_17

    .line 392
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v5, v0

    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object v6, v0

    invoke-interface {v5, v6}, Lcom/layar/core/POIsContainer;->setFocus(Lcom/layar/data/BasePOI;)V

    .line 395
    :goto_6
    move-object/from16 v0, v37

    iget-object v0, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object v5, v0

    move-object/from16 v0, v27

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/layar/core/ARRenderer$POIClickListener;->onPOIClick(Lcom/layar/data/BasePOI;)V

    .line 396
    const/4 v5, 0x4

    move-object/from16 v0, v37

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 403
    :goto_7
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/layar/core/ARRenderer;->handleTouch:Z

    .line 406
    .end local v14           #near:[F
    .end local v24           #far:[F
    .end local v27           #clickListener:Lcom/layar/core/ARRenderer$POIClickListener;
    .end local v36           #nearest:F
    .end local v37           #nearestPOI:Lcom/layar/core/POIRenderer;
    :cond_f
    const/4 v8, 0x0

    .line 407
    .local v8, altitude:F
    const/4 v7, 0x0

    .line 408
    .local v7, useAlt:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->mSensor:Lcom/layar/util/SensorHelper;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/layar/util/SensorHelper;->getCurrentLocation()Landroid/location/Location;

    move-result-object v35

    .line 409
    .local v35, location:Landroid/location/Location;
    if-eqz v35, :cond_10

    invoke-virtual/range {v35 .. v35}, Landroid/location/Location;->hasAltitude()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 410
    invoke-virtual/range {v35 .. v35}, Landroid/location/Location;->getAltitude()D

    move-result-wide v5

    double-to-float v8, v5

    .line 411
    const/4 v7, 0x1

    .line 414
    :cond_10
    move-object/from16 v0, p1

    check-cast v0, Lcom/layar/core/MatrixTrackingGL;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/layar/core/MatrixTrackingGL;->stopTracking()V

    .line 415
    move-object/from16 v0, v40

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int v33, v5, v6

    .local v33, i:I
    :goto_8
    if-gez v33, :cond_19

    .line 423
    const v5, 0x8078

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 424
    const/16 v5, 0xde1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 427
    const/16 v5, 0xbc0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 428
    const/16 v5, 0x204

    const v6, 0x3e99999a

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 430
    const/16 v5, 0xbe2

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 436
    move-object/from16 v0, v40

    array-length v0, v0

    move v5, v0

    const/4 v6, 0x1

    sub-int v33, v5, v6

    .end local v7           #useAlt:Z
    :goto_9
    if-gez v33, :cond_1d

    .line 499
    if-nez v43, :cond_11

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/layar/core/GLRadar;->draw(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 504
    :cond_11
    const/16 v5, 0xbe2

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 505
    move-object/from16 v0, p1

    check-cast v0, Lcom/layar/core/MatrixTrackingGL;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/layar/core/MatrixTrackingGL;->startTracking()V

    .line 507
    if-eqz v43, :cond_12

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v5, v0

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    .line 511
    .end local v8           #altitude:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->view:[I

    move-object v8, v0

    const/4 v9, 0x3

    aget v8, v8, v9

    .line 510
    move v0, v5

    move v1, v6

    move v2, v7

    move v3, v8

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/layar/core/ARRenderer;->savePixels(IIIILjavax/microedition/khronos/opengles/GL10;)Landroid/graphics/Bitmap;

    move-result-object v5

    move-object/from16 v0, v43

    move-object v1, v5

    invoke-interface {v0, v1}, Lcom/layar/core/ARRenderer$ScreenshotListener;->screenshotReady(Landroid/graphics/Bitmap;)V

    .line 512
    const/4 v5, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/layar/core/ARRenderer;->screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;

    .line 515
    :cond_12
    check-cast p1, Lcom/layar/core/MatrixTrackingGL;

    .end local p1
    invoke-virtual/range {p1 .. p1}, Lcom/layar/core/MatrixTrackingGL;->stopTracking()V

    goto/16 :goto_4

    .line 373
    .end local v33           #i:I
    .end local v35           #location:Landroid/location/Location;
    .restart local v14       #near:[F
    .restart local v24       #far:[F
    .restart local v27       #clickListener:Lcom/layar/core/ARRenderer$POIClickListener;
    .restart local v36       #nearest:F
    .restart local v37       #nearestPOI:Lcom/layar/core/POIRenderer;
    .restart local p1
    :cond_13
    aget-object v39, v40, v6

    .line 374
    .local v39, renderer:Lcom/layar/core/POIRenderer;
    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/layar/core/POIRenderer;->deleted:Z

    move v7, v0

    if-eqz v7, :cond_15

    .line 373
    :cond_14
    :goto_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 375
    :cond_15
    const/high16 v28, -0x4080

    .line 376
    .local v28, distance:F
    move-object/from16 v0, v39

    iget-boolean v0, v0, Lcom/layar/core/POIRenderer;->drawn:Z

    move v7, v0

    if-eqz v7, :cond_16

    .line 377
    move-object/from16 v0, v39

    move-object v1, v14

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/POIRenderer;->intersect([F[F)F

    move-result v28

    .line 382
    :goto_b
    const/4 v7, 0x0

    cmpl-float v7, v28, v7

    if-lez v7, :cond_14

    cmpg-float v7, v28, v36

    if-gez v7, :cond_14

    .line 383
    move/from16 v36, v28

    .line 384
    move-object/from16 v37, v39

    goto :goto_a

    .line 379
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->iconRenderer:Lcom/layar/core/IconRenderer;

    move-object v7, v0

    move-object v0, v7

    move-object v1, v14

    move-object/from16 v2, v24

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/core/IconRenderer;->intersect([F[FLcom/layar/core/POIRenderer;)F

    move-result v28

    goto :goto_b

    .line 394
    .end local v28           #distance:F
    .end local v39           #renderer:Lcom/layar/core/POIRenderer;
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v5, v0

    invoke-interface {v5}, Lcom/layar/core/POIsContainer;->clearFocusLock()V

    goto/16 :goto_6

    .line 400
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    move-object v5, v0

    invoke-interface {v5}, Lcom/layar/core/POIsContainer;->clearFocusLock()V

    goto/16 :goto_7

    .line 416
    .end local v14           #near:[F
    .end local v24           #far:[F
    .end local v27           #clickListener:Lcom/layar/core/ARRenderer$POIClickListener;
    .end local v36           #nearest:F
    .end local v37           #nearestPOI:Lcom/layar/core/POIRenderer;
    .restart local v7       #useAlt:Z
    .restart local v8       #altitude:F
    .restart local v33       #i:I
    .restart local v35       #location:Landroid/location/Location;
    :cond_19
    aget-object v5, v40, v33

    if-nez v5, :cond_1b

    .line 415
    :cond_1a
    :goto_c
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_8

    .line 418
    :cond_1b
    aget-object v5, v40, v33

    iget-object v5, v5, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v5, v5, Lcom/layar/data/BasePOI;->geodistance:I

    move v0, v5

    move/from16 v1, v42

    if-gt v0, v1, :cond_1a

    aget-object v5, v40, v33

    iget-boolean v5, v5, Lcom/layar/core/POIRenderer;->deleted:Z

    if-nez v5, :cond_1a

    .line 420
    aget-object v5, v40, v33

    move/from16 v0, v42

    int-to-float v0, v0

    move v9, v0

    aget-object v6, v40, v33

    iget-object v6, v6, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v10, v0

    if-ne v6, v10, :cond_1c

    const/4 v6, 0x1

    move v10, v6

    :goto_d
    move-object/from16 v6, p1

    invoke-virtual/range {v5 .. v10}, Lcom/layar/core/POIRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;ZFFZ)V

    goto :goto_c

    :cond_1c
    const/4 v6, 0x0

    move v10, v6

    goto :goto_d

    .line 437
    .end local v7           #useAlt:Z
    :cond_1d
    aget-object v5, v40, v33

    iget-boolean v5, v5, Lcom/layar/core/POIRenderer;->deleted:Z

    if-eqz v5, :cond_1f

    .line 436
    :cond_1e
    :goto_e
    add-int/lit8 v33, v33, -0x1

    goto/16 :goto_9

    .line 438
    :cond_1f
    aget-object v5, v40, v33

    iget-boolean v5, v5, Lcom/layar/core/POIRenderer;->drawn:Z

    if-nez v5, :cond_21

    .line 439
    aget-object v5, v40, v33

    iget-object v5, v5, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v6, v0

    if-ne v5, v6, :cond_22

    .line 440
    const/4 v5, 0x3

    move/from16 v38, v5

    .line 444
    .local v38, part:I
    :goto_f
    if-ltz v38, :cond_1e

    .line 447
    aget-object v5, v40, v33

    iget-boolean v5, v5, Lcom/layar/core/POIRenderer;->showThrobber:Z

    if-eqz v5, :cond_23

    .line 448
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/core/ARRenderer;->throbberReady:Z

    move v5, v0

    if-nez v5, :cond_20

    invoke-virtual/range {p0 .. p1}, Lcom/layar/core/ARRenderer;->initThrobber(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 449
    :cond_20
    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/layar/core/ARRenderer;->throbberId:I

    move v6, v0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 479
    :goto_10
    aget-object v5, v40, v33

    invoke-virtual {v5}, Lcom/layar/core/POIRenderer;->getIconScale()F

    move-result v34

    .line 480
    .local v34, iconScale:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->iconRenderer:Lcom/layar/core/IconRenderer;

    move-object v5, v0

    aget-object v6, v40, v33

    move/from16 v0, v42

    int-to-float v0, v0

    move v7, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    move v3, v7

    move/from16 v4, v34

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/layar/core/IconRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/layar/core/POIRenderer;FF)F

    move-result v41

    .line 482
    .local v41, scale:F
    aget-object v5, v40, v33

    iget-object v5, v5, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v6, v0

    if-eq v5, v6, :cond_21

    .line 483
    move/from16 v0, v41

    float-to-double v0, v0

    move-wide v5, v0

    const-wide v7, 0x3fe999999999999aL

    mul-double/2addr v5, v7

    double-to-float v5, v5

    .line 493
    .end local v34           #iconScale:F
    .end local v38           #part:I
    .end local v41           #scale:F
    :cond_21
    aget-object v5, v40, v33

    iget-object v5, v5, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->focus:Lcom/layar/data/BasePOI;

    move-object v6, v0

    if-ne v5, v6, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/layar/core/ARRenderer;->arrowVisible:Z

    move v5, v0

    if-eqz v5, :cond_1e

    .line 494
    aget-object v5, v40, v33

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/layar/core/ARRenderer;->drawFocusArrow(Ljavax/microedition/khronos/opengles/GL10;Lcom/layar/core/POIRenderer;)V

    goto/16 :goto_e

    .line 441
    :cond_22
    aget-object v5, v40, v33

    iget-object v5, v5, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    move-object v0, v5

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Lcom/layar/data/BasePOI;->getDisplayPart(I)I

    move-result v5

    move/from16 v38, v5

    goto :goto_f

    .line 450
    .restart local v38       #part:I
    :cond_23
    aget-object v5, v40, v33

    invoke-virtual {v5}, Lcom/layar/core/POIRenderer;->getIconTextureId()I

    move-result v5

    if-lez v5, :cond_24

    .line 451
    const/16 v5, 0xde1

    aget-object v6, v40, v33

    invoke-virtual {v6}, Lcom/layar/core/POIRenderer;->getIconTextureId()I

    move-result v6

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    goto :goto_10

    .line 453
    :cond_24
    aget-object v5, v40, v33

    iget-object v5, v5, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    invoke-virtual {v5}, Lcom/layar/data/BasePOI;->getIconType()I

    move-result v45

    .line 456
    .local v45, type:I
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    move-object v5, v0

    if-nez v5, :cond_25

    .line 457
    sget-object v5, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    const-string v6, "texturesReady not defined for current layer"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_e

    .line 471
    :catch_0
    move-exception v5

    move-object/from16 v29, v5

    .line 472
    .local v29, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v5, Lcom/layar/core/ARRenderer;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "out of bounds: type="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v7, v40, v33

    iget-object v7, v7, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    invoke-virtual {v7}, Lcom/layar/data/BasePOI;->getIconType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 473
    const-string v7, " part="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " scope="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " distance="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 474
    aget-object v7, v40, v33

    iget-object v7, v7, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    iget v7, v7, Lcom/layar/data/BasePOI;->geodistance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 472
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 461
    .end local v29           #e:Ljava/lang/ArrayIndexOutOfBoundsException;
    :cond_25
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    move-object v5, v0

    array-length v5, v5

    add-int/lit8 v6, v45, 0x1

    if-ge v5, v6, :cond_26

    .line 462
    const/16 v45, 0x0

    .line 463
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    move-object v5, v0

    aget-object v5, v5, v45

    aget-boolean v5, v5, v38

    if-nez v5, :cond_27

    .line 464
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/core/ARRenderer;->initTexture(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 465
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    move-object v5, v0

    aget-object v5, v5, v45

    aget-boolean v5, v5, v38

    if-nez v5, :cond_28

    .line 466
    const/16 v45, 0x0

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    move-object v5, v0

    aget-object v5, v5, v45

    aget-boolean v5, v5, v38

    if-nez v5, :cond_28

    .line 468
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v45

    move/from16 v3, v38

    invoke-virtual {v0, v1, v2, v3}, Lcom/layar/core/ARRenderer;->initTexture(Ljavax/microedition/khronos/opengles/GL10;II)V

    .line 470
    :cond_28
    const/16 v5, 0xde1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/core/ARRenderer;->textureIds:[[I

    move-object v6, v0

    aget-object v6, v6, v45

    aget v6, v6, v38

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    invoke-interface {v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_10
.end method

.method public onFocus(Lcom/layar/data/BasePOI;)V
    .locals 5
    .parameter "poi"

    .prologue
    .line 1095
    iget-object v1, p0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 1100
    return-void

    .line 1095
    :cond_0
    aget-object v0, v1, v3

    .line 1096
    .local v0, rend:Lcom/layar/core/POIRenderer;
    if-eqz v0, :cond_1

    iget-object v4, v0, Lcom/layar/core/POIRenderer;->mPoi:Lcom/layar/data/BasePOI;

    if-ne v4, p1, :cond_1

    .line 1097
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/layar/core/POIRenderer;->startAnimation(I)V

    .line 1095
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v0, 0x0

    const/high16 v3, 0x42e8

    const/high16 v2, 0x3f00

    .line 551
    invoke-interface {p1, v0, v0, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 552
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->view:[I

    const/4 v1, 0x2

    aput p2, v0, v1

    .line 553
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->view:[I

    const/4 v1, 0x3

    aput p3, v0, v1

    .line 555
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    int-to-float v1, p2

    iput v1, v0, Lcom/layar/core/GLRadar;->w:F

    .line 556
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    int-to-float v1, p3

    iput v1, v0, Lcom/layar/core/GLRadar;->h:F

    .line 557
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    iget v1, p0, Lcom/layar/core/ARRenderer;->rotation:I

    invoke-virtual {v0, v1}, Lcom/layar/core/GLRadar;->setRotation(I)V

    .line 559
    sput p3, Lcom/layar/core/ARRenderer;->VIEW_HEIGHT:I

    .line 560
    int-to-float v0, p2

    int-to-float v1, p3

    div-float/2addr v0, v1

    iput v0, p0, Lcom/layar/core/ARRenderer;->aspect:F

    .line 562
    const/high16 v0, 0x4188

    iget v1, p0, Lcom/layar/core/ARRenderer;->density:F

    mul-float/2addr v0, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/layar/core/ARRenderer;->biwMargin:I

    .line 563
    iget v0, p0, Lcom/layar/core/ARRenderer;->density:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/layar/core/ARRenderer;->biwWidthLandscape:I

    .line 564
    iget v0, p0, Lcom/layar/core/ARRenderer;->density:F

    mul-float/2addr v0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p0, Lcom/layar/core/ARRenderer;->biwWidthPortrait:I

    .line 565
    return-void
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 2
    .parameter "gl"
    .parameter "config"

    .prologue
    const/4 v1, 0x0

    .line 522
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    invoke-virtual {v0, p1}, Lcom/layar/core/GLRadar;->init(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 524
    const/16 v0, 0xde1

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 525
    const/16 v0, 0xb20

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 527
    invoke-interface {p1, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 528
    const/16 v0, 0xb44

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 529
    const/16 v0, 0x1d01

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 530
    const/16 v0, 0xb71

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 531
    const/16 v0, 0x203

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 533
    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 534
    const v0, 0x8078

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 536
    invoke-direct {p0, p1}, Lcom/layar/core/ARRenderer;->isLowTextureSize(Ljavax/microedition/khronos/opengles/GL10;)Z

    move-result v0

    sput-boolean v0, Lcom/layar/core/POIRenderer2D;->LOW_TEXTURE_SIZE:Z

    .line 537
    return-void
.end method

.method public onUnFocus()V
    .locals 5

    .prologue
    .line 1103
    iget-object v1, p0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_0

    .line 1109
    return-void

    .line 1103
    :cond_0
    aget-object v0, v1, v3

    .line 1104
    .local v0, rend:Lcom/layar/core/POIRenderer;
    if-nez v0, :cond_1

    .line 1103
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1106
    :cond_1
    const/4 v4, 0x3

    invoke-virtual {v0, v4}, Lcom/layar/core/POIRenderer;->stopAnimation(I)V

    .line 1107
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Lcom/layar/core/POIRenderer;->stopAnimation(I)V

    goto :goto_1
.end method

.method public preparePOIs()V
    .locals 0

    .prologue
    .line 1034
    return-void
.end method

.method public requestScreenshot(Lcom/layar/core/ARRenderer$ScreenshotListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 667
    iput-object p1, p0, Lcom/layar/core/ARRenderer;->screenshotListener:Lcom/layar/core/ARRenderer$ScreenshotListener;

    .line 668
    return-void
.end method

.method public resetTextures()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 639
    iput-boolean v6, p0, Lcom/layar/core/ARRenderer;->throbberReady:Z

    .line 641
    iget-object v5, p0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    if-eqz v5, :cond_0

    .line 642
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    iget-object v5, p0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    array-length v5, v5

    if-lt v2, v5, :cond_1

    .line 646
    .end local v2           #j:I
    :cond_0
    iget-object v4, p0, Lcom/layar/core/ARRenderer;->poiRenderers:[Lcom/layar/core/POIRenderer;

    .line 647
    .local v4, renders:[Lcom/layar/core/POIRenderer;
    array-length v0, v4

    .line 648
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v0, :cond_3

    .line 652
    iput-boolean v6, p0, Lcom/layar/core/ARRenderer;->arrowInitialized:Z

    .line 653
    return-void

    .line 643
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v4           #renders:[Lcom/layar/core/POIRenderer;
    .restart local v2       #j:I
    :cond_1
    const/4 v3, 0x0

    .local v3, k:I
    :goto_2
    const/4 v5, 0x4

    if-lt v3, v5, :cond_2

    .line 642
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    :cond_2
    iget-object v5, p0, Lcom/layar/core/ARRenderer;->textureReady:[[Z

    aget-object v5, v5, v2

    aput-boolean v6, v5, v3

    .line 643
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 649
    .end local v2           #j:I
    .end local v3           #k:I
    .restart local v0       #count:I
    .restart local v1       #i:I
    .restart local v4       #renders:[Lcom/layar/core/POIRenderer;
    :cond_3
    aget-object v5, v4, v1

    invoke-virtual {v5}, Lcom/layar/core/POIRenderer;->resetTextures()V

    .line 648
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public setArrowVisible(Z)V
    .locals 0
    .parameter "arrowVisible"

    .prologue
    .line 1037
    iput-boolean p1, p0, Lcom/layar/core/ARRenderer;->arrowVisible:Z

    .line 1038
    return-void
.end method

.method public setBirdseye(Z)V
    .locals 2
    .parameter "birdseye"

    .prologue
    .line 660
    sput-boolean p1, Lcom/layar/core/ARRenderer;->BIRD_EYE:Z

    .line 661
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/layar/core/ARRenderer;->eyeAnimTime:J

    .line 662
    return-void
.end method

.method protected setPoisContainer(Lcom/layar/core/POIsContainer;)V
    .locals 1
    .parameter "poisContainer"

    .prologue
    .line 172
    iput-object p1, p0, Lcom/layar/core/ARRenderer;->poisContainer:Lcom/layar/core/POIsContainer;

    .line 174
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    invoke-virtual {v0, p1}, Lcom/layar/core/GLRadar;->setPoisContainer(Lcom/layar/core/POIsContainer;)V

    .line 175
    return-void
.end method

.method public setRotation(I)V
    .locals 1
    .parameter "rotation"

    .prologue
    .line 763
    sget-boolean v0, Lcom/layar/util/MyConfig;->FORCE_LANDSCAPE:Z

    if-eqz v0, :cond_0

    .line 768
    :goto_0
    return-void

    .line 765
    :cond_0
    iput p1, p0, Lcom/layar/core/ARRenderer;->rotation:I

    .line 767
    iget-object v0, p0, Lcom/layar/core/ARRenderer;->radar:Lcom/layar/core/GLRadar;

    invoke-virtual {v0, p1}, Lcom/layar/core/GLRadar;->setRotation(I)V

    goto :goto_0
.end method
