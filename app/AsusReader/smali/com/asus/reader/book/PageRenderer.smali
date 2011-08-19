.class public Lcom/asus/reader/book/PageRenderer;
.super Ljava/lang/Object;
.source "PageRenderer.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;,
        Lcom/asus/reader/book/PageRenderer$CacheHandler;,
        Lcom/asus/reader/book/PageRenderer$FlipState;
    }
.end annotation


# static fields
.field public static final DBG:Z

.field public static PAGECOUNT:I


# instance fields
.field private LightAmbient:[F

.field private LightDiffuse:[F

.field private LightPosition:[F

.field private blendAlpha:F

.field private drawLock:Ljava/lang/Object;

.field private gussianFilterSize:I

.field private isDraw:Z

.field private isLoad:[Z

.field private mBlackID:[I

.field private mBookId:I

.field private mCBar:Lcom/asus/reader/book/CenterBar;

.field private mCBarID:[I

.field private mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

.field private mCaching:Z

.field private mChanged:Z

.field private mContext:Landroid/content/Context;

.field private mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

.field private final mFragmentShader:Ljava/lang/String;

.field private mHeight:I

.field private mIsLandscape:Z

.field private mListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLooper:Landroid/os/Looper;

.field private mMLMatrix:[F

.field private mMRMatrix:[F

.field private mMVPMatrix:[F

.field private mNoWait:Z

.field private mPage:[Lcom/asus/reader/book/FlippingPage;

.field private mPause:Z

.field private mProgram:I

.field private mProjMatrix:[F

.field private mSecondDraw:Z

.field private final mShadowFragmentShader:Ljava/lang/String;

.field private mShadowIndices:Ljava/nio/ByteBuffer;

.field private mShadowProgram:I

.field private final mShadowVertexShader:Ljava/lang/String;

.field private mShadowVertices:Ljava/nio/IntBuffer;

.field private mVMatrix:[F

.field private final mVertexShader:Ljava/lang/String;

.field private mView:Lcom/asus/reader/book/BookSurfaceView;

.field private mWidth:I

.field private maNormalHandle:I

.field private maPositionHandle:I

.field private maPositionHandle2:I

.field private maTextureHandle:I

.field private muLight0DirectionHandle:I

.field private muMVPMatrixHandle:I

.field private muModelMatrixHandle:I

.field private muProjectMatrixHandle:I

.field private muViewMatrixHandle:I

.field private needClear:[Z

.field private tex:[I

.field private final timeout:[I

.field private timeout_index:I

.field private final tlock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/asus/reader/ReaderApp;->DBG:Z

    sput-boolean v0, Lcom/asus/reader/book/PageRenderer;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/asus/reader/book/BookSurfaceView;IIZ)V
    .locals 10
    .parameter "context"
    .parameter "view"
    .parameter "BookId"
    .parameter "LastViewPageNo"
    .parameter "isLandscape"

    .prologue
    const/4 v9, 0x3

    const/16 v3, 0x10

    const/4 v8, 0x4

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v2, v8, [Lcom/asus/reader/book/FlippingPage;

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    .line 45
    iput-boolean v7, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    .line 46
    iput-boolean v6, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    .line 47
    iput-boolean v6, p0, Lcom/asus/reader/book/PageRenderer;->mNoWait:Z

    .line 48
    iput-boolean v6, p0, Lcom/asus/reader/book/PageRenderer;->mPause:Z

    .line 49
    iput-boolean v6, p0, Lcom/asus/reader/book/PageRenderer;->mCaching:Z

    .line 51
    sget-object v2, Lcom/asus/reader/book/PageRenderer$FlipState;->NO_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    .line 58
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    .line 59
    new-array v2, v9, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->timeout:[I

    .line 60
    iput v6, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    .line 65
    const/4 v2, 0x6

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    .line 66
    const/4 v2, 0x6

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    .line 67
    const/4 v2, 0x6

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    .line 81
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMVPMatrix:[F

    .line 82
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mProjMatrix:[F

    .line 83
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    .line 84
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    .line 85
    new-array v2, v3, [F

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mVMatrix:[F

    .line 86
    new-array v2, v8, [F

    fill-array-data v2, :array_1

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->LightAmbient:[F

    .line 87
    new-array v2, v8, [F

    fill-array-data v2, :array_2

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->LightDiffuse:[F

    .line 88
    new-array v2, v8, [F

    fill-array-data v2, :array_3

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->LightPosition:[F

    .line 101
    const/4 v2, 0x5

    iput v2, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    .line 102
    const/high16 v2, 0x3f70

    iput v2, p0, Lcom/asus/reader/book/PageRenderer;->blendAlpha:F

    .line 104
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mCBarID:[I

    .line 105
    new-array v2, v7, [I

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mBlackID:[I

    .line 106
    iput-boolean v6, p0, Lcom/asus/reader/book/PageRenderer;->isDraw:Z

    .line 107
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->drawLock:Ljava/lang/Object;

    .line 114
    const-string v2, "uniform mat4 uModelMatrix;\nuniform mat4 uViewMatrix;\nuniform mat4 uProjectMatrix;\nattribute vec4 aPosition;\nattribute vec4 aNormal;\nattribute vec2 aTextureCoord;\nvarying vec3 vNormal;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 vPosition = uViewMatrix * uModelMatrix * aPosition;\n  gl_Position = uProjectMatrix * vPosition;\n  vNormal = vec3(aNormal);\n  vTextureCoord = aTextureCoord;\n}\n"

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mVertexShader:Ljava/lang/String;

    .line 133
    const-string v2, "precision mediump float;\nuniform vec3 uLight0Direction;\nvarying vec3 vNormal;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  float intensive = clamp(dot(vNormal, uLight0Direction), 0.0, 1.0)*0.35;\n  gl_FragColor = texture2D(sTexture, vTextureCoord) * (intensive + 0.65);\n}\n"

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mFragmentShader:Ljava/lang/String;

    .line 146
    const-string v2, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertexShader:Ljava/lang/String;

    .line 153
    const-string v2, "void main() {\n  gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n}\n"

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mShadowFragmentShader:Ljava/lang/String;

    .line 159
    sget-boolean v2, Lcom/asus/reader/book/PageRenderer;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "PageRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PageRenderer mIsLandscape = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_0
    iput-object p1, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    .line 161
    iput-object p2, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    .line 162
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    sput v2, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    .line 163
    iput p3, p0, Lcom/asus/reader/book/PageRenderer;->mBookId:I

    .line 164
    iput-boolean p5, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    .line 165
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMVPMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 166
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mProjMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 167
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 168
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 169
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mVMatrix:[F

    invoke-static {v2, v6}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 170
    new-instance v2, Lcom/asus/reader/book/CenterBar;

    iget-boolean v3, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v2, v3}, Lcom/asus/reader/book/CenterBar;-><init>(Z)V

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    .line 171
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    new-instance v3, Lcom/asus/reader/book/FlippingPage;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v7, v4}, Lcom/asus/reader/book/FlippingPage;-><init>(IZ)V

    aput-object v3, v2, v6

    .line 172
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    new-instance v3, Lcom/asus/reader/book/FlippingPage;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v6, v4}, Lcom/asus/reader/book/FlippingPage;-><init>(IZ)V

    aput-object v3, v2, v7

    .line 173
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v3, 0x2

    new-instance v4, Lcom/asus/reader/book/FlippingPage;

    iget-boolean v5, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v4, v9, v5}, Lcom/asus/reader/book/FlippingPage;-><init>(IZ)V

    aput-object v4, v2, v3

    .line 174
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    new-instance v3, Lcom/asus/reader/book/FlippingPage;

    const/4 v4, 0x2

    iget-boolean v5, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v4, v5}, Lcom/asus/reader/book/FlippingPage;-><init>(IZ)V

    aput-object v3, v2, v9

    .line 175
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v2, v2, v6

    new-instance v3, Lcom/asus/reader/book/Page;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v4}, Lcom/asus/reader/book/Page;-><init>(Z)V

    iput-object v3, v2, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    .line 176
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v2, v2, v6

    new-instance v3, Lcom/asus/reader/book/Page;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v4}, Lcom/asus/reader/book/Page;-><init>(Z)V

    iput-object v3, v2, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    .line 177
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v2, v2, v7

    new-instance v3, Lcom/asus/reader/book/Page;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v4}, Lcom/asus/reader/book/Page;-><init>(Z)V

    iput-object v3, v2, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    .line 178
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v2, v2, v7

    new-instance v3, Lcom/asus/reader/book/Page;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v4}, Lcom/asus/reader/book/Page;-><init>(Z)V

    iput-object v3, v2, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    .line 179
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    new-instance v3, Lcom/asus/reader/book/Page;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v4}, Lcom/asus/reader/book/Page;-><init>(Z)V

    iput-object v3, v2, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    .line 180
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v2, v2, v9

    new-instance v3, Lcom/asus/reader/book/Page;

    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    invoke-direct {v3, v4}, Lcom/asus/reader/book/Page;-><init>(Z)V

    iput-object v3, v2, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    .line 181
    invoke-static {v8}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mShadowIndices:Ljava/nio/ByteBuffer;

    .line 182
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mShadowIndices:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mShadowIndices:Ljava/nio/ByteBuffer;

    int-to-byte v3, v0

    invoke-virtual {v2, v0, v3}, Ljava/nio/ByteBuffer;->put(IB)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_1
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "PageRenderer"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 185
    .local v1, thread:Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 186
    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mLooper:Landroid/os/Looper;

    .line 187
    new-instance v2, Lcom/asus/reader/book/PageRenderer$CacheHandler;

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Lcom/asus/reader/book/PageRenderer$CacheHandler;-><init>(Lcom/asus/reader/book/PageRenderer;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    .line 188
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mListenerList:Ljava/util/List;

    .line 189
    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->mBookId:I

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {p0, v2, p4, v3}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 191
    return-void

    .line 59
    :array_0
    .array-data 0x4
        0xf4t 0x1t 0x0t 0x0t
        0xc4t 0x9t 0x0t 0x0t
        0x80t 0xeet 0x36t 0x0t
    .end array-data

    .line 86
    :array_1
    .array-data 0x4
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x9at 0x99t 0x99t 0x3et
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 87
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 88
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/asus/reader/book/PageRenderer;)Lcom/asus/reader/book/BookSurfaceView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/asus/reader/book/PageRenderer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/asus/reader/book/PageRenderer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->mBookId:I

    return v0
.end method

.method static synthetic access$300(Lcom/asus/reader/book/PageRenderer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    return v0
.end method

.method static synthetic access$402(Lcom/asus/reader/book/PageRenderer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/asus/reader/book/PageRenderer;->mCaching:Z

    return p1
.end method

.method static synthetic access$500(Lcom/asus/reader/book/PageRenderer;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/PageRenderer;->notifyChange(II)V

    return-void
.end method

.method private checkGlError(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    .line 828
    invoke-static {}, Landroid/opengl/GLES20;->glGetError()I

    move-result v0

    if-eqz v0, :cond_0

    .line 829
    const-string v1, "PageRenderer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 830
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": glError "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 832
    :cond_0
    return-void
.end method

.method private createProgram(Ljava/lang/String;Ljava/lang/String;)I
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 793
    const v0, 0x8b31

    invoke-direct {p0, v0, p1}, Lcom/asus/reader/book/PageRenderer;->loadShader(ILjava/lang/String;)I

    move-result v0

    .line 794
    if-nez v0, :cond_0

    .line 795
    const-string v0, "PageRenderer"

    const-string v1, "load vertex shader fail."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 823
    :goto_0
    return v0

    .line 799
    :cond_0
    const v1, 0x8b30

    invoke-direct {p0, v1, p2}, Lcom/asus/reader/book/PageRenderer;->loadShader(ILjava/lang/String;)I

    move-result v1

    .line 800
    if-nez v1, :cond_1

    .line 801
    const-string v0, "PageRenderer"

    const-string v1, "load pixel shader fail."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v5

    .line 802
    goto :goto_0

    .line 805
    :cond_1
    invoke-static {}, Landroid/opengl/GLES20;->glCreateProgram()I

    move-result v2

    .line 806
    if-eqz v2, :cond_2

    .line 807
    invoke-static {v2, v0}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 808
    const-string v3, "glAttachShader"

    invoke-direct {p0, v3}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 809
    invoke-static {v2, v1}, Landroid/opengl/GLES20;->glAttachShader(II)V

    .line 810
    const-string v3, "glAttachShader"

    invoke-direct {p0, v3}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 811
    invoke-static {v2}, Landroid/opengl/GLES20;->glLinkProgram(I)V

    .line 812
    new-array v3, v6, [I

    .line 813
    const v4, 0x8b82

    invoke-static {v2, v4, v3, v5}, Landroid/opengl/GLES20;->glGetProgramiv(II[II)V

    .line 814
    aget v3, v3, v5

    if-eq v3, v6, :cond_2

    .line 815
    const-string v3, "PageRenderer"

    const-string v4, "Could not link program: "

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string v3, "PageRenderer"

    invoke-static {v2}, Landroid/opengl/GLES20;->glGetProgramInfoLog(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-static {v2}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    move v2, v5

    .line 821
    :cond_2
    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 822
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    move v0, v2

    .line 823
    goto :goto_0
.end method

.method private deleteGlElements(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter "gl"

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1048
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_0

    .line 1049
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v3, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1050
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCBarID:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1051
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mBlackID:[I

    invoke-static {v2, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 1052
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1053
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    .line 1056
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v3, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    goto :goto_0
.end method

.method private draw20(Lcom/asus/reader/book/FlippingPage;I[F)V
    .locals 7
    .parameter "mDrawPage"
    .parameter "GLES20Face"
    .parameter "mModelMatrix"

    .prologue
    const/16 v6, 0x901

    const/4 v2, 0x0

    .line 514
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->muModelMatrixHandle:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p3, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 515
    monitor-enter p1

    .line 516
    :try_start_0
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/asus/reader/book/FlippingPage;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 517
    const/16 v0, 0x900

    if-ne p2, v0, :cond_0

    .line 518
    invoke-static {p2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 519
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maNormalHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 520
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 530
    :goto_0
    const/4 v0, 0x5

    iget-object v1, p1, Lcom/asus/reader/book/FlippingPage;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1401

    iget-object v3, p1, Lcom/asus/reader/book/FlippingPage;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 531
    monitor-exit p1

    .line 532
    return-void

    .line 521
    :cond_0
    if-ne p2, v6, :cond_1

    .line 522
    invoke-static {p2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 523
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maNormalHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer2:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 524
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer2:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 526
    :cond_1
    const/16 v0, 0x901

    :try_start_1
    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 527
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maNormalHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer2:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 528
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p1, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private drawShadow(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V
    .locals 10
    .parameter "gl"
    .parameter "mDrawPage"
    .parameter "GLES20Face"
    .parameter "mModelMatrix"

    .prologue
    const v8, 0x47ffff00

    const v7, 0x477fff00

    .line 535
    invoke-interface {p1, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 538
    iget-boolean v6, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v6, :cond_0

    .line 539
    iget v6, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v6, v6

    div-float v6, v8, v6

    float-to-int v4, v6

    .line 540
    .local v4, offsetX:I
    iget v6, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v6, v6

    div-float v6, v8, v6

    float-to-int v5, v6

    .line 545
    .local v5, offsetY:I
    :goto_0
    monitor-enter p2

    .line 546
    :try_start_0
    iget-object v6, p2, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    array-length v6, v6

    mul-int/lit8 v6, v6, 0x4

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v6

    iput-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    .line 547
    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v7, p2, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 548
    const/16 v6, 0x1700

    invoke-interface {p1, v6}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 549
    const/4 v6, 0x0

    invoke-interface {p1, p4, v6}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 550
    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v6}, Ljava/nio/IntBuffer;->capacity()I

    move-result v0

    .line 551
    .local v0, capacity:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_1

    .line 552
    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v1}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    iget v8, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    div-int/lit8 v8, v8, 0x2

    add-int/lit8 v8, v8, 0x1

    mul-int/2addr v8, v4

    sub-int/2addr v7, v8

    invoke-virtual {v6, v1, v7}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 553
    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    add-int/lit8 v7, v1, 0x1

    iget-object v8, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    add-int/lit8 v9, v1, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v8

    iget v9, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    div-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x1

    mul-int/2addr v9, v5

    sub-int/2addr v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 551
    add-int/lit8 v1, v1, 0x3

    goto :goto_1

    .line 542
    .end local v0           #capacity:I
    .end local v1           #i:I
    .end local v4           #offsetX:I
    .end local v5           #offsetY:I
    :cond_0
    iget v6, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v6, v6

    div-float v6, v7, v6

    float-to-int v4, v6

    .line 543
    .restart local v4       #offsetX:I
    iget v6, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v6, v6

    div-float v6, v7, v6

    float-to-int v5, v6

    .restart local v5       #offsetY:I
    goto :goto_0

    .line 555
    .restart local v0       #capacity:I
    .restart local v1       #i:I
    :cond_1
    const/4 v1, 0x0

    :goto_2
    :try_start_1
    iget v6, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    if-ge v1, v6, :cond_7

    .line 556
    const/4 v3, 0x0

    .local v3, k:I
    :goto_3
    if-ge v3, v0, :cond_2

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/2addr v7, v4

    invoke-virtual {v6, v3, v7}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x3

    goto :goto_3

    .line 557
    :cond_2
    const/4 v2, 0x0

    .local v2, j:I
    :goto_4
    iget v6, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    if-ge v2, v6, :cond_5

    .line 558
    const/4 v3, 0x1

    :goto_5
    if-ge v3, v0, :cond_3

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    add-int/2addr v7, v5

    invoke-virtual {v6, v3, v7}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x3

    goto :goto_5

    .line 559
    :cond_3
    const/4 v6, 0x3

    const/16 v7, 0x140c

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-interface {p1, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 560
    const/4 v6, 0x5

    div-int/lit8 v7, v0, 0x3

    const/16 v8, 0x1401

    iget-object v9, p0, Lcom/asus/reader/book/PageRenderer;->mShadowIndices:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v6, v7, v8, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 561
    const/4 v3, 0x2

    :goto_6
    if-ge v3, v0, :cond_4

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x3

    goto :goto_6

    .line 557
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 563
    :cond_5
    const/4 v3, 0x1

    :goto_7
    if-ge v3, v0, :cond_6

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v7

    iget v8, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    mul-int/2addr v8, v5

    sub-int/2addr v7, v8

    invoke-virtual {v6, v3, v7}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v3, v3, 0x3

    goto :goto_7

    .line 555
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 565
    .end local v2           #j:I
    .end local v3           #k:I
    :cond_7
    monitor-exit p2

    .line 566
    return-void

    .line 565
    .end local v0           #capacity:I
    .end local v1           #i:I
    :catchall_0
    move-exception v6

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6
.end method

.method private drawShadow20(Lcom/asus/reader/book/FlippingPage;I[F)V
    .locals 12
    .parameter "mDrawPage"
    .parameter "GLES20Face"
    .parameter "mModelMatrix"

    .prologue
    .line 569
    invoke-static {p2}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 572
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 573
    const v0, 0x47ffff00

    iget v1, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v10, v0

    .line 574
    .local v10, offsetX:I
    const v0, 0x47ffff00

    iget v1, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v11, v0

    .line 579
    .local v11, offsetY:I
    :goto_0
    monitor-enter p1

    .line 580
    :try_start_0
    iget-object v0, p1, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    .line 581
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v1, p1, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 582
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, p3, v3}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 583
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->capacity()I

    move-result v6

    .line 584
    .local v6, capacity:I
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    if-ge v7, v6, :cond_1

    .line 585
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v7}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int/2addr v2, v10

    sub-int/2addr v1, v2

    invoke-virtual {v0, v7, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    .line 586
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    add-int/lit8 v1, v7, 0x1

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    add-int/lit8 v3, v7, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->get(I)I

    move-result v2

    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    div-int/lit8 v3, v3, 0x2

    add-int/lit8 v3, v3, 0x1

    mul-int/2addr v3, v11

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 584
    add-int/lit8 v7, v7, 0x3

    goto :goto_1

    .line 576
    .end local v6           #capacity:I
    .end local v7           #i:I
    .end local v10           #offsetX:I
    .end local v11           #offsetY:I
    :cond_0
    const v0, 0x477fff00

    iget v1, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v10, v0

    .line 577
    .restart local v10       #offsetX:I
    const v0, 0x477fff00

    iget v1, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v11, v0

    .restart local v11       #offsetY:I
    goto :goto_0

    .line 588
    .restart local v6       #capacity:I
    .restart local v7       #i:I
    :cond_1
    const/4 v7, 0x0

    :goto_2
    :try_start_1
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    if-ge v7, v0, :cond_7

    .line 589
    const/4 v9, 0x0

    .local v9, k:I
    :goto_3
    if-ge v9, v6, :cond_2

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    add-int/2addr v1, v10

    invoke-virtual {v0, v9, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v9, v9, 0x3

    goto :goto_3

    .line 590
    :cond_2
    const/4 v8, 0x0

    .local v8, j:I
    :goto_4
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    if-ge v8, v0, :cond_5

    .line 591
    const/4 v9, 0x1

    :goto_5
    if-ge v9, v6, :cond_3

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    add-int/2addr v1, v11

    invoke-virtual {v0, v9, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v9, v9, 0x3

    goto :goto_5

    .line 592
    :cond_3
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle2:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 593
    const/4 v0, 0x5

    div-int/lit8 v1, v6, 0x3

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mShadowIndices:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 594
    const/4 v9, 0x2

    :goto_6
    if-ge v9, v6, :cond_4

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v9, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v9, v9, 0x3

    goto :goto_6

    .line 590
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 596
    :cond_5
    const/4 v9, 0x1

    :goto_7
    if-ge v9, v6, :cond_6

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mShadowVertices:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v9}, Ljava/nio/IntBuffer;->get(I)I

    move-result v1

    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->gussianFilterSize:I

    mul-int/2addr v2, v11

    sub-int/2addr v1, v2

    invoke-virtual {v0, v9, v1}, Ljava/nio/IntBuffer;->put(II)Ljava/nio/IntBuffer;

    add-int/lit8 v9, v9, 0x3

    goto :goto_7

    .line 588
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 598
    .end local v8           #j:I
    .end local v9           #k:I
    :cond_7
    monitor-exit p1

    .line 599
    return-void

    .line 598
    .end local v6           #capacity:I
    .end local v7           #i:I
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private loadShader(ILjava/lang/String;)I
    .locals 5
    .parameter "shaderType"
    .parameter "source"

    .prologue
    const/4 v3, 0x0

    .line 776
    invoke-static {p1}, Landroid/opengl/GLES20;->glCreateShader(I)I

    move-result v1

    .line 777
    .local v1, shader:I
    if-eqz v1, :cond_0

    .line 778
    invoke-static {v1, p2}, Landroid/opengl/GLES20;->glShaderSource(ILjava/lang/String;)V

    .line 779
    invoke-static {v1}, Landroid/opengl/GLES20;->glCompileShader(I)V

    .line 780
    const/4 v2, 0x1

    new-array v0, v2, [I

    .line 781
    .local v0, compiled:[I
    const v2, 0x8b81

    invoke-static {v1, v2, v0, v3}, Landroid/opengl/GLES20;->glGetShaderiv(II[II)V

    .line 782
    aget v2, v0, v3

    if-nez v2, :cond_0

    .line 783
    const-string v2, "PageRenderer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not compile shader "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const-string v2, "PageRenderer"

    invoke-static {v1}, Landroid/opengl/GLES20;->glGetShaderInfoLog(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteShader(I)V

    .line 786
    const/4 v1, 0x0

    .line 789
    .end local v0           #compiled:[I
    :cond_0
    return v1
.end method

.method private notifyChange(II)V
    .locals 3
    .parameter "type"
    .parameter "state"

    .prologue
    .line 1158
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mListenerList:Ljava/util/List;

    if-nez v2, :cond_1

    .line 1174
    :cond_0
    :goto_0
    return-void

    .line 1160
    :cond_1
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 1163
    :pswitch_0
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;

    .line 1164
    .local v1, listener:Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;
    invoke-interface {v1, p2}, Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;->onSetPageNumber(I)V

    goto :goto_1

    .line 1169
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #listener:Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;
    :pswitch_1
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;

    .line 1170
    .restart local v1       #listener:Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;
    invoke-interface {v1}, Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;->onDocumentChange()V

    goto :goto_2

    .line 1160
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearAllTextures()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 1039
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 1040
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v6, 0x5

    aput-boolean v7, v5, v6

    aput-boolean v7, v3, v4

    aput-boolean v7, v1, v2

    aput-boolean v7, v0, v8

    .line 1044
    :goto_0
    return-void

    .line 1042
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v7, v1, v8

    aput-boolean v7, v0, v7

    goto :goto_0
.end method

.method public destroy(ZI)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1080
    sget-boolean v0, Lcom/asus/reader/book/PageRenderer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PageRenderer"

    const-string v1, "Renderer destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    :cond_0
    invoke-virtual {p0}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 1082
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    invoke-virtual {v0}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 1083
    invoke-static {}, Lcom/asus/reader/Cache;->getInstance()Lcom/asus/reader/Cache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/Cache;->destroy()V

    .line 1084
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/asus/reader/book/BookSurfaceView;->cleanupNative(ZI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1086
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 1087
    invoke-static {}, Lcom/asus/reader/book/UserStyle;->changeToDayModeUserStyleCSS()V

    .line 1089
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->callSyncDB()V

    .line 1091
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/PageTexture;->release()V

    .line 1092
    return-void
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V
    .locals 4
    .parameter "gl"
    .parameter "mDrawPage"
    .parameter "GL10Face"
    .parameter "mModelMatrix"

    .prologue
    const/4 v1, 0x0

    .line 496
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 497
    invoke-interface {p1, p4, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 498
    monitor-enter p2

    .line 499
    const/4 v0, 0x3

    const/16 v1, 0x140c

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p2, Lcom/asus/reader/book/FlippingPage;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 500
    const/16 v0, 0x900

    if-ne p3, v0, :cond_1

    .line 501
    invoke-interface {p1, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 502
    const/16 v0, 0x140c

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 503
    const/4 v0, 0x2

    const/16 v1, 0x140c

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 509
    :cond_0
    :goto_0
    const/4 v0, 0x5

    iget-object v1, p2, Lcom/asus/reader/book/FlippingPage;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1401

    iget-object v3, p2, Lcom/asus/reader/book/FlippingPage;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 510
    monitor-exit p2

    .line 511
    return-void

    .line 504
    :cond_1
    const/16 v0, 0x901

    if-ne p3, v0, :cond_0

    .line 505
    invoke-interface {p1, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 506
    const/16 v0, 0x140c

    const/4 v1, 0x0

    iget-object v2, p2, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer2:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 507
    const/4 v0, 0x2

    const/16 v1, 0x140c

    const/4 v2, 0x0

    iget-object v3, p2, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer2:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    goto :goto_0

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public flip(FFFFFFFF)V
    .locals 9
    .parameter "x0"
    .parameter "y0"
    .parameter "x"
    .parameter "y"
    .parameter "nLeft"
    .parameter "nRight"
    .parameter "nTop"
    .parameter "nDown"

    .prologue
    .line 837
    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->isDraw:Z

    if-eqz v1, :cond_1

    .line 877
    :cond_0
    :goto_0
    return-void

    .line 841
    :cond_1
    invoke-virtual {p0}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 842
    sub-float v1, p6, p5

    const/high16 v2, 0x3f80

    add-float/2addr v1, v2

    const/high16 v2, 0x4000

    div-float v0, v1, v2

    .line 843
    .local v0, M:F
    const/high16 v1, 0x3f80

    cmpl-float v1, p1, v1

    if-nez v1, :cond_4

    .line 844
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v1}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v1}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-eq v1, v2, :cond_0

    .line 847
    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    iput-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    .line 848
    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 849
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 850
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/high16 v3, 0x3f80

    sub-float v4, p8, p2

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    sub-float v5, p8, p7

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float v5, p3, v0

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    sub-float v6, p8, p4

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    sub-float v7, p8, p7

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/asus/reader/book/FlippingPage;->flip(FFFF)V

    .line 851
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 874
    :cond_2
    :goto_1
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v1

    .line 875
    :try_start_1
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 876
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 851
    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    .line 854
    :cond_3
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 855
    :try_start_3
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const/high16 v3, 0x3f80

    sub-float v4, p8, p2

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    sub-float v5, p8, p7

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float v5, p3, p5

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    sub-float v6, p6, p5

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float v6, p8, p4

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    sub-float v7, p8, p7

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/asus/reader/book/FlippingPage;->flip(FFFF)V

    .line 856
    monitor-exit v1

    goto :goto_1

    :catchall_2
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v2

    .line 858
    :cond_4
    const/high16 v1, -0x4080

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 859
    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v1}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v1

    if-eqz v1, :cond_0

    :cond_5
    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v1}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v1

    if-ltz v1, :cond_0

    .line 862
    :cond_6
    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    iput-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    .line 863
    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 864
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 865
    :try_start_4
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/high16 v3, -0x4080

    sub-float v4, p8, p2

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    sub-float v5, p8, p7

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float v5, p3, v0

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v5, v0

    sub-float v6, p8, p4

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    sub-float v7, p8, p7

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/asus/reader/book/FlippingPage;->flip(FFFF)V

    .line 866
    monitor-exit v1

    goto/16 :goto_1

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    throw v2

    .line 869
    :cond_7
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v1

    .line 870
    :try_start_5
    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/high16 v3, 0x3f80

    sub-float v4, p8, p2

    const/high16 v5, 0x3f80

    add-float/2addr v4, v5

    sub-float v5, p8, p7

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    div-float/2addr v4, v5

    sub-float v5, p3, p5

    const/high16 v6, 0x3f80

    add-float/2addr v5, v6

    sub-float v6, p6, p5

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    div-float/2addr v5, v6

    sub-float v6, p8, p4

    const/high16 v7, 0x3f80

    add-float/2addr v6, v7

    sub-float v7, p8, p7

    const/high16 v8, 0x3f80

    add-float/2addr v7, v8

    div-float/2addr v6, v7

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/asus/reader/book/FlippingPage;->flip(FFFF)V

    .line 871
    monitor-exit v1

    goto/16 :goto_1

    :catchall_4
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    throw v2
.end method

.method public invalidate()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    .line 963
    iput v8, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    .line 964
    iput-boolean v7, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    .line 965
    iput-boolean v7, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    .line 966
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_0

    .line 967
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    const/4 v4, 0x4

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    const/4 v6, 0x5

    aput-boolean v7, v5, v6

    aput-boolean v7, v3, v4

    aput-boolean v7, v1, v2

    aput-boolean v7, v0, v8

    .line 971
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v0

    .line 972
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 973
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 974
    return-void

    .line 969
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aput-boolean v7, v1, v8

    aput-boolean v7, v0, v7

    goto :goto_0

    .line 973
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public nextPage()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x5

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 894
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v4}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    sub-int/2addr v5, v8

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v4}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v4

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    sub-int/2addr v5, v8

    if-ne v4, v5, :cond_1

    .line 896
    :cond_0
    iget-object p0, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity;->mSeekBarPanelHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 925
    :goto_0
    return-void

    .line 899
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 901
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 902
    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v4, :cond_4

    .line 904
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 905
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v2, v4, v10

    .local v2, tmp1:I
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v3, v4, v12

    .line 906
    .local v3, tmp2:I
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v9

    aput v5, v4, v10

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v8

    aput v5, v4, v12

    .line 907
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v6, 0x4

    aget v5, v5, v6

    aput v5, v4, v9

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v11

    aput v5, v4, v8

    .line 908
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v5, 0x4

    aput v2, v4, v5

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aput v3, v4, v11

    .line 909
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v7, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aput-boolean v8, v7, v12

    aput-boolean v8, v6, v10

    aput-boolean v8, v5, v8

    aput-boolean v8, v4, v9

    .line 910
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v8, v6, v11

    aput-boolean v8, v4, v5

    .line 918
    .end local v2           #tmp1:I
    .end local v3           #tmp2:I
    :goto_1
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    if-lt v4, v5, :cond_2

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    sub-int/2addr v5, v8

    iput v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 919
    :cond_2
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    invoke-virtual {v4, v11}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->sendEmptyMessage(I)Z

    .line 920
    iget v4, p0, Lcom/asus/reader/book/PageRenderer;->mBookId:I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 921
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v4}, Lcom/asus/reader/book/BookViewActivity;->getPageSeekBar()Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v0

    .line 922
    .local v0, seekbar:Lcom/asus/reader/ui/PageSeekBar2;
    if-eqz v0, :cond_3

    .line 923
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 924
    :cond_3
    invoke-virtual {p0, v9}, Lcom/asus/reader/book/PageRenderer;->resetPage(Z)V

    goto/16 :goto_0

    .line 912
    .end local v0           #seekbar:Lcom/asus/reader/ui/PageSeekBar2;
    :cond_4
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v4, v10

    .line 913
    .local v1, tmp:I
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v9

    aput v5, v4, v10

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v8

    aput v5, v4, v9

    .line 914
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aput v1, v4, v8

    .line 915
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aput-boolean v8, v5, v10

    aput-boolean v8, v4, v9

    .line 916
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v8, v4, v8

    goto :goto_1
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 12
    .parameter "gl"

    .prologue
    const/4 v11, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 194
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mNoWait:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mPause:Z

    if-nez v0, :cond_2

    .line 195
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->timeout:[I

    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V

    .line 198
    iget v1, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->timeout:[I

    array-length v2, v2

    if-lt v1, v2, :cond_0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->timeout:[I

    array-length v1, v1

    sub-int/2addr v1, v5

    iput v1, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v2, Lcom/asus/reader/book/PageRenderer$FlipState;->NO_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mNoWait:Z

    if-nez v1, :cond_1

    .line 203
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    .line 204
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 209
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_2
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mPause:Z

    if-eqz v0, :cond_3

    .line 216
    invoke-direct {p0, p1}, Lcom/asus/reader/book/PageRenderer;->deleteGlElements(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 492
    :goto_1
    return-void

    .line 206
    :catch_0
    move-exception v1

    move-object v6, v1

    .line 207
    .local v6, e:Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 209
    .end local v6           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 220
    :cond_3
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mNoWait:Z

    if-eqz v0, :cond_4

    .line 221
    iput-boolean v10, p0, Lcom/asus/reader/book/PageRenderer;->mNoWait:Z

    .line 223
    :cond_4
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    if-eqz v0, :cond_17

    .line 224
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_f

    .line 225
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aget-boolean v0, v0, v10

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v10

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v5

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aget-boolean v0, v0, v11

    if-eqz v0, :cond_7

    .line 228
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_d

    .line 229
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v9, v0, v9}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 230
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v9, v0, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 231
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v9

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 232
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v11

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 237
    :goto_2
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v10, v1, v11

    aput-boolean v10, v0, v9

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_8

    .line 240
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_e

    .line 241
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v1, 0x4

    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 242
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v1, 0x4

    invoke-static {v9, v0, v1}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 243
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 244
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 249
    :goto_3
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    const/4 v3, 0x5

    aput-boolean v10, v2, v3

    aput-boolean v10, v0, v1

    .line 251
    :cond_8
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mCaching:Z

    if-nez v0, :cond_c

    .line 252
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aget-boolean v0, v0, v9

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v9

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v9

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 253
    :cond_9
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aget-boolean v0, v0, v11

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v11

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 254
    :cond_a
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    const/4 v1, 0x4

    aget-boolean v0, v0, v1

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 255
    :cond_b
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    const/4 v1, 0x5

    aget-boolean v0, v0, v1

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 287
    :cond_c
    :goto_4
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    if-eqz v0, :cond_23

    .line 288
    const/4 v7, 0x0

    .local v7, i:I
    :goto_5
    const/4 v0, 0x6

    if-ge v7, v0, :cond_16

    .line 289
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aput-boolean v10, v0, v7

    .line 288
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 234
    .end local v7           #i:I
    :cond_d
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v9, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 235
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v9, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    goto/16 :goto_2

    .line 246
    :cond_e
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v1, 0x4

    invoke-interface {p1, v9, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 247
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v1, 0x4

    invoke-interface {p1, v9, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    goto/16 :goto_3

    .line 258
    :cond_f
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aget-boolean v0, v0, v10

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v5

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v10

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 259
    :cond_10
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_11

    .line 260
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_14

    .line 261
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v5, v0, v5}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 262
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v5, v0, v5}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 263
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v5

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 268
    :goto_6
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v10, v0, v5

    .line 270
    :cond_11
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aget-boolean v0, v0, v9

    if-eqz v0, :cond_12

    .line 271
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_15

    .line 272
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v5, v0, v9}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 273
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v5, v0, v9}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 274
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v9

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    .line 279
    :goto_7
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v10, v0, v9

    .line 281
    :cond_12
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mCaching:Z

    if-nez v0, :cond_c

    .line 282
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aget-boolean v0, v0, v5

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v11

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v5

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 283
    :cond_13
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aget-boolean v0, v0, v9

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v0, v0, v10

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v1, v9

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->init(Ljavax/microedition/khronos/opengles/GL10;I)V

    goto/16 :goto_4

    .line 265
    :cond_14
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v5, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 266
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v5, v0, v5}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    goto :goto_6

    .line 276
    :cond_15
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v5, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 277
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v5, v0, v9}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    goto :goto_7

    .line 290
    .restart local v7       #i:I
    :cond_16
    iput-boolean v10, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    .line 291
    iput-boolean v10, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    .line 293
    invoke-virtual {p0}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 294
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    if-ne v0, v9, :cond_17

    .line 295
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    invoke-virtual {v0, v5}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 296
    .local v8, msg:Landroid/os/Message;
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iput-object v0, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 297
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    invoke-virtual {v0, v8}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->sendMessage(Landroid/os/Message;)Z

    .line 312
    .end local v7           #i:I
    .end local v8           #msg:Landroid/os/Message;
    :cond_17
    :goto_8
    iput-boolean v5, p0, Lcom/asus/reader/book/PageRenderer;->isDraw:Z

    .line 313
    iget-object v9, p0, Lcom/asus/reader/book/PageRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v9

    .line 315
    :try_start_3
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v0, :cond_2e

    .line 317
    const/16 v0, 0x4100

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 318
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 320
    :try_start_4
    const-string v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 323
    :try_start_5
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->muLight0DirectionHandle:I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->LightPosition:[F

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glUniform3fv(II[FI)V

    .line 325
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->muViewMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mVMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 326
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->muProjectMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mProjMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 329
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mCBarID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 330
    const/16 v0, 0x900

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 331
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->muModelMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 332
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v5, v5, Lcom/asus/reader/book/CenterBar;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 333
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maNormalHandle:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v5, v5, Lcom/asus/reader/book/CenterBar;->mNormalBuffer:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 334
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maTextureHandle:I

    const/4 v1, 0x2

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v5, v5, Lcom/asus/reader/book/CenterBar;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 335
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v1, v1, Lcom/asus/reader/book/CenterBar;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v3, v3, Lcom/asus/reader/book/CenterBar;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 338
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_24

    .line 339
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_19

    .line 340
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 341
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 342
    :cond_18
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 343
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 345
    :cond_19
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_1b

    .line 346
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 347
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 348
    :cond_1a
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 349
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 351
    :cond_1b
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 352
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 353
    :cond_1c
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 354
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 391
    :cond_1d
    :goto_9
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-nez v0, :cond_1e

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-eqz v0, :cond_21

    .line 392
    :cond_1e
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 394
    :try_start_6
    const-string v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 396
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_7
    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->blendAlpha:F

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 397
    const/4 v0, 0x0

    const v1, 0x8003

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 398
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 399
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-eqz v0, :cond_1f

    .line 400
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->drawShadow20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 401
    :cond_1f
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-eqz v0, :cond_20

    .line 402
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_2d

    .line 403
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->drawShadow20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 407
    :cond_20
    :goto_a
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 411
    :cond_21
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->mShadowProgram:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 413
    :try_start_8
    const-string v0, "glUseProgram"

    invoke-direct {p0, v0}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    .line 415
    :try_start_9
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->muMVPMatrixHandle:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 416
    const/16 v0, 0x900

    invoke-static {v0}, Landroid/opengl/GLES20;->glFrontFace(I)V

    .line 417
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x3f333333

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 418
    const/4 v0, 0x0

    const v1, 0x8003

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 419
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 420
    iget v0, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle2:I

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v5, v5, Lcom/asus/reader/book/CenterBar;->mV:Ljava/nio/IntBuffer;

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 421
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v1, v1, Lcom/asus/reader/book/CenterBar;->mI:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v3, v3, Lcom/asus/reader/book/CenterBar;->mI:Ljava/nio/ByteBuffer;

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 422
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 489
    :cond_22
    :goto_b
    monitor-exit v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 490
    iput-boolean v10, p0, Lcom/asus/reader/book/PageRenderer;->isDraw:Z

    .line 491
    sget-object v0, Lcom/asus/reader/book/PageRenderer$FlipState;->NO_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    iput-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    goto/16 :goto_1

    .line 300
    :cond_23
    iput-boolean v5, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    .line 301
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v0

    .line 303
    :try_start_a
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_4

    .line 306
    :goto_c
    :try_start_b
    monitor-exit v0

    goto/16 :goto_8

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v1

    .line 321
    :catch_1
    move-exception v0

    move-object v6, v0

    .local v6, e:Ljava/lang/Exception;
    :try_start_c
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->isDraw:Z

    monitor-exit v9

    goto/16 :goto_1

    .line 489
    .end local v6           #e:Ljava/lang/Exception;
    :catchall_2
    move-exception v0

    monitor-exit v9
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    throw v0

    .line 356
    :cond_24
    :try_start_d
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_28

    .line 357
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 358
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 359
    :cond_25
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 360
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 362
    :cond_26
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x3e99999a

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 363
    const v0, 0x8003

    const v1, 0x8004

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 364
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 365
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 366
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 367
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 368
    :cond_27
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 369
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 371
    :cond_28
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_2c

    .line 372
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 373
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 374
    :cond_29
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 375
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 377
    :cond_2a
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const v3, 0x3e99999a

    invoke-static {v0, v1, v2, v3}, Landroid/opengl/GLES20;->glBlendColor(FFFF)V

    .line 378
    const v0, 0x8003

    const v1, 0x8004

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 379
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 380
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 381
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 382
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 383
    :cond_2b
    const/16 v0, 0xb71

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 384
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glDisable(I)V

    .line 386
    :cond_2c
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 387
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw20(Lcom/asus/reader/book/FlippingPage;I[F)V

    goto/16 :goto_9

    .line 395
    :catch_2
    move-exception v0

    move-object v6, v0

    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->isDraw:Z

    monitor-exit v9

    goto/16 :goto_1

    .line 405
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2d
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->drawShadow20(Lcom/asus/reader/book/FlippingPage;I[F)V

    goto/16 :goto_a

    .line 414
    :catch_3
    move-exception v0

    move-object v6, v0

    .restart local v6       #e:Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->isDraw:Z

    monitor-exit v9

    goto/16 :goto_1

    .line 425
    .end local v6           #e:Ljava/lang/Exception;
    :cond_2e
    const/16 v0, 0x4100

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 428
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mCBarID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 429
    const/16 v0, 0x900

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 430
    const/16 v0, 0x1700

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 431
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 432
    const/4 v0, 0x3

    const/16 v1, 0x140c

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v3, v3, Lcom/asus/reader/book/CenterBar;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 433
    const/16 v0, 0x140c

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v2, v2, Lcom/asus/reader/book/CenterBar;->mNormalBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 434
    const/4 v0, 0x2

    const/16 v1, 0x140c

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v3, v3, Lcom/asus/reader/book/CenterBar;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 435
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v1, v1, Lcom/asus/reader/book/CenterBar;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    const/16 v2, 0x1401

    iget-object v3, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget-object v3, v3, Lcom/asus/reader/book/CenterBar;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 438
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_38

    .line 439
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_30

    .line 440
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 441
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 442
    :cond_2f
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 443
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 445
    :cond_30
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_32

    .line 446
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 447
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 448
    :cond_31
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x5

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 449
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 451
    :cond_32
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 452
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 453
    :cond_33
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 454
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 473
    :cond_34
    :goto_d
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-eqz v0, :cond_22

    .line 474
    :cond_35
    const/4 v0, 0x0

    const/16 v1, 0x302

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 475
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 476
    const/16 v0, 0xde1

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mBlackID:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-interface {p1, v0, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 477
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-eqz v0, :cond_36

    .line 478
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->drawShadow(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 479
    :cond_36
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    if-eqz v0, :cond_37

    .line 480
    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v0, :cond_3d

    .line 481
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->drawShadow(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 485
    :cond_37
    :goto_e
    const/16 v0, 0xbe2

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto/16 :goto_b

    .line 456
    :cond_38
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->RIGHT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_3a

    .line 457
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x3

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 458
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 459
    :cond_39
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 460
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x3

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 462
    :cond_3a
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    sget-object v1, Lcom/asus/reader/book/PageRenderer$FlipState;->LEFT_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    if-ne v0, v1, :cond_3c

    .line 463
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x4

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setBackgroundTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 464
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x901

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 465
    :cond_3b
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x2

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 466
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    .line 468
    :cond_3c
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v0}, Lcom/asus/reader/book/Page;->getTexture()Lcom/asus/reader/book/PageTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/asus/reader/book/PageTexture;->setTexture(Ljavax/microedition/khronos/opengles/GL10;I)Z

    move-result v0

    if-eqz v0, :cond_34

    .line 469
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V

    goto/16 :goto_d

    .line 483
    :cond_3d
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/16 v1, 0x900

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/asus/reader/book/PageRenderer;->drawShadow(Ljavax/microedition/khronos/opengles/GL10;Lcom/asus/reader/book/FlippingPage;I[F)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/16 :goto_e

    .line 304
    :catch_4
    move-exception v1

    goto/16 :goto_c
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 11
    .parameter "gl"
    .parameter "width"
    .parameter "height"

    .prologue
    const-wide/high16 v9, 0x3ff0

    const/4 v5, 0x0

    const/high16 v8, 0x3f80

    const/high16 v4, -0x4080

    const/4 v7, 0x0

    .line 602
    sget-boolean v1, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v1, :cond_0

    .line 603
    invoke-static {v7, v7, p2, p3}, Landroid/opengl/GLES20;->glViewport(IIII)V

    .line 607
    :goto_0
    iput p2, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    .line 608
    iput p3, p0, Lcom/asus/reader/book/PageRenderer;->mHeight:I

    .line 609
    int-to-float v1, p2

    int-to-float v2, p3

    div-float v0, v1, v2

    .line 610
    .local v0, ratio:F
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v1, v1, v7

    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/FlippingPage;->setSize(II)V

    .line 611
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/FlippingPage;->setSize(II)V

    .line 612
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/FlippingPage;->setSize(II)V

    .line 613
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/FlippingPage;->setSize(II)V

    .line 614
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mCBar:Lcom/asus/reader/book/CenterBar;

    iget v2, p0, Lcom/asus/reader/book/PageRenderer;->mWidth:I

    iget v3, p0, Lcom/asus/reader/book/PageRenderer;->mHeight:I

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/CenterBar;->setsize(II)V

    .line 615
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-static {v1, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 616
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-static {v1, v7}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 617
    iget-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v1, :cond_1

    .line 618
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-static {v1, v7, v5, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 619
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-static {v1, v7, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 620
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    float-to-double v2, v0

    mul-double/2addr v2, v9

    double-to-float v2, v2

    invoke-static {v1, v7, v8, v2, v8}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 621
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    float-to-double v2, v0

    mul-double/2addr v2, v9

    double-to-float v2, v2

    invoke-static {v1, v7, v8, v2, v8}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 628
    :goto_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    .line 629
    return-void

    .line 605
    .end local v0           #ratio:F
    :cond_0
    invoke-interface {p1, v7, v7, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    goto :goto_0

    .line 623
    .restart local v0       #ratio:F
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    invoke-static {v1, v7, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 624
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    invoke-static {v1, v7, v4, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 625
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMRMatrix:[F

    const/high16 v2, 0x4000

    const-wide/high16 v3, 0x4000

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v1, v7, v2, v3, v8}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 626
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mMLMatrix:[F

    const/high16 v2, 0x4000

    const-wide/high16 v3, 0x4000

    float-to-double v5, v0

    mul-double/2addr v3, v5

    double-to-float v3, v3

    invoke-static {v1, v7, v2, v3, v8}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    goto :goto_1
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 12
    .parameter "gl"
    .parameter "config"

    .prologue
    const/16 v11, 0x4000

    const/4 v10, 0x0

    const/16 v9, 0xde1

    const/4 v7, -0x1

    const/4 v8, 0x0

    .line 632
    sget-boolean v5, Lcom/asus/reader/book/BookViewActivity;->UseGLES20:Z

    if-eqz v5, :cond_b

    .line 634
    const-string v5, "uniform mat4 uModelMatrix;\nuniform mat4 uViewMatrix;\nuniform mat4 uProjectMatrix;\nattribute vec4 aPosition;\nattribute vec4 aNormal;\nattribute vec2 aTextureCoord;\nvarying vec3 vNormal;\nvarying vec2 vTextureCoord;\nvoid main() {\n  vec4 vPosition = uViewMatrix * uModelMatrix * aPosition;\n  gl_Position = uProjectMatrix * vPosition;\n  vNormal = vec3(aNormal);\n  vTextureCoord = aTextureCoord;\n}\n"

    const-string v6, "precision mediump float;\nuniform vec3 uLight0Direction;\nvarying vec3 vNormal;\nvarying vec2 vTextureCoord;\nuniform sampler2D sTexture;\nvoid main() {\n  float intensive = clamp(dot(vNormal, uLight0Direction), 0.0, 1.0)*0.35;\n  gl_FragColor = texture2D(sTexture, vTextureCoord) * (intensive + 0.65);\n}\n"

    invoke-direct {p0, v5, v6}, Lcom/asus/reader/book/PageRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    .line 635
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    if-nez v5, :cond_1

    .line 773
    :cond_0
    :goto_0
    return-void

    .line 639
    :cond_1
    const-string v5, "uniform mat4 uMVPMatrix;\nattribute vec4 aPosition;\nvoid main() {\n  gl_Position = uMVPMatrix * aPosition;\n}\n"

    const-string v6, "void main() {\n  gl_FragColor = vec4(0.0, 0.0, 0.0, 0.0);\n}\n"

    invoke-direct {p0, v5, v6}, Lcom/asus/reader/book/PageRenderer;->createProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->mShadowProgram:I

    .line 640
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    if-eqz v5, :cond_0

    .line 644
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    const-string v6, "uModelMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->muModelMatrixHandle:I

    .line 645
    const-string v5, "glGetUniformLocation uModelMatrix"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 646
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->muModelMatrixHandle:I

    if-ne v5, v7, :cond_2

    .line 647
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for uModelMatrix"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 649
    :cond_2
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    const-string v6, "uViewMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->muViewMatrixHandle:I

    .line 650
    const-string v5, "glGetUniformLocation uViewMatrix"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 651
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->muViewMatrixHandle:I

    if-ne v5, v7, :cond_3

    .line 652
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for uViewMatrix"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 654
    :cond_3
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    const-string v6, "uProjectMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->muProjectMatrixHandle:I

    .line 655
    const-string v5, "glGetUniformLocation uProjectMatrix"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 656
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->muProjectMatrixHandle:I

    if-ne v5, v7, :cond_4

    .line 657
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for uProjectMatrix"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 659
    :cond_4
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    const-string v6, "uLight0Direction"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->muLight0DirectionHandle:I

    .line 660
    const-string v5, "glGetUniformLocation uLight0Direction"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 661
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->muLight0DirectionHandle:I

    if-ne v5, v7, :cond_5

    .line 662
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for uLight0Direction"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 671
    :cond_5
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    const-string v6, "aPosition"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle:I

    .line 672
    const-string v5, "glGetAttribLocation aPosition"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 673
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle:I

    if-ne v5, v7, :cond_6

    .line 674
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for aPosition"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 676
    :cond_6
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    const-string v6, "aNormal"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->maNormalHandle:I

    .line 677
    const-string v5, "glGetAttribLocation aNormal"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 678
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maNormalHandle:I

    if-ne v5, v7, :cond_7

    .line 679
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for aNormal"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 681
    :cond_7
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mProgram:I

    const-string v6, "aTextureCoord"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->maTextureHandle:I

    .line 682
    const-string v5, "glGetAttribLocation aTextureCoord"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 683
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maTextureHandle:I

    if-ne v5, v7, :cond_8

    .line 684
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for aTextureCoord"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 687
    :cond_8
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mShadowProgram:I

    const-string v6, "aPosition"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle2:I

    .line 688
    const-string v5, "glGetAttribLocation aPosition"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 689
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle2:I

    if-ne v5, v7, :cond_9

    .line 690
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for aPosition"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 693
    :cond_9
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->mShadowProgram:I

    const-string v6, "uMVPMatrix"

    invoke-static {v5, v6}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/asus/reader/book/PageRenderer;->muMVPMatrixHandle:I

    .line 694
    const-string v5, "glGetUniformLocation uMVPMatrix"

    invoke-direct {p0, v5}, Lcom/asus/reader/book/PageRenderer;->checkGlError(Ljava/lang/String;)V

    .line 695
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->muMVPMatrixHandle:I

    if-ne v5, v7, :cond_a

    .line 696
    new-instance v5, Ljava/lang/RuntimeException;

    const-string v6, "Could not get attrib location for uMVPMatrix"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 698
    :cond_a
    const/high16 v5, 0x3f80

    invoke-static {v10, v10, v10, v5}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 699
    const/16 v5, 0xb71

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 700
    const/16 v5, 0xb44

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 702
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 703
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maNormalHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 704
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maTextureHandle:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 705
    iget v5, p0, Lcom/asus/reader/book/PageRenderer;->maPositionHandle2:I

    invoke-static {v5}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 709
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-static {v5, v6, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 738
    :goto_1
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mCBarID:[I

    invoke-static {v5, v6, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 739
    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020132

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v3

    .line 741
    .local v3, is0:Ljava/io/InputStream;
    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mCBarID:[I

    aget v5, v5, v8

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 742
    const/16 v5, 0x2801

    const/high16 v6, 0x4618

    invoke-static {v9, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 744
    const/16 v5, 0x2800

    const v6, 0x46180400

    invoke-static {v9, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 748
    :try_start_0
    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 751
    .local v0, bitmap0:Landroid/graphics/Bitmap;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 756
    :goto_2
    invoke-static {v9, v8, v0, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 759
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mBlackID:[I

    invoke-static {v5, v6, v8}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 760
    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mBlackID:[I

    aget v5, v5, v8

    invoke-static {v9, v5}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 761
    const/16 v5, 0x2801

    const/high16 v6, 0x4618

    invoke-static {v9, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 763
    const/16 v5, 0x2800

    const v6, 0x46180400

    invoke-static {v9, v5, v6}, Landroid/opengl/GLES20;->glTexParameterf(IIF)V

    .line 766
    const/16 v5, 0xf0

    invoke-static {v5, v8, v8, v8}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 767
    .local v4, myBlack:I
    const/4 v5, 0x4

    new-array v2, v5, [I

    aput v4, v2, v8

    const/4 v5, 0x1

    aput v4, v2, v5

    const/4 v5, 0x2

    aput v4, v2, v5

    const/4 v5, 0x3

    aput v4, v2, v5

    .line 768
    .local v2, colorsBlack:[I
    const/4 v5, 0x2

    const/4 v6, 0x2

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v5, v6, v7}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 769
    .local v1, bitmap1:Landroid/graphics/Bitmap;
    invoke-static {v9, v8, v1, v8}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    .line 771
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 772
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    goto/16 :goto_0

    .line 713
    .end local v0           #bitmap0:Landroid/graphics/Bitmap;
    .end local v1           #bitmap1:Landroid/graphics/Bitmap;
    .end local v2           #colorsBlack:[I
    .end local v3           #is0:Ljava/io/InputStream;
    .end local v4           #myBlack:I
    :cond_b
    const/high16 v5, 0x3f00

    invoke-interface {p1, v10, v10, v10, v5}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 714
    const/16 v5, 0xc50

    const/16 v6, 0x1101

    invoke-interface {p1, v5, v6}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 717
    const/16 v5, 0xb44

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 718
    const/16 v5, 0x1d01

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 719
    const/16 v5, 0xb71

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 721
    const/16 v5, 0x1200

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->LightAmbient:[F

    invoke-interface {p1, v11, v5, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 722
    const/16 v5, 0x1201

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->LightDiffuse:[F

    invoke-interface {p1, v11, v5, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 723
    const/16 v5, 0x1203

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->LightPosition:[F

    invoke-interface {p1, v11, v5, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 724
    const/16 v5, 0xb50

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 725
    invoke-interface {p1, v11}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 727
    invoke-interface {p1, v9}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 729
    const/16 v5, 0x1701

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 730
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 732
    const v5, 0x8074

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 733
    const v5, 0x8078

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 734
    const v5, 0x8075

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 736
    const/4 v5, 0x6

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    invoke-interface {p1, v5, v6, v8}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    goto/16 :goto_1

    .line 750
    .restart local v3       #is0:Ljava/io/InputStream;
    :catchall_0
    move-exception v5

    .line 751
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 754
    :goto_3
    throw v5

    .line 752
    .restart local v0       #bitmap0:Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    goto/16 :goto_2

    .end local v0           #bitmap0:Landroid/graphics/Bitmap;
    :catch_1
    move-exception v6

    goto :goto_3
.end method

.method public pause()V
    .locals 2

    .prologue
    .line 1073
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mPause:Z

    .line 1074
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1076
    monitor-exit v0

    .line 1077
    return-void

    .line 1076
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public previousPage()V
    .locals 14

    .prologue
    const/4 v13, 0x3

    const/4 v12, 0x5

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 928
    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v10

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v4}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v10

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v4}, Lcom/asus/reader/book/Page;->getCurrentPageNo()I

    move-result v4

    if-gez v4, :cond_2

    .line 930
    :cond_1
    iget-object p0, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, p0, Lcom/asus/reader/book/BookViewActivity;->mSeekBarPanelHandler:Landroid/os/Handler;

    invoke-virtual {v4, v9}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 959
    :goto_0
    return-void

    .line 933
    .restart local p0
    :cond_2
    invoke-virtual {p0}, Lcom/asus/reader/book/PageRenderer;->removeAllCachingMessages()V

    .line 935
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    sub-int/2addr v5, v9

    iput v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 936
    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v4, :cond_5

    .line 938
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    sub-int/2addr v5, v9

    iput v5, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 939
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v5, 0x4

    aget v2, v4, v5

    .local v2, tmp1:I
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v3, v4, v12

    .line 940
    .local v3, tmp2:I
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v6, v6, v10

    aput v6, v4, v5

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v9

    aput v5, v4, v12

    .line 941
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v11

    aput v5, v4, v10

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v13

    aput v5, v4, v9

    .line 942
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aput v2, v4, v11

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aput v3, v4, v13

    .line 943
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    const/4 v7, 0x4

    iget-object v8, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aput-boolean v9, v8, v12

    aput-boolean v9, v6, v7

    aput-boolean v9, v5, v9

    aput-boolean v9, v4, v10

    .line 944
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v9, v5, v13

    aput-boolean v9, v4, v11

    .line 952
    .end local v2           #tmp1:I
    .end local v3           #tmp2:I
    :goto_1
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iput v10, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    .line 953
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    invoke-virtual {v4, v12}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->sendEmptyMessage(I)Z

    .line 954
    iget v4, p0, Lcom/asus/reader/book/PageRenderer;->mBookId:I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v5, v5, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    iget-object v6, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v6, v6, Lcom/asus/reader/book/BookSurfaceView;->mFontSize:I

    invoke-virtual {p0, v4, v5, v6}, Lcom/asus/reader/book/PageRenderer;->setCurrentPage(III)V

    .line 955
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v4}, Lcom/asus/reader/book/BookViewActivity;->getPageSeekBar()Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v0

    .line 956
    .local v0, seekbar:Lcom/asus/reader/ui/PageSeekBar2;
    if-eqz v0, :cond_4

    .line 957
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v4, v4, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v0, v4}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 958
    :cond_4
    invoke-virtual {p0, v10}, Lcom/asus/reader/book/PageRenderer;->resetPage(Z)V

    goto/16 :goto_0

    .line 946
    .end local v0           #seekbar:Lcom/asus/reader/ui/PageSeekBar2;
    :cond_5
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v1, v4, v9

    .line 947
    .local v1, tmp:I
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v10

    aput v5, v4, v9

    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aget v5, v5, v11

    aput v5, v4, v10

    .line 948
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tex:[I

    aput v1, v4, v11

    .line 949
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->isLoad:[Z

    aput-boolean v9, v5, v9

    aput-boolean v9, v4, v10

    .line 950
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->needClear:[Z

    aput-boolean v9, v4, v11

    goto :goto_1
.end method

.method public registerListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1147
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1148
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1150
    :cond_0
    return-void
.end method

.method public removeAllCachingMessages()V
    .locals 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->removeMessages(I)V

    .line 1033
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->removeMessages(I)V

    .line 1034
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->removeMessages(I)V

    .line 1035
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mCacheHandler:Lcom/asus/reader/book/PageRenderer$CacheHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/PageRenderer$CacheHandler;->removeMessages(I)V

    .line 1036
    return-void
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v0

    .line 1194
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 1195
    monitor-exit v0

    .line 1196
    return-void

    .line 1195
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public resetPage(Z)V
    .locals 4
    .parameter "isFromActionUp"

    .prologue
    const/4 v3, 0x1

    .line 880
    sget-object v0, Lcom/asus/reader/book/PageRenderer$FlipState;->NO_FLIP:Lcom/asus/reader/book/PageRenderer$FlipState;

    iput-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mFlip:Lcom/asus/reader/book/PageRenderer$FlipState;

    .line 881
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->drawLock:Ljava/lang/Object;

    monitor-enter v0

    .line 882
    :try_start_0
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/asus/reader/book/FlippingPage;->resetPage()V

    .line 883
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Lcom/asus/reader/book/FlippingPage;->resetPage()V

    .line 884
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 885
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    if-nez v0, :cond_0

    .line 886
    iput v3, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    .line 887
    :cond_0
    iput-boolean v3, p0, Lcom/asus/reader/book/PageRenderer;->mNoWait:Z

    .line 888
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v0

    .line 889
    :try_start_1
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 890
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 891
    return-void

    .line 884
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 890
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public resume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1059
    iput-boolean v3, p0, Lcom/asus/reader/book/PageRenderer;->mPause:Z

    .line 1060
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v1}, Lcom/asus/reader/book/BookViewActivity;->getPageSeekBar()Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v0

    .line 1061
    .local v0, seekbar:Lcom/asus/reader/ui/PageSeekBar2;
    if-eqz v0, :cond_0

    .line 1062
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageCount:I

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setMax(I)V

    .line 1063
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 1064
    iget-object v1, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v1, v1, Lcom/asus/reader/book/BookSurfaceView;->mCurrentScanPos:I

    iget-object v2, p0, Lcom/asus/reader/book/PageRenderer;->mView:Lcom/asus/reader/book/BookSurfaceView;

    iget v2, v2, Lcom/asus/reader/book/BookSurfaceView;->mScanCount:I

    if-lt v1, v2, :cond_0

    .line 1065
    invoke-virtual {v0, v3}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 1066
    iget-object p0, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    .end local p0
    check-cast p0, Lcom/asus/reader/book/BookViewActivity;

    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity;->mPageScanListener:Lcom/asus/reader/book/BookViewActivity$PageScanListener;

    invoke-interface {v1}, Lcom/asus/reader/book/BookViewActivity$PageScanListener;->onScanFinish()V

    .line 1070
    :cond_0
    return-void
.end method

.method public setCurrentPage(III)V
    .locals 10
    .parameter "BookId"
    .parameter "PageNo"
    .parameter "FontSize"

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 977
    move v3, p2

    .line 978
    .local v3, startPageNo:I
    iget-boolean v4, p0, Lcom/asus/reader/book/PageRenderer;->mIsLandscape:Z

    if-eqz v4, :cond_1

    .line 979
    rem-int/lit8 v4, p2, 0x2

    if-nez v4, :cond_0

    .line 980
    sub-int v3, p2, v8

    .line 984
    :goto_0
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v8

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v4, p1, v3, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 985
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 986
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    add-int/lit8 v5, v3, 0x2

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 987
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    add-int/lit8 v5, v3, 0x3

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 988
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mBackPage:Lcom/asus/reader/book/Page;

    add-int/lit8 v5, v3, 0x4

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 989
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    add-int/lit8 v5, v3, 0x5

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 1005
    :goto_1
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, v4, Lcom/asus/reader/book/BookViewActivity;->mSeekBarPanelHandler:Landroid/os/Handler;

    invoke-virtual {v4, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1006
    .local v1, msg:Landroid/os/Message;
    iput v3, v1, Landroid/os/Message;->arg1:I

    .line 1007
    sget v4, Lcom/asus/reader/book/PageRenderer;->PAGECOUNT:I

    iput v4, v1, Landroid/os/Message;->arg2:I

    .line 1008
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mContext:Landroid/content/Context;

    check-cast v4, Lcom/asus/reader/book/BookViewActivity;

    iget-object v4, v4, Lcom/asus/reader/book/BookViewActivity;->mSeekBarPanelHandler:Landroid/os/Handler;

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1010
    move v2, p2

    .local v2, pageNo:I
    move v0, p1

    .line 1011
    .local v0, bookId:I
    new-instance v4, Ljava/lang/Thread;

    new-instance v5, Lcom/asus/reader/book/PageRenderer$1;

    invoke-direct {v5, p0, v2, v0}, Lcom/asus/reader/book/PageRenderer$1;-><init>(Lcom/asus/reader/book/PageRenderer;II)V

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 1021
    iput v6, p0, Lcom/asus/reader/book/PageRenderer;->timeout_index:I

    .line 1022
    iput-boolean v7, p0, Lcom/asus/reader/book/PageRenderer;->mChanged:Z

    .line 1023
    iput-boolean v6, p0, Lcom/asus/reader/book/PageRenderer;->mSecondDraw:Z

    .line 1024
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    monitor-enter v4

    .line 1025
    :try_start_0
    iget-object v5, p0, Lcom/asus/reader/book/PageRenderer;->tlock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->notify()V

    .line 1026
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1028
    invoke-direct {p0, v6, v2}, Lcom/asus/reader/book/PageRenderer;->notifyChange(II)V

    .line 1029
    return-void

    .line 982
    .end local v0           #bookId:I
    .end local v1           #msg:Landroid/os/Message;
    .end local v2           #pageNo:I
    :cond_0
    sub-int v3, p2, v9

    goto :goto_0

    .line 999
    :cond_1
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v6

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    sub-int v5, p2, v7

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 1000
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v7

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    invoke-virtual {v4, p1, p2, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    .line 1001
    iget-object v4, p0, Lcom/asus/reader/book/PageRenderer;->mPage:[Lcom/asus/reader/book/FlippingPage;

    aget-object v4, v4, v9

    iget-object v4, v4, Lcom/asus/reader/book/FlippingPage;->mFrontPage:Lcom/asus/reader/book/Page;

    add-int/lit8 v5, p2, 0x1

    invoke-virtual {v4, p1, v5, p3}, Lcom/asus/reader/book/Page;->setCurrentPageNo(III)V

    goto :goto_1

    .line 1026
    .restart local v0       #bookId:I
    .restart local v1       #msg:Landroid/os/Message;
    .restart local v2       #pageNo:I
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5
.end method

.method public unRegisterListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 1153
    iget-object v0, p0, Lcom/asus/reader/book/PageRenderer;->mListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1154
    return-void
.end method
