.class public Lcom/google/android/music/carousel/MusicCarouselViewHelper;
.super Lcom/google/android/opengl/carousel/CarouselViewHelper;
.source "MusicCarouselViewHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;,
        Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;,
        Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_HEIGHT:I = 0x3a

.field private static final ALBUM_ARTIST_INDEX:I = 0x3

.field private static final ALBUM_ID_INDEX:I = 0x1

.field private static final ALBUM_NAME_INDEX:I = 0x2

.field private static final CARD_SLOTS:I = 0x38

.field private static final CARD_TEXTURE_HEIGHT:I = 0x100

.field private static final CARD_TEXTURE_POOL_COUNT:I = 0xa

.field private static final CARD_TEXTURE_WIDTH:I = 0x100

.field private static final CURSOR_CARD_BASE:I = 0x1

.field private static final DBG:Z = false

.field private static final DBG_SHUFFLE:Z = true

.field private static final DEBUG_BITMAP_RECYCLE:Z = false

.field private static final DELAY_TRANSITION_MS:I = 0x3e8

.field private static final DELAY_TRANSITION_MSG_TYPE:I = 0x1

.field private static final DETAIL_TEXTURE_HEIGHT:I = 0x2d

.field private static final DETAIL_TEXTURE_LINE_OFFSET_X:F = 6.0f

.field private static final DETAIL_TEXTURE_LINE_OFFSET_Y:F = 75.0f

.field private static final DETAIL_TEXTURE_POOL_COUNT:I = 0xa

.field private static final DETAIL_TEXTURE_WIDTH:I = 0xc8

.field private static final DISTANCE_BETWEEN_ACTION_BAR_AND_TOP_OF_DETAIL_TEXT:F = 22.0f

.field private static final LIST_ID_INDEX:I = 0x4

.field private static final LIST_NAME_INDEX:I = 0x5

.field private static final MAX_CARD_COUNT:I = 0x33

.field private static final MAX_CURSOR_CARD_COUNT:I = 0x32

.field private static final MEDIA_ID_INDEX:I = 0x0

.field private static final MINIMUM_HEIGHT_FOR_LARGE_TABLET:I = 0x2d0

.field private static final SHUFFLE_ALL_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicCarouselViewHelper"

.field private static final TEXTURE_BORDER:I = 0x4

.field private static final TEXTURE_OFFSET_X:F = 5.0f

.field private static final TEXTURE_OFFSET_Y:F = 0.0f

.field private static final VISIBLE_SLOTS:I = 0x7

.field private static final mCursorCols:[Ljava/lang/String;

.field private static final mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

.field private static sCardTextureHeight:I

.field private static sCardTextureWidth:I


# instance fields
.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mAt:[F

.field private mBackgroundAlbumId:J

.field private mBorder:Landroid/graphics/Bitmap;

.field private mCardBitmapPool:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCarouselRotationAngle:F

.field private mContext:Landroid/app/Activity;

.field private mCount:I

.field private mCursor:Landroid/database/Cursor;

.field private mDelayTransitionHandler:Lcom/google/android/music/Worker;

.field private mDetailBitmapPool:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mDetailLineBitmap:Landroid/graphics/Bitmap;

.field private mEye:[F

.field private mFirstCardPosition:I

.field private mGlossyOverlay:Landroid/graphics/Bitmap;

.field private mGlowingBorder:Landroid/graphics/Bitmap;

.field private mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mObserver:Landroid/database/ContentObserver;

.field private mSyncHandler:Landroid/os/Handler;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field private mUnknownPlaylistName:Ljava/lang/String;

.field private mUp:[F

.field private mView:Lcom/google/android/opengl/carousel/CarouselView;

.field private mVisibleCardInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v0, 0x100

    .line 61
    sput v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureWidth:I

    .line 62
    sput v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureHeight:I

    .line 88
    new-instance v0, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    const/high16 v1, 0x40a0

    const/4 v2, 0x0

    const/high16 v3, 0x40c0

    const/high16 v4, 0x4296

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;-><init>(FFFF)V

    sput-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    .line 296
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RecentAlbumId"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "album_name"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "album_artist"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "RecentListId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "list_name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursorCols:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/opengl/carousel/CarouselView;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 10
    .parameter "context"
    .parameter "view"
    .parameter "appController"
    .parameter "appState"

    .prologue
    const/4 v9, 0x7

    const/4 v8, 0x4

    const/4 v1, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 314
    invoke-direct {p0, p1, p2}, Lcom/google/android/opengl/carousel/CarouselViewHelper;-><init>(Landroid/content/Context;Lcom/google/android/opengl/carousel/CarouselView;)V

    .line 104
    new-array v0, v3, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mEye:[F

    .line 105
    new-array v0, v3, [F

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAt:[F

    .line 106
    new-array v0, v3, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUp:[F

    .line 109
    new-array v0, v2, [I

    const v3, 0x40ffffff

    aput v3, v0, v1

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    move v3, v2

    move v4, v2

    invoke-static/range {v0 .. v5}, Landroid/graphics/Bitmap;->createBitmap([IIIIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    .line 124
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;

    const-string v1, "BackgroundHandler"

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$1;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    .line 244
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v9}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    .line 246
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    .line 248
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    .line 250
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createLabelConfig()Lcom/google/android/music/utils/LabelMaker$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    .line 315
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    .line 316
    iput-object p2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    .line 318
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setFocusableInTouchMode(Z)V

    .line 319
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    const v1, 0x7f0c0068

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 320
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    const v1, 0x7f0c0069

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 321
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    const v1, 0x7f0c006a

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownPlaylistName:Ljava/lang/String;

    .line 322
    iput-object p3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 323
    iput-object p4, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 325
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    .line 327
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 329
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->initScreenSizeSpecificSetting()V

    .line 330
    invoke-virtual {p2, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setPreserveEGLContextOnPause(Z)V

    .line 332
    invoke-virtual {p2, p0}, Lcom/google/android/opengl/carousel/CarouselView;->setCallback(Lcom/google/android/opengl/carousel/CarouselCallback;)V

    .line 334
    invoke-virtual {p2, v8}, Lcom/google/android/opengl/carousel/CarouselView;->setPrefetchCardCount(I)V

    .line 335
    const/16 v0, 0x38

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setSlotCount(I)V

    .line 336
    invoke-virtual {p2, v9}, Lcom/google/android/opengl/carousel/CarouselView;->setVisibleSlots(I)V

    .line 337
    const/high16 v0, 0x4040

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRezInCardCount(F)V

    .line 338
    const-wide/16 v0, 0xfa

    invoke-virtual {p2, v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setFadeInDuration(J)V

    .line 339
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mEye:[F

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAt:[F

    iget-object v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUp:[F

    invoke-virtual {p2, v0, v1, v3}, Lcom/google/android/opengl/carousel/CarouselView;->setLookAt([F[F[F)V

    .line 340
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 343
    .local v7, res:Landroid/content/res/Resources;
    const v0, 0x7f020136

    :try_start_0
    invoke-static {v7, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    .line 344
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setDefaultBitmap(Landroid/graphics/Bitmap;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setLoadingBitmap(Landroid/graphics/Bitmap;)V

    .line 346
    const v0, 0x7f020008

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureWidth:I

    sget v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureHeight:I

    invoke-static {v0, v1, v3}, Lcom/google/android/opengl/carousel/GL2Helper;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlowingBorder:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 352
    :goto_0
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlowingBorder:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setGlowingBitmap(Landroid/graphics/Bitmap;)V

    .line 353
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailLineBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setDetailLineBitmap(Landroid/graphics/Bitmap;)V

    .line 356
    invoke-virtual {p2, v8}, Lcom/google/android/opengl/carousel/CarouselView;->setDragModel(I)V

    .line 358
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createBitmapPool()V

    .line 359
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$2;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {p2, v0}, Lcom/google/android/opengl/carousel/CarouselView;->setRecycler(Lcom/google/android/opengl/carousel/CarouselView$BitmapRecycler;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_0

    .line 393
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->layoutAlignment:I

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundTransitionDuration(J)V

    .line 397
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->requestReadCursor()V

    .line 398
    return-void

    .line 349
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 350
    .local v6, e:Ljava/lang/OutOfMemoryError;
    sget v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureWidth:I

    sget v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureHeight:I

    invoke-static {v6, v0, v1}, Lcom/google/android/music/utils/AlbumArtUtils;->reportAndRethrow(Ljava/lang/OutOfMemoryError;II)V

    goto :goto_0

    .line 104
    nop

    :array_0
    .array-data 0x4
        0x67t 0x44t 0xa6t 0x41t
        0xbt 0x98t 0x10t 0x40t
        0x86t 0xdat 0x87t 0x41t
    .end array-data

    .line 105
    :array_1
    .array-data 0x4
        0xc3t 0x64t 0x69t 0x41t
        0xf6t 0xeet 0x29t 0xc0t
        0xe9t 0x2bt 0xbct 0xbft
    .end array-data

    .line 106
    :array_2
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x80t 0x3ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$002(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mFirstCardPosition:I

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)F
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForAlbum(J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForPlaylist(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/util/SparseArray;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getGlossyOverlay()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardIdForCardInfo(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Ljava/lang/String;[I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeShuffle(Ljava/lang/String;[I)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/activitymanagement/AppState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/opengl/carousel/CarouselView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->clearCursor()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardBitmapPool:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailBitmapPool:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureWidth:I

    return v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 48
    sget v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureHeight:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$702(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 48
    iput-object p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$800(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCursor()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->openTrackBrowserForShuffleAll()V

    return-void
.end method

.method private clearCursor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1187
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1188
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1189
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1190
    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    .line 1192
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1194
    :cond_1
    iput-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    .line 1195
    return-void
.end method

.method private createBitmapPool()V
    .locals 3

    .prologue
    const/16 v2, 0xa

    .line 444
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$3;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-direct {v0, v2, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;-><init>(ILcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCardBitmapPool:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    .line 459
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$4;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-direct {v0, v2, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;-><init>(ILcom/google/android/music/carousel/MusicCarouselViewHelper$Pool$Allocator;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailBitmapPool:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    .line 474
    return-void
.end method

.method private createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .locals 8
    .parameter "id"

    .prologue
    .line 802
    const/4 v1, 0x0

    .line 805
    .local v1, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    const/4 v4, 0x0

    .line 806
    .local v4, record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    if-nez p1, :cond_1

    .line 807
    :try_start_0
    invoke-static {}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createShuffleAllCardRecord()Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v4

    .line 814
    :cond_0
    :goto_0
    if-eqz v4, :cond_2

    .line 815
    new-instance v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    invoke-direct {v2, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 816
    .end local v1           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .local v2, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :try_start_1
    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 817
    :try_start_2
    iget-object v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v6, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 818
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v2

    .line 825
    .end local v2           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .restart local v1       #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :goto_1
    return-object v1

    .line 809
    :cond_1
    :try_start_3
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursorForCard(I)Landroid/database/Cursor;

    move-result-object v0

    .line 810
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    .line 811
    invoke-direct {p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v4

    goto :goto_0

    .line 818
    .end local v0           #c:Landroid/database/Cursor;
    .end local v1           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .restart local v2       #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :catchall_0
    move-exception v6

    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v6
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 822
    :catch_0
    move-exception v5

    move-object v3, v5

    move-object v1, v2

    .line 823
    .end local v2           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .restart local v1       #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v5, "MusicCarouselViewHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Database exception trying to get data for card "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 820
    .end local v3           #e:Ljava/lang/Exception;
    :cond_2
    :try_start_6
    const-string v5, "MusicCarouselViewHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Could not get data for card "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_1

    .line 822
    :catch_1
    move-exception v5

    move-object v3, v5

    goto :goto_2
.end method

.method private createLabelConfig()Lcom/google/android/music/utils/LabelMaker$Config;
    .locals 5

    .prologue
    const/16 v4, 0xc8

    const/high16 v3, 0x4160

    const/4 v2, 0x1

    .line 536
    new-instance v0, Lcom/google/android/music/utils/LabelMaker$Config;

    invoke-direct {v0}, Lcom/google/android/music/utils/LabelMaker$Config;-><init>()V

    .line 537
    .local v0, config:Lcom/google/android/music/utils/LabelMaker$Config;
    const/4 v1, 0x4

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->sizeMode:I

    .line 538
    const/4 v1, 0x2

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->overflowMode:I

    .line 539
    iput v4, v0, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 540
    const/16 v1, 0x2d

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 541
    iput v4, v0, Lcom/google/android/music/utils/LabelMaker$Config;->clipWidth:I

    .line 542
    const/4 v1, 0x3

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->yalignment:I

    .line 543
    sget v1, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 544
    sget v1, Lcom/google/android/music/carousel/CarouselActivity;->PIXEL_DENSITY:F

    mul-float/2addr v1, v3

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 545
    const/high16 v1, 0x3f40

    iput v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryOpacity:F

    .line 546
    iput-boolean v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bold:Z

    .line 547
    iput v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->xalignment:I

    .line 548
    iput-boolean v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->multiLine:Z

    .line 549
    iput v2, v0, Lcom/google/android/music/utils/LabelMaker$Config;->maxLines:I

    .line 550
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 552
    return-object v0
.end method

.method private describeShuffle(Ljava/lang/String;[I)V
    .locals 5
    .parameter "label"
    .parameter "comeFrom"

    .prologue
    .line 1037
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1038
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1039
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_1

    .line 1040
    if-lez v0, :cond_0

    .line 1041
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    :cond_0
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1039
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1045
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1046
    const-string v2, "MusicCarouselViewHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    return-void
.end method

.method private describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V
    .locals 5
    .parameter "label"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1020
    .local p2, visibleCards:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1021
    .local v1, sb:Ljava/lang/StringBuilder;
    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1022
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1023
    if-lez v0, :cond_0

    .line 1024
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    :cond_0
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1027
    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1022
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1030
    :cond_1
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1031
    const-string v2, "MusicCarouselViewHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return-void
.end method

.method private effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "albumName"

    .prologue
    .line 1118
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1119
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownAlbumName:Ljava/lang/String;

    .line 1121
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "artistName"

    .prologue
    .line 1103
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownArtistName:Ljava/lang/String;

    .line 1106
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 1110
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mUnknownPlaylistName:Ljava/lang/String;

    .line 1113
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private static find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    .locals 4
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ">;",
            "Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;",
            ")I"
        }
    .end annotation

    .prologue
    .line 1008
    .local p0, array:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1009
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 1010
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1011
    .local v2, v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    invoke-virtual {v2, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v0

    .line 1015
    .end local v2           #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :goto_1
    return v3

    .line 1009
    .restart local v2       #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1015
    .end local v2           #v:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private getBackground()V
    .locals 8

    .prologue
    .line 1051
    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mFirstCardPosition:I

    .line 1055
    .local v1, card:I
    if-ltz v1, :cond_0

    iget v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    if-lt v1, v6, :cond_1

    .line 1092
    :cond_0
    :goto_0
    return-void

    .line 1061
    :cond_1
    invoke-direct {p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v2

    .line 1062
    .local v2, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-nez v2, :cond_2

    .line 1063
    invoke-direct {p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v2

    .line 1065
    :cond_2
    const-wide/16 v3, -0x1

    .line 1066
    .local v3, effectiveAlbumId:J
    if-eqz v2, :cond_3

    .line 1067
    iget-object v5, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 1069
    .local v5, record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    iget v6, v5, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 1070
    iget-wide v3, v5, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 1073
    .end local v5           #record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :cond_3
    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_0

    iget-wide v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    cmp-long v6, v6, v3

    if-eqz v6, :cond_0

    .line 1077
    iput-wide v3, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    .line 1079
    iget-object v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    new-instance v7, Lcom/google/android/music/carousel/MusicCarouselViewHelper$15;

    invoke-direct {v7, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$15;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1085
    invoke-direct {p0, v3, v4}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackgroundBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1087
    .local v0, bitmap:Landroid/graphics/Bitmap;
    iget-object v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v7, Lcom/google/android/music/carousel/MusicCarouselViewHelper$16;

    invoke-direct {v7, p0, v0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$16;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/graphics/Bitmap;)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getBackgroundBitmap(J)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "albumId"

    .prologue
    .line 1095
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 1096
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0, p1, p2}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1098
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/music/utils/BackgroundUtils;->getDefaultBackground(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method

.method private getCardIdForCardInfo(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I
    .locals 3
    .parameter "cardInfo"

    .prologue
    .line 1131
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1132
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-static {v2, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v0

    .line 1133
    .local v0, index:I
    if-ltz v0, :cond_0

    .line 1134
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    monitor-exit v1

    move v1, v2

    .line 1136
    :goto_0
    return v1

    :cond_0
    const/4 v2, -0x1

    monitor-exit v1

    move v1, v2

    goto :goto_0

    .line 1138
    .end local v0           #index:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .locals 2
    .parameter "id"

    .prologue
    .line 1125
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v0

    .line 1126
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    monitor-exit v0

    return-object p0

    .line 1127
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .locals 3
    .parameter "id"

    .prologue
    .line 1143
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    monitor-enter v1

    .line 1144
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 1145
    .local v0, info:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v0, :cond_0

    .line 1146
    iget-object v2, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    monitor-exit v1

    move-object v1, v2

    .line 1148
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x0

    monitor-exit v1

    move-object v1, v2

    goto :goto_0

    .line 1149
    .end local v0           #info:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private getCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1168
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1169
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Recent;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursorCols:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1172
    .local v6, c:Landroid/database/Cursor;
    new-instance v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v0, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    .line 1173
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$17;

    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$17;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    .line 1180
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1183
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method private getCursorForCard(I)Landroid/database/Cursor;
    .locals 4
    .parameter "card"

    .prologue
    const/4 v1, 0x1

    .line 1157
    if-ge p1, v1, :cond_0

    .line 1158
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "card out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1160
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1161
    .local v0, c:Landroid/database/Cursor;
    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1162
    const/4 v1, 0x0

    .line 1164
    :goto_0
    return-object v1

    :cond_1
    move-object v1, v0

    goto :goto_0
.end method

.method private getGlossyOverlay()Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 488
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 489
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 490
    .local v0, res:Landroid/content/res/Resources;
    const v1, 0x7f020130

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    .line 492
    .end local v0           #res:Landroid/content/res/Resources;
    :cond_1
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mGlossyOverlay:Landroid/graphics/Bitmap;

    return-object v1
.end method

.method private initScreenSizeSpecificSetting()V
    .locals 5

    .prologue
    const/16 v2, 0x80

    const/4 v4, 0x3

    const/4 v3, 0x2

    .line 404
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isXLargeScreen()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->isLargeScreen()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 405
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v1}, Lcom/google/android/opengl/carousel/CarouselView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v3}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 406
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->isLargeTablet()Z

    move-result v1

    if-nez v1, :cond_1

    .line 407
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselView;->getCarouselConfig(Z)Lcom/google/android/opengl/carousel/CarouselConfig;

    move-result-object v0

    .line 408
    .local v0, config:Lcom/google/android/opengl/carousel/CarouselConfig;
    iput v3, v0, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleDetailCount:I

    .line 426
    .end local v0           #config:Lcom/google/android/opengl/carousel/CarouselConfig;
    :cond_1
    :goto_0
    return-void

    .line 411
    :cond_2
    sput v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureHeight:I

    .line 412
    sput v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->sCardTextureWidth:I

    .line 414
    sget-object v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    const/high16 v2, 0x4292

    iput v2, v1, Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;->lineOffsetY:F

    .line 416
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    const/high16 v2, 0x4180

    iput v2, v1, Lcom/google/android/music/utils/LabelMaker$Config;->fontSize:F

    .line 417
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    const/high16 v2, 0x4160

    iput v2, v1, Lcom/google/android/music/utils/LabelMaker$Config;->secondaryFontSize:F

    .line 418
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const v2, 0x3f266666

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setAccelerationRatio(F)V

    .line 419
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const v2, 0x3fa28f5c

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setCardGlowScale(F)V

    .line 421
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/opengl/carousel/CarouselView;->getCarouselConfig(Z)Lcom/google/android/opengl/carousel/CarouselConfig;

    move-result-object v0

    .line 422
    .restart local v0       #config:Lcom/google/android/opengl/carousel/CarouselConfig;
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselConfig;->mEye:[F

    .line 423
    new-array v1, v4, [F

    fill-array-data v1, :array_1

    iput-object v1, v0, Lcom/google/android/opengl/carousel/CarouselConfig;->mAt:[F

    .line 424
    iput v3, v0, Lcom/google/android/opengl/carousel/CarouselConfig;->mVisibleDetailCount:I

    goto :goto_0

    .line 422
    nop

    :array_0
    .array-data 0x4
        0xcet 0xaat 0xa4t 0x41t
        0x3et 0xcbt 0x23t 0x40t
        0x86t 0xdat 0x8bt 0x41t
    .end array-data

    .line 423
    :array_1
    .array-data 0x4
        0xc3t 0x64t 0x69t 0x41t
        0xf6t 0xeet 0x9t 0xc0t
        0xe9t 0x2bt 0xbct 0xbft
    .end array-data
.end method

.method private isLargeTablet()Z
    .locals 3

    .prologue
    .line 438
    iget-object v2, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 439
    .local v0, d:Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    .line 440
    .local v1, height:I
    const/16 v2, 0x2d0

    if-lt v1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private openTrackBrowserForAlbum(J)V
    .locals 7
    .parameter "album_id"

    .prologue
    const-wide/16 v3, -0x1

    .line 563
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    move-wide v1, p1

    move-wide v5, v3

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListingForAlbum(JJJ)V

    .line 564
    return-void
.end method

.method private openTrackBrowserForPlaylist(JLjava/lang/String;)V
    .locals 1
    .parameter "id"
    .parameter "name"

    .prologue
    .line 567
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startTrackListingForPlaylist(JLjava/lang/String;)V

    .line 568
    return-void
.end method

.method private openTrackBrowserForShuffleAll()V
    .locals 2

    .prologue
    .line 558
    new-instance v0, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 559
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Landroid/app/Activity;)V

    .line 560
    return-void
.end method

.method private postOpenTrackBrowserForAlbum(J)V
    .locals 2
    .parameter "albumId"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$8;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 612
    return-void
.end method

.method private postOpenTrackBrowserForPlaylist(JLjava/lang/String;)V
    .locals 2
    .parameter "id"
    .parameter "name"

    .prologue
    .line 615
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$9;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;JLjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 619
    return-void
.end method

.method private postOpenTrackBrowserForShuffleAll()V
    .locals 2

    .prologue
    .line 601
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$7;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 605
    return-void
.end method

.method private readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .locals 10
    .parameter "c"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x1

    .line 829
    invoke-interface {p1, v8}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 830
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 831
    .local v1, albumId:J
    const/4 v7, 0x2

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 832
    .local v0, album:Ljava/lang/String;
    const/4 v7, 0x3

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 833
    .local v3, artist:Ljava/lang/String;
    invoke-static {v1, v2, v0, v3}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createAlbumCardRecord(JLjava/lang/String;Ljava/lang/String;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v7

    .line 839
    .end local v0           #album:Ljava/lang/String;
    .end local v1           #albumId:J
    .end local v3           #artist:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 834
    :cond_0
    invoke-interface {p1, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v7

    if-nez v7, :cond_1

    .line 835
    invoke-interface {p1, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 836
    .local v4, listId:J
    const/4 v7, 0x5

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 837
    .local v6, listName:Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->createListCardRecord(JLjava/lang/String;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v7

    goto :goto_0

    .line 839
    .end local v4           #listId:J
    .end local v6           #listName:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private readCursor()V
    .locals 28

    .prologue
    .line 879
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 880
    .local v3, c:Landroid/database/Cursor;
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v10

    .line 886
    .local v10, cursorCount:I
    const/16 v24, 0x33

    if-lez v10, :cond_3

    add-int/lit8 v25, v10, 0x1

    :goto_0
    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 889
    .local v8, count:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    move/from16 v24, v0

    move v0, v8

    move/from16 v1, v24

    if-eq v0, v1, :cond_4

    const/16 v24, 0x1

    move/from16 v9, v24

    .line 890
    .local v9, countChanged:Z
    :goto_1
    if-eqz v8, :cond_5

    const/16 v24, 0x1

    move/from16 v14, v24

    .line 891
    .local v14, musicFound:Z
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    move/from16 v24, v0

    if-ltz v24, :cond_0

    if-eqz v8, :cond_6

    const/16 v24, 0x1

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    move/from16 v25, v0

    if-eqz v25, :cond_7

    const/16 v25, 0x1

    :goto_4
    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_8

    :cond_0
    const/16 v24, 0x1

    move/from16 v11, v24

    .line 892
    .local v11, hasMusicFoundChanged:Z
    :goto_5
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCount:I

    .line 894
    if-eqz v11, :cond_1

    .line 895
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    move v1, v14

    invoke-virtual {v0, v1}, Lcom/google/android/music/activitymanagement/AppState;->setMusicFound(Z)V

    .line 901
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    monitor-enter v24

    .line 904
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->size()I

    move-result v23

    .line 905
    .local v23, visibleCardInfoSize:I
    new-instance v18, Landroid/util/SparseArray;

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 906
    .local v18, newVisibleCardInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_6
    move v0, v12

    move/from16 v1, v23

    if-ge v0, v1, :cond_c

    .line 907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v13

    .line 908
    .local v13, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 909
    .local v22, value:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-nez v13, :cond_9

    .line 910
    if-lez v10, :cond_2

    .line 911
    move-object/from16 v0, v18

    move v1, v13

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 906
    :cond_2
    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 886
    .end local v8           #count:I
    .end local v9           #countChanged:Z
    .end local v11           #hasMusicFoundChanged:Z
    .end local v12           #i:I
    .end local v13           #id:I
    .end local v14           #musicFound:Z
    .end local v18           #newVisibleCardInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    .end local v22           #value:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v23           #visibleCardInfoSize:I
    :cond_3
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 889
    .restart local v8       #count:I
    :cond_4
    const/16 v24, 0x0

    move/from16 v9, v24

    goto/16 :goto_1

    .line 890
    .restart local v9       #countChanged:Z
    :cond_5
    const/16 v24, 0x0

    move/from16 v14, v24

    goto/16 :goto_2

    .line 891
    .restart local v14       #musicFound:Z
    :cond_6
    const/16 v24, 0x0

    goto/16 :goto_3

    :cond_7
    const/16 v25, 0x0

    goto :goto_4

    :cond_8
    const/16 v24, 0x0

    move/from16 v11, v24

    goto :goto_5

    .line 914
    .restart local v11       #hasMusicFoundChanged:Z
    .restart local v12       #i:I
    .restart local v13       #id:I
    .restart local v18       #newVisibleCardInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    .restart local v22       #value:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .restart local v23       #visibleCardInfoSize:I
    :cond_9
    const/4 v5, 0x0

    .line 915
    .local v5, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    const/16 v25, 0x1

    sub-int v25, v13, v25

    move-object v0, v3

    move/from16 v1, v25

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v25

    if-eqz v25, :cond_a

    .line 916
    move-object/from16 v0, p0

    move-object v1, v3

    invoke-direct {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->readCardRecord(Landroid/database/Cursor;)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v5

    .line 918
    :cond_a
    if-eqz v5, :cond_2

    .line 919
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-object/from16 v25, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-nez v25, :cond_b

    .line 920
    new-instance v22, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .end local v22           #value:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    move-object/from16 v0, v22

    move-object v1, v5

    invoke-direct {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;)V

    .line 922
    .restart local v22       #value:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    :cond_b
    move-object/from16 v0, v18

    move v1, v13

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_7

    .line 1003
    .end local v5           #cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .end local v12           #i:I
    .end local v13           #id:I
    .end local v18           #newVisibleCardInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    .end local v22           #value:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v23           #visibleCardInfoSize:I
    :catchall_0
    move-exception v25

    monitor-exit v24
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v25

    .line 931
    .restart local v12       #i:I
    .restart local v18       #newVisibleCardInfo:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;>;"
    .restart local v23       #visibleCardInfoSize:I
    :cond_c
    :try_start_1
    new-array v7, v8, [I

    .line 932
    .local v7, comeFrom:[I
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v8, :cond_d

    .line 933
    const/16 v25, -0x1

    aput v25, v7, v12

    .line 932
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 936
    :cond_d
    const/4 v6, 0x0

    .line 939
    .local v6, cardsChanged:Z
    const/4 v12, 0x0

    :goto_9
    move v0, v12

    move/from16 v1, v23

    if-ge v0, v1, :cond_f

    .line 940
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 941
    .local v4, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    move-object/from16 v0, v18

    move-object v1, v4

    invoke-static {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v17

    .line 942
    .local v17, newIndex:I
    if-gez v17, :cond_e

    .line 944
    const/4 v6, 0x1

    .line 945
    move-object v0, v4

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    move-object/from16 v25, v0

    if-eqz v25, :cond_e

    .line 950
    move-object v0, v4

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-wide v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    move-wide/from16 v25, v0

    move-object v0, v4

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    move-object/from16 v27, v0

    invoke-static/range {v25 .. v27}, Lcom/google/android/music/utils/AlbumArtUtils;->removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 952
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object v1, v4

    iput-object v0, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 939
    :cond_e
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 959
    .end local v4           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v17           #newIndex:I
    :cond_f
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v19

    .line 960
    .local v19, newVisibleCardInfoSize:I
    const/4 v12, 0x0

    :goto_a
    move v0, v12

    move/from16 v1, v19

    if-ge v0, v1, :cond_11

    .line 961
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .line 962
    .local v16, newId:I
    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    .line 963
    .local v15, newCardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object v1, v15

    invoke-static {v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->find(Landroid/util/SparseArray;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;)I

    move-result v21

    .line 964
    .local v21, oldIndex:I
    if-ltz v21, :cond_10

    .line 965
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    .line 966
    .local v20, oldId:I
    aput v20, v7, v16

    .line 967
    move/from16 v0, v16

    move/from16 v1, v20

    if-eq v0, v1, :cond_10

    .line 968
    const/4 v6, 0x1

    .line 960
    .end local v20           #oldId:I
    :cond_10
    add-int/lit8 v12, v12, 0x1

    goto :goto_a

    .line 974
    .end local v15           #newCardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v16           #newId:I
    .end local v21           #oldIndex:I
    :cond_11
    if-nez v9, :cond_12

    if-eqz v6, :cond_13

    .line 976
    :cond_12
    const-string v25, "old visible cards"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 977
    const-string v25, "new visible cards"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeVisibleCards(Ljava/lang/String;Landroid/util/SparseArray;)V

    .line 979
    :cond_13
    if-eqz v6, :cond_14

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 983
    const/4 v12, 0x0

    :goto_b
    invoke-virtual/range {v18 .. v18}, Landroid/util/SparseArray;->size()I

    move-result v25

    move v0, v12

    move/from16 v1, v25

    if-ge v0, v1, :cond_14

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mVisibleCardInfo:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v26

    move-object/from16 v0, v18

    move v1, v12

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v27

    invoke-virtual/range {v25 .. v27}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 983
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    .line 988
    :cond_14
    if-nez v9, :cond_15

    if-eqz v6, :cond_16

    .line 990
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mSyncHandler:Landroid/os/Handler;

    move-object/from16 v25, v0

    new-instance v26, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$14;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;[I)V

    invoke-virtual/range {v25 .. v26}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 997
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackground()V

    .line 1003
    :goto_c
    monitor-exit v24

    .line 1004
    return-void

    .line 1000
    :cond_16
    const-string v25, "no visible cards changed."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->describeShuffle(Ljava/lang/String;[I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c
.end method

.method private recycleBitmaps()V
    .locals 1

    .prologue
    .line 477
    new-instance v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;

    invoke-direct {v0, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$5;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 484
    return-void
.end method


# virtual methods
.method cancelBackgroundTransition()V
    .locals 2

    .prologue
    .line 645
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 646
    return-void
.end method

.method public getCarouselRotationAngle()F
    .locals 1

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0}, Lcom/google/android/opengl/carousel/CarouselView;->getRealtimeCarouselRotationAngle()F

    move-result v0

    return v0
.end method

.method public getDetailTexture(I)Landroid/graphics/Bitmap;
    .locals 8
    .parameter "id"

    .prologue
    .line 845
    const/4 v0, 0x0

    .line 846
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_0

    .line 847
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 848
    .local v1, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-eqz v1, :cond_0

    .line 849
    const/4 v5, 0x1

    iput-boolean v5, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mActiveDetailTexture:Z

    .line 850
    iget-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 852
    .local v4, record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    iget v5, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v5, :pswitch_data_0

    .line 863
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 854
    :pswitch_0
    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mContext:Landroid/app/Activity;

    const v6, 0x7f0c00eb

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 865
    .local v2, label:Ljava/lang/String;
    :goto_0
    new-instance v3, Lcom/google/android/music/utils/LabelMaker;

    iget-object v5, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mLabelConfig:Lcom/google/android/music/utils/LabelMaker$Config;

    iget-object v6, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailBitmapPool:Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;

    invoke-virtual {v6}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$Pool;->create()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/Bitmap;

    invoke-direct {v3, v2, v5, p0}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;Landroid/graphics/Bitmap;)V

    .line 867
    .local v3, maker:Lcom/google/android/music/utils/LabelMaker;
    invoke-virtual {v3}, Lcom/google/android/music/utils/LabelMaker;->load()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 870
    .end local v1           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v2           #label:Ljava/lang/String;
    .end local v3           #maker:Lcom/google/android/music/utils/LabelMaker;
    .end local v4           #record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :goto_1
    return-object v5

    .line 857
    .restart local v1       #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .restart local v4       #record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    .restart local p0
    :pswitch_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mArtist:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 858
    .restart local v2       #label:Ljava/lang/String;
    goto :goto_0

    .line 860
    .end local v2           #label:Ljava/lang/String;
    :pswitch_2
    iget-object v2, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    .line 861
    .restart local v2       #label:Ljava/lang/String;
    goto :goto_0

    .end local v1           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v2           #label:Ljava/lang/String;
    .end local v4           #record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :cond_0
    move-object v5, v0

    .line 870
    goto :goto_1

    .line 852
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDetailTextureParameters(I)Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;
    .locals 1
    .parameter "id"

    .prologue
    .line 875
    sget-object v0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDetailTextureParameters:Lcom/google/android/opengl/carousel/CarouselViewHelper$DetailTextureParameters;

    return-object v0
.end method

.method public getTexture(I)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "id"

    .prologue
    .line 702
    const/4 v0, 0x0

    .line 703
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-ltz p1, :cond_2

    .line 705
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 706
    .local v1, cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    if-nez v1, :cond_0

    .line 707
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->createCardInfo(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;

    move-result-object v1

    .line 709
    :cond_0
    if-eqz v1, :cond_2

    .line 710
    iget-object v3, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    .line 712
    .local v3, record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    iget v4, v3, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 713
    iget-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    if-nez v4, :cond_1

    .line 719
    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;

    invoke-direct {v4, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$12;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    iput-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 732
    iget-object v4, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    iget-wide v4, v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    iget-object v6, v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;->mChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v4, v5, v6}, Lcom/google/android/music/utils/AlbumArtUtils;->registerAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 738
    :cond_1
    move-object v2, v1

    .line 739
    .local v2, cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    new-instance v4, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;

    invoke-direct {v4, p0, v3, v2, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$13;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;I)V

    invoke-static {v4}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 798
    .end local v1           #cardInfo:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v2           #cardInfoArg:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardInfo;
    .end local v3           #record:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    :cond_2
    return-object v0
.end method

.method public onAnimationFinished(F)V
    .locals 4
    .parameter "carouselRotationAngle"

    .prologue
    .line 625
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 626
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    .line 627
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 628
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 629
    iget-object v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 630
    return-void
.end method

.method public onAnimationStarted()V
    .locals 0

    .prologue
    .line 635
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 636
    return-void
.end method

.method public onCardSelected(I)V
    .locals 7
    .parameter "n"

    .prologue
    .line 575
    invoke-direct {p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCardRecord(I)Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;

    move-result-object v2

    .line 576
    .local v2, cardRecord:Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;
    if-eqz v2, :cond_0

    .line 577
    iget v6, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mType:I

    packed-switch v6, :pswitch_data_0

    .line 598
    :cond_0
    :goto_0
    return-void

    .line 579
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForShuffleAll()V

    goto :goto_0

    .line 583
    :pswitch_1
    iget-wide v0, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mAlbumId:J

    .line 585
    .local v0, albumId:J
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForAlbum(J)V

    goto :goto_0

    .line 590
    .end local v0           #albumId:J
    :pswitch_2
    iget-wide v3, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListId:J

    .line 591
    .local v3, listId:J
    iget-object v5, v2, Lcom/google/android/music/carousel/MusicCarouselViewHelper$CardRecord;->mListName:Ljava/lang/String;

    .line 593
    .local v5, name:Ljava/lang/String;
    invoke-direct {p0, v3, v4, v5}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->postOpenTrackBrowserForPlaylist(JLjava/lang/String;)V

    goto :goto_0

    .line 577
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 688
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onDestroy()V

    .line 689
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->clearCursor()V

    .line 690
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V

    .line 691
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mDelayTransitionHandler:Lcom/google/android/music/Worker;

    invoke-virtual {v0}, Lcom/google/android/music/Worker;->quit()V

    .line 692
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 640
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onDetachedFromWindow()V

    .line 641
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 642
    return-void
.end method

.method public onInvalidateDetailTexture(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 674
    invoke-super {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onInvalidateDetailTexture(I)V

    .line 676
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$11;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 685
    return-void
.end method

.method public onInvalidateTexture(I)V
    .locals 2
    .parameter "id"

    .prologue
    .line 650
    invoke-super {p0, p1}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onInvalidateTexture(I)V

    .line 652
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$10;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 670
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 510
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onPause()V

    .line 511
    invoke-direct {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->recycleBitmaps()V

    .line 512
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->cancelBackgroundTransition()V

    .line 513
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 497
    invoke-super {p0}, Lcom/google/android/opengl/carousel/CarouselViewHelper;->onResume()V

    .line 499
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->getCurrentBackgroundAlbumId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    .line 503
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getCarouselView()Lcom/google/android/opengl/carousel/CarouselView;

    move-result-object v0

    iget-wide v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mBackgroundAlbumId:J

    invoke-direct {p0, v1, v2}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getBackgroundBitmap(J)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/android/opengl/carousel/CarouselView;->setBackgroundBitmap(Landroid/graphics/Bitmap;Z)V

    .line 505
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    iget v1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    invoke-virtual {v0, v1}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(F)V

    .line 506
    return-void
.end method

.method public requestReadCursor()V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->getAsyncHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;

    invoke-direct {v1, p0}, Lcom/google/android/music/carousel/MusicCarouselViewHelper$6;-><init>(Lcom/google/android/music/carousel/MusicCarouselViewHelper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 524
    return-void
.end method

.method public setCarouselRotationAngle(F)V
    .locals 1
    .parameter "angle"

    .prologue
    .line 531
    iput p1, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mCarouselRotationAngle:F

    .line 532
    iget-object v0, p0, Lcom/google/android/music/carousel/MusicCarouselViewHelper;->mView:Lcom/google/android/opengl/carousel/CarouselView;

    invoke-virtual {v0, p1}, Lcom/google/android/opengl/carousel/CarouselView;->setCarouselRotationAngle(F)V

    .line 533
    return-void
.end method
