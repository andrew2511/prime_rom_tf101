.class public Lcom/google/android/music/albumwall/MusicAlbumWallCallback;
.super Ljava/lang/Object;
.source "MusicAlbumWallCallback.java"

# interfaces
.implements Lcom/google/android/music/albumwall/AlbumWallCallback;
.implements Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;
.implements Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
.implements Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ContextMenuCallback;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$GenresQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PlaylistsQuery;,
        Lcom/google/android/music/albumwall/MusicAlbumWallCallback$AlbumsQuery;
    }
.end annotation


# static fields
.field private static final DEBUG_OUTLINE_LABEL:Z = false

.field private static DEFAULT_MARKER_RES_ID:I = 0x0

.field private static DRAWABLE_KEEP_ON_DEVICE:I = 0x0

.field private static DRAWABLE_ONLY_REMOTE:I = 0x0

.field private static DRAWABLE_SIDE_LOADED:I = 0x0

.field private static final EXTRA_ARTIST:Ljava/lang/String; = "artist"

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final RECENTLY_ADDED_PLAYLIST:J = -0x1L

.field private static final TAG:Ljava/lang/String; = "MusicAlbumWallCallback"

.field public static final TEXTURE_BORDER:I = 0x2

.field private static final TRACE_CALLBACKS:Z

.field private static sFormatBuilder:Ljava/lang/StringBuilder;

.field private static sFormatter:Ljava/util/Formatter;


# instance fields
.field private mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mAlbumFrame:Landroid/graphics/drawable/Drawable;

.field private mAllowOpenningItem:Z

.field private mAppState:Lcom/google/android/music/activitymanagement/AppState;

.field private mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

.field private mCallbackThreadHandler:Landroid/os/Handler;

.field private mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

.field private mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

.field private mCursor:Landroid/database/Cursor;

.field private mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

.field private mIsClustered:Z

.field private mIsStreamingEnabled:Z

.field private mLabelPaint:Landroid/text/TextPaint;

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mMode:I

.field private mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

.field private mObserver:Landroid/database/ContentObserver;

.field private mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

.field private mOfflinePaint:Landroid/graphics/Paint;

.field private mOpenedForShortcutCreation:Z

.field private mOverlayPaint:Landroid/text/TextPaint;

.field private mTopLevelCursor:Landroid/database/Cursor;

.field private mTopLevelCursorObserver:Landroid/database/ContentObserver;

.field private mUnknownAlbumName:Ljava/lang/String;

.field private mUnknownArtistName:Ljava/lang/String;

.field private mUnknownPlaylistName:Ljava/lang/String;

.field private mView:Lcom/google/android/music/albumwall/AlbumWallView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const-string v0, "MusicAlbumWallCallback"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->LOGV:Z

    .line 80
    const v0, 0x7f020056

    sput v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DEFAULT_MARKER_RES_ID:I

    .line 81
    const v0, 0x7f020068

    sput v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DRAWABLE_SIDE_LOADED:I

    .line 82
    const v0, 0x7f02006e

    sput v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DRAWABLE_KEEP_ON_DEVICE:I

    .line 83
    const v0, 0x7f02006d

    sput v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DRAWABLE_ONLY_REMOTE:I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    .line 86
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatter:Ljava/util/Formatter;

    return-void
.end method

.method public constructor <init>(ILcom/google/android/music/albumwall/GL2AlbumWallActivity;Lcom/google/android/music/albumwall/AlbumWallView;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;Lcom/google/android/music/activitymanagement/AppState;)V
    .locals 7
    .parameter "mode"
    .parameter "context"
    .parameter "view"
    .parameter "appController"
    .parameter "appState"

    .prologue
    const/4 v6, 0x0

    const/4 v5, -0x1

    const/4 v4, 0x1

    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 401
    new-instance v2, Lcom/google/android/music/albumwall/BitmapPool;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/google/android/music/albumwall/BitmapPool;-><init>(I)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    .line 403
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    .line 404
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    .line 406
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    .line 412
    iput-boolean v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    .line 416
    iput p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    .line 417
    invoke-static {p1}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    .line 419
    iput-object p2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    .line 420
    iput-object p3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    .line 421
    iput-object p4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 422
    iput-object p5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    .line 423
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    .line 424
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    .line 426
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v3, 0x7f0c0068

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownArtistName:Ljava/lang/String;

    .line 427
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v3, 0x7f0c0069

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownAlbumName:Ljava/lang/String;

    .line 428
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const v3, 0x7f0c006a

    invoke-virtual {v2, v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownPlaylistName:Ljava/lang/String;

    .line 430
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 431
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 432
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x41a0

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 433
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mLabelPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 435
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 436
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setFilterBitmap(Z)V

    .line 437
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    const/high16 v3, 0x4220

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 438
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 440
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v2, 0x50505050

    invoke-direct {v0, v2, v6}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 441
    .local v0, colorFilter:Landroid/graphics/ColorFilter;
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 443
    invoke-static {p2}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v1

    .line 444
    .local v1, networkMonitor:Lcom/google/android/music/dl/NetworkMonitor;
    invoke-virtual {v1, p0}, Lcom/google/android/music/dl/NetworkMonitor;->registerStreamabilityChangedListener(Lcom/google/android/music/dl/NetworkMonitor$StreamabilityChangeListener;)V

    .line 445
    invoke-virtual {v1}, Lcom/google/android/music/dl/NetworkMonitor;->isStreamingAvailable()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    .line 446
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v2}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    .line 447
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/GL2AlbumWallActivity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForGenre(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForAlbum(J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 68
    invoke-direct/range {p0 .. p5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForRecentlyAddedPlaylist()V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openTrackBrowserForPlaylist(JLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearTopLevelCursor()V

    return-void
.end method

.method static synthetic access$1700(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/activitymanagement/AppState;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAppState:Lcom/google/android/music/activitymanagement/AppState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/albumwall/AlbumWallView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    return-void
.end method

.method static synthetic access$300(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)Lcom/google/android/music/jumper/MusicPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 68
    iget v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->switchAlbumKeepOnStatus(Lcom/google/android/music/albumwall/MusicItem;)V

    return-void
.end method

.method static synthetic access$600(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->switchArtistKeepOnStatus(Lcom/google/android/music/albumwall/MusicPile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;FF)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createContextMenu(Lcom/google/android/music/albumwall/MusicPile;FF)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;JLjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->openAllSongsForArtist(JLjava/lang/String;)V

    return-void
.end method

.method private addAvailableOfflineMenuItem(Z)V
    .locals 5
    .parameter "keepOn"

    .prologue
    .line 1084
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const v4, 0x7f0c00a3

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v0

    .line 1087
    .local v0, itemMenu:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v1}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1088
    const v1, 0x7f020148

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1090
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/menu/MusicMenuItem;->setCheckboxEnabled(Z)V

    .line 1091
    invoke-virtual {v0, p1}, Lcom/google/android/music/menu/MusicMenuItem;->setChecked(Z)V

    .line 1092
    return-void
.end method

.method private clearCursor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1624
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1625
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1627
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    .line 1629
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1631
    :cond_1
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    .line 1632
    return-void
.end method

.method private clearTopLevelCursor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1635
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 1637
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 1638
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    .line 1640
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1642
    :cond_1
    iput-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    .line 1643
    return-void
.end method

.method private createContextMenu(Lcom/google/android/music/albumwall/MusicItem;FF)V
    .locals 11
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/16 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 1030
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1032
    new-instance v3, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 1033
    invoke-direct {p0, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setContextMenuPosition(FF)V

    .line 1038
    :goto_0
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/menu/MusicListMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 1041
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/4 v4, 0x6

    const v5, 0x7f0c0070

    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 1043
    .local v2, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1044
    const v3, 0x7f020151

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1047
    :cond_0
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_1

    .line 1051
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v4

    if-eqz v4, :cond_6

    const v4, 0x7f02013c

    :goto_1
    invoke-static {v3, v4, v7}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 1057
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1058
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getKeepOn()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->addAvailableOfflineMenuItem(Z)V

    .line 1062
    :cond_2
    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    if-eq v3, v8, :cond_3

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->isItemAllSongs()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1063
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v4, 0x258

    const/4 v5, 0x4

    const v6, 0x7f0c0017

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    .line 1064
    .local v1, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1065
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "artist"

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1066
    invoke-virtual {v1, v0}, Lcom/google/android/music/menu/MusicMenuItem;->setIntent(Landroid/content/Intent;)V

    .line 1067
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1068
    const v3, 0x7f020159

    invoke-virtual {v1, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1073
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_3
    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    if-ne v3, v8, :cond_4

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v3

    cmp-long v3, v3, v9

    if-eqz v3, :cond_4

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->isItemAllSongs()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1076
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v4, 0x192

    const v5, 0x7f0c005e

    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1077
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v4, 0x1c

    const/4 v5, 0x5

    const v6, 0x7f0c00f8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1080
    :cond_4
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v3}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    .line 1081
    return-void

    .line 1035
    .end local v2           #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_5
    new-instance v3, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ItemContextMenuCallback;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicItem;)V

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    goto/16 :goto_0

    .restart local v2       #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_6
    move v4, v7

    .line 1051
    goto/16 :goto_1
.end method

.method private createContextMenu(Lcom/google/android/music/albumwall/MusicPile;FF)V
    .locals 8
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v7, 0x0

    .line 1106
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->isTabletMusic()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1107
    new-instance v3, Lcom/google/android/music/menu/MusicDropdownMenu;

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)V

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicDropdownMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    .line 1108
    invoke-direct {p0, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->setContextMenuPosition(FF)V

    .line 1112
    :goto_0
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/music/menu/MusicListMenu;->setHeader(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/4 v4, 0x6

    const v5, 0x7f0c0070

    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v2

    .line 1117
    .local v2, playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1118
    const v3, 0x7f020151

    invoke-virtual {v2, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1122
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v4}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v4

    if-eqz v4, :cond_5

    const v4, 0x7f02013c

    :goto_1
    invoke-static {v3, v4, v7}, Lcom/google/android/music/MusicUtils;->populateAddToPlaylistMenu(Lcom/google/android/music/menu/MusicMenu;II)V

    .line 1127
    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasRemote()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1128
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getKeepOn()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->addAvailableOfflineMenuItem(Z)V

    .line 1132
    :cond_1
    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    .line 1133
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v4, 0x258

    const/4 v5, 0x4

    const v6, 0x7f0c0017

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    move-result-object v1

    .line 1134
    .local v1, menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1135
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "artist"

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1136
    invoke-virtual {v1, v0}, Lcom/google/android/music/menu/MusicMenuItem;->setIntent(Landroid/content/Intent;)V

    .line 1137
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->hasIconsInPopupMenus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1138
    const v3, 0x7f020159

    invoke-virtual {v1, v3}, Lcom/google/android/music/menu/MusicMenuItem;->setIcon(I)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1143
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #menuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_2
    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 1144
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v4, 0x192

    const v5, 0x7f0c005e

    invoke-virtual {v3, v4, v7, v5}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1145
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    const/16 v4, 0x1c

    const/4 v5, 0x5

    const v6, 0x7f0c00f8

    invoke-virtual {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicListMenu;->add(III)Lcom/google/android/music/menu/MusicMenuItem;

    .line 1148
    :cond_3
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    invoke-virtual {v3}, Lcom/google/android/music/menu/MusicListMenu;->show()V

    .line 1149
    return-void

    .line 1110
    .end local v2           #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_4
    new-instance v3, Lcom/google/android/music/menu/MusicPopupMenu;

    iget-object v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PileContextMenuCallback;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/MusicPile;)V

    iget-object v6, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-direct {v3, v4, v5, v6}, Lcom/google/android/music/menu/MusicPopupMenu;-><init>(Landroid/content/Context;Lcom/google/android/music/menu/MusicMenu$Callback;Landroid/view/View;)V

    iput-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    goto/16 :goto_0

    .restart local v2       #playMenuItem:Lcom/google/android/music/menu/MusicMenuItem;
    :cond_5
    move v4, v7

    .line 1122
    goto :goto_1
.end method

.method private createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZ)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "item"
    .parameter "w"
    .parameter "h"
    .parameter "antiAlias"

    .prologue
    .line 664
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZZ)Landroid/graphics/Bitmap;
    .locals 30
    .parameter "item"
    .parameter "w"
    .parameter "h"
    .parameter "antiAlias"
    .parameter "allowCache"

    .prologue
    .line 669
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v11

    .line 670
    .local v11, mainLabel:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v12

    .line 673
    .local v12, subLabel:Ljava/lang/String;
    if-eqz p5, :cond_2

    .line 674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    move-object v6, v0

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v6

    move/from16 v1, p2

    move/from16 v2, p3

    move-object v3, v7

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    .line 678
    .local v23, bitmap:Landroid/graphics/Bitmap;
    :goto_0
    new-instance v5, Landroid/graphics/Canvas;

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 682
    .local v5, canvas:Landroid/graphics/Canvas;
    const/16 v29, 0x2

    .line 683
    .local v29, textureBorder:I
    if-nez p4, :cond_0

    .line 684
    const/16 v29, 0x0

    .line 686
    :cond_0
    mul-int/lit8 v6, v29, 0x2

    sub-int v9, p2, v6

    .line 687
    .local v9, artWidth:I
    mul-int/lit8 v6, v29, 0x2

    sub-int v10, p3, v6

    .line 689
    .local v10, artHeight:I
    move/from16 v0, v29

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move v7, v0

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Canvas;->translate(FF)V

    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 697
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    move v15, v6

    .line 700
    .local v15, artType:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v14, v0

    const/16 v16, 0x1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v17

    move-object v13, v5

    move/from16 v19, v9

    move/from16 v20, v10

    move-object/from16 v21, v11

    move-object/from16 v22, v12

    invoke-static/range {v13 .. v22}, Lcom/google/android/music/utils/AlbumArtUtils;->drawFauxAlbumArt(Landroid/graphics/Canvas;Landroid/content/Context;IZJIILjava/lang/String;Ljava/lang/String;)V

    .line 705
    .end local v15           #artType:I
    :goto_2
    if-eqz p4, :cond_1

    .line 706
    new-instance v28, Landroid/graphics/Rect;

    invoke-direct/range {v28 .. v28}, Landroid/graphics/Rect;-><init>()V

    .line 707
    .local v28, padding:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 708
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move v0, v6

    neg-int v0, v0

    move/from16 v25, v0

    .line 709
    .local v25, frameLeft:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v6, v0

    move v0, v6

    neg-int v0, v0

    move/from16 v27, v0

    .line 710
    .local v27, frameTop:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v6, v0

    add-int v26, v9, v6

    .line 711
    .local v26, frameRight:I
    move-object/from16 v0, v28

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v6, v0

    add-int v24, v10, v6

    .line 712
    .local v24, frameBottom:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    move-object v0, v6

    move/from16 v1, v25

    move/from16 v2, v27

    move/from16 v3, v26

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 713
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAlbumFrame:Landroid/graphics/drawable/Drawable;

    move-object v6, v0

    invoke-virtual {v6, v5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 715
    .end local v24           #frameBottom:I
    .end local v25           #frameLeft:I
    .end local v26           #frameRight:I
    .end local v27           #frameTop:I
    .end local v28           #padding:Landroid/graphics/Rect;
    :cond_1
    return-object v23

    .line 676
    .end local v5           #canvas:Landroid/graphics/Canvas;
    .end local v9           #artWidth:I
    .end local v10           #artHeight:I
    .end local v23           #bitmap:Landroid/graphics/Bitmap;
    .end local v29           #textureBorder:I
    :cond_2
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, p2

    move/from16 v1, p3

    move-object v2, v6

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v23

    .restart local v23       #bitmap:Landroid/graphics/Bitmap;
    goto/16 :goto_0

    .line 692
    .restart local v5       #canvas:Landroid/graphics/Canvas;
    .restart local v9       #artWidth:I
    .restart local v10       #artHeight:I
    .restart local v29       #textureBorder:I
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v6, v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v7

    invoke-static/range {v5 .. v12}, Lcom/google/android/music/utils/AlbumArtUtils;->draw(Landroid/graphics/Canvas;Landroid/content/Context;JIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 697
    :cond_3
    const/4 v6, 0x2

    move v15, v6

    goto :goto_1

    .line 690
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .locals 16
    .parameter "labelType"
    .parameter "mainLabel"
    .parameter "subLabel"
    .parameter "item"
    .parameter "config"

    .prologue
    .line 1153
    move-object/from16 v0, p5

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getLabelConfig(I)Lcom/google/android/music/utils/LabelMaker$Config;

    move-result-object v5

    .line 1155
    .local v5, labelConfig:Lcom/google/android/music/utils/LabelMaker$Config;
    const/4 v13, 0x2

    move/from16 v0, p1

    move v1, v13

    if-ne v0, v1, :cond_2

    const/4 v13, 0x1

    move v4, v13

    .line 1157
    .local v4, isExpanded:Z
    :goto_0
    if-eqz v4, :cond_3

    invoke-virtual/range {p5 .. p5}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getIsExpandedClusterLabelHorizontal()Z

    move-result v13

    if-nez v13, :cond_3

    const/4 v13, 0x1

    move v12, v13

    .line 1159
    .local v12, vertical:Z
    :goto_1
    if-nez p3, :cond_4

    move-object/from16 v10, p2

    .line 1161
    .local v10, text:Ljava/lang/String;
    :goto_2
    new-instance v6, Lcom/google/android/music/utils/LabelMaker;

    invoke-direct {v6, v10, v5}, Lcom/google/android/music/utils/LabelMaker;-><init>(Ljava/lang/String;Lcom/google/android/music/utils/LabelMaker$Config;)V

    .line 1165
    .local v6, labelMaker:Lcom/google/android/music/utils/LabelMaker;
    if-eqz v4, :cond_0

    .line 1166
    invoke-virtual {v6}, Lcom/google/android/music/utils/LabelMaker;->measure()V

    .line 1167
    invoke-virtual {v6}, Lcom/google/android/music/utils/LabelMaker;->getTextRightClipped()I

    move-result v11

    .line 1168
    .local v11, textRight:I
    iput v11, v5, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 1169
    iget v13, v5, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    invoke-virtual {v6, v13}, Lcom/google/android/music/utils/LabelMaker;->setWidth(I)V

    .line 1172
    .end local v11           #textRight:I
    :cond_0
    invoke-virtual {v6}, Lcom/google/android/music/utils/LabelMaker;->load()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1184
    .local v2, bitmap:Landroid/graphics/Bitmap;
    if-eqz v12, :cond_1

    .line 1186
    iget v8, v5, Lcom/google/android/music/utils/LabelMaker$Config;->height:I

    .line 1187
    .local v8, rotWidth:I
    iget v7, v5, Lcom/google/android/music/utils/LabelMaker$Config;->width:I

    .line 1188
    .local v7, rotHeight:I
    iget-object v13, v5, Lcom/google/android/music/utils/LabelMaker$Config;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v7, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1189
    .local v9, rotated:Landroid/graphics/Bitmap;
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1190
    .local v3, c:Landroid/graphics/Canvas;
    const/high16 v13, -0x3d4c

    invoke-virtual {v3, v13}, Landroid/graphics/Canvas;->rotate(F)V

    .line 1191
    neg-int v13, v7

    int-to-float v13, v13

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v14}, Landroid/graphics/Canvas;->translate(FF)V

    .line 1192
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v2, v13, v14, v15}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1193
    move-object v2, v9

    .line 1196
    .end local v3           #c:Landroid/graphics/Canvas;
    .end local v7           #rotHeight:I
    .end local v8           #rotWidth:I
    .end local v9           #rotated:Landroid/graphics/Bitmap;
    :cond_1
    return-object v2

    .line 1155
    .end local v2           #bitmap:Landroid/graphics/Bitmap;
    .end local v4           #isExpanded:Z
    .end local v6           #labelMaker:Lcom/google/android/music/utils/LabelMaker;
    .end local v10           #text:Ljava/lang/String;
    .end local v12           #vertical:Z
    :cond_2
    const/4 v13, 0x0

    move v4, v13

    goto :goto_0

    .line 1157
    .restart local v4       #isExpanded:Z
    :cond_3
    const/4 v13, 0x0

    move v12, v13

    goto :goto_1

    .line 1159
    .restart local v12       #vertical:Z
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object v10, v13

    goto :goto_2
.end method

.method private createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "item"
    .parameter "config"

    .prologue
    .line 1208
    sget v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DEFAULT_MARKER_RES_ID:I

    .line 1209
    .local v4, resourceId:I
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 1211
    instance-of v5, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-eqz v5, :cond_1

    .line 1212
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    move-object v3, v0

    .line 1213
    .local v3, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->isItemAllSongs()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v5

    const-wide/16 v7, -0x1

    cmp-long v5, v5, v7

    if-nez v5, :cond_1

    .line 1214
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createPlaceholderMark()Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1229
    .end local v3           #musicItem:Lcom/google/android/music/albumwall/MusicItem;
    :goto_0
    return-object v5

    .line 1217
    :cond_1
    sget v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DRAWABLE_SIDE_LOADED:I

    .line 1218
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getHasRemote()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1219
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v2

    .line 1220
    .local v2, keepOn:Z
    if-eqz v2, :cond_3

    sget v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DRAWABLE_KEEP_ON_DEVICE:I

    move v4, v5

    .line 1227
    .end local v2           #keepOn:Z
    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v5}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .local v1, bitmap:Landroid/graphics/Bitmap;
    move-object v5, v1

    .line 1229
    goto :goto_0

    .line 1220
    .end local v1           #bitmap:Landroid/graphics/Bitmap;
    .restart local v2       #keepOn:Z
    :cond_3
    sget v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->DRAWABLE_ONLY_REMOTE:I

    move v4, v5

    goto :goto_1

    .line 1223
    .end local v2           #keepOn:Z
    :cond_4
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowLabelMark()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1224
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createPlaceholderMark()Landroid/graphics/Bitmap;

    move-result-object v5

    goto :goto_0
.end method

.method private createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "text"
    .parameter "config"

    .prologue
    const/high16 v12, 0x3f00

    .line 1242
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayWidth()F

    move-result v10

    mul-float/2addr v10, v12

    float-to-int v7, v10

    .line 1243
    .local v7, w:I
    invoke-virtual {p2}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getScrollBarOverlayHeight()F

    move-result v10

    mul-float/2addr v10, v12

    float-to-int v4, v10

    .line 1244
    .local v4, h:I
    const/4 v5, 0x2

    .line 1246
    .local v5, textPadding:I
    iget-object v10, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    const/4 v11, 0x2

    sub-int v11, v4, v11

    int-to-float v11, v11

    invoke-virtual {v10, v11}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 1247
    iget-object v10, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v10, p1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1249
    .local v6, textW:F
    int-to-float v10, v7

    sub-float/2addr v10, v6

    mul-float v8, v10, v12

    .line 1251
    .local v8, xPos:F
    iget-object v10, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v10, v7, v4, v11}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1252
    .local v1, bitmap:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1253
    .local v2, c:Landroid/graphics/Canvas;
    iget-object v10, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    .line 1254
    .local v0, ascent:F
    iget-object v10, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v10}, Landroid/text/TextPaint;->descent()F

    move-result v3

    .line 1256
    .local v3, descent:F
    int-to-float v10, v4

    add-float v11, v3, v0

    sub-float/2addr v10, v11

    mul-float/2addr v10, v12

    const/high16 v11, 0x4000

    sub-float v9, v10, v11

    .line 1258
    .local v9, yPos:F
    iget-object v10, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOverlayPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, p1, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1259
    return-object v1
.end method

.method private createPlaceholderMark()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1236
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_4444:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1237
    .local v0, bitmap:Landroid/graphics/Bitmap;
    return-object v0
.end method

.method private effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "albumName"

    .prologue
    .line 862
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownAlbumName:Ljava/lang/String;

    .line 865
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
    .line 848
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 849
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownArtistName:Ljava/lang/String;

    .line 851
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "overlayLabel"

    .prologue
    const/4 v5, 0x1

    .line 869
    move-object v2, p1

    .line 870
    .local v2, result:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 871
    .local v1, len:I
    if-le v1, v5, :cond_1

    .line 873
    const/4 v0, 0x0

    .line 874
    .local v0, i:I
    :goto_0
    sub-int v3, v1, v5

    if-ge v0, v3, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x30

    if-ne v3, v4, :cond_0

    .line 875
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 877
    :cond_0
    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 880
    .end local v0           #i:I
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "name"

    .prologue
    .line 855
    invoke-static {p1}, Lcom/google/android/music/MusicUtils;->isUnknown(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mUnknownPlaylistName:Ljava/lang/String;

    .line 858
    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method private findCurrentIndexOfItem(Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    .locals 6
    .parameter "item"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 1399
    iget-object v3, p2, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v3, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v0

    .line 1400
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1401
    :cond_0
    new-instance v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    .line 1428
    :goto_0
    return-object v3

    .line 1403
    :cond_1
    if-nez p1, :cond_2

    .line 1404
    new-instance v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v3, v4, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_0

    .line 1409
    :cond_2
    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 1425
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unknown mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1411
    :pswitch_0
    const/4 v2, 0x5

    .line 1412
    .local v2, keyIndex:I
    const/4 v1, 0x1

    .line 1428
    .local v1, idIndex:I
    :goto_1
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v3

    goto :goto_0

    .line 1416
    .end local v1           #idIndex:I
    .end local v2           #keyIndex:I
    :pswitch_1
    const/4 v2, 0x1

    .line 1417
    .restart local v2       #keyIndex:I
    const/4 v1, 0x0

    .line 1418
    .restart local v1       #idIndex:I
    goto :goto_1

    .line 1421
    .end local v1           #idIndex:I
    .end local v2           #keyIndex:I
    :pswitch_2
    const/4 v2, 0x4

    .line 1422
    .restart local v2       #keyIndex:I
    const/4 v1, 0x1

    .line 1423
    .restart local v1       #idIndex:I
    goto :goto_1

    .line 1409
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    .locals 5
    .parameter "pile"
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    .line 1432
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1433
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_1

    .line 1434
    :cond_0
    new-instance v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    .line 1450
    :goto_0
    return-object v3

    .line 1436
    :cond_1
    if-nez p1, :cond_2

    .line 1437
    new-instance v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v3, v4, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_0

    .line 1442
    :cond_2
    iget v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 1443
    const/4 v2, 0x2

    .line 1444
    .local v2, keyIndex:I
    const/4 v1, 0x0

    .line 1450
    .local v1, idIndex:I
    :goto_1
    invoke-direct {p0, p1, v0, v2, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v3

    goto :goto_0

    .line 1446
    .end local v1           #idIndex:I
    .end local v2           #keyIndex:I
    :cond_3
    const/4 v2, 0x1

    .line 1447
    .restart local v2       #keyIndex:I
    const/4 v1, 0x0

    .restart local v1       #idIndex:I
    goto :goto_1
.end method

.method private formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "album"
    .parameter "artist"
    .parameter "songCount"

    .prologue
    .line 1668
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1669
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 1670
    .local v2, songsText:Ljava/lang/String;
    const v3, 0x7f0c00e3

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object p2, v4, v5

    const/4 v5, 0x2

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1671
    .local v0, fullLabel:Ljava/lang/String;
    return-object v0
.end method

.method private formatFullPlaylistLabel(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6
    .parameter "album"
    .parameter "songCount"

    .prologue
    .line 1675
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1676
    .local v1, res:Landroid/content/res/Resources;
    invoke-static {v1, p2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object v2

    .line 1677
    .local v2, songsText:Ljava/lang/String;
    const v3, 0x7f0c00e6

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1678
    .local v0, fullLabel:Ljava/lang/String;
    return-object v0
.end method

.method private getAlbumCount(Lcom/google/android/music/albumwall/MusicPile;)I
    .locals 3
    .parameter "pile"

    .prologue
    .line 1646
    iget v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1652
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1648
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsCount(Landroid/content/Context;J)I

    move-result v0

    .line 1650
    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreCount(Landroid/content/Context;J)I

    move-result v0

    goto :goto_0

    .line 1646
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCallbackThreadHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 1551
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 1552
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackThreadHandler:Landroid/os/Handler;

    .line 1554
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCallbackThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;
    .locals 11
    .parameter "pile"

    .prologue
    const/4 v3, 0x0

    .line 1563
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    invoke-virtual {p1, v0}, Lcom/google/android/music/albumwall/MusicPile;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1564
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    .line 1566
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 1568
    iget v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1596
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1570
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {}, Lcom/google/android/music/store/MusicContent$Albums;->getAlbumsSortedByAlbumUri()Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$AlbumsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1598
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    new-instance v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v0, v8}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    .line 1599
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursorPile:Lcom/google/android/music/albumwall/MusicPile;

    .line 1600
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;

    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCallbackThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$11;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    .line 1617
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1620
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mCursor:Landroid/database/Cursor;

    return-object v0

    .line 1575
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Playlists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$PlaylistsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1578
    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 1580
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v6

    .line 1582
    .local v6, artistId:J
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v6, v7}, Lcom/google/android/music/store/MusicContent$Artists;->getAlbumsByArtistsUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1586
    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 1588
    .end local v6           #artistId:J
    .end local v8           #c:Landroid/database/Cursor;
    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v9

    .line 1590
    .local v9, genreId:J
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v9, v10}, Lcom/google/android/music/store/MusicContent$Genres;->getAlbumsOfGenreUri(J)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$InnerAlbumQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1594
    .restart local v8       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 1568
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getPileCount()I
    .locals 1

    .prologue
    .line 1506
    iget v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    invoke-static {v0}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1507
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor()Landroid/database/Cursor;

    move-result-object v0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    .line 1509
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static getQuantityText(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 5
    .parameter "res"
    .parameter "resId"
    .parameter "num"

    .prologue
    const/4 v4, 0x0

    .line 1686
    invoke-virtual {p0, p1, p2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    .line 1690
    .local v0, songString:Ljava/lang/String;
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1691
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatter:Ljava/util/Formatter;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v1, v0, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 1692
    sget-object v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->sFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getSongCount(Lcom/google/android/music/albumwall/MusicPile;)I
    .locals 3
    .parameter "pile"

    .prologue
    .line 1657
    iget v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1663
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unsupported mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1659
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistCount(Landroid/content/Context;J)I

    move-result v0

    .line 1661
    :goto_0
    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersCount(Landroid/content/Context;J)I

    move-result v0

    goto :goto_0

    .line 1657
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getSongsText(Landroid/content/res/Resources;I)Ljava/lang/String;
    .locals 1
    .parameter "res"
    .parameter "numSongs"

    .prologue
    .line 1682
    const/high16 v0, 0x7f0b

    invoke-static {p0, v0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getQuantityText(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTopLevelCursor()Landroid/database/Cursor;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 1514
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    if-nez v0, :cond_0

    .line 1516
    iget v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1528
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown mode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1518
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Artists;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$ArtistsQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1530
    .local v6, c:Landroid/database/Cursor;
    :goto_0
    new-instance v0, Lcom/google/android/music/medialist/MediaList$MediaCursor;

    invoke-direct {v0, v6}, Lcom/google/android/music/medialist/MediaList$MediaCursor;-><init>(Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    .line 1531
    new-instance v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;

    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCallbackThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$10;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    .line 1544
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursorObserver:Landroid/database/ContentObserver;

    invoke-interface {v0, v1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 1547
    .end local v6           #c:Landroid/database/Cursor;
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mTopLevelCursor:Landroid/database/Cursor;

    return-object v0

    .line 1523
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    sget-object v1, Lcom/google/android/music/store/MusicContent$Genres;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$GenresQuery;->COLUMNS:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-static/range {v0 .. v5}, Lcom/google/android/music/MusicUtils;->query(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1526
    .restart local v6       #c:Landroid/database/Cursor;
    goto :goto_0

    .line 1516
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getUiKeepOnStatus(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Ljava/lang/Boolean;
    .locals 8
    .parameter "item"

    .prologue
    .line 1848
    const/4 v5, 0x0

    .line 1850
    .local v5, uiKeepOn:Ljava/lang/Boolean;
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1851
    .local v3, manager:Lcom/google/android/music/OfflineMusicManager;
    if-nez v3, :cond_0

    .line 1852
    const/4 v6, 0x0

    .line 1869
    :goto_0
    return-object v6

    .line 1854
    :cond_0
    instance-of v6, p1, Lcom/google/android/music/albumwall/MusicItem;

    if-eqz v6, :cond_3

    .line 1857
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    move-object v4, v0

    .line 1858
    .local v4, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v1

    .line 1859
    .local v1, id:J
    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    .line 1861
    invoke-virtual {v3, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->isPlaylistSelected(J)Ljava/lang/Boolean;

    move-result-object v5

    .end local v1           #id:J
    .end local v4           #musicItem:Lcom/google/android/music/albumwall/MusicItem;
    :cond_1
    :goto_1
    move-object v6, v5

    .line 1869
    goto :goto_0

    .line 1863
    .restart local v1       #id:J
    .restart local v4       #musicItem:Lcom/google/android/music/albumwall/MusicItem;
    :cond_2
    invoke-virtual {v4}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v6

    invoke-virtual {v3, v1, v2, v6, v7}, Lcom/google/android/music/OfflineMusicManager;->isAlbumSelected(JJ)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1

    .line 1865
    .end local v1           #id:J
    .end local v4           #musicItem:Lcom/google/android/music/albumwall/MusicItem;
    :cond_3
    instance-of v6, p1, Lcom/google/android/music/albumwall/MusicPile;

    if-eqz v6, :cond_1

    .line 1866
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getId()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lcom/google/android/music/OfflineMusicManager;->isArtistSelected(J)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_1
.end method

.method private isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 1831
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getKeepOn()Z

    move-result v0

    .line 1832
    .local v0, keepOn:Z
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getUiKeepOnStatus(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Ljava/lang/Boolean;

    move-result-object v1

    .line 1834
    .local v1, uiKeepOn:Ljava/lang/Boolean;
    if-eqz v1, :cond_0

    .line 1835
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1837
    :cond_0
    return v0
.end method

.method private openAllSongsForArtist(JLjava/lang/String;)V
    .locals 6
    .parameter "artist_id"
    .parameter "artistName"

    .prologue
    .line 1727
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const-class v3, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1728
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1729
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getArtistSongsSortOrder()I

    move-result v1

    .line 1730
    .local v1, sortOrder:I
    const-string v2, "medialist"

    new-instance v3, Lcom/google/android/music/medialist/ArtistSongList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v3, v4, v5, p3, v1}, Lcom/google/android/music/medialist/ArtistSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1732
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1733
    return-void
.end method

.method private openAllSongsForGenre(JLjava/lang/String;)V
    .locals 4
    .parameter "genreId"
    .parameter "genreName"

    .prologue
    .line 1736
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const-class v3, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1737
    .local v0, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1738
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v2}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/music/jumper/MusicPreferences;->getGenreSongsSortOrder()I

    move-result v1

    .line 1739
    .local v1, sortOrder:I
    const-string v2, "medialist"

    new-instance v3, Lcom/google/android/music/medialist/GenreSongList;

    invoke-direct {v3, p1, p2, p3, v1}, Lcom/google/android/music/medialist/GenreSongList;-><init>(JLjava/lang/String;I)V

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1740
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1741
    return-void
.end method

.method private openTrackBrowserForAlbum(J)V
    .locals 3
    .parameter "album_id"

    .prologue
    .line 1701
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const-class v2, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1702
    .local v0, intent:Landroid/content/Intent;
    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v2, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1703
    const-string v1, "medialist"

    new-instance v2, Lcom/google/android/music/medialist/AlbumSongList;

    invoke-direct {v2, p1, p2}, Lcom/google/android/music/medialist/AlbumSongList;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1704
    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v1, v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1705
    return-void
.end method

.method private openTrackBrowserForPlaylist(JLjava/lang/String;)V
    .locals 4
    .parameter "id"
    .parameter "name"

    .prologue
    .line 1708
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const-class v3, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1709
    .local v1, intent:Landroid/content/Intent;
    sget-object v2, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    const-string v3, "vnd.android.cursor.dir/track"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1710
    const-string v2, "playlist"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1711
    new-instance v0, Lcom/google/android/music/medialist/PlaylistSongList;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/music/medialist/PlaylistSongList;-><init>(JLjava/lang/String;)V

    .line 1712
    .local v0, foo:Lcom/google/android/music/medialist/SongList;
    const-string v2, "medialist"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1713
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v2, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1714
    return-void
.end method

.method private openTrackBrowserForRecentlyAddedPlaylist()V
    .locals 5

    .prologue
    .line 1717
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    const-class v4, Lcom/google/android/music/TrackBrowserActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1718
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "playlist"

    const-string v4, "recentlyadded"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1719
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    invoke-virtual {v3}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v2

    .line 1720
    .local v2, sortOrder:I
    new-instance v0, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    invoke-direct {v0, v2}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    .line 1721
    .local v0, foo:Lcom/google/android/music/medialist/SongList;
    const-string v3, "medialist"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1722
    iget-object v3, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mActivityManager:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v3, v1}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->startActivity(Landroid/content/Intent;)V

    .line 1724
    return-void
.end method

.method private openTrackBrowserForShuffleAll()V
    .locals 2

    .prologue
    .line 1696
    new-instance v0, Lcom/google/android/music/medialist/AllSongsList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/AllSongsList;-><init>(I)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->shuffleAll(Lcom/google/android/music/medialist/SongList;)V

    .line 1697
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->startMediaPlayer(Landroid/app/Activity;)V

    .line 1698
    return-void
.end method

.method private searchForItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/database/Cursor;II)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    .locals 10
    .parameter "item"
    .parameter "c"
    .parameter "keyIndex"
    .parameter "idIndex"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 1466
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->hasSortKey()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1467
    :cond_0
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>()V

    .line 1502
    :goto_0
    return-object v6

    .line 1470
    :cond_1
    const/4 v5, 0x0

    .line 1471
    .local v5, start:I
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sub-int v1, v6, v7

    .line 1472
    .local v1, end:I
    move v3, v5

    .line 1473
    .local v3, probe:I
    :goto_1
    if-gt v5, v1, :cond_5

    .line 1474
    add-int v6, v5, v1

    div-int/lit8 v3, v6, 0x2

    .line 1475
    invoke-interface {p2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1476
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1478
    .local v4, probeKey:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getSortKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 1479
    .local v0, compare:I
    if-nez v0, :cond_3

    .line 1481
    const/4 v2, 0x0

    .line 1482
    .local v2, isIdSame:Z
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Item;->getId()J

    move-result-wide v6

    invoke-interface {p2, p4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 1483
    const/4 v2, 0x1

    .line 1489
    :cond_2
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6, v3, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_0

    .line 1490
    .end local v2           #isIdSame:Z
    :cond_3
    if-gez v0, :cond_4

    .line 1491
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 1493
    :cond_4
    sub-int v1, v3, v7

    goto :goto_1

    .line 1498
    .end local v0           #compare:I
    .end local v4           #probeKey:Ljava/lang/String;
    :cond_5
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    sub-int/2addr v6, v7

    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1502
    new-instance v6, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    invoke-direct {v6, v3, v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;-><init>(IZ)V

    goto :goto_0
.end method

.method private setContextMenuPosition(FF)V
    .locals 2
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1097
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1098
    .local v0, menuPlacement:Landroid/graphics/Rect;
    float-to-int v1, p1

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 1099
    float-to-int v1, p2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 1100
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 1101
    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v1, v1, 0xa

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 1102
    iget-object p0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContextMenu:Lcom/google/android/music/menu/MusicListMenu;

    .end local p0
    check-cast p0, Lcom/google/android/music/menu/MusicDropdownMenu;

    invoke-virtual {p0, v0}, Lcom/google/android/music/menu/MusicDropdownMenu;->setButtonLocation(Landroid/graphics/Rect;)V

    .line 1103
    return-void
.end method

.method private switchAlbumKeepOnStatus(Lcom/google/android/music/albumwall/MusicItem;)V
    .locals 6
    .parameter "item"

    .prologue
    .line 1778
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getHasRemote()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1779
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v3

    .line 1780
    .local v3, wasKept:Z
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1781
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    if-nez v2, :cond_1

    .line 1801
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v3           #wasKept:Z
    :cond_0
    :goto_0
    return-void

    .line 1784
    .restart local v2       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v3       #wasKept:Z
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3

    .line 1786
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v0

    .line 1787
    .local v0, id:J
    if-eqz v3, :cond_2

    .line 1788
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectPlaylist(J)V

    goto :goto_0

    .line 1790
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectPlaylist(J)V

    goto :goto_0

    .line 1793
    .end local v0           #id:J
    :cond_3
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v0

    .line 1794
    .restart local v0       #id:J
    if-eqz v3, :cond_4

    .line 1795
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->deselectAlbum(JJ)V

    goto :goto_0

    .line 1797
    :cond_4
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicItem;->getArtistId()J

    move-result-wide v4

    invoke-virtual {v2, v0, v1, v4, v5}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    goto :goto_0
.end method

.method private switchArtistKeepOnStatus(Lcom/google/android/music/albumwall/MusicPile;)V
    .locals 5
    .parameter "pile"

    .prologue
    .line 1808
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getHasRemote()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1809
    invoke-direct {p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isItemKeepOn(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)Z

    move-result v3

    .line 1810
    .local v3, wasKept:Z
    iget-object v2, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1811
    .local v2, manager:Lcom/google/android/music/OfflineMusicManager;
    if-nez v2, :cond_1

    .line 1822
    .end local v2           #manager:Lcom/google/android/music/OfflineMusicManager;
    .end local v3           #wasKept:Z
    :cond_0
    :goto_0
    return-void

    .line 1814
    .restart local v2       #manager:Lcom/google/android/music/OfflineMusicManager;
    .restart local v3       #wasKept:Z
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v0

    .line 1815
    .local v0, artistId:J
    if-eqz v3, :cond_2

    .line 1816
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->deselectArtist(J)V

    goto :goto_0

    .line 1818
    :cond_2
    invoke-virtual {v2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectArtist(J)V

    goto :goto_0
.end method


# virtual methods
.method public getAlbumArtistIndexForPile(Lcom/google/android/music/albumwall/MusicPile;)I
    .locals 4
    .parameter "pile"

    .prologue
    .line 1263
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor()Landroid/database/Cursor;

    move-result-object v1

    .line 1265
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v2

    .line 1266
    .local v2, result:Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    iget-boolean v3, v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-eqz v3, :cond_0

    .line 1267
    iget v0, v2, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1268
    .local v0, albumIndex:I
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1269
    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 1270
    invoke-virtual {p1}, Lcom/google/android/music/albumwall/MusicPile;->getSortKey()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    move v3, v0

    .line 1274
    .end local v0           #albumIndex:I
    :goto_0
    return v3

    :cond_0
    const/4 v3, -0x1

    goto :goto_0
.end method

.method public isCreatingShortcut()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    return v0
.end method

.method public isManageMusicMode()Z
    .locals 1

    .prologue
    .line 1751
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onAlbumChanged()V
    .locals 2

    .prologue
    .line 1877
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    .line 1878
    return-void
.end method

.method public onArtistChanged()V
    .locals 2

    .prologue
    .line 1873
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    .line 1874
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearTopLevelCursor()V

    .line 451
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->clearCursor()V

    .line 452
    return-void
.end method

.method public onItemLabelSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
    .locals 2
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 904
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-eqz v0, :cond_0

    .line 917
    :goto_0
    return-void

    .line 907
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$1;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onItemLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V
    .locals 2
    .parameter "item"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1016
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1027
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-nez v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$5;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public declared-synchronized onItemSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V
    .locals 2
    .parameter "item"

    .prologue
    .line 943
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpenningItem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 996
    :goto_0
    monitor-exit p0

    return-void

    .line 944
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpenningItem:Z

    .line 946
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;

    invoke-direct {v1, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$3;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 943
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onManageMusicModeStateChanged(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 2
    .parameter "offlineMusicManager"

    .prologue
    .line 1755
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    if-ne v0, p1, :cond_0

    .line 1771
    :goto_0
    return-void

    .line 1759
    :cond_0
    iput-object p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    .line 1760
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setManageAlbumMode(Z)V

    .line 1761
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1762
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V

    .line 1763
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflineMusicManager:Lcom/google/android/music/OfflineMusicManager;

    invoke-virtual {v0, p0}, Lcom/google/android/music/OfflineMusicManager;->registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V

    .line 1764
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v0}, Lcom/google/android/music/albumwall/AlbumWallView;->getLabelsVisible()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1766
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->setLabelsVisible(Z)V

    .line 1770
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->invalidateTexture(I)V

    goto :goto_0
.end method

.method public onPileLabelSelected(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
    .locals 2
    .parameter "pile"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 921
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-eqz v0, :cond_0

    .line 934
    :goto_0
    return-void

    .line 924
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$2;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPileLongPressed(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V
    .locals 2
    .parameter "pile"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1000
    invoke-virtual {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->isManageMusicMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    :cond_0
    :goto_0
    return-void

    .line 1003
    :cond_1
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    if-nez v0, :cond_0

    .line 1006
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$4;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onRecycleItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "type"
    .parameter "item"
    .parameter "bitmap"

    .prologue
    .line 1284
    packed-switch p1, :pswitch_data_0

    .line 1295
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v0, p3}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 1298
    :pswitch_0
    return-void

    .line 1284
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onRecyclePileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLandroid/graphics/Bitmap;)V
    .locals 1
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "bitmap"

    .prologue
    .line 1280
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    invoke-virtual {v0, p4}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    .line 1281
    return-void
.end method

.method public onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V
    .locals 6
    .parameter "pile"
    .parameter "expanded"
    .parameter "reply"

    .prologue
    const/4 v5, 0x1

    .line 886
    move-object v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    move-object v3, v0

    .line 887
    .local v3, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {p0, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v2

    .line 888
    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 889
    .local v1, count:I
    if-eqz p2, :cond_0

    if-le v1, v5, :cond_0

    iget-boolean v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    if-eqz v4, :cond_0

    .line 890
    add-int/lit8 v1, v1, 0x1

    .line 893
    :cond_0
    if-eqz p2, :cond_1

    iget v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    if-ne v4, v5, :cond_1

    .line 894
    add-int/lit8 v1, v1, 0x1

    .line 899
    :cond_1
    invoke-interface {p3, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;->reply(I)V

    .line 900
    return-void
.end method

.method public onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V
    .locals 30
    .parameter "pile"
    .parameter "expanded"
    .parameter "n"
    .parameter "reply"

    .prologue
    .line 721
    move-object/from16 v0, p1

    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    move-object/from16 v18, v0

    .line 722
    .local v18, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    new-instance v15, Lcom/google/android/music/albumwall/MusicItem;

    invoke-direct {v15}, Lcom/google/android/music/albumwall/MusicItem;-><init>()V

    .line 723
    .local v15, item:Lcom/google/android/music/albumwall/MusicItem;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getCursor(Lcom/google/android/music/albumwall/MusicPile;)Landroid/database/Cursor;

    move-result-object v9

    .line 726
    .local v9, c:Landroid/database/Cursor;
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_3

    .line 727
    if-nez p3, :cond_2

    .line 728
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_0

    const/16 v26, 0x1

    move/from16 v14, v26

    .line 729
    .local v14, isArtists:Z
    :goto_0
    if-eqz v14, :cond_1

    const/16 v26, 0x1

    :goto_1
    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 731
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v12

    .line 732
    .local v12, id:J
    invoke-virtual {v15, v12, v13}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 733
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v17

    .line 734
    .local v17, label:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 736
    .local v20, overlay:Ljava/lang/String;
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 737
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 738
    move-object/from16 v0, p4

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    .line 844
    .end local v12           #id:J
    .end local v14           #isArtists:Z
    .end local v17           #label:Ljava/lang/String;
    .end local v20           #overlay:Ljava/lang/String;
    :goto_2
    return-void

    .line 728
    :cond_0
    const/16 v26, 0x0

    move/from16 v14, v26

    goto :goto_0

    .line 729
    .restart local v14       #isArtists:Z
    :cond_1
    const/16 v26, 0x2

    goto :goto_1

    .line 741
    .end local v14           #isArtists:Z
    :cond_2
    add-int/lit8 p3, p3, -0x1

    .line 746
    :cond_3
    if-eqz p2, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    move/from16 v26, v0

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_5

    .line 747
    if-nez p3, :cond_4

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object/from16 v26, v0

    const v27, 0x7f0c0064

    invoke-virtual/range {v26 .. v27}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    move-result-object v17

    .line 749
    .restart local v17       #label:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 750
    .restart local v20       #overlay:Ljava/lang/String;
    const/16 v26, 0x3

    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 751
    const-wide/16 v26, -0x1

    move-object v0, v15

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 752
    const-wide/16 v26, -0x1

    move-object v0, v15

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 753
    move-object v0, v15

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 754
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 755
    move-object/from16 v0, p4

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto :goto_2

    .line 758
    .end local v17           #label:Ljava/lang/String;
    .end local v20           #overlay:Ljava/lang/String;
    :cond_4
    add-int/lit8 p3, p3, -0x1

    .line 762
    :cond_5
    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v26

    move/from16 v0, p3

    move/from16 v1, v26

    if-lt v0, v1, :cond_6

    .line 763
    const/16 v26, 0x0

    move-object/from16 v0, p4

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto :goto_2

    .line 766
    :cond_6
    move-object v0, v9

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 768
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    .line 841
    new-instance v26, Ljava/lang/RuntimeException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "unknown mode "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 770
    :pswitch_0
    const/16 v26, 0x1

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 771
    .local v4, albumId:J
    const/16 v26, 0x3

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v7

    .line 772
    .local v7, artistId:J
    const/16 v26, 0x2

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 773
    .local v3, album:Ljava/lang/String;
    const/16 v26, 0x4

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 774
    .local v6, artist:Ljava/lang/String;
    const/16 v26, 0x5

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 775
    .local v25, sortKey:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 776
    .restart local v20       #overlay:Ljava/lang/String;
    const/16 v26, 0x6

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_7

    const/16 v26, 0x1

    move/from16 v11, v26

    .line 777
    .local v11, hasRemote:Z
    :goto_3
    const/16 v26, 0x7

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_8

    const/16 v26, 0x1

    move/from16 v10, v26

    .line 778
    .local v10, hasLocal:Z
    :goto_4
    const/16 v26, 0x8

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-nez v26, :cond_9

    const/16 v26, 0x1

    move/from16 v16, v26

    .line 779
    .local v16, keepOn:Z
    :goto_5
    invoke-virtual {v15, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 780
    invoke-virtual {v15, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 781
    invoke-virtual {v15, v7, v8}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 782
    const/16 v26, 0x0

    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 783
    invoke-virtual {v15, v3}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 784
    invoke-virtual {v15, v6}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 785
    move-object v0, v15

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 786
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 787
    invoke-virtual {v15, v11}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 788
    invoke-virtual {v15, v10}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 789
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    .line 843
    .end local v3           #album:Ljava/lang/String;
    .end local v4           #albumId:J
    .end local v6           #artist:Ljava/lang/String;
    .end local v7           #artistId:J
    .end local v25           #sortKey:Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p4

    move-object v1, v15

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;)V

    goto/16 :goto_2

    .line 776
    .end local v10           #hasLocal:Z
    .end local v11           #hasRemote:Z
    .end local v16           #keepOn:Z
    .restart local v3       #album:Ljava/lang/String;
    .restart local v4       #albumId:J
    .restart local v6       #artist:Ljava/lang/String;
    .restart local v7       #artistId:J
    .restart local v25       #sortKey:Ljava/lang/String;
    :cond_7
    const/16 v26, 0x0

    move/from16 v11, v26

    goto :goto_3

    .line 777
    .restart local v11       #hasRemote:Z
    :cond_8
    const/16 v26, 0x0

    move/from16 v10, v26

    goto :goto_4

    .line 778
    .restart local v10       #hasLocal:Z
    :cond_9
    const/16 v26, 0x0

    move/from16 v16, v26

    goto :goto_5

    .line 793
    .end local v3           #album:Ljava/lang/String;
    .end local v4           #albumId:J
    .end local v6           #artist:Ljava/lang/String;
    .end local v7           #artistId:J
    .end local v10           #hasLocal:Z
    .end local v11           #hasRemote:Z
    .end local v20           #overlay:Ljava/lang/String;
    .end local v25           #sortKey:Ljava/lang/String;
    :pswitch_1
    const/16 v26, 0x0

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v23

    .line 794
    .local v23, playlistId:J
    const/16 v26, 0x1

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectivePlaylistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 795
    .local v19, name:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 796
    .restart local v20       #overlay:Ljava/lang/String;
    const/16 v26, 0x2

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_a

    const/16 v26, 0x1

    move/from16 v11, v26

    .line 797
    .restart local v11       #hasRemote:Z
    :goto_7
    const/16 v26, 0x3

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_b

    const/16 v26, 0x1

    move/from16 v10, v26

    .line 798
    .restart local v10       #hasLocal:Z
    :goto_8
    const/16 v26, 0x4

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-nez v26, :cond_c

    const/16 v26, 0x1

    move/from16 v16, v26

    .line 799
    .restart local v16       #keepOn:Z
    :goto_9
    move-object v0, v15

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 800
    move-object v0, v15

    move-wide/from16 v1, v23

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 801
    const/16 v26, 0x3

    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 802
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 803
    move-object v0, v15

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 804
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 805
    invoke-virtual {v15, v11}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 806
    invoke-virtual {v15, v10}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 807
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_6

    .line 796
    .end local v10           #hasLocal:Z
    .end local v11           #hasRemote:Z
    .end local v16           #keepOn:Z
    :cond_a
    const/16 v26, 0x0

    move/from16 v11, v26

    goto :goto_7

    .line 797
    .restart local v11       #hasRemote:Z
    :cond_b
    const/16 v26, 0x0

    move/from16 v10, v26

    goto :goto_8

    .line 798
    .restart local v10       #hasLocal:Z
    :cond_c
    const/16 v26, 0x0

    move/from16 v16, v26

    goto :goto_9

    .line 812
    .end local v10           #hasLocal:Z
    .end local v11           #hasRemote:Z
    .end local v19           #name:Ljava/lang/String;
    .end local v20           #overlay:Ljava/lang/String;
    .end local v23           #playlistId:J
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;->getId()J

    move-result-wide v26

    move-object v0, v15

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setArtistId(J)V

    .line 816
    :pswitch_3
    const/16 v26, 0x1

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    .line 817
    .restart local v4       #albumId:J
    const/16 v26, 0x2

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveAlbumName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 818
    .restart local v3       #album:Ljava/lang/String;
    const/16 v26, 0x3

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, p0

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 819
    .restart local v6       #artist:Ljava/lang/String;
    const/16 v26, 0x4

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 820
    .restart local v25       #sortKey:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 824
    .restart local v20       #overlay:Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lcom/google/android/music/albumwall/MusicPile;->getId()J

    move-result-wide v21

    .line 825
    .local v21, pileId:J
    const/16 v26, 0x5

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_d

    const/16 v26, 0x1

    move/from16 v11, v26

    .line 826
    .restart local v11       #hasRemote:Z
    :goto_a
    const/16 v26, 0x6

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v26

    if-eqz v26, :cond_e

    const/16 v26, 0x1

    move/from16 v10, v26

    .line 827
    .restart local v10       #hasLocal:Z
    :goto_b
    const/16 v26, 0x7

    move-object v0, v9

    move/from16 v1, v26

    invoke-interface {v0, v1}, Landroid/database/Cursor;->isNull(I)Z

    move-result v26

    if-nez v26, :cond_f

    const/16 v26, 0x1

    move/from16 v16, v26

    .line 828
    .restart local v16       #keepOn:Z
    :goto_c
    const/16 v26, 0x20

    shl-long v26, v21, v26

    const-wide v28, 0xffffffffL

    and-long v28, v28, v4

    or-long v26, v26, v28

    move-object v0, v15

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicItem;->setId(J)V

    .line 829
    invoke-virtual {v15, v4, v5}, Lcom/google/android/music/albumwall/MusicItem;->setAlbumId(J)V

    .line 830
    const/16 v26, 0x0

    move-object v0, v15

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setType(I)V

    .line 831
    invoke-virtual {v15, v3}, Lcom/google/android/music/albumwall/MusicItem;->setMainLabel(Ljava/lang/String;)V

    .line 832
    invoke-virtual {v15, v6}, Lcom/google/android/music/albumwall/MusicItem;->setSubLabel(Ljava/lang/String;)V

    .line 833
    move-object v0, v15

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setSortKey(Ljava/lang/String;)V

    .line 834
    move-object v0, v15

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/MusicItem;->setOverlayLabel(Ljava/lang/String;)V

    .line 835
    invoke-virtual {v15, v11}, Lcom/google/android/music/albumwall/MusicItem;->setHasRemote(Z)V

    .line 836
    invoke-virtual {v15, v10}, Lcom/google/android/music/albumwall/MusicItem;->setHasLocal(Z)V

    .line 837
    invoke-virtual/range {v15 .. v16}, Lcom/google/android/music/albumwall/MusicItem;->setKeepOn(Z)V

    goto/16 :goto_6

    .line 825
    .end local v10           #hasLocal:Z
    .end local v11           #hasRemote:Z
    .end local v16           #keepOn:Z
    :cond_d
    const/16 v26, 0x0

    move/from16 v11, v26

    goto :goto_a

    .line 826
    .restart local v11       #hasRemote:Z
    :cond_e
    const/16 v26, 0x0

    move/from16 v10, v26

    goto :goto_b

    .line 827
    .restart local v10       #hasLocal:Z
    :cond_f
    const/16 v26, 0x0

    move/from16 v16, v26

    goto :goto_c

    .line 768
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public onRequestItemTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
    .locals 29
    .parameter "type"
    .parameter "item"
    .parameter "config"
    .parameter "reply"

    .prologue
    .line 563
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/music/albumwall/MusicItem;

    move-object/from16 v17, v0

    .line 564
    .local v17, musicItem:Lcom/google/android/music/albumwall/MusicItem;
    move-object/from16 v10, p3

    .line 565
    .local v10, musicConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;
    const/4 v11, 0x0

    .line 567
    .local v11, bitmap:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_0

    .line 660
    :goto_0
    move-object/from16 v0, p4

    move-object v1, v11

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;->reply(Landroid/graphics/Bitmap;)V

    .line 661
    return-void

    .line 569
    :pswitch_0
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageWidth()F

    move-result v5

    move v0, v5

    float-to-int v0, v0

    move/from16 v26, v0

    .line 570
    .local v26, w:I
    invoke-virtual/range {p3 .. p3}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getImageHeight()F

    move-result v5

    float-to-int v13, v5

    .line 572
    .local v13, h:I
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v26

    move v3, v13

    move v4, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createIconBitmap(Lcom/google/android/music/albumwall/MusicItem;IIZ)Landroid/graphics/Bitmap;

    move-result-object v14

    .line 573
    .local v14, icon:Landroid/graphics/Bitmap;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    move/from16 v24, v0

    .line 574
    .local v24, streamingAvailable:Z
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getHasLocal()Z

    move-result v5

    if-nez v5, :cond_0

    if-nez v24, :cond_0

    const/4 v5, 0x1

    move/from16 v16, v5

    .line 575
    .local v16, itemUnavailable:Z
    :goto_1
    if-eqz v16, :cond_1

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    move-object v5, v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move-object v0, v5

    move/from16 v1, v26

    move v2, v13

    move-object v3, v6

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/BitmapPool;->get(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 577
    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 578
    .local v12, c:Landroid/graphics/Canvas;
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOfflinePaint:Landroid/graphics/Paint;

    move-object v7, v0

    invoke-virtual {v12, v14, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mBitmapPool:Lcom/google/android/music/albumwall/BitmapPool;

    move-object v5, v0

    invoke-virtual {v5, v14}, Lcom/google/android/music/albumwall/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 574
    .end local v12           #c:Landroid/graphics/Canvas;
    .end local v16           #itemUnavailable:Z
    :cond_0
    const/4 v5, 0x0

    move/from16 v16, v5

    goto :goto_1

    .line 581
    .restart local v16       #itemUnavailable:Z
    :cond_1
    move-object v11, v14

    goto :goto_0

    .line 586
    .end local v13           #h:I
    .end local v14           #icon:Landroid/graphics/Bitmap;
    .end local v16           #itemUnavailable:Z
    .end local v24           #streamingAvailable:Z
    .end local v26           #w:I
    :pswitch_1
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getMainLabel()Ljava/lang/String;

    move-result-object v7

    .line 587
    .local v7, mainLabel:Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getSubLabel()Ljava/lang/String;

    move-result-object v8

    .line 588
    .local v8, subLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsClustered:Z

    move v5, v0

    if-eqz v5, :cond_2

    const/4 v5, 0x3

    move v6, v5

    .line 589
    .local v6, labelType:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getType()I

    move-result v15

    .line 590
    .local v15, itemType:I
    invoke-virtual {v10}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowSongCount()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 591
    packed-switch v15, :pswitch_data_1

    .line 627
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    .end local v6           #labelType:I
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unknown itemType "

    .end local v7           #mainLabel:Ljava/lang/String;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 588
    .end local v15           #itemType:I
    .restart local v7       #mainLabel:Ljava/lang/String;
    :cond_2
    const/4 v5, 0x1

    move v6, v5

    goto :goto_2

    .line 593
    .restart local v6       #labelType:I
    .restart local v15       #itemType:I
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v27

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Artists;->getAudioByArtistCount(Landroid/content/Context;J)I

    move-result v22

    .line 594
    .local v22, songCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    const v8, 0x7f0c000d

    invoke-virtual {v5, v8}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    .end local v8           #subLabel:Ljava/lang/String;
    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 629
    :goto_3
    const/4 v8, 0x0

    .end local v22           #songCount:I
    .restart local v8       #subLabel:Ljava/lang/String;
    :goto_4
    move-object/from16 v5, p0

    move-object/from16 v9, p2

    .line 643
    invoke-direct/range {v5 .. v10}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 645
    goto/16 :goto_0

    .line 600
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v27

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Genres;->getGenreMembersCount(Landroid/content/Context;J)I

    move-result v22

    .line 601
    .restart local v22       #songCount:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    const v8, 0x7f0c000d

    invoke-virtual {v5, v8}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    .end local v8           #subLabel:Ljava/lang/String;
    move-result-object v5

    move-object/from16 v0, p0

    move-object v1, v5

    move-object v2, v7

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 605
    goto :goto_3

    .line 607
    .end local v22           #songCount:I
    .restart local v8       #subLabel:Ljava/lang/String;
    :pswitch_4
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v19

    .line 609
    .local v19, playListId:J
    const-wide/16 v27, -0x1

    cmp-long v5, v19, v27

    if-nez v5, :cond_3

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMusicPreferences:Lcom/google/android/music/jumper/MusicPreferences;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/google/android/music/jumper/MusicPreferences;->getRecentlyAddedSongsSortOrder()I

    move-result v23

    .line 611
    .local v23, sortOrder:I
    new-instance v21, Lcom/google/android/music/medialist/RecentlyAdddedSongList;

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-direct {v0, v1}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;-><init>(I)V

    .line 612
    .local v21, recentlyAdded:Lcom/google/android/music/medialist/RecentlyAdddedSongList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    move-object/from16 v0, v21

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/google/android/music/medialist/RecentlyAdddedSongList;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v25

    .line 613
    .local v25, uri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/google/android/music/store/MusicContent;->getCount(Landroid/content/Context;Landroid/net/Uri;)I

    move-result v22

    .line 618
    .end local v21           #recentlyAdded:Lcom/google/android/music/medialist/RecentlyAdddedSongList;
    .end local v23           #sortOrder:I
    .end local v25           #uri:Landroid/net/Uri;
    .restart local v22       #songCount:I
    :goto_5
    move-object/from16 v0, p0

    move-object v1, v7

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullPlaylistLabel(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 620
    goto :goto_3

    .line 615
    .end local v22           #songCount:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getId()J

    move-result-wide v27

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Playlists$Members;->getPlaylistItemsCount(Landroid/content/Context;J)I

    move-result v22

    .restart local v22       #songCount:I
    goto :goto_5

    .line 622
    .end local v19           #playListId:J
    .end local v22           #songCount:I
    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v27

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/google/android/music/store/MusicContent$Albums;->getAudioInAlbumCount(Landroid/content/Context;J)I

    move-result v22

    .line 623
    .restart local v22       #songCount:I
    move-object/from16 v0, p0

    move-object v1, v7

    move-object v2, v8

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->formatFullAlbumLabel(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 625
    goto/16 :goto_3

    .line 631
    .end local v22           #songCount:I
    :cond_4
    packed-switch v15, :pswitch_data_2

    goto/16 :goto_4

    .line 635
    :pswitch_6
    move-object v8, v7

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    const v7, 0x7f0c000d

    invoke-virtual {v5, v7}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getString(I)Ljava/lang/String;

    .end local v7           #mainLabel:Ljava/lang/String;
    move-result-object v7

    .line 637
    .restart local v7       #mainLabel:Ljava/lang/String;
    goto/16 :goto_4

    .line 648
    .end local v6           #labelType:I
    .end local v7           #mainLabel:Ljava/lang/String;
    .end local v8           #subLabel:Ljava/lang/String;
    .end local v15           #itemType:I
    :pswitch_7
    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getOverlayLabel()Ljava/lang/String;

    move-result-object v18

    .line 649
    .local v18, overlayLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 651
    goto/16 :goto_0

    .line 653
    .end local v18           #overlayLabel:Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v5, v0

    invoke-virtual/range {v17 .. v17}, Lcom/google/android/music/albumwall/MusicItem;->getAlbumId()J

    move-result-wide v27

    move-object v0, v5

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/google/android/music/utils/BackgroundUtils;->getAdaptedBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 655
    goto/16 :goto_0

    .line 657
    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object v2, v10

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto/16 :goto_0

    .line 567
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_7
        :pswitch_9
        :pswitch_0
        :pswitch_8
    .end packed-switch

    .line 591
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 631
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V
    .locals 12
    .parameter "pileIndex"
    .parameter "reply"

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 468
    const/4 v7, 0x0

    .line 469
    .local v7, pile:Lcom/google/android/music/albumwall/MusicPile;
    iget v9, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    invoke-static {v9}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 470
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getTopLevelCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 471
    .local v0, c:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v9

    if-ge p1, v9, :cond_0

    .line 472
    new-instance v7, Lcom/google/android/music/albumwall/MusicPile;

    .end local v7           #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {v7}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .line 473
    .restart local v7       #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 474
    iget v9, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    packed-switch v9, :pswitch_data_0

    .line 509
    .end local v0           #c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    if-eqz v7, :cond_1

    .line 510
    iget v9, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    invoke-virtual {v7, v9}, Lcom/google/android/music/albumwall/MusicPile;->setMode(I)V

    .line 512
    :cond_1
    invoke-interface {p2, v7}, Lcom/google/android/music/albumwall/AlbumWallCallback$PileReply;->reply(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;)V

    .line 513
    return-void

    .line 476
    .restart local v0       #c:Landroid/database/Cursor;
    :pswitch_0
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 477
    .local v2, id:J
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveArtistName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 478
    .local v5, label:Ljava/lang/String;
    const/4 v9, 0x2

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 479
    .local v8, sortKey:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 480
    .local v6, overlayLabel:Ljava/lang/String;
    const/4 v9, 0x3

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    if-ne v9, v10, :cond_2

    move v1, v10

    .line 481
    .local v1, hasRemote:Z
    :goto_1
    const/4 v9, 0x4

    invoke-interface {v0, v9}, Landroid/database/Cursor;->isNull(I)Z

    move-result v9

    if-nez v9, :cond_3

    move v4, v10

    .line 482
    .local v4, keepOn:Z
    :goto_2
    invoke-virtual {v7, v2, v3}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 483
    invoke-virtual {v7, v5}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v7, v8}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 485
    invoke-virtual {v7, v6}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    .line 486
    invoke-virtual {v7, v1}, Lcom/google/android/music/albumwall/MusicPile;->setHasRemote(Z)V

    .line 487
    invoke-virtual {v7, v4}, Lcom/google/android/music/albumwall/MusicPile;->setKeepOn(Z)V

    goto :goto_0

    .end local v1           #hasRemote:Z
    .end local v4           #keepOn:Z
    :cond_2
    move v1, v11

    .line 480
    goto :goto_1

    .restart local v1       #hasRemote:Z
    :cond_3
    move v4, v11

    .line 481
    goto :goto_2

    .line 491
    .end local v1           #hasRemote:Z
    .end local v2           #id:J
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #overlayLabel:Ljava/lang/String;
    .end local v8           #sortKey:Ljava/lang/String;
    :pswitch_1
    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 492
    .restart local v2       #id:J
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 493
    .restart local v5       #label:Ljava/lang/String;
    invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 494
    .restart local v8       #sortKey:Ljava/lang/String;
    invoke-direct {p0, v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->effectiveOverlayLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 495
    .restart local v6       #overlayLabel:Ljava/lang/String;
    invoke-virtual {v7, v2, v3}, Lcom/google/android/music/albumwall/MusicPile;->setId(J)V

    .line 496
    invoke-virtual {v7, v5}, Lcom/google/android/music/albumwall/MusicPile;->setLabel(Ljava/lang/String;)V

    .line 497
    invoke-virtual {v7, v8}, Lcom/google/android/music/albumwall/MusicPile;->setSortKey(Ljava/lang/String;)V

    .line 498
    invoke-virtual {v7, v6}, Lcom/google/android/music/albumwall/MusicPile;->setOverlayLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 505
    .end local v0           #c:Landroid/database/Cursor;
    .end local v2           #id:J
    .end local v5           #label:Ljava/lang/String;
    .end local v6           #overlayLabel:Ljava/lang/String;
    .end local v8           #sortKey:Ljava/lang/String;
    :cond_4
    if-nez p1, :cond_0

    .line 506
    new-instance v7, Lcom/google/android/music/albumwall/MusicPile;

    .end local v7           #pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {v7}, Lcom/google/android/music/albumwall/MusicPile;-><init>()V

    .restart local v7       #pile:Lcom/google/android/music/albumwall/MusicPile;
    goto :goto_0

    .line 474
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onRequestPileCount(Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V
    .locals 1
    .parameter "reply"

    .prologue
    .line 555
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getPileCount()I

    move-result v0

    .line 557
    .local v0, pileCount:I
    invoke-interface {p1, v0}, Lcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;->reply(I)V

    .line 558
    return-void
.end method

.method public onRequestPileLabelTexture(ILcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallConfig;Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;)V
    .locals 17
    .parameter "type"
    .parameter "pile"
    .parameter "expanded"
    .parameter "config"
    .parameter "reply"

    .prologue
    .line 518
    move-object/from16 v0, p2

    check-cast v0, Lcom/google/android/music/albumwall/MusicPile;

    move-object v14, v0

    .line 519
    .local v14, musicPile:Lcom/google/android/music/albumwall/MusicPile;
    move-object/from16 v8, p4

    .line 520
    .local v8, musicConfig:Lcom/google/android/music/albumwall/AlbumWallConfig;
    const/4 v11, 0x0

    .line 521
    .local v11, bitmap:Landroid/graphics/Bitmap;
    packed-switch p1, :pswitch_data_0

    .line 550
    :goto_0
    move-object/from16 v0, p5

    move-object v1, v11

    invoke-interface {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallCallback$BitmapReply;->reply(Landroid/graphics/Bitmap;)V

    .line 551
    return-void

    .line 523
    :pswitch_0
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicPile;->getLabel()Ljava/lang/String;

    move-result-object v10

    .line 524
    .local v10, artist:Ljava/lang/String;
    if-eqz p3, :cond_1

    const/4 v3, 0x2

    move v4, v3

    .line 526
    .local v4, labelType:I
    :goto_1
    move-object v5, v10

    .line 527
    .local v5, label:Ljava/lang/String;
    if-nez p3, :cond_0

    invoke-virtual {v8}, Lcom/google/android/music/albumwall/AlbumWallConfig;->getShowSongCount()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 528
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getAlbumCount(Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v9

    .line 529
    .local v9, albumCount:I
    move-object/from16 v0, p0

    move-object v1, v14

    invoke-direct {v0, v1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getSongCount(Lcom/google/android/music/albumwall/MusicPile;)I

    move-result v16

    .line 530
    .local v16, songCount:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    move v3, v0

    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    .end local v5           #label:Ljava/lang/String;
    const v3, 0x7f0c00e4

    move v13, v3

    .line 533
    .local v13, labelId:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v3, v0

    move-object v0, v3

    move/from16 v1, v16

    move v2, v9

    invoke-static {v0, v1, v2}, Lcom/google/android/music/MusicUtils;->makeSongAndAlbumCountLabel(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v12

    .line 535
    .local v12, countsText:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mContext:Lcom/google/android/music/albumwall/GL2AlbumWallActivity;

    move-object v3, v0

    invoke-virtual {v3}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v10, v5, v6

    const/4 v6, 0x1

    aput-object v12, v5, v6

    invoke-virtual {v3, v13, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 538
    .end local v9           #albumCount:I
    .end local v12           #countsText:Ljava/lang/String;
    .end local v13           #labelId:I
    .end local v16           #songCount:I
    .restart local v5       #label:Ljava/lang/String;
    :cond_0
    const/4 v6, 0x0

    move-object/from16 v3, p0

    move-object/from16 v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabel(ILjava/lang/String;Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 540
    goto :goto_0

    .line 524
    .end local v4           #labelType:I
    .end local v5           #label:Ljava/lang/String;
    :cond_1
    const/4 v3, 0x0

    move v4, v3

    goto :goto_1

    .line 530
    .restart local v4       #labelType:I
    .restart local v9       #albumCount:I
    .restart local v16       #songCount:I
    :cond_2
    const v3, 0x7f0c00e5

    move v13, v3

    goto :goto_2

    .line 542
    .end local v4           #labelType:I
    .end local v9           #albumCount:I
    .end local v10           #artist:Ljava/lang/String;
    .end local v16           #songCount:I
    :pswitch_1
    invoke-virtual {v14}, Lcom/google/android/music/albumwall/MusicPile;->getOverlayLabel()Ljava/lang/String;

    move-result-object v15

    .line 543
    .local v15, overlayLabel:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v15

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createOverlayLabel(Ljava/lang/String;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v11

    .line 545
    goto :goto_0

    .line 547
    .end local v15           #overlayLabel:Ljava/lang/String;
    :pswitch_2
    move-object/from16 v0, p0

    move-object v1, v14

    move-object v2, v8

    invoke-direct {v0, v1, v2}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->createLabelMark(Lcom/google/android/music/albumwall/AlbumWallCallback$Item;Lcom/google/android/music/albumwall/AlbumWallConfig;)Landroid/graphics/Bitmap;

    move-result-object v11

    goto :goto_0

    .line 521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onStreamabilityChanged(Z)V
    .locals 2
    .parameter "isStreamable"

    .prologue
    .line 1744
    iget-boolean v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    if-eq v0, p1, :cond_0

    .line 1745
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mIsStreamingEnabled:Z

    .line 1746
    iget-object v0, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    iget-object v1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mView:Lcom/google/android/music/albumwall/AlbumWallView;

    invoke-virtual {v1}, Lcom/google/android/music/albumwall/AlbumWallView;->getViewState()Lcom/google/android/music/albumwall/AlbumWallView$ViewState;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/music/albumwall/AlbumWallView;->requestRefresh(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1748
    :cond_0
    return-void
.end method

.method public declared-synchronized setAllowOpenningItem(Z)V
    .locals 1
    .parameter "allowOpenningItem"

    .prologue
    .line 937
    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mAllowOpenningItem:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 938
    monitor-exit p0

    return-void

    .line 937
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCreatingShortcut(Z)V
    .locals 0
    .parameter "creatingShortcut"

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mOpenedForShortcutCreation:Z

    .line 460
    return-void
.end method

.method public setMode(I)V
    .locals 0
    .parameter "mode"

    .prologue
    .line 455
    iput p1, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    .line 456
    return-void
.end method

.method public updateState(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V
    .locals 9
    .parameter "state"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 1309
    const/4 v3, 0x0

    .line 1311
    .local v3, searchResult:Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;
    iget v4, p0, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->mMode:I

    invoke-static {v4}, Lcom/google/android/music/albumwall/GL2AlbumWallActivity;->isClusteredMode(I)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1312
    iget-object v2, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v2, Lcom/google/android/music/albumwall/MusicPile;

    .line 1313
    .local v2, pile:Lcom/google/android/music/albumwall/MusicPile;
    invoke-direct {p0, v2, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v3

    .line 1315
    iget v0, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1316
    .local v0, index:I
    iput v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePileIndex:I

    .line 1317
    iget-boolean v4, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-nez v4, :cond_2

    .line 1318
    if-ne v0, v6, :cond_1

    .line 1319
    invoke-virtual {p1, v8}, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->set(Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    .line 1381
    .end local v2           #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_0
    :goto_0
    return-void

    .line 1322
    .restart local v2       #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_1
    new-instance v4, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;

    invoke-direct {v4, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$6;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v0, v4}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestPile(ILcom/google/android/music/albumwall/AlbumWallCallback$PileReply;)V

    .line 1332
    .end local v0           #index:I
    .end local v2           #pile:Lcom/google/android/music/albumwall/MusicPile;
    :cond_2
    invoke-direct {p0}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->getPileCount()I

    move-result v4

    iput v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->pileCount:I

    .line 1333
    iget-object v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v4, :cond_3

    .line 1335
    iget-object v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$7;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v4, v7, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V

    .line 1344
    :cond_3
    iget-object v1, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    check-cast v1, Lcom/google/android/music/albumwall/MusicItem;

    .line 1345
    .local v1, item:Lcom/google/android/music/albumwall/MusicItem;
    invoke-direct {p0, v1, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfItem(Lcom/google/android/music/albumwall/MusicItem;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v3

    .line 1347
    iget v0, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    .line 1348
    .restart local v0       #index:I
    iput v0, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItemIndex:I

    .line 1350
    iget-boolean v4, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-nez v4, :cond_4

    .line 1351
    if-ne v0, v6, :cond_5

    .line 1352
    iput-object v8, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisibleItem:Lcom/google/android/music/albumwall/AlbumWallCallback$Item;

    .line 1363
    :cond_4
    :goto_1
    iget-object v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    if-eqz v4, :cond_0

    .line 1364
    iget-object v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    check-cast v4, Lcom/google/android/music/albumwall/MusicPile;

    invoke-direct {p0, v4, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->findCurrentIndexOfPile(Lcom/google/android/music/albumwall/MusicPile;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;

    move-result-object v3

    .line 1365
    iget-boolean v4, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mFound:Z

    if-eqz v4, :cond_6

    .line 1366
    iget v4, v3, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$SearchResult;->mIndex:I

    iput v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 1368
    iget-object v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$9;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$9;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v4, v7, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestChildCount(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZLcom/google/android/music/albumwall/AlbumWallCallback$IntegerReply;)V

    goto :goto_0

    .line 1354
    :cond_5
    iget-object v4, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->centerVisiblePile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    new-instance v5, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;

    invoke-direct {v5, p0, p1}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback$8;-><init>(Lcom/google/android/music/albumwall/MusicAlbumWallCallback;Lcom/google/android/music/albumwall/AlbumWallView$ViewState;)V

    invoke-virtual {p0, v4, v7, v0, v5}, Lcom/google/android/music/albumwall/MusicAlbumWallCallback;->onRequestItem(Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;ZILcom/google/android/music/albumwall/AlbumWallCallback$ItemReply;)V

    goto :goto_1

    .line 1376
    :cond_6
    iput-object v8, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPile:Lcom/google/android/music/albumwall/AlbumWallCallback$Pile;

    .line 1377
    iput v6, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileIndex:I

    .line 1378
    iput v6, p1, Lcom/google/android/music/albumwall/AlbumWallView$ViewState;->expandedPileItemCount:I

    goto :goto_0
.end method
