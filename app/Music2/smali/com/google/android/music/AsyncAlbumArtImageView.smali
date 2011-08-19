.class public Lcom/google/android/music/AsyncAlbumArtImageView;
.super Landroid/widget/ImageView;
.source "AsyncAlbumArtImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/AsyncAlbumArtImageView$2;,
        Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;,
        Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$Mode;,
        Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;
    }
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "AsyncAlbumArtImageView"

.field private static final sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;


# instance fields
.field private mActualArtworkSet:Z

.field private final mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

.field private mArtChangeListenerRegistered:Z

.field private mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

.field private mLoadingArtworkSet:Z

.field private mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

.field private mRequestedHeight:I

.field private mRequestedWidth:I

.field private mVirtualHeight:I

.field private mVirtualWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-string v0, "AsyncAlbumArtImageView"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/AsyncAlbumArtImageView;->LOGV:Z

    .line 39
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    invoke-direct {v0}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;-><init>()V

    sput-object v0, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 65
    sget-object v0, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->BACKGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    .line 67
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 68
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 69
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    .line 72
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    .line 75
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    .line 78
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 81
    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 192
    new-instance v0, Lcom/google/android/music/AsyncAlbumArtImageView$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/AsyncAlbumArtImageView$1;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView;)V

    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    .line 85
    return-void
.end method

.method static synthetic access$1000(Lcom/google/android/music/AsyncAlbumArtImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/AsyncAlbumArtImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/music/AsyncAlbumArtImageView;)Lcom/google/android/music/AsyncAlbumArtImageView$Mode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/music/AsyncAlbumArtImageView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput-boolean p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    return p1
.end method

.method static synthetic access$602(Lcom/google/android/music/AsyncAlbumArtImageView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    return p1
.end method

.method static synthetic access$702(Lcom/google/android/music/AsyncAlbumArtImageView;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    return p1
.end method

.method static synthetic access$800(Lcom/google/android/music/AsyncAlbumArtImageView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/AsyncAlbumArtImageView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v0

    return v0
.end method

.method private getAlbumHeight()I
    .locals 1

    .prologue
    .line 240
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    goto :goto_0
.end method

.method private getAlbumWidth()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    goto :goto_0
.end method

.method private declared-synchronized makeDrawable()V
    .locals 23

    .prologue
    .line 244
    monitor-enter p0

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v7

    .line 245
    .local v7, width:I
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 246
    .local v8, height:I
    if-lez v7, :cond_0

    if-gtz v8, :cond_1

    .line 298
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 252
    :cond_1
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    move v2, v0

    if-nez v2, :cond_0

    .line 253
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    move v2, v0

    if-ne v7, v2, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    move v2, v0

    if-eq v8, v2, :cond_0

    .line 257
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object v2, v0

    if-nez v2, :cond_4

    .line 260
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 295
    :cond_3
    :goto_1
    move v0, v7

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 296
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 244
    .end local v7           #width:I
    .end local v8           #height:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 261
    .restart local v7       #width:I
    .restart local v8       #height:I
    :cond_4
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object v2, v0

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    if-eqz v2, :cond_5

    .line 262
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    .line 263
    .local v21, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->artist:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    int-to-long v5, v5

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->artist:Ljava/lang/String;

    move-object v9, v0

    const/4 v10, 0x0

    invoke-static/range {v2 .. v10}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 266
    .local v18, bitmap:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 267
    .local v20, drawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 268
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto :goto_1

    .line 269
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    .end local v20           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v21           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object v2, v0

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-eqz v2, :cond_6

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    .line 271
    .local v21, mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    move-wide v12, v0

    const/4 v14, -0x1

    const/4 v15, -0x1

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->mainLabel:Ljava/lang/String;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static/range {v9 .. v17}, Lcom/google/android/music/utils/AlbumArtUtils;->getFauxAlbumArt(Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .line 273
    .restart local v18       #bitmap:Landroid/graphics/Bitmap;
    new-instance v20, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 274
    .restart local v20       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 275
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto/16 :goto_1

    .line 276
    .end local v18           #bitmap:Landroid/graphics/Bitmap;
    .end local v20           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v21           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object v2, v0

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v2, :cond_3

    .line 277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    move-object/from16 v21, v0

    check-cast v21, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    .line 280
    .local v21, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    move-wide v5, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    move-object v10, v0

    const/4 v11, 0x0

    invoke-static/range {v4 .. v11}, Lcom/google/android/music/utils/AlbumArtUtils;->getCachedArtwork(Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v19

    .line 282
    .local v19, cachedDrawable:Landroid/graphics/drawable/Drawable;
    if-eqz v19, :cond_7

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    const/4 v2, 0x1

    move v0, v2

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    goto/16 :goto_1

    .line 286
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->setLoadingArtwork()V

    .line 289
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object v0, v2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 290
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    invoke-virtual {v2}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v22

    .line 291
    .local v22, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 292
    sget-object v2, Lcom/google/android/music/AsyncAlbumArtImageView;->sHandler:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;

    move-object v0, v2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumArtHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1
.end method

.method private declared-synchronized registerArtChangeListener()V
    .locals 4

    .prologue
    .line 107
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    iget-wide v0, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 109
    .local v0, albumId:J
    iget-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 110
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->registerAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 111
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    .end local v0           #albumId:J
    :cond_0
    monitor-exit p0

    return-void

    .line 107
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private setAlbumImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .parameter "value"

    .prologue
    .line 337
    iget-object v3, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    sget-object v4, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    move v2, v3

    .line 340
    .local v2, extractBitmap:Z
    :goto_0
    if-eqz v2, :cond_3

    .line 342
    instance-of v3, p1, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v3, :cond_1

    .line 343
    move-object v0, p1

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 353
    .local v1, bitmap:Landroid/graphics/Bitmap;
    :goto_1
    sget-object v3, Lcom/google/android/music/AsyncAlbumArtImageView$2;->$SwitchMap$com$google$android$music$AsyncAlbumArtImageView$LayerMode:[I

    iget-object v4, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v4}, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 367
    :goto_2
    return-void

    .line 337
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .end local v2           #extractBitmap:Z
    :cond_0
    const/4 v3, 0x0

    move v2, v3

    goto :goto_0

    .line 344
    .restart local v2       #extractBitmap:Z
    :cond_1
    instance-of v3, p1, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    if-eqz v3, :cond_2

    .line 345
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/utils/AlbumArtUtils$FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 347
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 350
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #bitmap:Landroid/graphics/Bitmap;
    goto :goto_1

    .line 355
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 360
    :pswitch_1
    if-nez v1, :cond_4

    .line 361
    invoke-virtual {p0, p1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 363
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_2

    .line 353
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setLoadingArtwork()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 301
    iget-boolean v4, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    if-nez v4, :cond_0

    .line 302
    sget-object v4, Lcom/google/android/music/AsyncAlbumArtImageView$2;->$SwitchMap$com$google$android$music$AsyncAlbumArtImageView$LayerMode:[I

    iget-object v5, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    invoke-virtual {v5}, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 330
    :cond_0
    :goto_0
    return-void

    .line 306
    :pswitch_0
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumWidth()I

    move-result v3

    .line 307
    .local v3, w:I
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getAlbumHeight()I

    move-result v2

    .line 309
    .local v2, h:I
    if-eqz v3, :cond_0

    if-eqz v2, :cond_0

    .line 315
    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->getResizedLoadingArtwork(Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 317
    .local v0, defaultArtwork:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 319
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0, v1}, Lcom/google/android/music/AsyncAlbumArtImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 320
    iput-boolean v6, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    goto :goto_0

    .line 324
    .end local v0           #defaultArtwork:Landroid/graphics/Bitmap;
    .end local v1           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v2           #h:I
    .end local v3           #w:I
    :pswitch_1
    invoke-virtual {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/music/utils/AlbumArtUtils;->getLoadingAlbumArtwork(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/google/android/music/AsyncAlbumArtImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 325
    iput-boolean v6, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    goto :goto_0

    .line 302
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private declared-synchronized unregisterArtChangeListener()V
    .locals 4

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v2, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v2, :cond_0

    .line 118
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    iget-wide v0, v2, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 119
    .local v0, albumId:J
    iget-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z

    if-eqz v2, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    .line 120
    iget-object v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListener:Lcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;

    invoke-static {v0, v1, v2}, Lcom/google/android/music/utils/AlbumArtUtils;->removeAlbumArtChangeListener(JLcom/google/android/music/utils/AlbumArtUtils$AlbumArtChangeListener;)V

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mArtChangeListenerRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .end local v0           #albumId:J
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 97
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->registerArtChangeListener()V

    .line 98
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 102
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 103
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 104
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .parameter "changed"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"

    .prologue
    const/4 v2, 0x0

    .line 371
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 373
    iget v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    move v0, v1

    .line 374
    .local v0, isViewSizeRelevantForAlbumArt:Z
    :goto_0
    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 375
    monitor-enter p0

    .line 376
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 377
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 378
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 379
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 381
    :cond_1
    return-void

    .end local v0           #isViewSizeRelevantForAlbumArt:Z
    :cond_2
    move v0, v2

    .line 373
    goto :goto_0

    .line 378
    .restart local v0       #isViewSizeRelevantForAlbumArt:Z
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public setAlbumId(JLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "album"
    .parameter "artist"

    .prologue
    .line 132
    monitor-enter p0

    .line 134
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 135
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    move-object v0, v1

    .line 137
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :goto_0
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 138
    iget-wide v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 139
    iput-wide p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->albumId:J

    .line 140
    iput-object p3, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->album:Ljava/lang/String;

    .line 141
    iput-object p4, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;->artist:Ljava/lang/String;

    .line 142
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 143
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 144
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 145
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 146
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->registerArtChangeListener()V

    .line 147
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 149
    :cond_0
    monitor-exit p0

    .line 150
    return-void

    .line 135
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;
    :cond_1
    new-instance v1, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView$AlbumMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    move-object v0, v1

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAllSongsOfArtistAlbumArt(Ljava/lang/String;)V
    .locals 3
    .parameter "artist"

    .prologue
    .line 156
    monitor-enter p0

    .line 158
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 159
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    move-object v0, v1

    .line 161
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :goto_0
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 162
    iget-object v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->artist:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 163
    iput-object p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;->artist:Ljava/lang/String;

    .line 164
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 165
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 166
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 167
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 168
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 170
    :cond_0
    monitor-exit p0

    .line 171
    return-void

    .line 159
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;
    :cond_1
    new-instance v1, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView$AllSongsMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    move-object v0, v1

    goto :goto_0

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setLayerMode(Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 91
    iput-object p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    .line 92
    return-void
.end method

.method public setPlaylistAlbumArt(JLjava/lang/String;)V
    .locals 3
    .parameter "id"
    .parameter "mainLabel"

    .prologue
    .line 174
    monitor-enter p0

    .line 176
    :try_start_0
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->unregisterArtChangeListener()V

    .line 177
    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    instance-of v1, v1, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    check-cast v1, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    move-object v0, v1

    .line 179
    .local v0, mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :goto_0
    iput-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mMode:Lcom/google/android/music/AsyncAlbumArtImageView$Mode;

    .line 180
    iget-wide v1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    cmp-long v1, p1, v1

    if-eqz v1, :cond_0

    .line 181
    iput-object p3, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->mainLabel:Ljava/lang/String;

    .line 182
    iput-wide p1, v0, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;->id:J

    .line 183
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 184
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 185
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedWidth:I

    .line 186
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mRequestedHeight:I

    .line 187
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 189
    :cond_0
    monitor-exit p0

    .line 190
    return-void

    .line 177
    .end local v0           #mode:Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;
    :cond_1
    new-instance v1, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/music/AsyncAlbumArtImageView$PlaylistMode;-><init>(Lcom/google/android/music/AsyncAlbumArtImageView$1;)V

    move-object v0, v1

    goto :goto_0

    .line 189
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVirtualSize(II)V
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    .line 220
    if-nez p1, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLayerMode:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    sget-object v1, Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;->FOREGROUND:Lcom/google/android/music/AsyncAlbumArtImageView$LayerMode;

    if-eq v0, v1, :cond_1

    .line 221
    const-string v0, "AsyncAlbumArtImageView"

    const-string v1, "Can not set virtual size if Album-Art-Mode is not FOREGROUND"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    :cond_1
    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    if-eq v0, p2, :cond_3

    .line 225
    :cond_2
    iput p1, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualWidth:I

    .line 226
    iput p2, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mVirtualHeight:I

    .line 227
    monitor-enter p0

    .line 228
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mLoadingArtworkSet:Z

    .line 229
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/AsyncAlbumArtImageView;->mActualArtworkSet:Z

    .line 230
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    invoke-direct {p0}, Lcom/google/android/music/AsyncAlbumArtImageView;->makeDrawable()V

    .line 233
    :cond_3
    return-void

    .line 230
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
