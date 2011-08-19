.class Lcom/google/android/street/Overlay;
.super Ljava/lang/Object;
.source "Overlay.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/street/Overlay$Pancake;,
        Lcom/google/android/street/Overlay$HitTester;,
        Lcom/google/android/street/Overlay$Polygon;,
        Lcom/google/android/street/Overlay$FadeAnimation;,
        Lcom/google/android/street/Overlay$Label;
    }
.end annotation


# static fields
.field private static final ARROW_DATA:[F

.field private static final BAR_DATA:[F

.field private static final COS_NO_SHOW:F

.field private static final COS_SHOW_BELOW:F

.field private static final GROUND_PANCAKE_DATA:[F

.field private static final GROUND_PANCAKE_DATA_FILL_INDICES:[B

.field private static final GROUND_PANCAKE_DATA_OUTLINE_INDICES:[B

.field private static final GROUND_PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

.field private static final PANCAKE_DATA:[F

.field private static final PANCAKE_DATA_FILL_INDICES:[B

.field private static final PANCAKE_DATA_OUTLINE_INDICES:[B

.field private static final PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

.field private static final PYRAMID_DATA:[F

.field private static final PYRAMID_FILL_INDEX:[B

.field private static final PYRAMID_OUTLINE_INDEX:[B

.field private static final STREET_ANCHOR:[F

.field private static final STREET_ANCHOR_DIR_ARROW:[F


# instance fields
.field private m3DLabelMaker:Lcom/google/android/street/LabelMaker;

.field private mAddressBubble:[Landroid/graphics/drawable/Drawable;

.field private final mArrow:Lcom/google/android/street/Overlay$Polygon;

.field private mAspectRatio:F

.field private final mCompassDirectionNames:[Ljava/lang/CharSequence;

.field private mConfig:Lcom/google/android/street/PanoramaConfig;

.field private final mContext:Landroid/content/Context;

.field private final mDirectionPaint:Landroid/graphics/Paint;

.field private mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

.field private final mDisplayDensity:F

.field private mDrawDisabled:Z

.field private mDrawRoadLabels:Z

.field private final mEnablePancake:Z

.field private final mEnablePanoPoints:Z

.field private mFancyStreetLabelIds:[[I

.field private mHighlight:I

.field private final mHitTesterLock:Ljava/lang/Object;

.field private mIncomingLink:Lcom/google/android/street/PanoramaLink;

.field private mIncomingYaw:F

.field private final mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

.field private mLabelMaker:Lcom/google/android/street/LabelMaker;

.field private mLabelsComputed:Z

.field private mLabelsInitialized:Z

.field private mLastTrackballTime:J

.field private mLinks:[Lcom/google/android/street/PanoramaLink;

.field private mNextDrawTime:J

.field private mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

.field private mOutgoingLink:Lcom/google/android/street/PanoramaLink;

.field private mOutgoingYaw:F

.field private mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

.field private mPegmanOnPancakeLabelId:I

.field private final mProjector:Lcom/google/android/street/Projector;

.field private mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

.field private final mRoad:Lcom/google/android/street/Overlay$Polygon;

.field private final mScratch:[F

.field private mSelectedLink:I

.field private final mStreetOutlinePaint:Landroid/graphics/Paint;

.field private final mStreetPaint:Landroid/graphics/Paint;

.field private mStreets:[[Lcom/google/android/street/Overlay$Label;

.field private mTouchUsed:Z

.field private mTrackballUsed:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/16 v5, 0xc

    const/4 v4, 0x4

    .line 85
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/street/Overlay;->BAR_DATA:[F

    .line 99
    const/16 v0, 0x15

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Lcom/google/android/street/Overlay;->ARROW_DATA:[F

    .line 117
    new-array v0, v5, [F

    fill-array-data v0, :array_2

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_DATA:[F

    .line 125
    new-array v0, v4, [B

    fill-array-data v0, :array_3

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_DATA_FILL_INDICES:[B

    .line 128
    new-array v0, v4, [B

    fill-array-data v0, :array_4

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_DATA_OUTLINE_INDICES:[B

    .line 130
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->PANCAKE_DATA:[F

    sget-object v2, Lcom/google/android/street/Overlay;->PANCAKE_DATA_FILL_INDICES:[B

    sget-object v3, Lcom/google/android/street/Overlay;->PANCAKE_DATA_OUTLINE_INDICES:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    sput-object v0, Lcom/google/android/street/Overlay;->PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .line 141
    const/high16 v0, 0x4040

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/android/street/Overlay;->getCircle(FI)[F

    move-result-object v0

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA:[F

    .line 145
    invoke-static {v6}, Lcom/google/android/street/Overlay;->getPolygonStripIndices(I)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_FILL_INDICES:[B

    .line 149
    invoke-static {v6}, Lcom/google/android/street/Overlay;->getRange(I)[B

    move-result-object v0

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_OUTLINE_INDICES:[B

    .line 152
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA:[F

    sget-object v2, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_FILL_INDICES:[B

    sget-object v3, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_DATA_OUTLINE_INDICES:[B

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    sput-object v0, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .line 157
    const/16 v0, 0xf

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Lcom/google/android/street/Overlay;->PYRAMID_DATA:[F

    .line 164
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_6

    sput-object v0, Lcom/google/android/street/Overlay;->PYRAMID_FILL_INDEX:[B

    .line 167
    new-array v0, v5, [B

    fill-array-data v0, :array_7

    sput-object v0, Lcom/google/android/street/Overlay;->PYRAMID_OUTLINE_INDEX:[B

    .line 185
    new-array v0, v4, [F

    fill-array-data v0, :array_8

    sput-object v0, Lcom/google/android/street/Overlay;->STREET_ANCHOR:[F

    .line 187
    new-array v0, v4, [F

    fill-array-data v0, :array_9

    sput-object v0, Lcom/google/android/street/Overlay;->STREET_ANCHOR_DIR_ARROW:[F

    .line 197
    const/high16 v0, 0x42d2

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/google/android/street/Overlay;->COS_NO_SHOW:F

    .line 202
    const/high16 v0, 0x428c

    invoke-static {v0}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v0

    invoke-static {v0}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    sput v0, Lcom/google/android/street/Overlay;->COS_SHOW_BELOW:F

    return-void

    .line 85
    nop

    :array_0
    .array-data 0x4
        0xfat 0xedt 0x6bt 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xfat 0xedt 0x6bt 0x3dt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0xa0t 0x41t
        0xfat 0xedt 0x6bt 0xbdt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0xa0t 0x41t
        0xfat 0xedt 0x6bt 0xbdt
        0xcdt 0xcct 0x4ct 0x3et
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 99
    :array_1
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0x3et
        0x82t 0xc5t 0xe1t 0x3et
        0x11t 0xc7t 0x3at 0xbet
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
        0xfat 0xedt 0x6bt 0xbdt
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
        0xfat 0xedt 0x6bt 0xbdt
        0x3et 0xat 0x57t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xfat 0xedt 0x6bt 0x3dt
        0x3et 0xat 0x57t 0x3et
        0x0t 0x0t 0x0t 0x0t
        0xfat 0xedt 0x6bt 0x3dt
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
        0x11t 0xc7t 0x3at 0x3et
        0x3et 0xat 0x57t 0x3et
        0x94t 0x4dt 0x39t 0x3et
    .end array-data

    .line 117
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x40t 0x40t
        0x0t 0x0t 0x40t 0xc0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    .line 125
    :array_3
    .array-data 0x1
        0x0t
        0x1t
        0x3t
        0x2t
    .end array-data

    .line 128
    :array_4
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
    .end array-data

    .line 157
    :array_5
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x80t 0xbft
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 164
    :array_6
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x0t
    .end array-data

    .line 167
    nop

    :array_7
    .array-data 0x1
        0x0t
        0x1t
        0x2t
        0x0t
        0x2t
        0x3t
        0x0t
        0x3t
        0x4t
        0x0t
        0x4t
        0x1t
    .end array-data

    .line 185
    :array_8
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0x3et
        0x82t 0xc5t 0xe1t 0x3dt
        0x0t 0x0t 0x80t 0x3ft
    .end array-data

    .line 187
    :array_9
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x3et 0xat 0x57t 0x3et
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x80t 0x3ft
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/street/Projector;ZZZ)V
    .locals 6
    .parameter "context"
    .parameter "projector"
    .parameter "enablePancake"
    .parameter "enablePanoPoints"
    .parameter "drawRoadLabels"

    .prologue
    const/high16 v0, -0x4080

    const/16 v5, 0x60

    const/4 v4, 0x1

    const/16 v3, 0xff

    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 303
    iput v0, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    .line 304
    iput v0, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    .line 330
    iput-object p1, p0, Lcom/google/android/street/Overlay;->mContext:Landroid/content/Context;

    .line 331
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    .line 332
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->BAR_DATA:[F

    invoke-direct {v0, v1}, Lcom/google/android/street/Overlay$Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mRoad:Lcom/google/android/street/Overlay$Polygon;

    .line 333
    new-instance v0, Lcom/google/android/street/Overlay$Polygon;

    sget-object v1, Lcom/google/android/street/Overlay;->ARROW_DATA:[F

    invoke-direct {v0, v1}, Lcom/google/android/street/Overlay$Polygon;-><init>([F)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    .line 334
    iput-object p2, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    .line 336
    iput-boolean p5, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    .line 337
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->createLabelMakers()V

    .line 339
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mCompassDirectionNames:[Ljava/lang/CharSequence;

    .line 343
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    .line 344
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 345
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4270

    iget v2, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 346
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v5, v5, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 347
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 350
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    .line 351
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 352
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 353
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 354
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4040

    iget v2, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 357
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    .line 358
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 359
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x4160

    iget v2, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 360
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 362
    new-instance v0, Lcom/google/android/street/Overlay$HitTester;

    invoke-direct {v0}, Lcom/google/android/street/Overlay$HitTester;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 363
    new-instance v0, Lcom/google/android/street/Overlay$HitTester;

    invoke-direct {v0}, Lcom/google/android/street/Overlay$HitTester;-><init>()V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 364
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mHitTesterLock:Ljava/lang/Object;

    .line 365
    const/16 v0, 0x8

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mScratch:[F

    .line 366
    new-instance v0, Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-direct {v0, v4}, Lcom/google/android/street/Overlay$FadeAnimation;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    .line 367
    iput-boolean p3, p0, Lcom/google/android/street/Overlay;->mEnablePancake:Z

    .line 368
    iput-boolean p4, p0, Lcom/google/android/street/Overlay;->mEnablePanoPoints:Z

    .line 369
    return-void
.end method

.method private addLabels(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 12
    .parameter
    .parameter

    .prologue
    .line 1143
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    if-nez v0, :cond_1

    .line 1210
    :cond_0
    :goto_0
    return-void

    .line 1149
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    if-nez v0, :cond_2

    .line 1150
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->createLabelMakers()V

    .line 1153
    :cond_2
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsInitialized:Z

    if-nez v0, :cond_3

    .line 1154
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1155
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->initialize(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1156
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsInitialized:Z

    .line 1158
    :cond_3
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1161
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_5

    if-nez p2, :cond_5

    .line 1162
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v8, v0

    .line 1163
    const/4 v0, 0x3

    filled-new-array {v8, v0}, [I

    move-result-object v0

    const-class v1, Lcom/google/android/street/Overlay$Label;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/google/android/street/Overlay$Label;

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    .line 1164
    const/4 v0, 0x0

    move v9, v0

    :goto_1
    if-ge v9, v8, :cond_5

    .line 1165
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v0, v0, v9

    .line 1166
    iget-object v1, v0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_4

    .line 1167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/google/android/street/Overlay;->getDirectionText(Lcom/google/android/street/PanoramaLink;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1169
    const/4 v0, 0x0

    move v10, v0

    :goto_2
    const/4 v0, 0x3

    if-ge v10, v0, :cond_4

    .line 1170
    new-instance v11, Lcom/google/android/street/Overlay$Label;

    invoke-direct {v11}, Lcom/google/android/street/Overlay$Label;-><init>()V

    .line 1171
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v1, v10

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mDirectionPaint:Landroid/graphics/Paint;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x20

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;II)I

    move-result v0

    .line 1174
    iput v0, v11, Lcom/google/android/street/Overlay$Label;->mLabelID:I

    .line 1175
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v1, v0}, Lcom/google/android/street/LabelMaker;->getWidth(I)F

    move-result v1

    iput v1, v11, Lcom/google/android/street/Overlay$Label;->mWidth:F

    .line 1176
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v1, v0}, Lcom/google/android/street/LabelMaker;->getHeight(I)F

    move-result v0

    iput v0, v11, Lcom/google/android/street/Overlay$Label;->mHeight:F

    .line 1177
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    aget-object v0, v0, v9

    aput-object v11, v0, v10

    .line 1169
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_2

    .line 1164
    :cond_4
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto :goto_1

    .line 1184
    :cond_5
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, v1}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Landroid/graphics/drawable/Drawable;)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancakeLabelId:I

    .line 1186
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1189
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_9

    if-eqz p2, :cond_9

    .line 1190
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->beginAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1191
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v0, v0

    .line 1192
    const/4 v1, 0x3

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    iput-object p2, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    .line 1193
    const/4 v1, 0x0

    :goto_3
    if-ge v1, v0, :cond_8

    .line 1194
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v2, v2, v1

    .line 1195
    iget-object v3, v2, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    if-eqz v3, :cond_6

    iget-object v3, v2, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    .line 1196
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v2, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/google/android/street/Overlay;->getDirectionText(Lcom/google/android/street/PanoramaLink;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1198
    const/4 v3, 0x0

    :goto_4
    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    .line 1199
    iget-object v4, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mStreetPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/google/android/street/Overlay;->mStreetOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {v5, p1, v2, v6, v7}, Lcom/google/android/street/LabelMaker;->add(Ljavax/microedition/khronos/opengles/GL10;Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Paint;)I

    move-result v5

    aput v5, v4, v3

    .line 1198
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 1203
    :cond_6
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v2, v2, v1

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v2, v3

    .line 1193
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1206
    :cond_8
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->endAdding(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1209
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    goto/16 :goto_0
.end method

.method private beginLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter

    .prologue
    .line 1257
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v0}, Lcom/google/android/street/Overlay$FadeAnimation;->getOpacity()I

    move-result v0

    .line 1258
    const/high16 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1259
    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/high16 v3, 0x4604

    invoke-interface {p1, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 1261
    invoke-interface {p1, v0, v0, v0, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1263
    :cond_0
    return-void
.end method

.method private clearLabelMakers(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .parameter "gl"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 418
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    .line 419
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mLabelsInitialized:Z

    .line 420
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    if-eqz v0, :cond_0

    .line 421
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 422
    iput-object v1, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->shutdown(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 426
    iput-object v1, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 428
    :cond_1
    return-void
.end method

.method private computeAnimation(Lcom/google/android/street/UserOrientation;J)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const-wide/16 v3, 0x7d0

    .line 1288
    invoke-direct {p0, p2, p3}, Lcom/google/android/street/Overlay;->computeLabelOpacity(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    .line 1290
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    .line 1291
    iget-wide v0, p0, Lcom/google/android/street/Overlay;->mLastTrackballTime:J

    sub-long v0, p2, v0

    cmp-long v0, v0, v3

    if-gez v0, :cond_1

    .line 1292
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    invoke-virtual {p1}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v1

    const/high16 v2, 0x42f0

    invoke-static {v0, v1, v2}, Lcom/google/android/street/PanoramaConfig;->getClosestLinkIndex([Lcom/google/android/street/PanoramaLink;FF)I

    move-result v0

    iput v0, p0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    .line 1295
    iget-wide v0, p0, Lcom/google/android/street/Overlay;->mLastTrackballTime:J

    add-long/2addr v0, v3

    .line 1296
    iget-wide v2, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    iget-wide v2, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    .line 1297
    :cond_0
    iput-wide v0, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    .line 1300
    :cond_1
    return-void
.end method

.method private computeLabelOpacity(J)J
    .locals 5
    .parameter "currentTime"

    .prologue
    const/4 v4, 0x0

    .line 1311
    iget-boolean v3, p0, Lcom/google/android/street/Overlay;->mTrackballUsed:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/google/android/street/Overlay;->mTouchUsed:Z

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    move v2, v3

    .line 1313
    .local v2, labelVisible:Z
    :goto_0
    iput-boolean v4, p0, Lcom/google/android/street/Overlay;->mTrackballUsed:Z

    .line 1314
    iput-boolean v4, p0, Lcom/google/android/street/Overlay;->mTouchUsed:Z

    .line 1316
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v3, v2, p1, p2}, Lcom/google/android/street/Overlay$FadeAnimation;->computeLabelOpacity(ZJ)J

    move-result-wide v0

    .line 1319
    .local v0, labelTimeout:J
    return-wide v0

    .end local v0           #labelTimeout:J
    .end local v2           #labelVisible:Z
    :cond_1
    move v2, v4

    .line 1311
    goto :goto_0
.end method

.method private static createDirectionsArrow(Lcom/google/android/street/PanoramaLink;Lcom/google/android/street/PanoramaLink;)Lcom/google/android/street/Overlay$Polygon;
    .locals 20
    .parameter "inLink"
    .parameter "outLink"

    .prologue
    .line 539
    const/4 v13, 0x0

    .line 540
    .local v13, outX:F
    const v14, 0x3f51ac9b

    .line 541
    .local v14, outZ:F
    const/4 v9, 0x0

    .line 542
    .local v9, midX:F
    const v10, 0x3ea35936

    .line 544
    .local v10, midZ:F
    const/high16 v4, 0x42b4

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    move/from16 p1, v0

    .end local p1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    move/from16 p0, v0

    .end local p0
    sub-float p0, p1, p0

    sub-float p0, v4, p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->normalizeDegrees(F)F

    move-result p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->degreesToUnit(F)F

    move-result p0

    .line 547
    .local p0, outYawUnit:F
    const/high16 p1, 0x3f00

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->cosUnit(F)F

    move-result v4

    mul-float v7, p1, v4

    .line 548
    .local v7, inX:F
    const/high16 p1, 0x3f00

    invoke-static/range {p0 .. p0}, Lcom/google/android/street/StreetMath;->sinUnit(F)F

    move-result p0

    .end local p0           #outYawUnit:F
    mul-float p0, p0, p1

    const p1, 0x3ea35936

    add-float v8, p0, p1

    .line 562
    .local v8, inZ:F
    const/16 v11, 0x17

    .line 563
    .local v11, numVertices:I
    mul-int/lit8 p0, v11, 0x3

    move/from16 v0, p0

    new-array v0, v0, [F

    move-object v15, v0

    .line 564
    .local v15, vertices:[F
    const v4, 0x3de38e39

    .line 565
    .local v4, deltaT:F
    const/16 p0, 0x0

    .line 566
    .local p0, componentIndex:I
    const/16 p1, 0x0

    .local p1, i:I
    move/from16 v6, p1

    .end local p1           #i:I
    .local v6, i:I
    move/from16 p1, p0

    .end local p0           #componentIndex:I
    .local p1, componentIndex:I
    :goto_0
    const/16 p0, 0xa

    move v0, v6

    move/from16 v1, p0

    if-ge v0, v1, :cond_0

    .line 567
    move v0, v6

    int-to-float v0, v0

    move/from16 p0, v0

    mul-float v5, v4, p0

    .line 568
    .local v5, t:F
    invoke-static {v7, v9, v13, v5}, Lcom/google/android/street/StreetMath;->bezier(FFFF)F

    move-result v16

    .line 569
    .local v16, x:F
    invoke-static {v8, v10, v14, v5}, Lcom/google/android/street/StreetMath;->bezier(FFFF)F

    move-result v17

    .line 570
    .local v17, z:F
    invoke-static {v7, v9, v13, v5}, Lcom/google/android/street/StreetMath;->bezierTangent(FFFF)F

    move-result p0

    .line 571
    .local p0, dx:F
    invoke-static {v8, v10, v14, v5}, Lcom/google/android/street/StreetMath;->bezierTangent(FFFF)F

    move-result v5

    .line 572
    .local v5, dz:F
    const v12, 0x3d6bedfa

    mul-float v18, p0, p0

    mul-float v19, v5, v5

    add-float v18, v18, v19

    invoke-static/range {v18 .. v18}, Landroid/util/FloatMath;->sqrt(F)F

    move-result v18

    div-float v12, v12, v18

    .line 574
    .local v12, scaleFactor:F
    neg-float v5, v5

    mul-float/2addr v5, v12

    .line 575
    .local v5, orthoX:F
    mul-float v12, v12, p0

    .line 576
    .local v12, orthoZ:F
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .local p0, componentIndex:I
    add-float v18, v16, v5

    aput v18, v15, p1

    .line 577
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v18, 0x3e570a3e

    aput v18, v15, p0

    .line 578
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    add-float v18, v17, v12

    aput v18, v15, p1

    .line 579
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    sub-float v5, v16, v5

    aput v5, v15, p0

    .line 580
    .end local v5           #orthoX:F
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const v5, 0x3e570a3e

    aput v5, v15, p1

    .line 581
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    sub-float v5, v17, v12

    aput v5, v15, p0

    .line 566
    add-int/lit8 p0, v6, 0x1

    .end local v6           #i:I
    .local p0, i:I
    move/from16 v6, p0

    .end local p0           #i:I
    .restart local v6       #i:I
    goto :goto_0

    .line 585
    .end local v12           #orthoZ:F
    .end local v16           #x:F
    .end local v17           #z:F
    :cond_0
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .local p0, componentIndex:I
    const v4, -0x41c538ef

    aput v4, v15, p1

    .line 586
    .end local v4           #deltaT:F
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3e570a3e

    aput v4, v15, p0

    .line 587
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const v4, 0x3f51ac9b

    aput v4, v15, p1

    .line 588
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3e3ac711

    aput v4, v15, p0

    .line 589
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const v4, 0x3e570a3e

    aput v4, v15, p1

    .line 590
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3f51ac9b

    aput v4, v15, p0

    .line 591
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const/4 v4, 0x0

    aput v4, v15, p1

    .line 592
    add-int/lit8 p1, p0, 0x1

    .end local p0           #componentIndex:I
    .restart local p1       #componentIndex:I
    const v4, 0x3e570a3e

    aput v4, v15, p0

    .line 593
    add-int/lit8 p0, p1, 0x1

    .end local p1           #componentIndex:I
    .restart local p0       #componentIndex:I
    const p0, 0x3f8a1dfc

    aput p0, v15, p1

    .line 600
    .end local p0           #componentIndex:I
    invoke-static {v11}, Lcom/google/android/street/Overlay$Polygon;->identityIndexArray(I)[B

    move-result-object p0

    .line 601
    .local p0, fillIndices:[B
    new-array v5, v11, [B

    .line 602
    .local v5, outlineIndices:[B
    div-int/lit8 p1, v11, 0x2

    .line 603
    .local p1, halfNumVertices:I
    const/4 v4, 0x0

    .end local v6           #i:I
    .end local v7           #inX:F
    .local v4, i:I
    :goto_1
    move v0, v4

    move/from16 v1, p1

    if-ge v0, v1, :cond_1

    .line 604
    mul-int/lit8 v6, v4, 0x2

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 605
    add-int v6, p1, v4

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v4, 0x1

    mul-int/lit8 v7, v7, 0x2

    sub-int v7, v11, v7

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    .line 603
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 608
    :cond_1
    const/4 v4, 0x1

    sub-int v4, v11, v4

    int-to-byte v4, v4

    aput-byte v4, v5, p1

    .line 609
    .end local v4           #i:I
    new-instance p1, Lcom/google/android/street/Overlay$Polygon;

    .end local p1           #halfNumVertices:I
    move-object/from16 v0, p1

    move-object v1, v15

    move-object/from16 v2, p0

    move-object v3, v5

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    return-object p1
.end method

.method private createLabelMakers()V
    .locals 5

    .prologue
    const/16 v4, 0x400

    const/16 v1, 0x100

    const/4 v3, 0x1

    .line 372
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_0

    .line 373
    new-instance v0, Lcom/google/android/street/LabelMaker;

    const/16 v1, 0x200

    invoke-direct {v0, v3, v1, v4, v3}, Lcom/google/android/street/LabelMaker;-><init>(ZIIZ)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 380
    :goto_0
    new-instance v0, Lcom/google/android/street/LabelMaker;

    const/16 v1, 0x800

    const/4 v2, 0x0

    invoke-direct {v0, v3, v1, v4, v2}, Lcom/google/android/street/LabelMaker;-><init>(ZIIZ)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    .line 382
    return-void

    .line 378
    :cond_0
    new-instance v0, Lcom/google/android/street/LabelMaker;

    invoke-direct {v0, v3, v1, v1, v3}, Lcom/google/android/street/LabelMaker;-><init>(ZIIZ)V

    iput-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    goto :goto_0
.end method

.method private drawFancyStreetLabels(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V
    .locals 13
    .parameter "gl"
    .parameter "userOrientation"

    .prologue
    const/16 v12, 0x1700

    const/4 v11, 0x0

    const/high16 v10, 0x3f80

    const v9, 0x3ccccccd

    const/4 v8, 0x0

    .line 807
    iget-boolean v5, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-nez v5, :cond_1

    .line 845
    :cond_0
    :goto_0
    return-void

    .line 810
    :cond_1
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    if-eqz v5, :cond_0

    .line 813
    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v6, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    int-to-float v7, v7

    invoke-virtual {v5, p1, v6, v7}, Lcom/google/android/street/LabelMaker;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 814
    invoke-interface {p1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 815
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 816
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 817
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v5

    invoke-interface {p1, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 818
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 819
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v5, v5, v3

    aget v5, v5, v11

    const/4 v6, -0x1

    if-ne v5, v6, :cond_2

    .line 818
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 822
    :cond_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 825
    const/high16 v5, 0x4334

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v6, v6, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    sub-float v1, v5, v6

    .line 826
    .local v1, groundTiltDeg:F
    invoke-static {v1}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v2

    .line 827
    .local v2, groundTiltRad:F
    invoke-static {v2}, Landroid/util/FloatMath;->cos(F)F

    move-result v0

    .line 828
    .local v0, csT:F
    invoke-static {v2}, Landroid/util/FloatMath;->sin(F)F

    move-result v4

    .line 830
    .local v4, snT:F
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v5, v5, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    neg-float v5, v5

    neg-float v6, v4

    invoke-interface {p1, v5, v0, v8, v6}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 832
    iget-object v5, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v5, v5, v3

    iget v5, v5, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    neg-float v5, v5

    invoke-interface {p1, v5, v8, v10, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 833
    const/high16 v5, -0x4000

    invoke-interface {p1, v8, v8, v5}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 834
    const/high16 v5, -0x3f60

    invoke-interface {p1, v8, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 835
    const/high16 v5, -0x3d4c

    invoke-interface {p1, v5, v10, v8, v8}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 836
    const/high16 v5, 0x42b4

    invoke-interface {p1, v5, v8, v8, v10}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 837
    invoke-interface {p1, v9, v9, v9}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 838
    const/high16 v5, -0x3d90

    iget v6, p0, Lcom/google/android/street/Overlay;->mDisplayDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x4000

    div-float/2addr v5, v6

    invoke-interface {p1, v8, v5, v8}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 839
    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mFancyStreetLabelIds:[[I

    aget-object v6, v6, v3

    aget v6, v6, v11

    invoke-virtual {v5, p1, v6}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 840
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_2

    .line 842
    .end local v0           #csT:F
    .end local v1           #groundTiltDeg:F
    .end local v2           #groundTiltRad:F
    .end local v4           #snT:F
    :cond_3
    invoke-interface {p1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 843
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 844
    iget-object v5, p0, Lcom/google/android/street/Overlay;->m3DLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v5, p1}, Lcom/google/android/street/LabelMaker;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_0
.end method

.method private drawLabel(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/Overlay$Label;)V
    .locals 5
    .parameter "gl"
    .parameter "label"

    .prologue
    .line 1275
    iget-object v0, p2, Lcom/google/android/street/Overlay$Label;->mPosition:[F

    .line 1276
    .local v0, pos:[F
    const/4 v2, 0x0

    aget v1, v0, v2

    .line 1277
    .local v1, x:F
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1278
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    const/4 v3, 0x1

    aget v3, v0, v3

    iget v4, p2, Lcom/google/android/street/Overlay$Label;->mLabelID:I

    invoke-virtual {v2, p1, v1, v3, v4}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 1280
    :cond_0
    return-void
.end method

.method private drawLabels(Ljavax/microedition/khronos/opengles/GL10;ZZ)V
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/16 v5, 0x80

    const/4 v4, 0x0

    .line 1214
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    iget v1, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    int-to-float v2, v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/android/street/LabelMaker;->beginDrawing(Ljavax/microedition/khronos/opengles/GL10;FF)V

    .line 1216
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v0}, Lcom/google/android/street/Overlay$FadeAnimation;->isTransparent()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1217
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->beginLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1220
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    .line 1221
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v0, v0

    move v1, v4

    .line 1222
    :goto_0
    if-ge v1, v0, :cond_2

    .line 1224
    iget v2, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    if-ne v1, v2, :cond_1

    .line 1225
    const/4 v2, 0x1

    .line 1229
    :goto_1
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    aget-object v3, v3, v1

    aget-object v2, v3, v2

    .line 1230
    if-eqz v2, :cond_0

    .line 1231
    invoke-direct {p0, p1, v2}, Lcom/google/android/street/Overlay;->drawLabel(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/Overlay$Label;)V

    .line 1222
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1226
    :cond_1
    iget v2, p0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    if-ne v1, v2, :cond_5

    .line 1227
    const/4 v2, 0x2

    goto :goto_1

    .line 1236
    :cond_2
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->endLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1240
    :cond_3
    if-eqz p2, :cond_4

    .line 1241
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    const/high16 v1, 0x41f0

    const/high16 v2, 0x4270

    iget v3, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancakeLabelId:I

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/android/street/LabelMaker;->draw(Ljavax/microedition/khronos/opengles/GL10;FFI)V

    .line 1247
    :cond_4
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    const/16 v1, 0x1e

    const/16 v2, 0x3c

    iget-object v3, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    add-int/lit8 v3, v3, 0x1e

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/lit8 v4, v4, 0x3c

    const/4 v7, -0x2

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/Overlay$HitTester;->add(IIIIIII)V

    .line 1253
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    invoke-virtual {v0, p1}, Lcom/google/android/street/LabelMaker;->endDrawing(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1254
    return-void

    :cond_5
    move v2, v4

    goto :goto_1
.end method

.method private drawLink(Ljavax/microedition/khronos/opengles/GL10;FI)V
    .locals 50
    .parameter "gl"
    .parameter "userOrientationYaw"
    .parameter "linkIndex"

    .prologue
    .line 899
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    aget-object v31, v5, p3

    .line 900
    .local v31, link:Lcom/google/android/street/PanoramaLink;
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 903
    move-object/from16 v0, v31

    iget v0, v0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    move v5, v0

    sub-float v38, p2, v5

    .line 906
    .local v38, relativeYawDeg:F
    const/high16 v5, 0x4334

    move-object/from16 v0, v31

    iget v0, v0, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    move v6, v0

    sub-float v32, v5, v6

    .line 909
    .local v32, linkYawDeg:F
    const/high16 v5, 0x4334

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v6, v0

    iget v6, v6, Lcom/google/android/street/PanoramaConfig;->mTiltYawDeg:F

    sub-float v25, v5, v6

    .line 910
    .local v25, groundTiltDeg:F
    invoke-static/range {v25 .. v25}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v26

    .line 911
    .local v26, groundTiltRad:F
    invoke-static/range {v26 .. v26}, Landroid/util/FloatMath;->cos(F)F

    move-result v18

    .line 912
    .local v18, csT:F
    invoke-static/range {v26 .. v26}, Landroid/util/FloatMath;->sin(F)F

    move-result v44

    .line 914
    .local v44, snT:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    move-object v5, v0

    iget v5, v5, Lcom/google/android/street/PanoramaConfig;->mTiltPitchDeg:F

    neg-float v5, v5

    const/4 v6, 0x0

    move/from16 v0, v44

    neg-float v0, v0

    move v7, v0

    move-object/from16 v0, p1

    move v1, v5

    move/from16 v2, v18

    move v3, v6

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 915
    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    const/4 v7, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 917
    move-object/from16 v0, v31

    iget v0, v0, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    move v15, v0

    .line 918
    .local v15, argb:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    if-eq v0, v1, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    if-ne v0, v1, :cond_1

    .line 919
    :cond_0
    const v15, -0x7fa9a934

    .line 921
    :cond_1
    shr-int/lit8 v5, v15, 0x18

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v13, v5, 0x8

    .line 926
    .local v13, alphax:I
    const v5, 0x3f8ccccd

    int-to-float v6, v13

    mul-float/2addr v5, v6

    float-to-int v5, v5

    const/high16 v6, 0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    .line 927
    .local v14, alphax2:I
    shr-int/lit8 v5, v15, 0x10

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v37, v5, 0x8

    .line 928
    .local v37, redx:I
    shr-int/lit8 v5, v15, 0x8

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v24, v5, 0x8

    .line 929
    .local v24, greenx:I
    shr-int/lit8 v5, v15, 0x0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v17, v5, 0x8

    .line 930
    .local v17, bluex:I
    move-object/from16 v0, p1

    move/from16 v1, v37

    move/from16 v2, v24

    move/from16 v3, v17

    move v4, v14

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 931
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mRoad:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    const/4 v6, 0x6

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mRoad:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 939
    invoke-static/range {v38 .. v38}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->cos(F)F

    move-result v19

    .line 940
    .local v19, csY:F
    const/high16 v5, 0x4000

    mul-float v5, v5, v19

    mul-float v5, v5, v19

    const/high16 v6, 0x3f80

    sub-float v20, v5, v6

    .line 941
    .local v20, csY2:F
    const/high16 v5, 0x4080

    mul-float v5, v5, v19

    mul-float v5, v5, v19

    const/high16 v6, 0x4040

    sub-float/2addr v5, v6

    mul-float v21, v19, v5

    .line 942
    .local v21, csY3:F
    const v5, 0x3e4ccccd

    const/high16 v6, 0x3e80

    const v7, 0x3f2e147b

    const v8, 0x3eb5c28f

    mul-float v8, v8, v19

    add-float/2addr v7, v8

    const v8, 0x3ea3d70a

    mul-float v8, v8, v20

    sub-float/2addr v7, v8

    const v8, 0x3e5c28f6

    mul-float v8, v8, v21

    sub-float/2addr v7, v8

    mul-float/2addr v6, v7

    add-float v49, v5, v6

    .line 945
    .local v49, zPreShift:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    if-eqz v5, :cond_2

    .line 949
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    if-ne v0, v1, :cond_8

    .line 950
    const v5, 0x3f1b8bad

    move/from16 v0, v49

    move v1, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v49

    .line 956
    :cond_2
    :goto_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move/from16 v3, v49

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 960
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    if-eq v0, v1, :cond_3

    .line 961
    const v5, 0x3f19999a

    const/high16 v6, 0x3f80

    const v7, 0x3f19999a

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 964
    :cond_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Overlay;->mSelectedLink:I

    move v5, v0

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_9

    const/4 v5, 0x1

    move/from16 v43, v5

    .line 965
    .local v43, shouldHighlightSelected:Z
    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Overlay;->mHighlight:I

    move v5, v0

    move v0, v5

    move/from16 v1, p3

    if-ne v0, v1, :cond_a

    const/4 v5, 0x1

    move/from16 v42, v5

    .line 966
    .local v42, shouldHighlightPressed:Z
    :goto_2
    if-eqz v42, :cond_4

    .line 967
    const/16 v43, 0x0

    .line 969
    :cond_4
    if-nez v43, :cond_5

    if-eqz v42, :cond_b

    :cond_5
    const/4 v5, 0x1

    move/from16 v41, v5

    .line 971
    .local v41, shouldHighlightArrow:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    if-ne v0, v1, :cond_c

    const/4 v5, 0x1

    move/from16 v40, v5

    .line 973
    .local v40, shouldDrawDirectionsArrow:Z
    :goto_4
    if-eqz v41, :cond_f

    .line 975
    if-eqz v43, :cond_d

    .line 976
    const v5, 0x8800

    const/16 v6, 0x6d00

    const v7, 0xad00

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 980
    :goto_5
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 981
    if-eqz v40, :cond_e

    .line 984
    const/4 v5, 0x0

    const/4 v6, 0x0

    const v7, -0x42fd5239

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 986
    const v5, 0x3f8ccccd

    const/high16 v6, 0x3f80

    const v7, 0x3f8ccccd

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 998
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1000
    if-eqz v40, :cond_10

    .line 1001
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    const/4 v6, 0x5

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1002
    const/high16 v5, 0x1

    const/high16 v6, 0x1

    const/high16 v7, 0x1

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1003
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1004
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mScratch:[F

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v9, v0

    const/4 v10, 0x0

    const/16 v11, 0x40

    move-object/from16 v7, p1

    move/from16 v12, p3

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/street/Overlay$HitTester;->add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V

    .line 1014
    :goto_7
    if-eqz v41, :cond_6

    .line 1015
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1018
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    move-object v5, v0

    aget-object v5, v5, p3

    const/4 v6, 0x0

    aget-object v29, v5, v6

    .line 1019
    .local v29, label:Lcom/google/android/street/Overlay$Label;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/street/Overlay$FadeAnimation;->isTransparent()Z

    move-result v5

    if-nez v5, :cond_15

    if-eqz v29, :cond_15

    .line 1023
    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/google/android/street/Overlay$Label;->mPosition:[F

    move-object/from16 v35, v0

    .line 1027
    .local v35, pos:[F
    sget v5, Lcom/google/android/street/Overlay;->COS_NO_SHOW:F

    cmpl-float v5, v19, v5

    if-lez v5, :cond_14

    .line 1028
    move-object/from16 v0, v29

    iget v0, v0, Lcom/google/android/street/Overlay$Label;->mLabelID:I

    move/from16 v30, v0

    .line 1029
    .local v30, labelID:I
    if-eqz v40, :cond_11

    .line 1030
    sget-object v5, Lcom/google/android/street/Overlay;->STREET_ANCHOR_DIR_ARROW:[F

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/google/android/street/Overlay;->getBaseProjection([F[F)V

    .line 1035
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/street/LabelMaker;->getWidth(I)F

    move-result v46

    .line 1036
    .local v46, width:F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mLabelMaker:Lcom/google/android/street/LabelMaker;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/google/android/street/LabelMaker;->getHeight(I)F

    move-result v27

    .line 1040
    .local v27, height:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/street/Overlay;->mViewHeight:I

    move v5, v0

    int-to-float v5, v5

    const/high16 v6, 0x3f00

    mul-float/2addr v5, v6

    const v6, 0x3e19999a

    mul-float v16, v5, v6

    .line 1041
    .local v16, baseShift:F
    move/from16 v0, v46

    neg-float v0, v0

    move v5, v0

    const/high16 v6, 0x3f00

    mul-float v23, v5, v6

    .line 1042
    .local v23, cstw:F
    move/from16 v0, v46

    neg-float v0, v0

    move v5, v0

    sub-float v34, v5, v16

    .line 1043
    .local v34, lstw:F
    move/from16 v39, v16

    .line 1044
    .local v39, rstw:F
    move/from16 v0, v27

    neg-float v0, v0

    move v5, v0

    const v6, 0x3ecccccd

    mul-float v33, v5, v6

    .line 1045
    .local v33, lrsth:F
    move/from16 v22, v16

    .line 1047
    .local v22, csth:F
    const/4 v5, 0x0

    aget v47, v35, v5

    .line 1048
    .local v47, x:F
    const/4 v5, 0x1

    aget v48, v35, v5

    .line 1056
    .local v48, y:F
    sget v5, Lcom/google/android/street/Overlay;->COS_SHOW_BELOW:F

    cmpg-float v5, v19, v5

    if-gtz v5, :cond_12

    .line 1058
    add-float v47, v47, v23

    .line 1059
    add-float v48, v48, v22

    .line 1078
    :goto_9
    const/4 v5, 0x0

    aput v47, v35, v5

    .line 1079
    const/4 v5, 0x1

    aput v48, v35, v5

    .line 1099
    .end local v16           #baseShift:F
    .end local v22           #csth:F
    .end local v23           #cstw:F
    .end local v27           #height:F
    .end local v30           #labelID:I
    .end local v33           #lrsth:F
    .end local v34           #lstw:F
    .end local v39           #rstw:F
    .end local v46           #width:F
    .end local v47           #x:F
    .end local v48           #y:F
    :goto_a
    const/16 v28, 0x1

    .local v28, j:I
    :goto_b
    const/4 v5, 0x3

    move/from16 v0, v28

    move v1, v5

    if-ge v0, v1, :cond_15

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    move-object v5, v0

    aget-object v5, v5, p3

    aget-object v5, v5, v28

    if-eqz v5, :cond_7

    .line 1101
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mStreets:[[Lcom/google/android/street/Overlay$Label;

    move-object v5, v0

    aget-object v5, v5, p3

    aget-object v5, v5, v28

    move-object v0, v5

    iget-object v0, v0, Lcom/google/android/street/Overlay$Label;->mPosition:[F

    move-object/from16 v36, v0

    .line 1102
    .local v36, pos2:[F
    const/4 v5, 0x0

    const/4 v6, 0x0

    aget v6, v35, v6

    aput v6, v36, v5

    .line 1103
    const/4 v5, 0x1

    const/4 v6, 0x1

    aget v6, v35, v6

    aput v6, v36, v5

    .line 1099
    .end local v36           #pos2:[F
    :cond_7
    add-int/lit8 v28, v28, 0x1

    goto :goto_b

    .line 952
    .end local v28           #j:I
    .end local v29           #label:Lcom/google/android/street/Overlay$Label;
    .end local v35           #pos:[F
    .end local v40           #shouldDrawDirectionsArrow:Z
    .end local v41           #shouldHighlightArrow:Z
    .end local v42           #shouldHighlightPressed:Z
    .end local v43           #shouldHighlightSelected:Z
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    move-object v5, v0

    move-object/from16 v0, v31

    move-object v1, v5

    if-ne v0, v1, :cond_2

    .line 953
    const v49, -0x415ca6ca

    goto/16 :goto_0

    .line 964
    :cond_9
    const/4 v5, 0x0

    move/from16 v43, v5

    goto/16 :goto_1

    .line 965
    .restart local v43       #shouldHighlightSelected:Z
    :cond_a
    const/4 v5, 0x0

    move/from16 v42, v5

    goto/16 :goto_2

    .line 969
    .restart local v42       #shouldHighlightPressed:Z
    :cond_b
    const/4 v5, 0x0

    move/from16 v41, v5

    goto/16 :goto_3

    .line 971
    .restart local v41       #shouldHighlightArrow:Z
    :cond_c
    const/4 v5, 0x0

    move/from16 v40, v5

    goto/16 :goto_4

    .line 978
    .restart local v40       #shouldDrawDirectionsArrow:Z
    :cond_d
    const v5, 0xf600

    const v6, 0x8a00

    const/16 v7, 0x1f00

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto/16 :goto_5

    .line 989
    :cond_e
    const v5, 0x3fa66666

    const/high16 v6, 0x3f80

    const v7, 0x3fa66666

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    goto/16 :goto_6

    .line 993
    :cond_f
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const v8, 0x8000

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto/16 :goto_6

    .line 1007
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    const/4 v6, 0x6

    move-object v0, v5

    move-object/from16 v1, p1

    move v2, v6

    invoke-virtual {v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 1008
    const/high16 v5, 0x1

    const/high16 v6, 0x1

    const/high16 v7, 0x1

    const/high16 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1009
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 1010
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mScratch:[F

    move-object v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/street/Overlay;->mArrow:Lcom/google/android/street/Overlay$Polygon;

    move-object v9, v0

    const/4 v10, 0x0

    const/16 v11, 0x40

    move-object/from16 v7, p1

    move/from16 v12, p3

    invoke-virtual/range {v5 .. v12}, Lcom/google/android/street/Overlay$HitTester;->add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V

    goto/16 :goto_7

    .line 1032
    .restart local v29       #label:Lcom/google/android/street/Overlay$Label;
    .restart local v30       #labelID:I
    .restart local v35       #pos:[F
    :cond_11
    sget-object v5, Lcom/google/android/street/Overlay;->STREET_ANCHOR:[F

    move-object/from16 v0, p0

    move-object v1, v5

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Lcom/google/android/street/Overlay;->getBaseProjection([F[F)V

    goto/16 :goto_8

    .line 1062
    .restart local v16       #baseShift:F
    .restart local v22       #csth:F
    .restart local v23       #cstw:F
    .restart local v27       #height:F
    .restart local v33       #lrsth:F
    .restart local v34       #lstw:F
    .restart local v39       #rstw:F
    .restart local v46       #width:F
    .restart local v47       #x:F
    .restart local v48       #y:F
    :cond_12
    invoke-static/range {v38 .. v38}, Lcom/google/android/street/StreetMath;->degreesToRadians(F)F

    move-result v5

    invoke-static {v5}, Landroid/util/FloatMath;->sin(F)F

    move-result v45

    .line 1066
    .local v45, snY:F
    const/4 v5, 0x0

    cmpl-float v5, v45, v5

    if-ltz v5, :cond_13

    .line 1069
    add-float v47, v47, v34

    .line 1070
    add-float v48, v48, v33

    goto/16 :goto_9

    .line 1074
    :cond_13
    add-float v47, v47, v39

    .line 1075
    add-float v48, v48, v33

    goto/16 :goto_9

    .line 1096
    .end local v16           #baseShift:F
    .end local v22           #csth:F
    .end local v23           #cstw:F
    .end local v27           #height:F
    .end local v30           #labelID:I
    .end local v33           #lrsth:F
    .end local v34           #lstw:F
    .end local v39           #rstw:F
    .end local v45           #snY:F
    .end local v46           #width:F
    .end local v47           #x:F
    .end local v48           #y:F
    :cond_14
    const/4 v5, 0x0

    const/high16 v6, 0x7fc0

    aput v6, v35, v5

    .line 1097
    const/4 v5, 0x1

    const/high16 v6, 0x7fc0

    aput v6, v35, v5

    goto/16 :goto_a

    .line 1108
    .end local v35           #pos:[F
    :cond_15
    invoke-interface/range {p1 .. p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 1109
    return-void
.end method

.method private drawLinks(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V
    .locals 9
    .parameter "gl"
    .parameter "userOrientation"

    .prologue
    const/16 v8, 0x1700

    const/16 v7, 0xbe2

    const/4 v6, 0x0

    .line 854
    iget-boolean v3, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-nez v3, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 857
    :cond_1
    iget v3, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    .line 863
    const/16 v3, 0x1701

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 864
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 865
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getScale()F

    move-result v2

    .line 866
    .local v2, scale:F
    iget v3, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    invoke-static {v3}, Lcom/google/android/street/Renderer;->getUnzoomedVerticalFov(F)F

    move-result v3

    mul-float v0, v3, v2

    .line 867
    .local v0, fovYDeg:F
    iget v3, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    const v4, 0x3dcccccd

    const/high16 v5, 0x42c8

    invoke-static {p1, v0, v3, v4, v5}, Landroid/opengl/GLU;->gluPerspective(Ljavax/microedition/khronos/opengles/GL10;FFFF)V

    .line 869
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 870
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 873
    const/high16 v3, -0x4000

    invoke-interface {p1, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 874
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 875
    const/high16 v3, -0x4080

    invoke-interface {p1, v6, v3, v6}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 877
    const/16 v3, 0x1d00

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 878
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 879
    const/16 v3, 0x302

    const/16 v4, 0x303

    invoke-interface {p1, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 881
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v3, p1}, Lcom/google/android/street/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 882
    invoke-interface {p1, v8}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 884
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 885
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getYaw()F

    move-result v3

    invoke-direct {p0, p1, v3, v1}, Lcom/google/android/street/Overlay;->drawLink(Ljavax/microedition/khronos/opengles/GL10;FI)V

    .line 884
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 888
    :cond_2
    invoke-interface {p1, v7}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

.method private drawPancake(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Overlay$Pancake;)V
    .locals 10
    .parameter "gl"
    .parameter "userOrientation"
    .parameter "pancake"

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x3e80

    const/high16 v7, 0x3f80

    const/high16 v6, 0x1

    const/4 v5, 0x0

    .line 709
    const/16 v2, 0x1700

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 710
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 712
    if-nez p3, :cond_0

    .line 762
    :goto_0
    return-void

    .line 719
    :cond_0
    invoke-virtual {p2}, Lcom/google/android/street/UserOrientation;->getRotationMatrix()[F

    move-result-object v2

    invoke-interface {p1, v2, v9}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 720
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mYaw:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    neg-float v2, v2

    invoke-interface {p1, v2, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 721
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mPitch:F

    sub-float v2, v8, v2

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    neg-float v2, v2

    invoke-interface {p1, v2, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 723
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mDistance:F

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 725
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mDistance:F

    neg-float v2, v2

    invoke-interface {p1, v5, v5, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 728
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mPitch:F

    sub-float v2, v8, v2

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    invoke-interface {p1, v2, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 730
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mYaw:F

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    invoke-interface {p1, v2, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 733
    const/4 v2, 0x2

    new-array v0, v2, [F

    .line 737
    .local v0, normalYawPitch:[F
    iget v2, p3, Lcom/google/android/street/Overlay$Pancake;->mNx:F

    iget v3, p3, Lcom/google/android/street/Overlay$Pancake;->mNy:F

    iget v4, p3, Lcom/google/android/street/Overlay$Pancake;->mNz:F

    neg-float v4, v4

    invoke-static {v2, v3, v4, v0}, Lcom/google/android/street/StreetMath;->rectangularToSphericalCoords(FFF[F)V

    .line 739
    aget v2, v0, v9

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    neg-float v2, v2

    invoke-interface {p1, v2, v5, v7, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 741
    const/4 v2, 0x1

    aget v2, v0, v2

    sub-float v2, v8, v2

    invoke-static {v2}, Lcom/google/android/street/StreetMath;->unitToDegrees(F)F

    move-result v2

    invoke-interface {p1, v2, v7, v5, v5}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 748
    .end local v0           #normalYawPitch:[F
    :cond_1
    if-eqz p3, :cond_2

    iget-boolean v2, p3, Lcom/google/android/street/Overlay$Pancake;->mIsGround:Z

    if-eqz v2, :cond_2

    .line 749
    sget-object v1, Lcom/google/android/street/Overlay;->GROUND_PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .line 753
    .local v1, pancakePolygon:Lcom/google/android/street/Overlay$Polygon;
    :goto_1
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 754
    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {p1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 755
    const v2, 0x8000

    invoke-interface {p1, v6, v6, v6, v2}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 756
    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Lcom/google/android/street/Overlay$Polygon;->draw(Ljavax/microedition/khronos/opengles/GL10;I)V

    .line 757
    invoke-interface {p1, v6, v6, v6, v6}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 758
    invoke-virtual {v1, p1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 759
    const/16 v2, 0xbe2

    invoke-interface {p1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 760
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v2, p1}, Lcom/google/android/street/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 761
    iget-object v2, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v2, p1}, Lcom/google/android/street/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    goto/16 :goto_0

    .line 751
    .end local v1           #pancakePolygon:Lcom/google/android/street/Overlay$Polygon;
    :cond_2
    sget-object v1, Lcom/google/android/street/Overlay;->PANCAKE_POLYGON:Lcom/google/android/street/Overlay$Polygon;

    .restart local v1       #pancakePolygon:Lcom/google/android/street/Overlay$Polygon;
    goto :goto_1
.end method

.method private drawPanoPoints(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 13
    .parameter "gl"

    .prologue
    const/4 v12, 0x0

    const/high16 v11, 0x1

    const/4 v5, 0x0

    .line 766
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-nez v0, :cond_1

    .line 800
    :cond_0
    return-void

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v0, v0, Lcom/google/android/street/PanoramaConfig;->mPanoYawDeg:F

    neg-float v0, v0

    const/high16 v1, 0x4334

    sub-float/2addr v0, v1

    const/high16 v1, 0x3f80

    invoke-interface {p1, v0, v12, v1, v12}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 771
    const/16 v0, 0x10

    new-array v9, v0, [F

    .line 772
    .local v9, inverseTiltMatrix:[F
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    invoke-virtual {v0}, Lcom/google/android/street/PanoramaConfig;->getTiltMatrix()[F

    move-result-object v0

    invoke-static {v9, v5, v0, v5}, Landroid/opengl/Matrix;->invertM([FI[FI)Z

    .line 773
    invoke-interface {p1, v9, v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 775
    new-instance v4, Lcom/google/android/street/Overlay$Polygon;

    sget-object v0, Lcom/google/android/street/Overlay;->PYRAMID_DATA:[F

    sget-object v1, Lcom/google/android/street/Overlay;->PYRAMID_FILL_INDEX:[B

    sget-object v2, Lcom/google/android/street/Overlay;->PYRAMID_OUTLINE_INDEX:[B

    invoke-direct {v4, v0, v1, v2}, Lcom/google/android/street/Overlay$Polygon;-><init>([F[B[B)V

    .line 780
    .local v4, pyramid:Lcom/google/android/street/Overlay$Polygon;
    const/4 v8, 0x1

    .local v8, i:I
    :goto_0
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0}, Lcom/google/android/street/DepthMap;->numPanos()I

    move-result v0

    if-ge v8, v0, :cond_0

    .line 781
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0, v8}, Lcom/google/android/street/DepthMap;->getPanoId(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v1, v1, Lcom/google/android/street/PanoramaConfig;->mPanoId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 780
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 785
    :cond_2
    iget v0, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    add-int/lit8 v1, v8, 0x14

    if-ne v0, v1, :cond_3

    .line 786
    invoke-interface {p1, v5, v11, v5, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 790
    :goto_2
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 791
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v0, v0, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    invoke-virtual {v0, v8}, Lcom/google/android/street/DepthMap;->getPanoPoint(I)Lcom/google/android/street/DepthMap$Point;

    move-result-object v10

    .line 792
    .local v10, point:Lcom/google/android/street/DepthMap$Point;
    iget v0, v10, Lcom/google/android/street/DepthMap$Point;->x:F

    neg-float v0, v0

    iget v1, v10, Lcom/google/android/street/DepthMap$Point;->y:F

    invoke-interface {p1, v0, v12, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 793
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Projector;->getCurrentModelView(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 794
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v0, p1}, Lcom/google/android/street/Projector;->getCurrentProjection(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 795
    invoke-virtual {v4, p1}, Lcom/google/android/street/Overlay$Polygon;->drawOutline(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 796
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    iget-object v1, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    iget-object v3, p0, Lcom/google/android/street/Overlay;->mScratch:[F

    add-int/lit8 v7, v8, 0x14

    move-object v2, p1

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/google/android/street/Overlay$HitTester;->add(Lcom/google/android/street/Projector;Ljavax/microedition/khronos/opengles/GL10;[FLcom/google/android/street/Overlay$Polygon;III)V

    .line 798
    invoke-interface {p1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_1

    .line 788
    .end local v10           #point:Lcom/google/android/street/DepthMap$Point;
    :cond_3
    invoke-interface {p1, v5, v5, v11, v11}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    goto :goto_2
.end method

.method private endLabelOpacity(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x1000

    .line 1266
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v0}, Lcom/google/android/street/Overlay$FadeAnimation;->getOpacity()I

    move-result v0

    .line 1267
    const/high16 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 1268
    const/16 v0, 0x2300

    const/16 v1, 0x2200

    const v2, 0x45f00800

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 1270
    invoke-interface {p1, v3, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 1272
    :cond_0
    return-void
.end method

.method private getBaseProjection([F[F)V
    .locals 2
    .parameter "input"
    .parameter "output"

    .prologue
    const/4 v1, 0x0

    .line 1139
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mProjector:Lcom/google/android/street/Projector;

    invoke-virtual {v0, p1, v1, p2, v1}, Lcom/google/android/street/Projector;->project([FI[FI)V

    .line 1140
    return-void
.end method

.method private static getCircle(FI)[F
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1332
    mul-int/lit8 v0, p1, 0xc

    new-array v0, v0, [F

    .line 1334
    const v1, 0x3fc90fdb

    int-to-float v2, p1

    div-float/2addr v1, v2

    .line 1335
    const/4 v2, 0x0

    .line 1338
    const/4 v3, 0x0

    move v8, v3

    move v3, v2

    move v2, v8

    :goto_0
    if-gt v2, p1, :cond_1

    .line 1339
    invoke-static {v3}, Landroid/util/FloatMath;->cos(F)F

    move-result v4

    .line 1340
    invoke-static {v3}, Landroid/util/FloatMath;->sin(F)F

    move-result v5

    .line 1341
    mul-int/lit8 v6, v2, 0x3

    aput v4, v0, v6

    .line 1342
    mul-int/lit8 v6, v2, 0x3

    add-int/lit8 v6, v6, 0x1

    aput v5, v0, v6

    .line 1343
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v6, v7

    neg-float v7, v4

    aput v7, v0, v6

    .line 1344
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    neg-float v7, v5

    aput v7, v0, v6

    .line 1347
    if-lez v2, :cond_0

    if-ge v2, p1, :cond_0

    .line 1348
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    sub-int/2addr v6, v7

    neg-float v7, v4

    aput v7, v0, v6

    .line 1349
    mul-int/lit8 v6, p1, 0x2

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x1

    aput v5, v0, v6

    .line 1350
    mul-int/lit8 v6, p1, 0x4

    mul-int/lit8 v6, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    sub-int/2addr v6, v7

    aput v4, v0, v6

    .line 1351
    mul-int/lit8 v4, p1, 0x4

    mul-int/lit8 v4, v4, 0x3

    mul-int/lit8 v6, v2, 0x3

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    neg-float v5, v5

    aput v5, v0, v4

    .line 1353
    :cond_0
    add-float/2addr v3, v1

    .line 1338
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1355
    :cond_1
    return-object v0
.end method

.method private getDirectionText(Lcom/google/android/street/PanoramaLink;)Ljava/lang/CharSequence;
    .locals 2
    .parameter "link"

    .prologue
    .line 1283
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mCompassDirectionNames:[Ljava/lang/CharSequence;

    iget v1, p1, Lcom/google/android/street/PanoramaLink;->mDirection:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static getPolygonStripIndices(I)[B
    .locals 4
    .parameter "numVertices"

    .prologue
    .line 1363
    new-array v1, p0, [B

    .line 1364
    .local v1, indices:[B
    const/4 v0, 0x0

    .local v0, i:B
    :goto_0
    if-ge v0, p0, :cond_1

    .line 1367
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_0

    div-int/lit8 v2, v0, 0x2

    :goto_1
    int-to-byte v2, v2

    aput-byte v2, v1, v0

    .line 1364
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0

    .line 1367
    :cond_0
    const/4 v2, 0x1

    sub-int v2, p0, v2

    div-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    goto :goto_1

    .line 1371
    :cond_1
    return-object v1
.end method

.method private static getRange(I)[B
    .locals 3
    .parameter "n"

    .prologue
    .line 1379
    new-array v1, p0, [B

    .line 1380
    .local v1, range:[B
    const/4 v0, 0x0

    .local v0, i:B
    :goto_0
    if-ge v0, p0, :cond_0

    .line 1381
    aput-byte v0, v1, v0

    .line 1380
    add-int/lit8 v2, v0, 0x1

    int-to-byte v0, v2

    goto :goto_0

    .line 1383
    :cond_0
    return-object v1
.end method

.method private handleLabelsOutOfMemory(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1
    .parameter "gl"

    .prologue
    .line 688
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->clearLabelMakers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 692
    iget-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    if-eqz v0, :cond_0

    .line 693
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawRoadLabels:Z

    .line 696
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->createLabelMakers()V

    .line 702
    :goto_0
    return-void

    .line 700
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mDrawDisabled:Z

    goto :goto_0
.end method

.method private updateLinkInfo()V
    .locals 10

    .prologue
    const/high16 v5, 0x41a0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 469
    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 470
    iput-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    .line 471
    iput-object v3, p0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    .line 472
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v3, v3, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 474
    iget v3, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    iget v3, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_4

    .line 475
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v4, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    invoke-virtual {v3, v4, v5}, Lcom/google/android/street/PanoramaConfig;->getClosestLink(FF)Lcom/google/android/street/PanoramaLink;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 477
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget v4, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    invoke-virtual {v3, v4, v5}, Lcom/google/android/street/PanoramaConfig;->getClosestLink(FF)Lcom/google/android/street/PanoramaLink;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    .line 482
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-ne v3, v4, :cond_0

    .line 483
    new-instance v3, Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget v4, v4, Lcom/google/android/street/PanoramaLink;->mYawDeg:F

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v5, v5, Lcom/google/android/street/PanoramaLink;->mPanoId:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget v6, v6, Lcom/google/android/street/PanoramaLink;->mRoadARGB:I

    iget-object v7, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v7, v7, Lcom/google/android/street/PanoramaLink;->mLinkText:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/street/PanoramaLink;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v3, :cond_5

    move v3, v9

    :goto_0
    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v4, :cond_6

    move v4, v9

    :goto_1
    add-int v1, v3, v4

    .line 497
    .local v1, numExtraLinks:I
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v3, v3

    add-int/2addr v3, v1

    new-array v3, v3, [Lcom/google/android/street/PanoramaLink;

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    .line 498
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v3, v3, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v5, v5, Lcom/google/android/street/PanoramaConfig;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v5, v5

    invoke-static {v3, v8, v4, v8, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 500
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v3, :cond_1

    .line 501
    new-instance v3, Lcom/google/android/street/PanoramaLink;

    iget v4, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v8, v6}, Lcom/google/android/street/PanoramaLink;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    .line 502
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v4, v4

    add-int/lit8 v2, v1, -0x1

    .end local v1           #numExtraLinks:I
    .local v2, numExtraLinks:I
    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    aput-object v5, v3, v4

    move v1, v2

    .line 504
    .end local v2           #numExtraLinks:I
    .restart local v1       #numExtraLinks:I
    :cond_1
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-nez v3, :cond_2

    .line 505
    new-instance v3, Lcom/google/android/street/PanoramaLink;

    iget v4, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    const-string v5, ""

    const-string v6, ""

    invoke-direct {v3, v4, v5, v8, v6}, Lcom/google/android/street/PanoramaLink;-><init>(FLjava/lang/String;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    .line 506
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v4, v4

    sub-int/2addr v4, v1

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    aput-object v5, v3, v4

    .line 511
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v3, v3

    sub-int/2addr v3, v9

    if-ge v0, v3, :cond_3

    .line 512
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-ne v3, v4, :cond_7

    .line 513
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v5, v5

    sub-int/2addr v5, v9

    aget-object v4, v4, v5

    aput-object v4, v3, v0

    .line 514
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    array-length v4, v4

    sub-int/2addr v4, v9

    iget-object v5, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    aput-object v5, v3, v4

    .line 518
    :cond_3
    iget-object v3, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    iget-object v4, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    invoke-static {v3, v4}, Lcom/google/android/street/Overlay;->createDirectionsArrow(Lcom/google/android/street/PanoramaLink;Lcom/google/android/street/PanoramaLink;)Lcom/google/android/street/Overlay$Polygon;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/street/Overlay;->mDirectionsArrow:Lcom/google/android/street/Overlay$Polygon;

    .line 521
    .end local v0           #i:I
    .end local v1           #numExtraLinks:I
    :cond_4
    return-void

    :cond_5
    move v3, v8

    .line 495
    goto/16 :goto_0

    :cond_6
    move v4, v8

    goto/16 :goto_1

    .line 511
    .restart local v0       #i:I
    .restart local v1       #numExtraLinks:I
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method


# virtual methods
.method public doSetMotionUse(IJ)V
    .locals 1
    .parameter "device"
    .parameter "time"

    .prologue
    const/4 v0, 0x1

    .line 431
    if-nez p1, :cond_1

    .line 432
    iput-wide p2, p0, Lcom/google/android/street/Overlay;->mLastTrackballTime:J

    .line 433
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mTrackballUsed:Z

    .line 437
    :cond_0
    :goto_0
    return-void

    .line 434
    :cond_1
    if-ne p1, v0, :cond_0

    .line 435
    iput-boolean v0, p0, Lcom/google/android/street/Overlay;->mTouchUsed:Z

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Overlay$Pancake;J)V
    .locals 9
    .parameter "gl"
    .parameter "userOrientation"
    .parameter "pancake"
    .parameter "currentTime"

    .prologue
    .line 621
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mDrawDisabled:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    if-nez v6, :cond_1

    .line 683
    :cond_0
    :goto_0
    return-void

    .line 626
    :cond_1
    const/4 v6, 0x1

    new-array v3, v6, [I

    .line 627
    .local v3, maxTextureSize:[I
    const/16 v6, 0xd33

    const/4 v7, 0x0

    invoke-interface {p1, v6, v3, v7}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 630
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mIncomingLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mOutgoingLink:Lcom/google/android/street/PanoramaLink;

    if-eqz v6, :cond_6

    const/4 v6, 0x1

    move v2, v6

    .line 633
    .local v2, isDirectionsMode:Z
    :goto_1
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-object v6, v6, Lcom/google/android/street/PanoramaConfig;->mDepthMap:Lcom/google/android/street/DepthMap;

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    move v1, v6

    .line 639
    .local v1, hasDepthMap:Z
    :goto_2
    if-nez v2, :cond_8

    const/4 v6, 0x0

    aget v6, v3, v6

    const/16 v7, 0x800

    if-lt v6, v7, :cond_8

    if-eqz v1, :cond_8

    iget-object v6, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    iget-boolean v6, v6, Lcom/google/android/street/PanoramaConfig;->mDisabled:Z

    if-nez v6, :cond_8

    const/4 v6, 0x1

    move v5, v6

    .line 643
    .local v5, useFancyLabels:Z
    :goto_3
    invoke-direct {p0, p2, p4, p5}, Lcom/google/android/street/Overlay;->computeAnimation(Lcom/google/android/street/UserOrientation;J)V

    .line 646
    :try_start_0
    invoke-direct {p0, p1, v5}, Lcom/google/android/street/Overlay;->addLabels(Ljavax/microedition/khronos/opengles/GL10;Z)V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 652
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    iget v7, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    iget v8, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    invoke-virtual {v6, v7, v8}, Lcom/google/android/street/Overlay$HitTester;->reset(II)V

    .line 656
    if-nez v5, :cond_2

    .line 657
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/Overlay;->drawLinks(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V

    .line 661
    :cond_2
    if-eqz v5, :cond_3

    .line 662
    invoke-direct {p0, p1, p2}, Lcom/google/android/street/Overlay;->drawFancyStreetLabels(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;)V

    .line 666
    :cond_3
    if-nez p3, :cond_9

    if-eqz v1, :cond_9

    const/4 v6, 0x1

    :goto_4
    invoke-direct {p0, p1, v6, v5}, Lcom/google/android/street/Overlay;->drawLabels(Ljavax/microedition/khronos/opengles/GL10;ZZ)V

    .line 669
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mEnablePanoPoints:Z

    if-eqz v6, :cond_4

    if-eqz v1, :cond_4

    .line 670
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->drawPanoPoints(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 674
    :cond_4
    iget-boolean v6, p0, Lcom/google/android/street/Overlay;->mEnablePancake:Z

    if-eqz v6, :cond_5

    if-eqz v1, :cond_5

    .line 675
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/street/Overlay;->drawPancake(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/android/street/UserOrientation;Lcom/google/android/street/Overlay$Pancake;)V

    .line 678
    :cond_5
    iget-object v6, p0, Lcom/google/android/street/Overlay;->mHitTesterLock:Ljava/lang/Object;

    monitor-enter v6

    .line 679
    :try_start_1
    iget-object v4, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 680
    .local v4, temp:Lcom/google/android/street/Overlay$HitTester;
    iget-object v7, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    iput-object v7, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 681
    iput-object v4, p0, Lcom/google/android/street/Overlay;->mNextFrameHitTester:Lcom/google/android/street/Overlay$HitTester;

    .line 682
    monitor-exit v6

    goto :goto_0

    .end local v4           #temp:Lcom/google/android/street/Overlay$HitTester;
    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7

    .line 630
    .end local v1           #hasDepthMap:Z
    .end local v2           #isDirectionsMode:Z
    .end local v5           #useFancyLabels:Z
    :cond_6
    const/4 v6, 0x0

    move v2, v6

    goto :goto_1

    .line 633
    .restart local v2       #isDirectionsMode:Z
    :cond_7
    const/4 v6, 0x0

    move v1, v6

    goto :goto_2

    .line 639
    .restart local v1       #hasDepthMap:Z
    :cond_8
    const/4 v6, 0x0

    move v5, v6

    goto :goto_3

    .line 647
    .restart local v5       #useFancyLabels:Z
    :catch_0
    move-exception v0

    .line 648
    .local v0, e:Ljava/lang/OutOfMemoryError;
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->handleLabelsOutOfMemory(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0

    .line 666
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :cond_9
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public getNextDrawTime()J
    .locals 2

    .prologue
    .line 1116
    iget-wide v0, p0, Lcom/google/android/street/Overlay;->mNextDrawTime:J

    return-wide v0
.end method

.method public getPanoramaLink(I)Lcom/google/android/street/PanoramaLink;
    .locals 2
    .parameter "index"

    .prologue
    .line 460
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLinks:[Lcom/google/android/street/PanoramaLink;

    aget-object v1, v1, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 462
    :goto_0
    return-object v1

    .line 461
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 462
    .local v0, e:Ljava/lang/ArrayIndexOutOfBoundsException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hit(II)I
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mHitTesterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1129
    :try_start_0
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mPublicHitTester:Lcom/google/android/street/Overlay$HitTester;

    invoke-virtual {v1, p1, p2}, Lcom/google/android/street/Overlay$HitTester;->hit(II)I

    move-result v1

    monitor-exit v0

    return v1

    .line 1130
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initialize(Lcom/google/android/street/PanoramaConfig;II)V
    .locals 5
    .parameter "config"
    .parameter "viewWidth"
    .parameter "viewHeight"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 394
    iput-object p1, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    .line 395
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->updateLinkInfo()V

    .line 396
    iput p2, p0, Lcom/google/android/street/Overlay;->mViewWidth:I

    .line 397
    iput p3, p0, Lcom/google/android/street/Overlay;->mViewHeight:I

    .line 398
    int-to-float v1, p2

    int-to-float v2, p3

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/android/street/Overlay;->mAspectRatio:F

    .line 399
    iput-boolean v3, p0, Lcom/google/android/street/Overlay;->mLabelsComputed:Z

    .line 400
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mLabelAnimation:Lcom/google/android/street/Overlay$FadeAnimation;

    invoke-virtual {v1, v4}, Lcom/google/android/street/Overlay$FadeAnimation;->reset(Z)V

    .line 401
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    .line 402
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 403
    .local v0, resources:Landroid/content/res/Resources;
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    .line 404
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    const/high16 v2, 0x7f02

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 406
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    const v2, 0x7f020001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 408
    iget-object v1, p0, Lcom/google/android/street/Overlay;->mAddressBubble:[Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x2

    const v3, 0x7f020002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    aput-object v3, v1, v2

    .line 410
    const v1, 0x7f020008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/street/Overlay;->mPegmanOnPancake:Landroid/graphics/drawable/Drawable;

    .line 411
    return-void
.end method

.method public setDirectionsArrowParams(FF)V
    .locals 1
    .parameter "incomingYaw"
    .parameter "outgoingYaw"

    .prologue
    .line 446
    iput p1, p0, Lcom/google/android/street/Overlay;->mIncomingYaw:F

    .line 447
    iput p2, p0, Lcom/google/android/street/Overlay;->mOutgoingYaw:F

    .line 448
    iget-object v0, p0, Lcom/google/android/street/Overlay;->mConfig:Lcom/google/android/street/PanoramaConfig;

    if-eqz v0, :cond_0

    .line 449
    invoke-direct {p0}, Lcom/google/android/street/Overlay;->updateLinkInfo()V

    .line 451
    :cond_0
    return-void
.end method

.method public setHighlight(I)V
    .locals 0
    .parameter "highlight"

    .prologue
    .line 1135
    iput p1, p0, Lcom/google/android/street/Overlay;->mHighlight:I

    .line 1136
    return-void
.end method

.method public shutdown(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 0
    .parameter "gl"

    .prologue
    .line 414
    invoke-direct {p0, p1}, Lcom/google/android/street/Overlay;->clearLabelMakers(Ljavax/microedition/khronos/opengles/GL10;)V

    .line 415
    return-void
.end method
