.class public Lcom/asus/reader/book/FlippingPage;
.super Ljava/lang/Object;
.source "FlippingPage.java"


# static fields
.field public static R:D

.field private static TAG:Ljava/lang/String;

.field public static Tmin:I

.field public static chL:I

.field public static chP:I

.field public static peri:D

.field public static pi:D

.field public static r:D

.field public static shadowLength:D


# instance fields
.field private E1:[I

.field private E2:[I

.field public H:I

.field public HWratio:D

.field private T:D

.field private T1:[I

.field private T2:[I

.field private Ts:[I

.field public W:I

.field private c1:[I

.field private c2:[I

.field private ch:I

.field private cn0:[I

.field private cn1:[I

.field private cn2:[I

.field private cosM:D

.field private cosN:D

.field private cosT:D

.field private debug:Z

.field private m:D

.field public mBackPage:Lcom/asus/reader/book/Page;

.field public mFrontPage:Lcom/asus/reader/book/Page;

.field public mIndexBuffer:Ljava/nio/ByteBuffer;

.field private mLandscape:Z

.field private mMode:I

.field public mNormalBuffer:Ljava/nio/IntBuffer;

.field public mNormalBuffer2:Ljava/nio/IntBuffer;

.field public mShadowVertex:[I

.field public mShowShadow:Z

.field public mTextureCoordBuffer:Ljava/nio/IntBuffer;

.field public mTextureCoordBuffer2:Ljava/nio/IntBuffer;

.field public mVertexBuffer:Ljava/nio/IntBuffer;

.field private n:D

.field private p0:[I

.field private p1:[I

.field private p2:[I

.field private p3:[I

.field private p4:[I

.field private p5:[I

.field private p6:[I

.field private p7:[I

.field private peri_sint:D

.field private peri_sint_2:D

.field private sinM:D

.field private sinN:D

.field private sinT:D


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 11
    const-wide v0, 0x400921fb54442d18L

    sput-wide v0, Lcom/asus/reader/book/FlippingPage;->pi:D

    .line 12
    const-wide v0, 0x40a1100000000000L

    sput-wide v0, Lcom/asus/reader/book/FlippingPage;->r:D

    .line 13
    const-wide/high16 v0, 0x4000

    sget-wide v2, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/asus/reader/book/FlippingPage;->R:D

    .line 14
    sget-wide v0, Lcom/asus/reader/book/FlippingPage;->pi:D

    sget-wide v2, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v0, v2

    sput-wide v0, Lcom/asus/reader/book/FlippingPage;->peri:D

    .line 15
    const-wide v0, 0x4084780000000000L

    sput-wide v0, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    .line 16
    const/16 v0, 0xccc

    sput v0, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    .line 17
    const/16 v0, 0x78

    sput v0, Lcom/asus/reader/book/FlippingPage;->chL:I

    .line 18
    const/16 v0, 0x8c

    sput v0, Lcom/asus/reader/book/FlippingPage;->chP:I

    .line 2276
    const-string v0, "FlippingPage"

    sput-object v0, Lcom/asus/reader/book/FlippingPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 7
    .parameter "mode"
    .parameter "isLandscape"

    .prologue
    const/high16 v0, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput v0, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    .line 33
    iput v0, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    .line 34
    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    .line 36
    new-array v0, v4, [I

    aput v3, v0, v3

    aput v3, v0, v5

    sget-wide v1, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    .line 37
    new-array v0, v4, [I

    aput v3, v0, v3

    aput v3, v0, v5

    sget-wide v1, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    .line 38
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    .line 39
    new-array v0, v4, [I

    aput v3, v0, v3

    iget v1, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v1, v0, v5

    aput v3, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    .line 40
    new-array v0, v4, [I

    iget v1, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    aput v1, v0, v3

    aput v3, v0, v5

    aput v3, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    .line 42
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    .line 43
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    .line 44
    new-array v0, v4, [I

    aput v3, v0, v3

    aput v3, v0, v5

    sget-wide v1, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    .line 45
    new-array v0, v4, [I

    aput v3, v0, v3

    aput v3, v0, v5

    sget-wide v1, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    .line 46
    new-array v0, v4, [I

    aput v3, v0, v3

    iget v1, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v1, v0, v5

    aput v3, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    .line 47
    new-array v0, v4, [I

    aput v3, v0, v3

    iget v1, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v1, v0, v5

    aput v3, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    .line 48
    new-array v0, v4, [I

    aput v3, v0, v3

    iget v1, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v1, v0, v5

    sget-wide v1, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    .line 49
    new-array v0, v4, [I

    aput v3, v0, v3

    iget v1, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v1, v0, v5

    sget-wide v1, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v1, v1

    neg-int v1, v1

    aput v1, v0, v6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    .line 50
    sget v0, Lcom/asus/reader/book/FlippingPage;->chL:I

    iput v0, p0, Lcom/asus/reader/book/FlippingPage;->ch:I

    .line 51
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    .line 52
    new-array v0, v4, [I

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    .line 53
    new-array v0, v4, [I

    fill-array-data v0, :array_5

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    .line 54
    new-array v0, v4, [I

    fill-array-data v0, :array_6

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    .line 55
    new-array v0, v4, [I

    fill-array-data v0, :array_7

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    .line 59
    iput-boolean v5, p0, Lcom/asus/reader/book/FlippingPage;->debug:Z

    .line 2274
    iput v3, p0, Lcom/asus/reader/book/FlippingPage;->mMode:I

    .line 2275
    iput-boolean v3, p0, Lcom/asus/reader/book/FlippingPage;->mLandscape:Z

    .line 63
    iput p1, p0, Lcom/asus/reader/book/FlippingPage;->mMode:I

    .line 64
    iput-boolean p2, p0, Lcom/asus/reader/book/FlippingPage;->mLandscape:Z

    .line 65
    iget-boolean v0, p0, Lcom/asus/reader/book/FlippingPage;->mLandscape:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/asus/reader/book/FlippingPage;->chL:I

    iput v0, p0, Lcom/asus/reader/book/FlippingPage;->ch:I

    .line 67
    :goto_0
    return-void

    .line 65
    :cond_0
    sget v0, Lcom/asus/reader/book/FlippingPage;->chP:I

    iput v0, p0, Lcom/asus/reader/book/FlippingPage;->ch:I

    goto :goto_0

    .line 38
    nop

    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 42
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 43
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 51
    :array_3
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 52
    :array_4
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 53
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 54
    :array_6
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 55
    :array_7
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private flip_mode_1_1()V
    .locals 28

    .prologue
    .line 379
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 382
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 390
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 391
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 393
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 394
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 395
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 396
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 399
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 400
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 401
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 403
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 433
    :goto_0
    const/16 v5, 0x48

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v27, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v27, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v27, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v27, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v27, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v27, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v27, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v27, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v27, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v27, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v27, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v27, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v27, v5

    const/16 v5, 0x12

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v27, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v27, v5

    const/16 v5, 0x14

    const/4 v6, 0x0

    aput v6, v27, v5

    const/16 v5, 0x15

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v27, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v27, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v27, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v16, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x1f

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x21

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x24

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x25

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x26

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x27

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x28

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x29

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x2a

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x2b

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x2c

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x2d

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x2e

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x2f

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x30

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x31

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x32

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x33

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x34

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x35

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x36

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x37

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x38

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x39

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x3a

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v16, 0x3b

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v27, v16

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    const/16 v5, 0x47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 460
    .local v27, vertices:[I
    const/16 v5, 0x48

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v20, v0

    .line 461
    .local v20, normal:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v20, v5

    .line 462
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v20, v5

    .line 463
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v20, v5

    .line 464
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v20, v5

    .line 465
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v20, v5

    .line 466
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v20, v5

    .line 467
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v20, v5

    .line 468
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v20, v5

    .line 469
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v20, v5

    .line 470
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v20, v5

    .line 471
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v20, v5

    .line 472
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v20, v5

    .line 473
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v20, v5

    .line 474
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v20, v5

    .line 475
    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v20, v5

    .line 476
    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v20, v5

    .line 477
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v20, v5

    .line 478
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v20, v5

    .line 479
    const/16 v5, 0x12

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 480
    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 481
    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v20, v5

    .line 482
    const/16 v5, 0x15

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 483
    const/16 v5, 0x16

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 484
    const/16 v5, 0x17

    const/high16 v6, 0x1

    aput v6, v20, v5

    .line 485
    const/16 v5, 0x18

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 486
    const/16 v5, 0x19

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 487
    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v20, v5

    .line 488
    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 489
    const/16 v5, 0x1c

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 490
    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v20, v5

    .line 491
    const/16 v18, 0x1e

    .local v18, i:I
    :goto_1
    const/16 v5, 0x3c

    move/from16 v0, v18

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 494
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v18, 0x2

    aget v11, v27, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v18, 0x2

    aget v13, v27, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v20, v18

    .line 495
    add-int/lit8 v5, v18, 0x1

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 496
    add-int/lit8 v5, v18, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v18, 0x2

    aget v10, v27, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v20, v5

    .line 491
    add-int/lit8 v18, v18, 0x3

    goto :goto_1

    .line 406
    .end local v18           #i:I
    .end local v20           #normal:[I
    .end local v27           #vertices:[I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 416
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 419
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 421
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 423
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 429
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 430
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    goto/16 :goto_0

    .line 498
    .restart local v18       #i:I
    .restart local v20       #normal:[I
    .restart local v27       #vertices:[I
    :cond_1
    const/16 v5, 0x3c

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 499
    const/16 v5, 0x3d

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 500
    const/16 v5, 0x3e

    const/high16 v6, -0x1

    aput v6, v20, v5

    .line 501
    const/16 v5, 0x3f

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 502
    const/16 v5, 0x40

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 503
    const/16 v5, 0x41

    const/high16 v6, -0x1

    aput v6, v20, v5

    .line 504
    const/16 v5, 0x42

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 505
    const/16 v5, 0x43

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 506
    const/16 v5, 0x44

    const/high16 v6, -0x1

    aput v6, v20, v5

    .line 507
    const/16 v5, 0x45

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 508
    const/16 v5, 0x46

    const/4 v6, 0x0

    aput v6, v20, v5

    .line 509
    const/16 v5, 0x47

    const/high16 v6, -0x1

    aput v6, v20, v5

    .line 511
    const/16 v5, 0x18

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v19, v0

    fill-array-data v19, :array_0

    .line 512
    .local v19, indices:[B
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v16, v0

    .line 513
    .local v16, dd:[D
    const/16 v5, 0x18

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v16

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 514
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v17, v0

    .line 515
    .local v17, du:[D
    const/16 v5, 0x1b

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v17

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 516
    const/4 v5, 0x0

    aget-wide v5, v16, v5

    const/4 v7, 0x1

    aget-wide v7, v16, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v16, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v16, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v16, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v16, v7

    add-double v23, v5, v7

    .line 517
    .local v23, totald:D
    const/4 v5, 0x0

    aget-wide v5, v17, v5

    const/4 v7, 0x1

    aget-wide v7, v17, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v17, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v17, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v17, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v17, v7

    add-double v25, v5, v7

    .line 518
    .local v25, totalu:D
    const/16 v5, 0x30

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v22, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v22, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v22, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v22, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v22, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v22, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v22, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v22, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0xc

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v22, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0xe

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v22, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v22, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v22, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v16, v8

    div-double v8, v8, v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v17, v8

    div-double v8, v8, v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v16, v8

    const/4 v10, 0x1

    aget-wide v10, v16, v10

    add-double/2addr v8, v10

    div-double v8, v8, v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x19

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v17, v8

    const/4 v10, 0x1

    aget-wide v10, v17, v10

    add-double/2addr v8, v10

    div-double v8, v8, v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v16, v8

    const/4 v10, 0x1

    aget-wide v10, v16, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v16, v10

    add-double/2addr v8, v10

    div-double v8, v8, v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v17, v8

    const/4 v10, 0x1

    aget-wide v10, v17, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v17, v10

    add-double/2addr v8, v10

    div-double v8, v8, v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v16, v8

    sub-double v8, v23, v8

    const/4 v10, 0x5

    aget-wide v10, v16, v10

    sub-double/2addr v8, v10

    div-double v8, v8, v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x21

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v17, v8

    sub-double v8, v25, v8

    const/4 v10, 0x5

    aget-wide v10, v17, v10

    sub-double/2addr v8, v10

    div-double v8, v8, v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x23

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v16, v8

    sub-double v8, v23, v8

    div-double v8, v8, v23

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x25

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v17, v8

    sub-double v8, v25, v8

    div-double v8, v8, v25

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x27

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v8, v0

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x29

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v8, v0

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v22, v5

    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v22, v5

    const/16 v5, 0x2c

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x2d

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x2e

    const/high16 v6, 0x1

    aput v6, v22, v5

    const/16 v5, 0x2f

    const/4 v6, 0x0

    aput v6, v22, v5

    .line 572
    .local v22, texture:[I
    const/16 v5, 0xc

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 573
    .local v21, shadow:[I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    .line 575
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 576
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 577
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    .line 578
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 579
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 580
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    .line 583
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 584
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 585
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    .line 588
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 589
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 590
    const/16 v5, 0xb

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    .line 611
    :goto_2
    monitor-enter p0

    .line 612
    :try_start_0
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 613
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 614
    move-object/from16 v0, v20

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 615
    move-object/from16 v0, v19

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 616
    move-object/from16 v0, v22

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 617
    move-object/from16 v0, v22

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 618
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/asus/reader/book/FlippingPage;->setShadow([I)V

    .line 619
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 620
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 621
    return-void

    .line 593
    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    neg-double v11, v11

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 594
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 595
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    .line 596
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 597
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 598
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    .line 601
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 602
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 603
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    .line 606
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 607
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v21, v5

    .line 608
    const/16 v5, 0xb

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v21, v5

    goto/16 :goto_2

    .line 620
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 511
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
    .end array-data
.end method

.method private flip_mode_1_2()V
    .locals 43

    .prologue
    .line 624
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v7, v0

    add-double v16, v5, v7

    .line 625
    .local v16, d1:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v7, v0

    add-double v18, v5, v7

    .line 626
    .local v18, d2:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double v22, v5, v7

    .line 627
    .local v22, f1:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double v24, v5, v7

    .line 628
    .local v24, f2:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v26, v5, v7

    .line 629
    .local v26, h1:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v28, v5, v7

    .line 630
    .local v28, h2:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    int-to-double v7, v7

    sub-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double v32, v5, v7

    .line 631
    .local v32, l1:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    int-to-double v7, v7

    sub-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double v34, v5, v7

    .line 634
    .local v34, l2:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 641
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v32

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v32

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v16, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v16, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 648
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v16, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 652
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 653
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 658
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v34

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v34

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v18, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v18, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v18, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 695
    :goto_0
    const/16 v5, 0x42

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v42, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v42, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v42, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v42, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v42, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v42, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v42, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v42, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v42, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v42, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v42, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v42, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v42, v5

    const/16 v5, 0x12

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v42, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v42, v5

    const/16 v5, 0x14

    const/4 v6, 0x0

    aput v6, v42, v5

    const/16 v5, 0x15

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v42, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v42, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v42, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v20, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x1f

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x21

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x24

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x25

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x26

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x27

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x28

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x29

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x2a

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x2b

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x2c

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x2d

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x2e

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x2f

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x30

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x31

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x32

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x33

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x34

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x35

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x36

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x37

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x38

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x39

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x3a

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v20, 0x3b

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v42, v20

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v42, v5

    const/16 v5, 0x41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v42, v5

    .line 720
    .local v42, vertices:[I
    const/16 v5, 0x42

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v36, v0

    .line 721
    .local v36, normal:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v36, v5

    .line 722
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v36, v5

    .line 723
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v36, v5

    .line 724
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v36, v5

    .line 725
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v36, v5

    .line 726
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v36, v5

    .line 727
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v36, v5

    .line 728
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v36, v5

    .line 729
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v36, v5

    .line 730
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v36, v5

    .line 731
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v36, v5

    .line 732
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v36, v5

    .line 733
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v36, v5

    .line 734
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v36, v5

    .line 735
    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v36, v5

    .line 736
    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v36, v5

    .line 737
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v36, v5

    .line 738
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v36, v5

    .line 739
    const/16 v5, 0x12

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 740
    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 741
    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v36, v5

    .line 742
    const/16 v5, 0x15

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 743
    const/16 v5, 0x16

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 744
    const/16 v5, 0x17

    const/high16 v6, 0x1

    aput v6, v36, v5

    .line 745
    const/16 v5, 0x18

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 746
    const/16 v5, 0x19

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 747
    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v36, v5

    .line 748
    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 749
    const/16 v5, 0x1c

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 750
    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v36, v5

    .line 751
    const/16 v30, 0x1e

    .local v30, i:I
    :goto_1
    const/16 v5, 0x42

    move/from16 v0, v30

    move v1, v5

    if-ge v0, v1, :cond_1

    .line 754
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v30, 0x2

    aget v11, v42, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v30, 0x2

    aget v13, v42, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v36, v30

    .line 755
    add-int/lit8 v5, v30, 0x1

    const/4 v6, 0x0

    aput v6, v36, v5

    .line 756
    add-int/lit8 v5, v30, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v30, 0x2

    aget v10, v42, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v36, v5

    .line 751
    add-int/lit8 v30, v30, 0x3

    goto :goto_1

    .line 665
    .end local v30           #i:I
    .end local v36           #normal:[I
    .end local v42           #vertices:[I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v32

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v32

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v26

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v16, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v16, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v16, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 683
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 685
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 686
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v34

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v34

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 690
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v18, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v18, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v18, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_0

    .line 759
    .restart local v30       #i:I
    .restart local v36       #normal:[I
    .restart local v42       #vertices:[I
    :cond_1
    const/16 v5, 0x16

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v31, v0

    fill-array-data v31, :array_0

    .line 760
    .local v31, indices:[B
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 761
    .local v20, dd:[D
    const/16 v5, 0x18

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v20

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 762
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 763
    .local v21, du:[D
    const/16 v5, 0x1b

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move-object/from16 v2, v21

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 764
    const/4 v5, 0x0

    aget-wide v5, v20, v5

    const/4 v7, 0x1

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v20, v7

    add-double v38, v5, v7

    .line 765
    .local v38, totald:D
    const/4 v5, 0x0

    aget-wide v5, v21, v5

    const/4 v7, 0x1

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v21, v7

    add-double v40, v5, v7

    .line 766
    .local v40, totalu:D
    const/16 v5, 0x2c

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v37, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v37, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v37, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v37, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v37, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v37, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v37, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v37, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0xc

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v37, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0xe

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v37, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v37, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v37, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v20, v8

    mul-double v8, v8, v16

    div-double v8, v8, v38

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    mul-double v8, v8, v18

    div-double v8, v8, v40

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v20, v8

    const/4 v10, 0x1

    aget-wide v10, v20, v10

    add-double/2addr v8, v10

    mul-double v8, v8, v16

    div-double v8, v8, v38

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x19

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    const/4 v10, 0x1

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    mul-double v8, v8, v18

    div-double v8, v8, v40

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v20, v8

    const/4 v10, 0x1

    aget-wide v10, v20, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v20, v10

    add-double/2addr v8, v10

    mul-double v8, v8, v16

    div-double v8, v8, v38

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    const/4 v10, 0x1

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    mul-double v8, v8, v18

    div-double v8, v8, v40

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v20, v8

    sub-double v8, v38, v8

    const/4 v10, 0x5

    aget-wide v10, v20, v10

    sub-double/2addr v8, v10

    mul-double v8, v8, v16

    div-double v8, v8, v38

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x21

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v21, v8

    sub-double v8, v40, v8

    const/4 v10, 0x5

    aget-wide v10, v21, v10

    sub-double/2addr v8, v10

    mul-double v8, v8, v18

    div-double v8, v8, v40

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x23

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v20, v8

    sub-double v8, v38, v8

    mul-double v8, v8, v16

    div-double v8, v8, v38

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x25

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v21, v8

    sub-double v8, v40, v8

    mul-double v8, v8, v18

    div-double v8, v8, v40

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v37, v5

    const/16 v5, 0x27

    const/4 v6, 0x0

    aput v6, v37, v5

    const/16 v5, 0x28

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x29

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x2a

    const/high16 v6, 0x1

    aput v6, v37, v5

    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v37, v5

    .line 816
    .local v37, texture:[I
    monitor-enter p0

    .line 817
    :try_start_0
    move-object/from16 v0, v42

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 818
    move-object/from16 v0, v36

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 819
    move-object/from16 v0, v36

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 820
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 821
    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 822
    move-object/from16 v0, v37

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 823
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 824
    monitor-exit p0

    .line 825
    return-void

    .line 824
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 759
    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
    .end array-data
.end method

.method private flip_mode_2_1()V
    .locals 41

    .prologue
    .line 828
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v7, v0

    add-double v19, v5, v7

    .line 829
    .local v19, d1:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double v23, v5, v7

    .line 830
    .local v23, f1:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v25, v5, v7

    .line 831
    .local v25, h1:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    int-to-double v7, v7

    sub-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double v29, v5, v7

    .line 832
    .local v29, l1:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    int-to-double v7, v7

    sub-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    .line 834
    .local v17, d:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 836
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 839
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 843
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v29

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 844
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v29

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 845
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 846
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v19, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v19, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v19, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 850
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v7, v0

    mul-double v7, v7, v17

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v16, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v7, v0

    mul-double v7, v7, v17

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v16, v5

    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v6, v6

    neg-int v6, v6

    aput v6, v16, v5

    .line 852
    .local v16, E:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 853
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 854
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 858
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 861
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 863
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 866
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v40, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v40, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v40, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v40, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x12

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v40, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x14

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x15

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v40, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v40, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v21, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x1f

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x21

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x24

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x25

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x26

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x27

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x28

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x29

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2a

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2b

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2c

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2d

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2e

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2f

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x30

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x31

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x32

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x33

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x34

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x35

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v5, 0x36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v21, 0x39

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x3a

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x3b

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v5, 0x3c

    const/4 v6, 0x0

    aget v6, v16, v6

    aput v6, v40, v5

    const/16 v5, 0x3d

    const/4 v6, 0x1

    aget v6, v16, v6

    aput v6, v40, v5

    const/16 v5, 0x3e

    const/4 v6, 0x2

    aget v6, v16, v6

    aput v6, v40, v5

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    .line 920
    .local v40, vertices:[I
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 921
    .local v31, normal:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 922
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 923
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 924
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 925
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 926
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 927
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 928
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 929
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 930
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 931
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 932
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 933
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 934
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 935
    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 936
    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 937
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 938
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 939
    const/16 v5, 0x12

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 940
    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 941
    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 942
    const/16 v5, 0x15

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 943
    const/16 v5, 0x16

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 944
    const/16 v5, 0x17

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 945
    const/16 v5, 0x18

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 946
    const/16 v5, 0x19

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 947
    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 948
    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 949
    const/16 v5, 0x1c

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 950
    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 951
    const/16 v27, 0x1e

    .local v27, i:I
    :goto_0
    const/16 v5, 0x3c

    move/from16 v0, v27

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 954
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v27, 0x2

    aget v11, v40, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v27, 0x2

    aget v13, v40, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v31, v27

    .line 955
    add-int/lit8 v5, v27, 0x1

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 956
    add-int/lit8 v5, v27, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v27, 0x2

    aget v10, v40, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    .line 951
    add-int/lit8 v27, v27, 0x3

    goto :goto_0

    .line 959
    :cond_0
    const/16 v5, 0x3c

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 960
    const/16 v5, 0x3d

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 961
    const/16 v5, 0x3e

    const/high16 v6, -0x1

    aput v6, v31, v5

    .line 962
    const/16 v5, 0x3f

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 963
    const/16 v5, 0x40

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 964
    const/16 v5, 0x41

    const/high16 v6, -0x1

    aput v6, v31, v5

    .line 965
    const/16 v5, 0x42

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 966
    const/16 v5, 0x43

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 967
    const/16 v5, 0x44

    const/high16 v6, -0x1

    aput v6, v31, v5

    .line 969
    const/16 v5, 0x17

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 971
    .local v28, indices:[B
    const/4 v5, 0x5

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 972
    .local v21, dd:[D
    const/16 v5, 0x18

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v21

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 973
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v22, v0

    .line 974
    .local v22, du:[D
    const/16 v5, 0x1b

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v22

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 975
    const/4 v5, 0x0

    aget-wide v5, v21, v5

    const/4 v7, 0x1

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v21, v7

    add-double v36, v5, v7

    .line 976
    .local v36, totald:D
    const/4 v5, 0x0

    aget-wide v5, v22, v5

    const/4 v7, 0x1

    aget-wide v7, v22, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v22, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v22, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v22, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v22, v7

    add-double v38, v5, v7

    .line 978
    .local v38, totalu:D
    const/16 v5, 0x2e

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v33, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0xc

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0xe

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    div-double v8, v8, v36

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v22, v8

    div-double v8, v8, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    const/4 v10, 0x1

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    div-double v8, v8, v36

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x19

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v22, v8

    const/4 v10, 0x1

    aget-wide v10, v22, v10

    add-double/2addr v8, v10

    div-double v8, v8, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    const/4 v10, 0x1

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    div-double v8, v8, v36

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v22, v8

    const/4 v10, 0x1

    aget-wide v10, v22, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v22, v10

    add-double/2addr v8, v10

    div-double v8, v8, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v21, v8

    sub-double v8, v36, v8

    div-double v8, v8, v36

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x21

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v22, v8

    sub-double v8, v38, v8

    const/4 v10, 0x5

    aget-wide v10, v22, v10

    sub-double/2addr v8, v10

    div-double v8, v8, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x23

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x24

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x25

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v22, v8

    sub-double v8, v38, v8

    div-double v8, v8, v38

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x27

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x28

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    int-to-double v6, v6

    sub-double v6, v6, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v8, v0

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x2c

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x2d

    const/4 v6, 0x0

    aput v6, v33, v5

    .line 1030
    .local v33, texture:[I
    const/16 v5, 0x9

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .line 1032
    .local v32, shadow:[I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    .line 1033
    .local v34, tn:D
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1034
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1035
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v32, v5

    .line 1036
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1037
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1038
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v32, v5

    .line 1039
    const/4 v5, 0x6

    const/4 v6, 0x0

    aget v6, v16, v6

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1040
    const/4 v5, 0x7

    const/4 v6, 0x1

    aget v6, v16, v6

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1041
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v32, v5

    .line 1043
    monitor-enter p0

    .line 1044
    :try_start_0
    move-object/from16 v0, v40

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 1045
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 1046
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 1047
    move-object/from16 v0, v28

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 1048
    move-object/from16 v0, v33

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 1049
    move-object/from16 v0, v33

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 1050
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/asus/reader/book/FlippingPage;->setShadow([I)V

    .line 1051
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 1052
    monitor-exit p0

    .line 1053
    return-void

    .line 1052
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 969
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
    .end array-data
.end method

.method private flip_mode_2_2()V
    .locals 41

    .prologue
    .line 1056
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v7, v0

    add-double v19, v5, v7

    .line 1057
    .local v19, d2:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double v23, v5, v7

    .line 1058
    .local v23, f2:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    add-double v25, v5, v7

    .line 1059
    .local v25, h2:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    int-to-double v7, v7

    sub-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-double v7, v7

    add-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double v29, v5, v7

    .line 1060
    .local v29, l2:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    const-wide/high16 v7, 0x4000

    div-double/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    sub-int/2addr v7, v8

    int-to-double v7, v7

    sub-double/2addr v5, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v7, v0

    mul-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v17

    .line 1062
    .local v17, d:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1063
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1064
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1065
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1066
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1067
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1068
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1069
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1070
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1071
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1072
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1073
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1075
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 1077
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1078
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1079
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 1080
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1081
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1082
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1084
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v29

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1085
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v29

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1086
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 1087
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v19, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1088
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v19, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1089
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    div-double v10, v19, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1091
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v7, v0

    mul-double v7, v7, v17

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v16, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v7, v0

    mul-double v7, v7, v17

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v16, v5

    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v6, v6

    neg-int v6, v6

    aput v6, v16, v5

    .line 1095
    .local v16, E:[I
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v40, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v40, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v40, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v40, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v40, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v40, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x12

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v40, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x14

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x15

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v40, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v40, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v40, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v21, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x1f

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x21

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x24

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x25

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x26

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x27

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x28

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x29

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2a

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2b

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2c

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2d

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2e

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x2f

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x30

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x31

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x32

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x33

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x34

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x35

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x36

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x37

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v21, 0x38

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v40, v21

    const/16 v5, 0x39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x3f

    const/4 v6, 0x0

    aget v6, v16, v6

    aput v6, v40, v5

    const/16 v5, 0x40

    const/4 v6, 0x1

    aget v6, v16, v6

    aput v6, v40, v5

    const/16 v5, 0x41

    const/4 v6, 0x2

    aget v6, v16, v6

    aput v6, v40, v5

    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v40, v5

    const/16 v5, 0x44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v40, v5

    .line 1148
    .local v40, vertices:[I
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v31, v0

    .line 1149
    .local v31, normal:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1150
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1151
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1152
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1153
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1154
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1155
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1156
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1157
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1158
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1159
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1160
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1161
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1162
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1163
    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1164
    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1165
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1166
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v31, v5

    .line 1167
    const/16 v5, 0x12

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1168
    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1169
    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 1170
    const/16 v5, 0x15

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1171
    const/16 v5, 0x16

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1172
    const/16 v5, 0x17

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 1173
    const/16 v5, 0x18

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1174
    const/16 v5, 0x19

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1175
    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 1176
    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1177
    const/16 v5, 0x1c

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1178
    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 1179
    const/16 v27, 0x1e

    .local v27, i:I
    :goto_0
    const/16 v5, 0x3c

    move/from16 v0, v27

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 1182
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v27, 0x2

    aget v11, v40, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v27, 0x2

    aget v13, v40, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v31, v27

    .line 1183
    add-int/lit8 v5, v27, 0x1

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1184
    add-int/lit8 v5, v27, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v27, 0x2

    aget v10, v40, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    .line 1179
    add-int/lit8 v27, v27, 0x3

    goto :goto_0

    .line 1186
    :cond_0
    const/16 v5, 0x3c

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1187
    const/16 v5, 0x3d

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1188
    const/16 v5, 0x3e

    const/high16 v6, -0x1

    aput v6, v31, v5

    .line 1189
    const/16 v5, 0x3f

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1190
    const/16 v5, 0x40

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1191
    const/16 v5, 0x41

    const/high16 v6, -0x1

    aput v6, v31, v5

    .line 1192
    const/16 v5, 0x42

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1193
    const/16 v5, 0x43

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1194
    const/16 v5, 0x44

    const/high16 v6, -0x1

    aput v6, v31, v5

    .line 1196
    const/16 v5, 0x17

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v28, v0

    fill-array-data v28, :array_0

    .line 1197
    .local v28, indices:[B
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 1198
    .local v21, dd:[D
    const/16 v5, 0x18

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v21

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1199
    const/4 v5, 0x5

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v22, v0

    .line 1200
    .local v22, du:[D
    const/16 v5, 0x1b

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move-object/from16 v2, v22

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1201
    const/4 v5, 0x0

    aget-wide v5, v21, v5

    const/4 v7, 0x1

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v21, v7

    add-double v36, v5, v7

    .line 1202
    .local v36, totald:D
    const/4 v5, 0x0

    aget-wide v5, v22, v5

    const/4 v7, 0x1

    aget-wide v7, v22, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v22, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v22, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v22, v7

    add-double v38, v5, v7

    .line 1204
    .local v38, totalu:D
    const/16 v5, 0x2e

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v33, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0xc

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0xe

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v22, v8

    div-double v8, v8, v38

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    const/4 v10, 0x1

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x19

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v22, v8

    const/4 v10, 0x1

    aget-wide v10, v22, v10

    add-double/2addr v8, v10

    div-double v8, v8, v38

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v21, v8

    const/4 v10, 0x1

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v21, v10

    add-double/2addr v8, v10

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v22, v8

    const/4 v10, 0x1

    aget-wide v10, v22, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v22, v10

    add-double/2addr v8, v10

    div-double v8, v8, v38

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v21, v8

    sub-double v8, v36, v8

    const/4 v10, 0x5

    aget-wide v10, v21, v10

    sub-double/2addr v8, v10

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x21

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v22, v8

    sub-double v8, v38, v8

    div-double v8, v8, v38

    mul-double v8, v8, v19

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x23

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v21, v8

    sub-double v8, v36, v8

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x25

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x26

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x27

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v8, v0

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x29

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x2a

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x2b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v6, v0

    div-double v6, v17, v6

    double-to-int v6, v6

    aput v6, v33, v5

    const/16 v5, 0x2c

    const/high16 v6, 0x1

    aput v6, v33, v5

    const/16 v5, 0x2d

    const/high16 v6, 0x1

    aput v6, v33, v5

    .line 1256
    .local v33, texture:[I
    const/16 v5, 0x9

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v32, v0

    .line 1258
    .local v32, shadow:[I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v34

    .line 1259
    .local v34, tn:D
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1260
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1261
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v32, v5

    .line 1262
    const/4 v5, 0x3

    const/4 v6, 0x0

    aget v6, v16, v6

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1263
    const/4 v5, 0x4

    const/4 v6, 0x1

    aget v6, v16, v6

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1264
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v32, v5

    .line 1265
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1266
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v34 .. v35}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v32, v5

    .line 1267
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v32, v5

    .line 1269
    monitor-enter p0

    .line 1270
    :try_start_0
    move-object/from16 v0, v40

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 1271
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 1272
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 1273
    move-object/from16 v0, v28

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 1274
    move-object/from16 v0, v33

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 1275
    move-object/from16 v0, v33

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 1276
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Lcom/asus/reader/book/FlippingPage;->setShadow([I)V

    .line 1277
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 1278
    monitor-exit p0

    .line 1279
    return-void

    .line 1278
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1196
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
    .end array-data
.end method

.method private flip_mode_2_3()V
    .locals 39

    .prologue
    .line 1282
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-double v7, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v9, v0

    sub-double/2addr v7, v9

    sub-double v28, v5, v7

    .line 1283
    .local v28, s1:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v5, v0

    const/4 v6, 0x1

    aget v5, v5, v6

    int-to-double v5, v5

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v9, v0

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    add-double v17, v5, v7

    .line 1284
    .local v17, d1:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v5, v0

    div-double v5, v28, v5

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->pi:D

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    div-double v21, v5, v7

    .line 1285
    .local v21, f1:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->r:D

    const-wide/high16 v7, 0x3ff0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double v23, v5, v7

    .line 1287
    .local v23, h1:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v8, v0

    mul-double v8, v8, v28

    const-wide/high16 v10, 0x3ff0

    const-wide/high16 v12, 0x4000

    sget-wide v14, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v8, v0

    mul-double v8, v8, v28

    const-wide/high16 v10, 0x3ff0

    const-wide/high16 v12, 0x4000

    sget-wide v14, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 1290
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v12, v0

    div-double/2addr v10, v12

    div-double v10, v17, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1296
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1297
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1301
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v6, v0

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move v7, v0

    sub-int/2addr v6, v7

    aput v6, v16, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v16, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v16, v5

    .line 1303
    .local v16, E:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 1305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 1308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1309
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1316
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v38, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v38, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v38, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v38, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x12

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v38, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x14

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x15

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v38, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v38, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x18

    const/4 v6, 0x0

    aget v6, v16, v6

    aput v6, v38, v5

    const/16 v5, 0x19

    const/4 v6, 0x1

    aget v6, v16, v6

    aput v6, v38, v5

    const/16 v5, 0x1a

    const/4 v6, 0x2

    aget v6, v16, v6

    aput v6, v38, v5

    const/16 v5, 0x1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v19, 0x21

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x22

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x23

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x24

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x25

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x26

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x27

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x28

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x29

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2a

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2b

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2c

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2d

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2e

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2f

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x30

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x31

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x32

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x33

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x34

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x35

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x36

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x37

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x38

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x39

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x3a

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x3b

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    .line 1370
    .local v38, vertices:[I
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 1371
    .local v27, normal:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1372
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1373
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1374
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1375
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1376
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1377
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1378
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1379
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1380
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1381
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1382
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1383
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1384
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1385
    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1386
    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1387
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1388
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1389
    const/16 v5, 0x12

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1390
    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1391
    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1392
    const/16 v5, 0x15

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1393
    const/16 v5, 0x16

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1394
    const/16 v5, 0x17

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1395
    const/16 v5, 0x18

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1396
    const/16 v5, 0x19

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1397
    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1398
    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1399
    const/16 v5, 0x1c

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1400
    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1401
    const/16 v25, 0x1e

    .local v25, i:I
    :goto_0
    const/16 v5, 0x3c

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 1404
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v25, 0x2

    aget v11, v38, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v25, 0x2

    aget v13, v38, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v27, v25

    .line 1406
    add-int/lit8 v5, v25, 0x1

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1407
    add-int/lit8 v5, v25, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v25, 0x2

    aget v10, v38, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v27, v5

    .line 1401
    add-int/lit8 v25, v25, 0x3

    goto :goto_0

    .line 1409
    :cond_0
    const/16 v5, 0x3c

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1410
    const/16 v5, 0x3d

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1411
    const/16 v5, 0x3e

    const/high16 v6, -0x1

    aput v6, v27, v5

    .line 1412
    const/16 v5, 0x3f

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1413
    const/16 v5, 0x40

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1414
    const/16 v5, 0x41

    const/high16 v6, -0x1

    aput v6, v27, v5

    .line 1415
    const/16 v5, 0x42

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1416
    const/16 v5, 0x43

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1417
    const/16 v5, 0x44

    const/high16 v6, -0x1

    aput v6, v27, v5

    .line 1419
    const/16 v5, 0x17

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    .line 1421
    .local v26, indices:[B
    const/4 v5, 0x5

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 1422
    .local v19, dd:[D
    const/16 v5, 0x1e

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1423
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 1424
    .local v20, du:[D
    const/16 v5, 0x1b

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1425
    const/4 v5, 0x0

    aget-wide v5, v19, v5

    const/4 v7, 0x1

    aget-wide v7, v19, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v19, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v19, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v19, v7

    add-double v34, v5, v7

    .line 1426
    .local v34, totald:D
    const/4 v5, 0x0

    aget-wide v5, v20, v5

    const/4 v7, 0x1

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v20, v7

    add-double v36, v5, v7

    .line 1427
    .local v36, totalu:D
    const/16 v5, 0x2e

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v31, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v31, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v31, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0xc

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v31, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0xe

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v31, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x10

    const/4 v6, 0x0

    aget v6, v16, v6

    aput v6, v31, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v20, v8

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x18

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v19, v8

    div-double v8, v8, v34

    mul-double v8, v8, v17

    sub-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v20, v8

    const/4 v10, 0x1

    aget-wide v10, v20, v10

    add-double/2addr v8, v10

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x1c

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x1d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v19, v8

    const/4 v10, 0x1

    aget-wide v10, v19, v10

    add-double/2addr v8, v10

    div-double v8, v8, v34

    mul-double v8, v8, v17

    sub-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v20, v8

    const/4 v10, 0x1

    aget-wide v10, v20, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v20, v10

    add-double/2addr v8, v10

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x20

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x21

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v19, v8

    const/4 v10, 0x1

    aget-wide v10, v19, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v19, v10

    add-double/2addr v8, v10

    div-double v8, v8, v34

    mul-double v8, v8, v17

    sub-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v20, v8

    sub-double v8, v36, v8

    const/4 v10, 0x5

    aget-wide v10, v20, v10

    sub-double/2addr v8, v10

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x23

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x24

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x25

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v19, v8

    sub-double v8, v34, v8

    div-double v8, v8, v34

    mul-double v8, v8, v17

    sub-double/2addr v6, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v20, v8

    sub-double v8, v36, v8

    div-double v8, v8, v36

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x27

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x28

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x29

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    int-to-double v6, v6

    sub-double v6, v6, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v8, v0

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x2c

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x2d

    const/4 v6, 0x0

    aput v6, v31, v5

    .line 1479
    .local v31, texture:[I
    const/16 v5, 0x9

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 1481
    .local v30, shadow:[I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    .line 1482
    .local v32, tn:D
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1483
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1484
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v30, v5

    .line 1485
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1486
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1487
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v30, v5

    .line 1488
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1489
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1490
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v30, v5

    .line 1492
    monitor-enter p0

    .line 1493
    :try_start_0
    move-object/from16 v0, v38

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 1494
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 1495
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 1496
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 1497
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 1498
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 1499
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/asus/reader/book/FlippingPage;->setShadow([I)V

    .line 1500
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 1501
    monitor-exit p0

    .line 1502
    return-void

    .line 1501
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1419
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
    .end array-data
.end method

.method private flip_mode_2_4()V
    .locals 39

    .prologue
    .line 1505
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v5, v0

    int-to-double v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-double v7, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v9, v0

    sub-double/2addr v7, v9

    sub-double v28, v5, v7

    .line 1506
    .local v28, s2:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    int-to-double v5, v5

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v9, v0

    div-double/2addr v7, v9

    const-wide/high16 v9, 0x4000

    div-double/2addr v7, v9

    add-double v17, v5, v7

    .line 1507
    .local v17, d2:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v5, v0

    div-double v5, v28, v5

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->pi:D

    mul-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    div-double v21, v5, v7

    .line 1508
    .local v21, f2:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->r:D

    const-wide/high16 v7, 0x3ff0

    invoke-static/range {v21 .. v22}, Ljava/lang/Math;->cos(D)D

    move-result-wide v9

    sub-double/2addr v7, v9

    mul-double v23, v5, v7

    .line 1510
    .local v23, h2:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1511
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1512
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1513
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1514
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1515
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1517
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide v8, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1518
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1523
    const/4 v5, 0x3

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v16, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v6, v0

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move v7, v0

    sub-int/2addr v6, v7

    aput v6, v16, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v16, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v16, v5

    .line 1525
    .local v16, E:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v8, v0

    mul-double v8, v8, v28

    const-wide/high16 v10, 0x3ff0

    const-wide/high16 v12, 0x4000

    sget-wide v14, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1526
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v8, v0

    mul-double v8, v8, v28

    const-wide/high16 v10, 0x3ff0

    const-wide/high16 v12, 0x4000

    sget-wide v14, Lcom/asus/reader/book/FlippingPage;->pi:D

    div-double/2addr v12, v14

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1527
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move v7, v0

    neg-int v7, v7

    aput v7, v5, v6

    .line 1528
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1529
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v12, v0

    div-double/2addr v10, v12

    div-double v10, v17, v10

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1530
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x2

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1532
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v10, v0

    div-double/2addr v8, v10

    const-wide/high16 v10, 0x4000

    div-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1533
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1535
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1536
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1538
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v38, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v38, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v38, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v38, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x8

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v38, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0xe

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v38, v5

    const/16 v5, 0x11

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x12

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v38, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x14

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x15

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v38, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v38, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v38, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aget v6, v16, v6

    aput v6, v38, v5

    const/16 v5, 0x1c

    const/4 v6, 0x1

    aget v6, v16, v6

    aput v6, v38, v5

    const/16 v5, 0x1d

    const/4 v6, 0x2

    aget v6, v16, v6

    aput v6, v38, v5

    const/16 v19, 0x1e

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x1f

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x20

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v5, 0x21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v19, 0x24

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x25

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x26

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x27

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x28

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x29

    const/4 v6, 0x1

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2a

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2b

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2c

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2d

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2e

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x2f

    const/4 v6, 0x2

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x30

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x31

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x32

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x33

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x34

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x35

    const/4 v6, 0x3

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x36

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x37

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x38

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x39

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x3a

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v19, 0x3b

    const/4 v6, 0x4

    const/4 v7, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v38, v19

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v38, v5

    const/16 v5, 0x44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v38, v5

    .line 1592
    .local v38, vertices:[I
    const/16 v5, 0x45

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v27, v0

    .line 1593
    .local v27, normal:[I
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1594
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1595
    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1596
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1597
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1598
    const/4 v5, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1599
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1600
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1601
    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1602
    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1603
    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1604
    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1605
    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1606
    const/16 v5, 0xd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1607
    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1608
    const/16 v5, 0xf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1609
    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1610
    const/16 v5, 0x11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v27, v5

    .line 1611
    const/16 v5, 0x12

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1612
    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1613
    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1614
    const/16 v5, 0x15

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1615
    const/16 v5, 0x16

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1616
    const/16 v5, 0x17

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1617
    const/16 v5, 0x18

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1618
    const/16 v5, 0x19

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1619
    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1620
    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1621
    const/16 v5, 0x1c

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1622
    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v27, v5

    .line 1623
    const/16 v25, 0x1e

    .local v25, i:I
    :goto_0
    const/16 v5, 0x3c

    move/from16 v0, v25

    move v1, v5

    if-ge v0, v1, :cond_0

    .line 1626
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v25, 0x2

    aget v11, v38, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v25, 0x2

    aget v13, v38, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v27, v25

    .line 1627
    add-int/lit8 v5, v25, 0x1

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1628
    add-int/lit8 v5, v25, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v25, 0x2

    aget v10, v38, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v27, v5

    .line 1623
    add-int/lit8 v25, v25, 0x3

    goto :goto_0

    .line 1630
    :cond_0
    const/16 v5, 0x3c

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1631
    const/16 v5, 0x3d

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1632
    const/16 v5, 0x3e

    const/high16 v6, -0x1

    aput v6, v27, v5

    .line 1633
    const/16 v5, 0x3f

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1634
    const/16 v5, 0x40

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1635
    const/16 v5, 0x41

    const/high16 v6, -0x1

    aput v6, v27, v5

    .line 1636
    const/16 v5, 0x42

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1637
    const/16 v5, 0x43

    const/4 v6, 0x0

    aput v6, v27, v5

    .line 1638
    const/16 v5, 0x44

    const/high16 v6, -0x1

    aput v6, v27, v5

    .line 1640
    const/16 v5, 0x17

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v26, v0

    fill-array-data v26, :array_0

    .line 1642
    .local v26, indices:[B
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v19, v0

    .line 1643
    .local v19, dd:[D
    const/16 v5, 0x18

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v19

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1644
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 1645
    .local v20, du:[D
    const/16 v5, 0x21

    const/4 v6, 0x5

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move-object/from16 v2, v20

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1646
    const/4 v5, 0x0

    aget-wide v5, v19, v5

    const/4 v7, 0x1

    aget-wide v7, v19, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v19, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v19, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v19, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v19, v7

    add-double v34, v5, v7

    .line 1647
    .local v34, totald:D
    const/4 v5, 0x0

    aget-wide v5, v20, v5

    const/4 v7, 0x1

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v20, v7

    add-double v36, v5, v7

    .line 1648
    .local v36, totalu:D
    const/16 v5, 0x2e

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v31, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v31, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v31, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v31, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0xc

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v31, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0xe

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v31, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v31, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x12

    const/4 v6, 0x0

    aget v6, v16, v6

    aput v6, v31, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v19, v8

    div-double v8, v8, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x16

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v31, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v19, v8

    const/4 v10, 0x1

    aget-wide v10, v19, v10

    add-double/2addr v8, v10

    div-double v8, v8, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x19

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aget-wide v6, v20, v6

    div-double v6, v6, v36

    mul-double v6, v6, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x0

    aget-wide v8, v19, v8

    const/4 v10, 0x1

    aget-wide v10, v19, v10

    add-double/2addr v8, v10

    const/4 v10, 0x2

    aget-wide v10, v19, v10

    add-double/2addr v8, v10

    div-double v8, v8, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x1e

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aget-wide v6, v20, v6

    const/4 v8, 0x1

    aget-wide v8, v20, v8

    add-double/2addr v6, v8

    div-double v6, v6, v36

    mul-double v6, v6, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x4

    aget-wide v8, v19, v8

    sub-double v8, v34, v8

    const/4 v10, 0x5

    aget-wide v10, v19, v10

    sub-double/2addr v8, v10

    div-double v8, v8, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x21

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x22

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x23

    const/4 v6, 0x0

    aget-wide v6, v20, v6

    const/4 v8, 0x1

    aget-wide v8, v20, v8

    add-double/2addr v6, v8

    const/4 v8, 0x2

    aget-wide v8, v20, v8

    add-double/2addr v6, v8

    div-double v6, v6, v36

    mul-double v6, v6, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const/4 v8, 0x5

    aget-wide v8, v19, v8

    sub-double v8, v34, v8

    div-double v8, v8, v34

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x25

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x26

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x27

    const/4 v6, 0x4

    aget-wide v6, v20, v6

    sub-double v6, v36, v6

    div-double v6, v6, v36

    mul-double v6, v6, v17

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v8, v0

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide v8, v0

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x29

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x2a

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x2b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v6, v0

    div-double v6, v17, v6

    double-to-int v6, v6

    aput v6, v31, v5

    const/16 v5, 0x2c

    const/high16 v6, 0x1

    aput v6, v31, v5

    const/16 v5, 0x2d

    const/high16 v6, 0x1

    aput v6, v31, v5

    .line 1700
    .local v31, texture:[I
    const/16 v5, 0x9

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v30, v0

    .line 1702
    .local v30, shadow:[I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v32

    .line 1703
    .local v32, tn:D
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1704
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1705
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v30, v5

    .line 1706
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1707
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1708
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v30, v5

    .line 1709
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1710
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v30, v5

    .line 1711
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v30, v5

    .line 1713
    monitor-enter p0

    .line 1714
    :try_start_0
    move-object/from16 v0, v38

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 1715
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 1716
    move-object/from16 v0, v27

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 1717
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 1718
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 1719
    move-object/from16 v0, v31

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 1720
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/asus/reader/book/FlippingPage;->setShadow([I)V

    .line 1721
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 1722
    monitor-exit p0

    .line 1723
    return-void

    .line 1722
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 1640
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
        0x11t
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
    .end array-data
.end method

.method private flip_mode_3_1()V
    .locals 34

    .prologue
    .line 1727
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v7, v0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    div-double v16, v5, v7

    .line 1728
    .local v16, d1:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v18, v0

    .line 1730
    .local v18, d2:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    aput v7, v5, v6

    .line 1731
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v8, v0

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1732
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1733
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    aput v7, v5, v6

    .line 1734
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1735
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1736
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_2

    .line 1737
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v8, v0

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1738
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1739
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1740
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1752
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1753
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1755
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v8, v0

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1756
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 1757
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1758
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    aput v7, v5, v6

    .line 1760
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1761
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_4

    .line 1762
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1763
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v8, v0

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1765
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1777
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1781
    const/16 v5, 0x48

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v33, v0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v6, v0

    aput v6, v33, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x3

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v33, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v20, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0xd

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0xe

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x11

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x12

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x13

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x14

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x15

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x16

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x17

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x18

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x19

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1a

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1b

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1c

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1d

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1e

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1f

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x20

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x21

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x22

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x23

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x24

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x25

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x26

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x27

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x28

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x29

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x33

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/16 v5, 0x34

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x35

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x36

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x38

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x39

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x3b

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x3e

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x41

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x44

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x47

    const/4 v6, 0x0

    aput v6, v33, v5

    .line 1808
    .local v33, vertices:[I
    const/16 v5, 0x48

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 1809
    .local v24, normal:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1810
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1811
    const/4 v5, 0x2

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 1812
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1813
    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1814
    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 1815
    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1816
    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1817
    const/16 v5, 0x8

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 1818
    const/16 v5, 0x9

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1819
    const/16 v5, 0xa

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1820
    const/16 v5, 0xb

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 1821
    const/16 v22, 0xc

    .local v22, i:I
    :goto_2
    const/16 v5, 0x2a

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 1824
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v22, 0x2

    aget v11, v33, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v22, 0x2

    aget v13, v33, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v24, v22

    .line 1825
    add-int/lit8 v5, v22, 0x1

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1826
    add-int/lit8 v5, v22, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v22, 0x2

    aget v10, v33, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v24, v5

    .line 1821
    add-int/lit8 v22, v22, 0x3

    goto :goto_2

    .line 1741
    .end local v22           #i:I
    .end local v24           #normal:[I
    .end local v33           #vertices:[I
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    .line 1742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1743
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1744
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1745
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_0

    .line 1746
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 1747
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1749
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_0

    .line 1766
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    .line 1767
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1768
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1769
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_1

    .line 1771
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 1772
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1773
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1775
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_1

    .line 1828
    .restart local v22       #i:I
    .restart local v24       #normal:[I
    .restart local v33       #vertices:[I
    :cond_6
    const/16 v5, 0x2a

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1829
    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1830
    const/16 v5, 0x2c

    const/high16 v6, -0x1

    aput v6, v24, v5

    .line 1831
    const/16 v5, 0x2d

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1832
    const/16 v5, 0x2e

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1833
    const/16 v5, 0x2f

    const/high16 v6, -0x1

    aput v6, v24, v5

    .line 1834
    const/16 v5, 0x30

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1835
    const/16 v5, 0x31

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1836
    const/16 v5, 0x32

    const/high16 v6, -0x1

    aput v6, v24, v5

    .line 1837
    const/16 v5, 0x33

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1838
    const/16 v5, 0x34

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 1839
    const/16 v5, 0x35

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 1840
    const/16 v5, 0x36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1841
    const/16 v5, 0x37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1842
    const/16 v5, 0x38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1843
    const/16 v5, 0x39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1844
    const/16 v5, 0x3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1845
    const/16 v5, 0x3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1846
    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1847
    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1848
    const/16 v5, 0x3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1849
    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1850
    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1851
    const/16 v5, 0x41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1852
    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1853
    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1854
    const/16 v5, 0x44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1855
    const/16 v5, 0x45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1856
    const/16 v5, 0x46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1857
    const/16 v5, 0x47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 1859
    const/16 v5, 0x19

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    .line 1860
    .local v23, indices:[B
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 1861
    .local v20, dd:[D
    const/4 v5, 0x6

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1862
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 1863
    .local v21, du:[D
    const/16 v5, 0x9

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 1864
    const/4 v5, 0x0

    aget-wide v5, v20, v5

    const/4 v7, 0x1

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v20, v7

    add-double v29, v5, v7

    .line 1865
    .local v29, totald:D
    const/4 v5, 0x0

    aget-wide v5, v21, v5

    const/4 v7, 0x1

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v21, v7

    add-double v31, v5, v7

    .line 1866
    .local v31, totalu:D
    const/16 v5, 0x30

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/4 v5, 0x0

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x2

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v26, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v26, v5

    const/4 v5, 0x4

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x8

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x0

    aget-wide v11, v20, v11

    mul-double/2addr v9, v11

    div-double v9, v9, v29

    mul-double v9, v9, v16

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x0

    aget-wide v10, v21, v10

    mul-double/2addr v8, v10

    div-double v8, v8, v31

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0xb

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0xc

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x0

    aget-wide v11, v20, v11

    const/4 v13, 0x1

    aget-wide v13, v20, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    div-double v9, v9, v29

    mul-double v9, v9, v16

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0xe

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x0

    aget-wide v10, v21, v10

    const/4 v12, 0x1

    aget-wide v12, v21, v12

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    div-double v8, v8, v31

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0xf

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x10

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x0

    aget-wide v11, v20, v11

    const/4 v13, 0x1

    aget-wide v13, v20, v13

    add-double/2addr v11, v13

    const/4 v13, 0x2

    aget-wide v13, v20, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    div-double v9, v9, v29

    mul-double v9, v9, v16

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x0

    aget-wide v10, v21, v10

    const/4 v12, 0x1

    aget-wide v12, v21, v12

    add-double/2addr v10, v12

    const/4 v12, 0x2

    aget-wide v12, v21, v12

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    div-double v8, v8, v31

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x13

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x14

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x4

    aget-wide v11, v20, v11

    sub-double v11, v29, v11

    const/4 v13, 0x5

    aget-wide v13, v20, v13

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    div-double v9, v9, v29

    mul-double v9, v9, v16

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x4

    aget-wide v10, v21, v10

    sub-double v10, v31, v10

    const/4 v12, 0x5

    aget-wide v12, v21, v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    div-double v8, v8, v31

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x17

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x18

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x19

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x5

    aget-wide v11, v20, v11

    sub-double v11, v29, v11

    mul-double/2addr v9, v11

    div-double v9, v9, v29

    mul-double v9, v9, v16

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x5

    aget-wide v10, v21, v10

    sub-double v10, v31, v10

    mul-double/2addr v8, v10

    div-double v8, v8, v31

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x1b

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x1c

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x1d

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    mul-double v9, v9, v16

    add-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    mul-double v8, v8, v18

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x1f

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x20

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x21

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x22

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v26, v5

    const/16 v5, 0x23

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x24

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x25

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x26

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x27

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x29

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x2d

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x2f

    const/4 v6, 0x0

    aput v6, v26, v5

    .line 1920
    .local v26, texture:[I
    const/16 v5, 0x9

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 1921
    .local v25, shadow:[I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v27

    .line 1922
    .local v27, tn:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_7

    .line 1924
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1925
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1926
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 1927
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1928
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1929
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 1930
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1931
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1932
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 1946
    :goto_3
    monitor-enter p0

    .line 1947
    :try_start_0
    move-object/from16 v0, v33

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 1948
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 1949
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 1950
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 1951
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 1952
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 1953
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/asus/reader/book/FlippingPage;->setShadow([I)V

    .line 1954
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 1955
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1956
    return-void

    .line 1935
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1936
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1937
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 1938
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1939
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1940
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 1941
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1942
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 1943
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    goto/16 :goto_3

    .line 1955
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 1859
    :array_0
    .array-data 0x1
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x11t
        0x1t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data
.end method

.method private flip_mode_3_2()V
    .locals 34

    .prologue
    .line 1960
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v16, v0

    .line 1961
    .local v16, d1:D
    sget-wide v5, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v7, v0

    div-double/2addr v5, v7

    const-wide/high16 v7, 0x4000

    div-double v18, v5, v7

    .line 1963
    .local v18, d2:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v8, v0

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1964
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1967
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x1

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1968
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1969
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_2

    .line 1970
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1971
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1972
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1973
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1985
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1986
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 1988
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    aput v7, v5, v6

    .line 1989
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v8, v0

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1990
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1991
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v7, v0

    aput v7, v5, v6

    .line 1992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1993
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v6, 0x2

    const/4 v7, 0x0

    aput v7, v5, v6

    .line 1994
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-nez v5, :cond_4

    .line 1995
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-wide/from16 v0, v18

    double-to-int v0, v0

    move v8, v0

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1996
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 1997
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1998
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    aput v7, v5, v6

    .line 2010
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 2011
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x2

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->R:D

    double-to-int v7, v7

    neg-int v7, v7

    aput v7, v5, v6

    .line 2013
    const/16 v5, 0x48

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v33, v0

    const/4 v5, 0x0

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move v6, v0

    aput v6, v33, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v33, v5

    const/4 v5, 0x5

    const/4 v6, 0x0

    aput v6, v33, v5

    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0xa

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0xb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v20, 0xc

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0xd

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0xe

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0xf

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x10

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x11

    const/4 v6, 0x1

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x12

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x13

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x14

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x15

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x16

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x17

    const/4 v6, 0x2

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x18

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x19

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1a

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1b

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1c

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1d

    const/4 v6, 0x3

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1e

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x1f

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x20

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x21

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x22

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x23

    const/4 v6, 0x4

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x24

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x25

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x26

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p1:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x27

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x0

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x0

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x0

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x0

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x28

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x1

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x1

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x1

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x1

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v20, 0x29

    const/4 v6, 0x5

    const/4 v7, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v5, v0

    const/4 v8, 0x2

    aget v5, v5, v8

    int-to-double v8, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    move-object v5, v0

    const/4 v10, 0x2

    aget v5, v5, v10

    int-to-double v10, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v12, 0x2

    aget v5, v5, v12

    int-to-double v12, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v14, 0x2

    aget v5, v5, v14

    int-to-double v14, v5

    move-object/from16 v5, p0

    invoke-virtual/range {v5 .. v15}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v5

    aput v5, v33, v20

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x2f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x30

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x31

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x33

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v33, v5

    const/16 v5, 0x34

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    aput v6, v33, v5

    const/16 v5, 0x35

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x36

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x37

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v7, v0

    div-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x38

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x39

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x3a

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->ch:I

    move v8, v0

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x3b

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x3e

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x41

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x44

    const/4 v6, 0x0

    aput v6, v33, v5

    const/16 v5, 0x45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v33, v5

    const/16 v5, 0x46

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    sub-int/2addr v6, v7

    aput v6, v33, v5

    const/16 v5, 0x47

    const/4 v6, 0x0

    aput v6, v33, v5

    .line 2040
    .local v33, vertices:[I
    const/16 v5, 0x48

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v24, v0

    .line 2041
    .local v24, normal:[I
    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2042
    const/4 v5, 0x1

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2043
    const/4 v5, 0x2

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 2044
    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2045
    const/4 v5, 0x4

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2046
    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 2047
    const/4 v5, 0x6

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2048
    const/4 v5, 0x7

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2049
    const/16 v5, 0x8

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 2050
    const/16 v5, 0x9

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2051
    const/16 v5, 0xa

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2052
    const/16 v5, 0xb

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 2053
    const/16 v22, 0xc

    .local v22, i:I
    :goto_2
    const/16 v5, 0x2a

    move/from16 v0, v22

    move v1, v5

    if-ge v0, v1, :cond_6

    .line 2056
    const-wide/high16 v5, 0x40f0

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v11, v22, 0x2

    aget v11, v33, v11

    int-to-double v11, v11

    add-double/2addr v9, v11

    sget-wide v11, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v13, v22, 0x2

    aget v13, v33, v13

    int-to-double v13, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v5, v7

    double-to-int v5, v5

    neg-int v5, v5

    aput v5, v24, v22

    .line 2057
    add-int/lit8 v5, v22, 0x1

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2058
    add-int/lit8 v5, v22, 0x2

    const-wide/high16 v6, 0x40f0

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    add-int/lit8 v10, v22, 0x2

    aget v10, v33, v10

    int-to-double v10, v10

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    sget-wide v8, Lcom/asus/reader/book/FlippingPage;->r:D

    div-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v24, v5

    .line 2053
    add-int/lit8 v22, v22, 0x3

    goto :goto_2

    .line 1974
    .end local v22           #i:I
    .end local v24           #normal:[I
    .end local v33           #vertices:[I
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_3

    .line 1975
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1976
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1977
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1978
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_0

    .line 1979
    :cond_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_0

    .line 1980
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1981
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v8, v0

    mul-double v8, v8, v16

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 1982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 1983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p2:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_0

    .line 1999
    :cond_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_5

    .line 2000
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 2001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 2002
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 2003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_1

    .line 2004
    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpg-double v5, v5, v7

    if-gez v5, :cond_1

    .line 2005
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    .line 2006
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v8, v0

    mul-double v8, v8, v18

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 2007
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x0

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    add-int/2addr v7, v8

    aput v7, v5, v6

    .line 2008
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    const-wide/high16 v8, 0x4010

    sget-wide v10, Lcom/asus/reader/book/FlippingPage;->r:D

    mul-double/2addr v8, v10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v10, v0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4008

    div-double/2addr v8, v10

    double-to-int v8, v8

    sub-int/2addr v7, v8

    aput v7, v5, v6

    goto/16 :goto_1

    .line 2060
    .restart local v22       #i:I
    .restart local v24       #normal:[I
    .restart local v33       #vertices:[I
    :cond_6
    const/16 v5, 0x2a

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2061
    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2062
    const/16 v5, 0x2c

    const/high16 v6, -0x1

    aput v6, v24, v5

    .line 2063
    const/16 v5, 0x2d

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2064
    const/16 v5, 0x2e

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2065
    const/16 v5, 0x2f

    const/high16 v6, -0x1

    aput v6, v24, v5

    .line 2066
    const/16 v5, 0x30

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2067
    const/16 v5, 0x31

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2068
    const/16 v5, 0x32

    const/high16 v6, -0x1

    aput v6, v24, v5

    .line 2069
    const/16 v5, 0x33

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2070
    const/16 v5, 0x34

    const/4 v6, 0x0

    aput v6, v24, v5

    .line 2071
    const/16 v5, 0x35

    const/high16 v6, 0x1

    aput v6, v24, v5

    .line 2072
    const/16 v5, 0x36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2073
    const/16 v5, 0x37

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2074
    const/16 v5, 0x38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2075
    const/16 v5, 0x39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2076
    const/16 v5, 0x3a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2077
    const/16 v5, 0x3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2078
    const/16 v5, 0x3c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2079
    const/16 v5, 0x3d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2080
    const/16 v5, 0x3e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2081
    const/16 v5, 0x3f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2082
    const/16 v5, 0x40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2083
    const/16 v5, 0x41

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2084
    const/16 v5, 0x42

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2085
    const/16 v5, 0x43

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2086
    const/16 v5, 0x44

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2087
    const/16 v5, 0x45

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2088
    const/16 v5, 0x46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2089
    const/16 v5, 0x47

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    move-object v6, v0

    const/4 v7, 0x2

    aget v6, v6, v7

    aput v6, v24, v5

    .line 2091
    const/16 v5, 0x19

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v23, v0

    fill-array-data v23, :array_0

    .line 2092
    .local v23, indices:[B
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v20, v0

    .line 2093
    .local v20, dd:[D
    const/4 v5, 0x6

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v20

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 2094
    const/4 v5, 0x6

    move v0, v5

    new-array v0, v0, [D

    move-object/from16 v21, v0

    .line 2095
    .local v21, du:[D
    const/16 v5, 0x9

    const/4 v6, 0x6

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move-object/from16 v2, v21

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/asus/reader/book/FlippingPage;->distances([I[DII)V

    .line 2096
    const/4 v5, 0x0

    aget-wide v5, v20, v5

    const/4 v7, 0x1

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v20, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v20, v7

    add-double v29, v5, v7

    .line 2097
    .local v29, totald:D
    const/4 v5, 0x0

    aget-wide v5, v21, v5

    const/4 v7, 0x1

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x2

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x3

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x4

    aget-wide v7, v21, v7

    add-double/2addr v5, v7

    const/4 v7, 0x5

    aget-wide v7, v21, v7

    add-double v31, v5, v7

    .line 2098
    .local v31, totalu:D
    const/16 v5, 0x30

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v26, v0

    const/4 v5, 0x0

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v26, v5

    const/4 v5, 0x1

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x2

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x3

    const/4 v6, 0x0

    aput v6, v26, v5

    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/4 v5, 0x5

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x6

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/4 v5, 0x7

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x0

    aget-wide v10, v20, v10

    mul-double/2addr v8, v10

    div-double v8, v8, v29

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x9

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0xa

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0xb

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x0

    aget-wide v11, v21, v11

    mul-double/2addr v9, v11

    div-double v9, v9, v31

    mul-double v9, v9, v18

    sub-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0xc

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x0

    aget-wide v10, v20, v10

    const/4 v12, 0x1

    aget-wide v12, v20, v12

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    div-double v8, v8, v29

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0xd

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0xe

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0xf

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x0

    aget-wide v11, v21, v11

    const/4 v13, 0x1

    aget-wide v13, v21, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    div-double v9, v9, v31

    mul-double v9, v9, v18

    sub-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x0

    aget-wide v10, v20, v10

    const/4 v12, 0x1

    aget-wide v12, v20, v12

    add-double/2addr v10, v12

    const/4 v12, 0x2

    aget-wide v12, v20, v12

    add-double/2addr v10, v12

    mul-double/2addr v8, v10

    div-double v8, v8, v29

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x11

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x12

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x13

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x0

    aget-wide v11, v21, v11

    const/4 v13, 0x1

    aget-wide v13, v21, v13

    add-double/2addr v11, v13

    const/4 v13, 0x2

    aget-wide v13, v21, v13

    add-double/2addr v11, v13

    mul-double/2addr v9, v11

    div-double v9, v9, v31

    mul-double v9, v9, v18

    sub-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x4

    aget-wide v10, v20, v10

    sub-double v10, v29, v10

    const/4 v12, 0x5

    aget-wide v12, v20, v12

    sub-double/2addr v10, v12

    mul-double/2addr v8, v10

    div-double v8, v8, v29

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x15

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x16

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x17

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x4

    aget-wide v11, v21, v11

    sub-double v11, v31, v11

    const/4 v13, 0x5

    aget-wide v13, v21, v13

    sub-double/2addr v11, v13

    mul-double/2addr v9, v11

    div-double v9, v9, v31

    mul-double v9, v9, v18

    sub-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    const/4 v10, 0x5

    aget-wide v10, v20, v10

    sub-double v10, v29, v10

    mul-double/2addr v8, v10

    div-double v8, v8, v29

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x19

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x1a

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x1b

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    const/4 v11, 0x5

    aget-wide v11, v21, v11

    sub-double v11, v31, v11

    mul-double/2addr v9, v11

    div-double v9, v9, v31

    mul-double v9, v9, v18

    sub-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p0:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    int-to-double v6, v6

    const-wide/high16 v8, 0x4000

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    double-to-int v6, v6

    aput v6, v26, v5

    const/16 v5, 0x1d

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x1e

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x1f

    const/high16 v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    move-object v7, v0

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-double v7, v7

    const-wide/high16 v9, 0x4000

    mul-double v9, v9, v18

    sub-double/2addr v7, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    move-wide v9, v0

    div-double/2addr v7, v9

    double-to-int v7, v7

    sub-int/2addr v6, v7

    aput v6, v26, v5

    const/16 v5, 0x20

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x21

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x22

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v26, v5

    const/16 v5, 0x23

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x24

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x25

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x26

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x27

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x29

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x2b

    const/4 v6, 0x0

    aput v6, v26, v5

    const/16 v5, 0x2c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x2d

    const/high16 v6, 0x1

    aput v6, v26, v5

    const/16 v5, 0x2e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v26, v5

    const/16 v5, 0x2f

    const/4 v6, 0x0

    aput v6, v26, v5

    .line 2152
    .local v26, texture:[I
    const/16 v5, 0x9

    move v0, v5

    new-array v0, v0, [I

    move-object/from16 v25, v0

    .line 2153
    .local v25, shadow:[I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide v5, v0

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->atan(D)D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v27

    .line 2154
    .local v27, tn:D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide v5, v0

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_7

    .line 2156
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v11, v0

    sub-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2157
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2158
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 2159
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2160
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2161
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 2162
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2163
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2164
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 2178
    :goto_3
    monitor-enter p0

    .line 2179
    :try_start_0
    move-object/from16 v0, v33

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v33

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 2180
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 2181
    move-object/from16 v0, v24

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 2182
    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 2183
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 2184
    move-object/from16 v0, v26

    array-length v0, v0

    move v5, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 2185
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/asus/reader/book/FlippingPage;->setShadow([I)V

    .line 2186
    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 2187
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2188
    return-void

    .line 2167
    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    neg-double v9, v9

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2168
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v11, v0

    add-double/2addr v9, v11

    mul-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2169
    const/4 v5, 0x2

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 2170
    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide v9, v0

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2171
    const/4 v5, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2172
    const/4 v5, 0x5

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    .line 2173
    const/4 v5, 0x6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x0

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2174
    const/4 v5, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->p3:[I

    move-object v6, v0

    const/4 v7, 0x1

    aget v6, v6, v7

    sget-wide v7, Lcom/asus/reader/book/FlippingPage;->r:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide v9, v0

    neg-double v9, v9

    mul-double/2addr v7, v9

    sget-wide v9, Lcom/asus/reader/book/FlippingPage;->shadowLength:D

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    div-double/2addr v9, v11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide v11, v0

    neg-double v11, v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    double-to-int v7, v7

    add-int/2addr v6, v7

    aput v6, v25, v5

    .line 2175
    const/16 v5, 0x8

    sget-wide v6, Lcom/asus/reader/book/FlippingPage;->r:D

    double-to-int v6, v6

    neg-int v6, v6

    add-int/lit8 v6, v6, 0x1

    aput v6, v25, v5

    goto/16 :goto_3

    .line 2187
    :catchall_0
    move-exception v5

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v5

    .line 2091
    nop

    :array_0
    .array-data 0x1
        0x12t
        0x13t
        0x14t
        0x15t
        0x16t
        0x17t
        0x0t
        0x11t
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
        0xat
        0xbt
        0xct
        0xdt
        0xet
        0xft
        0x10t
    .end array-data
.end method

.method private setIndexBuffer([BI)V
    .locals 2
    .parameter "indices"
    .parameter "length"

    .prologue
    .line 119
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/FlippingPage;->mIndexBuffer:Ljava/nio/ByteBuffer;

    .line 120
    if-nez p2, :cond_0

    .line 123
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/FlippingPage;->mIndexBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 122
    iget-object v0, p0, Lcom/asus/reader/book/FlippingPage;->mIndexBuffer:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_0
.end method

.method private setNormalBuffer([II)V
    .locals 4
    .parameter "normal"
    .parameter "length"

    .prologue
    .line 126
    iget-boolean v2, p0, Lcom/asus/reader/book/FlippingPage;->mLandscape:Z

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/asus/reader/book/FlippingPage;->mMode:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_0

    .line 127
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x1

    aget v3, p1, v3

    neg-int v3, v3

    aput v3, p1, v2

    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v3, v0, 0x2

    aget v3, p1, v3

    neg-int v3, v3

    aput v3, p1, v2

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 129
    .end local v0           #i:I
    :cond_0
    mul-int/lit8 v2, p2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 130
    .local v1, nbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 131
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer:Ljava/nio/IntBuffer;

    .line 132
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 133
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 134
    return-void
.end method

.method private setNormalBuffer2([II)V
    .locals 4
    .parameter "normal"
    .parameter "length"

    .prologue
    .line 137
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    aget v2, p1, v0

    neg-int v2, v2

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_0
    mul-int/lit8 v2, p2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 139
    .local v1, nbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 140
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer2:Ljava/nio/IntBuffer;

    .line 141
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer2:Ljava/nio/IntBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 142
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mNormalBuffer2:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 143
    return-void
.end method

.method private setShadow([I)V
    .locals 4
    .parameter "shadow"

    .prologue
    .line 146
    array-length v1, p1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    .line 147
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    aget v2, p1, v0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 148
    :cond_0
    iget-boolean v1, p0, Lcom/asus/reader/book/FlippingPage;->mLandscape:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/asus/reader/book/FlippingPage;->mMode:I

    and-int/lit8 v1, v1, 0x1

    if-lez v1, :cond_1

    .line 149
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 150
    iget-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    iget v2, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    iget-object v3, p0, Lcom/asus/reader/book/FlippingPage;->mShadowVertex:[I

    aget v3, v3, v0

    sub-int/2addr v2, v3

    aput v2, v1, v0

    .line 149
    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 153
    :cond_1
    return-void
.end method

.method private setTextureBuffer([II)V
    .locals 3
    .parameter "texture"
    .parameter "length"

    .prologue
    .line 102
    mul-int/lit8 v1, p2, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 103
    .local v0, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 104
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    .line 105
    iget-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 106
    iget-object v1, p0, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 107
    return-void
.end method

.method private setTextureBuffer2([II)V
    .locals 4
    .parameter "texture"
    .parameter "length"

    .prologue
    .line 110
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    iget v2, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    aget v3, p1, v0

    sub-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 111
    :cond_0
    mul-int/lit8 v2, p2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 112
    .local v1, tbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 113
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer2:Ljava/nio/IntBuffer;

    .line 114
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer2:Ljava/nio/IntBuffer;

    invoke-virtual {v2, p1}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    .line 115
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mTextureCoordBuffer2:Ljava/nio/IntBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 116
    return-void
.end method

.method private setVertexBuffer([II)V
    .locals 5
    .parameter "vertices"
    .parameter "length"

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-boolean v2, p0, Lcom/asus/reader/book/FlippingPage;->mLandscape:Z

    if-eqz v2, :cond_0

    .line 88
    iget v2, p0, Lcom/asus/reader/book/FlippingPage;->mMode:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 89
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_1

    iget v2, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    aget v3, p1, v0

    sub-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_0

    .line 91
    .end local v0           #i:I
    :cond_0
    iget v2, p0, Lcom/asus/reader/book/FlippingPage;->mMode:I

    and-int/lit8 v2, v2, 0x1

    if-lez v2, :cond_1

    .line 92
    const/4 v0, 0x2

    .restart local v0       #i:I
    :goto_1
    if-ge v0, p2, :cond_1

    aget v2, p1, v0

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    aput v2, p1, v0

    add-int/lit8 v0, v0, 0x3

    goto :goto_1

    .line 94
    .end local v0           #i:I
    :cond_1
    mul-int/lit8 v2, p2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 95
    .local v1, vbb:Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 96
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mVertexBuffer:Ljava/nio/IntBuffer;

    .line 97
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, p1, v4, p2}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    .line 98
    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->mVertexBuffer:Ljava/nio/IntBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    return-void
.end method


# virtual methods
.method public bezier(IIDDDD)I
    .locals 16
    .parameter "m"
    .parameter "n"
    .parameter "p0"
    .parameter "p1"
    .parameter "p2"
    .parameter "p3"

    .prologue
    .line 2248
    mul-int v12, p2, p2

    mul-int v12, v12, p2

    int-to-double v4, v12

    .line 2249
    .local v4, n3:D
    mul-int v12, p1, p1

    int-to-double v0, v12

    .line 2250
    .local v0, m2:D
    mul-int v12, p1, p1

    mul-int v12, v12, p1

    int-to-double v2, v12

    .line 2251
    .local v2, m3:D
    sub-int v12, p2, p1

    int-to-double v6, v12

    .line 2252
    .local v6, nm:D
    sub-int v12, p2, p1

    sub-int v13, p2, p1

    mul-int/2addr v12, v13

    int-to-double v8, v12

    .line 2253
    .local v8, nm2:D
    sub-int v12, p2, p1

    sub-int v13, p2, p1

    mul-int/2addr v12, v13

    sub-int v13, p2, p1

    mul-int/2addr v12, v13

    int-to-double v10, v12

    .line 2254
    .local v10, nm3:D
    mul-double v12, v2, p9

    const-wide/high16 v14, 0x4008

    mul-double/2addr v14, v0

    mul-double/2addr v14, v6

    mul-double v14, v14, p7

    add-double/2addr v12, v14

    mul-int/lit8 v14, p1, 0x3

    int-to-double v14, v14

    mul-double/2addr v14, v8

    mul-double v14, v14, p5

    add-double/2addr v12, v14

    mul-double v14, v10, p3

    add-double/2addr v12, v14

    div-double/2addr v12, v4

    double-to-int v12, v12

    return v12
.end method

.method public cn(D[I)V
    .locals 11
    .parameter "angle"
    .parameter "normal"

    .prologue
    const/4 v10, 0x0

    const-wide/high16 v8, 0x40f0

    .line 2241
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 2242
    .local v0, n:D
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    div-double/2addr v2, v0

    mul-double/2addr v2, v8

    double-to-int v2, v2

    neg-int v2, v2

    aput v2, p3, v10

    .line 2243
    const/4 v2, 0x1

    aput v10, p3, v2

    .line 2244
    const/4 v2, 0x2

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    div-double/2addr v3, v0

    mul-double/2addr v3, v8

    double-to-int v3, v3

    aput v3, p3, v2

    .line 2245
    return-void
.end method

.method public distance(DDDDDD)D
    .locals 6
    .parameter "x0"
    .parameter "y0"
    .parameter "z0"
    .parameter "x1"
    .parameter "y1"
    .parameter "z1"

    .prologue
    .line 2265
    sub-double v0, p1, p7

    sub-double v2, p1, p7

    mul-double/2addr v0, v2

    sub-double v2, p3, p9

    sub-double v4, p3, p9

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    sub-double v2, p5, p11

    sub-double v4, p5, p11

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    int-to-double v0, v0

    return-wide v0
.end method

.method public distances([I[DII)V
    .locals 17
    .parameter "in"
    .parameter "out"
    .parameter "offset"
    .parameter "number"

    .prologue
    .line 2258
    const/16 v16, 0x0

    .local v16, i:I
    :goto_0
    move/from16 v0, v16

    move/from16 v1, p4

    if-ge v0, v1, :cond_0

    .line 2259
    mul-int/lit8 v2, v16, 0x3

    mul-int/lit8 v15, v2, 0x2

    .line 2260
    .local v15, I:I
    add-int v2, p3, v15

    add-int/lit8 v2, v2, 0x0

    aget v2, p1, v2

    int-to-double v3, v2

    add-int v2, p3, v15

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    int-to-double v5, v2

    add-int v2, p3, v15

    add-int/lit8 v2, v2, 0x2

    aget v2, p1, v2

    int-to-double v7, v2

    add-int v2, p3, v15

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x0

    aget v2, p1, v2

    int-to-double v9, v2

    add-int v2, p3, v15

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x1

    aget v2, p1, v2

    int-to-double v11, v2

    add-int v2, p3, v15

    add-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x2

    aget v2, p1, v2

    int-to-double v13, v2

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v14}, Lcom/asus/reader/book/FlippingPage;->distance(DDDDDD)D

    move-result-wide v2

    aput-wide v2, p2, v16

    .line 2258
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 2263
    .end local v15           #I:I
    :cond_0
    return-void
.end method

.method public flip(FFFF)V
    .locals 33
    .parameter "x0"
    .parameter "y0"
    .parameter "x1"
    .parameter "y1"

    .prologue
    .line 158
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float p1, p1, v25

    .line 159
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float p2, p2, v25

    .line 160
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float p3, p3, v25

    .line 161
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    mul-float p4, p4, v25

    .line 163
    cmpl-float v25, p3, p1

    if-ltz v25, :cond_0

    .line 164
    move/from16 v0, p1

    neg-float v0, v0

    move/from16 p1, v0

    .line 165
    move/from16 v0, p3

    neg-float v0, v0

    move/from16 p3, v0

    .line 172
    :cond_0
    move/from16 v0, p2

    float-to-int v0, v0

    move v4, v0

    .line 173
    .local v4, Ty:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v9, v0

    .line 174
    .local v9, dH:D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide v15, v0

    .line 175
    .local v15, dW:D
    move/from16 v0, p2

    float-to-double v0, v0

    move-wide/from16 v19, v0

    .line 176
    .local v19, dy0:D
    move/from16 v0, p3

    float-to-double v0, v0

    move-wide/from16 v17, v0

    .line 177
    .local v17, dx1:D
    move/from16 v0, p4

    float-to-double v0, v0

    move-wide/from16 v21, v0

    .line 178
    .local v21, dy1:D
    int-to-double v13, v4

    .line 180
    .local v13, dTy:D
    mul-double v25, v15, v15

    mul-double v27, v17, v17

    sub-double v25, v25, v27

    sub-double v27, v21, v13

    sub-double v29, v21, v13

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    const-wide/high16 v27, 0x4000

    sub-double v29, v15, v17

    mul-double v27, v27, v29

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v3, v0

    .line 181
    .local v3, Tx:I
    int-to-double v11, v3

    .line 185
    .local v11, dTx:D
    sub-double v25, v21, v13

    sub-double v27, v17, v11

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->m:D

    .line 187
    const-wide/high16 v25, -0x4010

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->n:D

    .line 189
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->sinN:D

    .line 190
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->cosN:D

    .line 191
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->sinM:D

    .line 192
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->cosM:D

    .line 195
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-nez v25, :cond_8

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 198
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-wide/from16 v0, v17

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move/from16 v27, v0

    aput v27, v25, v26

    .line 237
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-nez v25, :cond_f

    .line 238
    cmpg-double v25, v21, v19

    if-gez v25, :cond_e

    .line 239
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    add-double v27, v21, v15

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    aput v27, v25, v26

    .line 245
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 273
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->T:D

    .line 274
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->sinT:D

    .line 275
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->cosT:D

    .line 276
    sget-wide v25, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    .line 277
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    sget v27, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-ltz v25, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    sget v27, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_6

    .line 285
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    sget v27, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget v27, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 286
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    sget v27, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sget v27, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 287
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v26, v26, v27

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_14

    .line 288
    const-wide/16 v25, 0x0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->m:D

    .line 294
    :goto_3
    const-wide/high16 v25, -0x4010

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->n:D

    .line 296
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->sinN:D

    .line 297
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->cosN:D

    .line 298
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->sinM:D

    .line 299
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v25, v0

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->cosM:D

    .line 300
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->sinT:D

    .line 301
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide/from16 v25, v0

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->atan(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D

    move-result-wide v25

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->abs(D)D

    move-result-wide v25

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->cosT:D

    .line 302
    sget-wide v25, Lcom/asus/reader/book/FlippingPage;->peri:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinT:D

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    .line 303
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint:D

    move-wide/from16 v25, v0

    const-wide/high16 v27, 0x4000

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    .line 304
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-nez v25, :cond_16

    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    mul-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    aput v27, v25, v26

    .line 306
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/16 v27, 0x0

    aput v27, v25, v26

    .line 307
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    mul-int/lit8 v27, v27, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    aput v27, v25, v26

    .line 308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move/from16 v27, v0

    aput v27, v25, v26

    .line 330
    :cond_5
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v23, v25, v27

    .line 332
    .local v23, m1:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v23

    sub-double v7, v25, v27

    .line 334
    .local v7, c1:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v23

    add-double v27, v27, v7

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 339
    .end local v7           #c1:D
    .end local v23           #m1:D
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1a

    .line 341
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_1_1()V

    .line 376
    :cond_7
    :goto_5
    return-void

    .line 200
    :cond_8
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-nez v25, :cond_a

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 202
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-wide/from16 v0, v21

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 203
    cmpg-double v25, v21, v19

    if-gez v25, :cond_9

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    add-double v27, v17, v19

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 205
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sub-double v27, v9, v19

    sub-double v27, v17, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_0

    .line 207
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sub-double v27, v17, v19

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sub-double v27, v9, v19

    add-double v27, v27, v17

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_0

    .line 210
    :cond_a
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-lez v25, :cond_c

    .line 211
    cmpl-double v25, v21, v19

    if-lez v25, :cond_b

    .line 212
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    sub-double v27, v17, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 213
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    sub-double v27, v21, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 214
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    add-double v27, v27, v17

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 215
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    add-double v27, v27, v21

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_0

    .line 217
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    add-double v27, v27, v17

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    add-double v27, v27, v21

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 219
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    sub-double v27, v17, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 220
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    sub-double v27, v21, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_0

    .line 222
    :cond_c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1

    .line 223
    cmpg-double v25, v21, v19

    if-gez v25, :cond_d

    .line 224
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    add-double v27, v27, v17

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 225
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    sub-double v27, v21, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 226
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    sub-double v27, v17, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    add-double v27, v27, v21

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_0

    .line 229
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    sub-double v27, v17, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v27, v0

    mul-double v27, v27, v19

    add-double v27, v27, v21

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    add-double v27, v27, v17

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    sub-double v27, v9, v19

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinN:D

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    sub-double v27, v21, v27

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_0

    .line 242
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    aput v27, v25, v26

    .line 243
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const-wide/high16 v27, 0x4000

    mul-double v27, v27, v15

    sub-double v27, v27, v21

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_1

    .line 248
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v5, v0

    .line 249
    .local v5, b3:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-eqz v25, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v25, v0

    const-wide/high16 v27, -0x8000

    cmpl-double v25, v25, v27

    if-nez v25, :cond_12

    .line 250
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, p3

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 255
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v29, v0

    const/16 v30, 0x0

    aget v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    move-wide/from16 v0, v25

    double-to-int v0, v0

    move v6, v0

    .line 256
    .local v6, b4:I
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-eqz v25, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v25, v0

    const-wide/high16 v27, -0x8000

    cmpl-double v25, v25, v27

    if-nez v25, :cond_13

    .line 257
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    add-float v27, v27, p3

    const/high16 v28, 0x4000

    div-float v27, v27, v28

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 263
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v23, v25, v27

    .line 265
    .restart local v23       #m1:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v23

    sub-double v7, v25, v27

    .line 267
    .restart local v7       #c1:D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->Ts:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v27, v27, v23

    add-double v27, v27, v7

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_2

    .line 252
    .end local v6           #b4:I
    .end local v7           #c1:D
    .end local v23           #m1:D
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move v0, v5

    neg-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v29, v0

    div-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_6

    .line 261
    .restart local v6       #b4:I
    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->H:I

    move/from16 v27, v0

    sub-int v27, v27, v6

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->m:D

    move-wide/from16 v29, v0

    div-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_7

    .line 290
    .end local v5           #b3:I
    .end local v6           #b4:I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    sub-int v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    sub-int v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    div-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->T:D

    .line 291
    sget-wide v25, Lcom/asus/reader/book/FlippingPage;->pi:D

    const-wide/high16 v27, 0x4000

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->T:D

    move-wide/from16 v29, v0

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->abs(D)D

    move-result-wide v29

    invoke-static/range {v29 .. v30}, Ljava/lang/Math;->atan(D)D

    move-result-wide v29

    mul-double v27, v27, v29

    sub-double v25, v25, v27

    invoke-static/range {v25 .. v26}, Ljava/lang/Math;->tan(D)D

    move-result-wide v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v28, v0

    const/16 v29, 0x0

    aget v28, v28, v29

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_15

    const/16 v27, 0x1

    :goto_8
    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    mul-double v25, v25, v27

    move-wide/from16 v0, v25

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/asus/reader/book/FlippingPage;->m:D

    goto/16 :goto_3

    :cond_15
    const/16 v27, -0x1

    goto :goto_8

    .line 309
    :cond_16
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpl-double v25, v25, v27

    if-lez v25, :cond_18

    .line 310
    cmpl-double v25, v21, v19

    if-lez v25, :cond_17

    .line 311
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_4

    .line 316
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_4

    .line 319
    :cond_18
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->n:D

    move-wide/from16 v25, v0

    const-wide/16 v27, 0x0

    cmpg-double v25, v25, v27

    if-gez v25, :cond_5

    .line 320
    cmpg-double v25, v21, v19

    if-gez v25, :cond_19

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 324
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    sub-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_4

    .line 326
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x0

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->cosM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    .line 327
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->E1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v27, v0

    const/16 v28, 0x1

    aget v27, v27, v28

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v29, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v30, v0

    const/16 v31, 0x0

    aget v30, v30, v31

    sub-int v29, v29, v30

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->sinM:D

    move-wide/from16 v31, v0

    mul-double v29, v29, v31

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    aput v27, v25, v26

    goto/16 :goto_4

    .line 342
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1b

    .line 344
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_1_2()V

    goto/16 :goto_5

    .line 345
    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1c

    .line 347
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_2_1()V

    goto/16 :goto_5

    .line 348
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_1d

    .line 350
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_2_2()V

    goto/16 :goto_5

    .line 351
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1e

    .line 353
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_2_3()V

    goto/16 :goto_5

    .line 354
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_1f

    .line 356
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_2_4()V

    goto/16 :goto_5

    .line 357
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_20

    .line 358
    sget-object v25, Lcom/asus/reader/book/FlippingPage;->TAG:Ljava/lang/String;

    const-string v26, "mode 2-5, may not implement"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->resetPage()V

    goto/16 :goto_5

    .line 360
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-lt v0, v1, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_21

    .line 361
    sget-object v25, Lcom/asus/reader/book/FlippingPage;->TAG:Ljava/lang/String;

    const-string v26, "mode 2-6, may not implement"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->resetPage()V

    goto/16 :goto_5

    .line 363
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_22

    .line 364
    sget-object v25, Lcom/asus/reader/book/FlippingPage;->TAG:Ljava/lang/String;

    const-string v26, "mode 2-7, may not implement"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->resetPage()V

    goto/16 :goto_5

    .line 366
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v26, v0

    move/from16 v0, v25

    move/from16 v1, v26

    if-ge v0, v1, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_23

    .line 367
    sget-object v25, Lcom/asus/reader/book/FlippingPage;->TAG:Ljava/lang/String;

    const-string v26, "mode 2-8, may not implement"

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->resetPage()V

    goto/16 :goto_5

    .line 369
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_24

    .line 371
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_3_1()V

    goto/16 :goto_5

    .line 372
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T1:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    sub-double v27, v27, v29

    cmpg-double v25, v25, v27

    if-gez v25, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/asus/reader/book/FlippingPage;->W:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/asus/reader/book/FlippingPage;->peri_sint_2:D

    move-wide/from16 v29, v0

    add-double v27, v27, v29

    cmpl-double v25, v25, v27

    if-ltz v25, :cond_7

    .line 374
    invoke-direct/range {p0 .. p0}, Lcom/asus/reader/book/FlippingPage;->flip_mode_3_2()V

    goto/16 :goto_5
.end method

.method public resetPage()V
    .locals 14

    .prologue
    const/16 v13, 0xa

    const/4 v12, 0x2

    const/high16 v11, 0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 2191
    iget v5, p0, Lcom/asus/reader/book/FlippingPage;->mMode:I

    and-int/lit8 v5, v5, 0x2

    if-lez v5, :cond_0

    move v0, v13

    .line 2192
    .local v0, d:I
    :goto_0
    const/16 v5, 0x1e

    new-array v4, v5, [I

    aput v9, v4, v9

    iget v5, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    iget v6, p0, Lcom/asus/reader/book/FlippingPage;->ch:I

    div-int/2addr v5, v6

    aput v5, v4, v10

    aput v0, v4, v12

    const/4 v5, 0x3

    aput v9, v4, v5

    const/4 v5, 0x4

    iget v6, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    iget v7, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    iget v8, p0, Lcom/asus/reader/book/FlippingPage;->ch:I

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x5

    aput v0, v4, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    aget v6, v6, v9

    aput v6, v4, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    aget v6, v6, v10

    aput v6, v4, v5

    const/16 v5, 0x8

    aput v0, v4, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    aget v6, v6, v9

    aput v6, v4, v5

    iget v5, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    aget v6, v6, v10

    sub-int/2addr v5, v6

    aput v5, v4, v13

    const/16 v5, 0xb

    aput v0, v4, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    aget v6, v6, v9

    aput v6, v4, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    aget v6, v6, v10

    aput v6, v4, v5

    const/16 v5, 0xe

    aput v0, v4, v5

    const/16 v5, 0xf

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    aget v6, v6, v9

    aput v6, v4, v5

    const/16 v5, 0x10

    iget v6, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    iget-object v7, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    aget v7, v7, v10

    sub-int/2addr v6, v7

    aput v6, v4, v5

    const/16 v5, 0x11

    aput v0, v4, v5

    const/16 v5, 0x12

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v4, v5

    const/16 v5, 0x13

    aput v9, v4, v5

    const/16 v5, 0x14

    aput v0, v4, v5

    const/16 v5, 0x15

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v4, v5

    const/16 v5, 0x16

    iget v6, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v6, v4, v5

    const/16 v5, 0x17

    aput v0, v4, v5

    const/16 v5, 0x18

    iget v6, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    aput v6, v4, v5

    const/16 v5, 0x19

    aput v9, v4, v5

    const/16 v5, 0x1a

    aput v0, v4, v5

    const/16 v5, 0x1b

    iget v6, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    aput v6, v4, v5

    const/16 v5, 0x1c

    iget v6, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v6, v4, v5

    const/16 v5, 0x1d

    aput v0, v4, v5

    .line 2203
    .local v4, vertices:[I
    new-array v1, v13, [B

    fill-array-data v1, :array_0

    .line 2204
    .local v1, indices:[B
    const/16 v5, 0x14

    new-array v3, v5, [I

    aput v9, v3, v9

    aput v11, v3, v10

    aput v9, v3, v12

    const/4 v5, 0x3

    aput v9, v3, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    aget v6, v6, v9

    aput v6, v3, v5

    const/4 v5, 0x5

    aput v11, v3, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    aget v6, v6, v9

    aput v6, v3, v5

    const/4 v5, 0x7

    aput v9, v3, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    aget v6, v6, v9

    aput v6, v3, v5

    const/16 v5, 0x9

    aput v11, v3, v5

    iget-object v5, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    aget v5, v5, v9

    aput v5, v3, v13

    const/16 v5, 0xb

    aput v9, v3, v5

    const/16 v5, 0xc

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v3, v5

    const/16 v5, 0xd

    aput v11, v3, v5

    const/16 v5, 0xe

    sget v6, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    aput v6, v3, v5

    const/16 v5, 0xf

    aput v9, v3, v5

    const/16 v5, 0x10

    aput v11, v3, v5

    const/16 v5, 0x11

    aput v11, v3, v5

    const/16 v5, 0x12

    aput v11, v3, v5

    const/16 v5, 0x13

    aput v9, v3, v5

    .line 2216
    .local v3, texture:[I
    const/16 v5, 0x1e

    new-array v2, v5, [I

    iget-object v5, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    aget v5, v5, v9

    aput v5, v2, v9

    iget-object v5, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    aget v5, v5, v10

    aput v5, v2, v10

    iget-object v5, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    aget v5, v5, v12

    aput v5, v2, v12

    const/4 v5, 0x3

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    aget v6, v6, v9

    aput v6, v2, v5

    const/4 v5, 0x4

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    aget v6, v6, v10

    aput v6, v2, v5

    const/4 v5, 0x5

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    aget v6, v6, v12

    aput v6, v2, v5

    const/4 v5, 0x6

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    aget v6, v6, v9

    aput v6, v2, v5

    const/4 v5, 0x7

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    aget v6, v6, v10

    aput v6, v2, v5

    const/16 v5, 0x8

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    aget v6, v6, v12

    aput v6, v2, v5

    const/16 v5, 0x9

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    aget v6, v6, v9

    aput v6, v2, v5

    iget-object v5, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    aget v5, v5, v10

    aput v5, v2, v13

    const/16 v5, 0xb

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    aget v6, v6, v12

    aput v6, v2, v5

    const/16 v5, 0xc

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    aget v6, v6, v9

    aput v6, v2, v5

    const/16 v5, 0xd

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    aget v6, v6, v10

    aput v6, v2, v5

    const/16 v5, 0xe

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    aget v6, v6, v12

    aput v6, v2, v5

    const/16 v5, 0xf

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    aget v6, v6, v9

    aput v6, v2, v5

    const/16 v5, 0x10

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    aget v6, v6, v10

    aput v6, v2, v5

    const/16 v5, 0x11

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    aget v6, v6, v12

    aput v6, v2, v5

    const/16 v5, 0x12

    aput v9, v2, v5

    const/16 v5, 0x13

    aput v9, v2, v5

    const/16 v5, 0x14

    aput v11, v2, v5

    const/16 v5, 0x15

    aput v9, v2, v5

    const/16 v5, 0x16

    aput v9, v2, v5

    const/16 v5, 0x17

    aput v11, v2, v5

    const/16 v5, 0x18

    aput v9, v2, v5

    const/16 v5, 0x19

    aput v9, v2, v5

    const/16 v5, 0x1a

    aput v11, v2, v5

    const/16 v5, 0x1b

    aput v9, v2, v5

    const/16 v5, 0x1c

    aput v9, v2, v5

    const/16 v5, 0x1d

    aput v11, v2, v5

    .line 2228
    .local v2, normal:[I
    monitor-enter p0

    .line 2229
    :try_start_0
    array-length v5, v4

    invoke-direct {p0, v4, v5}, Lcom/asus/reader/book/FlippingPage;->setVertexBuffer([II)V

    .line 2230
    array-length v5, v2

    invoke-direct {p0, v2, v5}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer([II)V

    .line 2231
    array-length v5, v2

    invoke-direct {p0, v2, v5}, Lcom/asus/reader/book/FlippingPage;->setNormalBuffer2([II)V

    .line 2232
    array-length v5, v1

    invoke-direct {p0, v1, v5}, Lcom/asus/reader/book/FlippingPage;->setIndexBuffer([BI)V

    .line 2233
    array-length v5, v3

    invoke-direct {p0, v3, v5}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer([II)V

    .line 2234
    array-length v5, v3

    invoke-direct {p0, v3, v5}, Lcom/asus/reader/book/FlippingPage;->setTextureBuffer2([II)V

    .line 2235
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/asus/reader/book/FlippingPage;->mShowShadow:Z

    .line 2236
    monitor-exit p0

    .line 2238
    return-void

    .end local v0           #d:I
    .end local v1           #indices:[B
    .end local v2           #normal:[I
    .end local v3           #texture:[I
    .end local v4           #vertices:[I
    :cond_0
    move v0, v9

    .line 2191
    goto/16 :goto_0

    .line 2236
    .restart local v0       #d:I
    .restart local v1       #indices:[B
    .restart local v2       #normal:[I
    .restart local v3       #texture:[I
    .restart local v4       #vertices:[I
    :catchall_0
    move-exception v5

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 2203
    nop

    :array_0
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x9t
    .end array-data
.end method

.method public setSize(II)V
    .locals 13
    .parameter "width"
    .parameter "height"

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/asus/reader/book/FlippingPage;->mLandscape:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x4000

    int-to-float v1, p2

    mul-float/2addr v0, v1

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    .line 73
    :goto_0
    iget v0, p0, Lcom/asus/reader/book/FlippingPage;->W:I

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    .line 74
    iget-object v0, p0, Lcom/asus/reader/book/FlippingPage;->T2:[I

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->p4:[I

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/asus/reader/book/FlippingPage;->p5:[I

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/asus/reader/book/FlippingPage;->p6:[I

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/asus/reader/book/FlippingPage;->p7:[I

    const/4 v9, 0x1

    iget v10, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    aput v10, v8, v9

    aput v10, v6, v7

    aput v10, v4, v5

    aput v10, v2, v3

    aput v10, v0, v1

    .line 75
    sget-wide v0, Lcom/asus/reader/book/FlippingPage;->pi:D

    const-wide/high16 v2, 0x404e

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->cn0:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->cn(D[I)V

    .line 76
    sget-wide v0, Lcom/asus/reader/book/FlippingPage;->pi:D

    const-wide/high16 v2, 0x4044

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->cn1:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->cn(D[I)V

    .line 77
    sget-wide v0, Lcom/asus/reader/book/FlippingPage;->pi:D

    const-wide/high16 v2, 0x403e

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/asus/reader/book/FlippingPage;->cn2:[I

    invoke-virtual {p0, v0, v1, v2}, Lcom/asus/reader/book/FlippingPage;->cn(D[I)V

    .line 78
    iget-object v11, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    const/4 v12, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    sget v0, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-double v7, v0

    sget v0, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    int-to-double v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v0

    aput v0, v11, v12

    .line 79
    iget-object v11, p0, Lcom/asus/reader/book/FlippingPage;->c1:[I

    const/4 v12, 0x1

    const/4 v1, 0x1

    const/4 v2, 0x3

    iget v0, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    iget v3, p0, Lcom/asus/reader/book/FlippingPage;->ch:I

    div-int/2addr v0, v3

    int-to-double v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v0

    aput v0, v11, v12

    .line 80
    iget-object v11, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    const/4 v12, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x3

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    sget v0, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x3

    int-to-double v7, v0

    sget v0, Lcom/asus/reader/book/FlippingPage;->Tmin:I

    int-to-double v9, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v0

    aput v0, v11, v12

    .line 81
    iget-object v11, p0, Lcom/asus/reader/book/FlippingPage;->c2:[I

    const/4 v12, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    iget v0, p0, Lcom/asus/reader/book/FlippingPage;->H:I

    iget v3, p0, Lcom/asus/reader/book/FlippingPage;->ch:I

    div-int/2addr v0, v3

    int-to-double v3, v0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lcom/asus/reader/book/FlippingPage;->bezier(IIDDDD)I

    move-result v0

    aput v0, v11, v12

    .line 82
    invoke-virtual {p0}, Lcom/asus/reader/book/FlippingPage;->resetPage()V

    .line 84
    return-void

    .line 72
    :cond_0
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/asus/reader/book/FlippingPage;->HWratio:D

    goto/16 :goto_0
.end method
