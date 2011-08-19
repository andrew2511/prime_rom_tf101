.class public Lcom/asus/reader/book/ReaderDatabase;
.super Ljava/lang/Object;
.source "ReaderDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/asus/reader/book/ReaderDatabase$unMountListener;,
        Lcom/asus/reader/book/ReaderDatabase$mountListener;,
        Lcom/asus/reader/book/ReaderDatabase$DbHandler;,
        Lcom/asus/reader/book/ReaderDatabase$BookContentObserver;,
        Lcom/asus/reader/book/ReaderDatabase$TaskStack;
    }
.end annotation


# static fields
.field private static AUTHOR_CHECK_ARRAY:[I

.field private static BYTE_00:I

.field private static BYTE_01:I

.field private static BYTE_64:I

.field private static BYTE_F7:I

.field private static BYTE_FF:I

.field public static final Book_NoNotify_URI:Landroid/net/Uri;

.field public static final Book_Shift_URI:Landroid/net/Uri;

.field public static final Book_URI:Landroid/net/Uri;

.field public static final Cache_URI:Landroid/net/Uri;

.field public static final Category_URI:Landroid/net/Uri;

.field public static final DOWN_COLUMNS:[Ljava/lang/String;

.field public static final DownloadTable:Landroid/net/Uri;

.field private static final GetFileList:Landroid/net/Uri;

.field public static final ID_ACSM_COLUMNS:[Ljava/lang/String;

.field public static final ID_DOC_COLUMNS:[Ljava/lang/String;

.field public static final MEDIA_COLUMNS:[Ljava/lang/String;

.field public static final ReCount_URI:Landroid/net/Uri;

.field public static final ReaderTableAcsm:Landroid/net/Uri;

.field public static final ReaderTableBook:Landroid/net/Uri;

.field private static START_CHECK_ARRAY:[I

.field private static TITLE_CHECK_ARRAY:[I

.field public static final Uri_volume:Landroid/net/Uri;

.field public static final Vibe_Activities_URI:Landroid/net/Uri;

.field public static final book_projection:[Ljava/lang/String;

.field public static final cache_projection:[Ljava/lang/String;

.field public static final category_projection:[Ljava/lang/String;

.field private static lastChange:J

.field private static final mCoverHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mDoLooperPrepare:Z

.field private static final mDownloadHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static mMediaMount:Z

.field private static mMediaUnMount:Z

.field private static final mPathCoverUriHash:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mTaskQueue:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

.field private static sInstance:Lcom/asus/reader/book/ReaderDatabase;

.field public static whereColumeID:Ljava/lang/String;


# instance fields
.field public hasPressReader:I

.field public hostHasUsed:Z

.field private final mContext:Landroid/content/Context;

.field private mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

.field private mLooper:Landroid/os/Looper;

.field mMountListener:Lcom/asus/reader/book/ReaderDatabase$mountListener;

.field private mPollingTimer:Landroid/os/CountDownTimer;

.field private mPreloadBooksAuthor:[Ljava/lang/CharSequence;

.field private mPreloadBooksDocLang:[Ljava/lang/CharSequence;

.field private mPreloadBooksTitle:[Ljava/lang/CharSequence;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mTimeToken:J

.field mUnMountlistener:Lcom/asus/reader/book/ReaderDatabase$unMountListener;

.field public volume_ids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    const-string v0, "content://reader/book"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    .line 72
    const-string v0, "content://reader/category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->Category_URI:Landroid/net/Uri;

    .line 73
    const-string v0, "content://reader/cache"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->Cache_URI:Landroid/net/Uri;

    .line 74
    const-string v0, "content://reader/book_shift"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->Book_Shift_URI:Landroid/net/Uri;

    .line 75
    const-string v0, "content://reader/book_nonotify"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->Book_NoNotify_URI:Landroid/net/Uri;

    .line 76
    const-string v0, "content://reader/vibe_activities"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->Vibe_Activities_URI:Landroid/net/Uri;

    .line 77
    const-string v0, "content://reader/recount"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->ReCount_URI:Landroid/net/Uri;

    .line 85
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "category_id"

    aput-object v1, v0, v4

    const-string v1, "category_order"

    aput-object v1, v0, v5

    const-string v1, "category_name"

    aput-object v1, v0, v6

    const-string v1, "count"

    aput-object v1, v0, v7

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->category_projection:[Ljava/lang/String;

    .line 113
    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_display_name"

    aput-object v1, v0, v4

    const-string v1, "date_added"

    aput-object v1, v0, v5

    const-string v1, "rank"

    aput-object v1, v0, v6

    const-string v1, "category_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "date_access"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cover_path"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "creator"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "_data"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m_order"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "local_order"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "last_viewed_pos"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "last_viewed_font_size"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "book_source"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "_id_doc"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "error_state"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    .line 143
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "book_id"

    aput-object v1, v0, v3

    const-string v1, "page_no"

    aput-object v1, v0, v4

    const-string v1, "hit_time"

    aput-object v1, v0, v5

    const-string v1, "width"

    aput-object v1, v0, v6

    const-string v1, "height"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "font_size"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "filename"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->cache_projection:[Ljava/lang/String;

    .line 164
    const-string v0, "content://reader/book"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    .line 165
    const-string v0, "content://reader/acsm"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableAcsm:Landroid/net/Uri;

    .line 167
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->GetFileList:Landroid/net/Uri;

    .line 170
    const-string v0, "content://downloads/all_downloads"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->DownloadTable:Landroid/net/Uri;

    .line 172
    const-string v0, "content://media/external/volume"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->Uri_volume:Landroid/net/Uri;

    .line 177
    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/asus/reader/book/ReaderDatabase;->lastChange:J

    .line 248
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "_display_name"

    aput-object v1, v0, v5

    const-string v1, "date_added"

    aput-object v1, v0, v6

    const-string v1, "date_modified"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "mime_type"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "volume_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->MEDIA_COLUMNS:[Ljava/lang/String;

    .line 259
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id_doc"

    aput-object v1, v0, v3

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "_data"

    aput-object v1, v0, v5

    const-string v1, "cover_path"

    aput-object v1, v0, v6

    const-string v1, "mime_type"

    aput-object v1, v0, v7

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->ID_DOC_COLUMNS:[Ljava/lang/String;

    .line 267
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id_doc"

    aput-object v1, v0, v3

    const-string v1, "date_added"

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->ID_ACSM_COLUMNS:[Ljava/lang/String;

    .line 272
    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "uri"

    aput-object v1, v0, v3

    const-string v1, "_data"

    aput-object v1, v0, v4

    const-string v1, "mediaprovider_uri"

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->DOWN_COLUMNS:[Ljava/lang/String;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    .line 284
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->mDownloadHash:Ljava/util/HashMap;

    .line 285
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->mPathCoverUriHash:Ljava/util/HashMap;

    .line 300
    const/4 v0, 0x0

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    .line 308
    sput-boolean v3, Lcom/asus/reader/book/ReaderDatabase;->mMediaMount:Z

    .line 309
    sput-boolean v3, Lcom/asus/reader/book/ReaderDatabase;->mMediaUnMount:Z

    .line 682
    const/4 v0, -0x1

    sput v0, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    .line 683
    sput v3, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    .line 684
    const/16 v0, 0x64

    sput v0, Lcom/asus/reader/book/ReaderDatabase;->BYTE_64:I

    .line 685
    sput v4, Lcom/asus/reader/book/ReaderDatabase;->BYTE_01:I

    .line 686
    const/16 v0, -0x9

    sput v0, Lcom/asus/reader/book/ReaderDatabase;->BYTE_F7:I

    .line 688
    const/16 v0, 0x10

    new-array v0, v0, [I

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v1, v0, v3

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v1, v0, v4

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v1, v0, v5

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v1, v0, v6

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lcom/asus/reader/book/ReaderDatabase;->BYTE_FF:I

    aput v2, v0, v1

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->START_CHECK_ARRAY:[I

    .line 694
    new-array v0, v7, [I

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v1, v0, v3

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v1, v0, v4

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v1, v0, v5

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_64:I

    aput v1, v0, v6

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->AUTHOR_CHECK_ARRAY:[I

    .line 695
    new-array v0, v7, [I

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v1, v0, v3

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_00:I

    aput v1, v0, v4

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_01:I

    aput v1, v0, v5

    sget v1, Lcom/asus/reader/book/ReaderDatabase;->BYTE_F7:I

    aput v1, v0, v6

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->TITLE_CHECK_ARRAY:[I

    .line 2526
    sput-boolean v3, Lcom/asus/reader/book/ReaderDatabase;->mDoLooperPrepare:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 320
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 281
    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 292
    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksTitle:[Ljava/lang/CharSequence;

    .line 293
    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksAuthor:[Ljava/lang/CharSequence;

    .line 294
    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksDocLang:[Ljava/lang/CharSequence;

    .line 304
    const/4 v1, -0x1

    iput v1, p0, Lcom/asus/reader/book/ReaderDatabase;->hasPressReader:I

    .line 306
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/asus/reader/book/ReaderDatabase;->hostHasUsed:Z

    .line 311
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->volume_ids:Ljava/util/ArrayList;

    .line 321
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase;->mContext:Landroid/content/Context;

    .line 323
    const-string v1, "ReaderDatabase"

    const-string v2, "Before bind the thread"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ReaderDatabase"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, thread_handler:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 326
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mLooper:Landroid/os/Looper;

    .line 327
    new-instance v1, Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase;->mLooper:Landroid/os/Looper;

    invoke-direct {v1, p0, v2}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;-><init>(Lcom/asus/reader/book/ReaderDatabase;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    .line 329
    return-void
.end method

.method static synthetic access$100(Lcom/asus/reader/book/ReaderDatabase;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/asus/reader/book/ReaderDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/asus/reader/book/ReaderDatabase;->setObserver()V

    return-void
.end method

.method static synthetic access$1100(Lcom/asus/reader/book/ReaderDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/asus/reader/book/ReaderDatabase;->setBcastReceiver()V

    return-void
.end method

.method static synthetic access$1200(Lcom/asus/reader/book/ReaderDatabase;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 67
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->checkBookExist(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Landroid/content/Context;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-static {p0, p1, p2}, Lcom/asus/reader/book/ReaderDatabase;->updateCepubMetadata(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/asus/reader/book/ReaderDatabase;->mDoLooperPrepare:Z

    return v0
.end method

.method static synthetic access$200()J
    .locals 2

    .prologue
    .line 67
    sget-wide v0, Lcom/asus/reader/book/ReaderDatabase;->lastChange:J

    return-wide v0
.end method

.method static synthetic access$202(J)J
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-wide p0, Lcom/asus/reader/book/ReaderDatabase;->lastChange:J

    return-wide p0
.end method

.method static synthetic access$300(Lcom/asus/reader/book/ReaderDatabase;)Lcom/asus/reader/book/ReaderDatabase$DbHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lcom/asus/reader/book/ReaderDatabase;->mMediaMount:Z

    return v0
.end method

.method static synthetic access$402(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    sput-boolean p0, Lcom/asus/reader/book/ReaderDatabase;->mMediaMount:Z

    return p0
.end method

.method static synthetic access$500(Lcom/asus/reader/book/ReaderDatabase;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/asus/reader/book/ReaderDatabase;->updateShelfTable(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/asus/reader/book/ReaderDatabase;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/asus/reader/book/ReaderDatabase;->getMountedVolumeId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/asus/reader/book/ReaderDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/asus/reader/book/ReaderDatabase;->loadDb()V

    return-void
.end method

.method static synthetic access$800(Lcom/asus/reader/book/ReaderDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/asus/reader/book/ReaderDatabase;->updateShelfTableCount()V

    return-void
.end method

.method static synthetic access$900(Lcom/asus/reader/book/ReaderDatabase;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 67
    invoke-direct {p0}, Lcom/asus/reader/book/ReaderDatabase;->syncAcsmTableAndStartFulfillService()V

    return-void
.end method

.method public static native bookmarkToPosDoubletNative(Ljava/lang/String;)D
.end method

.method private bruteForceInsertAcsmTable(Landroid/database/Cursor;Landroid/database/Cursor;)Z
    .locals 17
    .parameter "readerAcsmCursor"
    .parameter "mediaAcsmCursor"

    .prologue
    .line 932
    const/4 v13, 0x0

    .line 934
    .local v13, isUpdate:Z
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 935
    .local v12, existAcsmDataIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 936
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 939
    :cond_0
    new-instance v16, Landroid/content/ContentValues;

    invoke-direct/range {v16 .. v16}, Landroid/content/ContentValues;-><init>()V

    .line 940
    .end local p1
    .local v16, values:Landroid/content/ContentValues;
    :cond_1
    :goto_1
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 941
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 945
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/asus/reader/book/ReaderDatabase;->DownloadTable:Landroid/net/Uri;

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->DOWN_COLUMNS:[Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "(_data = \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v0, p2

    move v1, v7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\' )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 948
    .local v10, downloadCursor:Landroid/database/Cursor;
    const-string v3, "_id_doc"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 949
    const/4 v3, 0x1

    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    const/4 v3, 0x1

    :try_start_0
    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v15

    .line 952
    .local v15, uri:Landroid/net/Uri;
    const/4 v3, 0x2

    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v15}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 957
    .end local v15           #uri:Landroid/net/Uri;
    :goto_2
    const/4 v3, 0x3

    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 958
    const/4 v3, 0x4

    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 959
    const/4 v3, 0x5

    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/vnd.adobe.adept+xml"

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    const-string v3, "_state"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 964
    const/4 v3, 0x0

    :try_start_1
    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v14

    .line 965
    .local v14, mediaTableId:Ljava/lang/String;
    :cond_2
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 966
    const/4 v3, 0x2

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 967
    const/4 v3, 0x0

    invoke-interface {v10, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 968
    .local v9, bookSourceUrl:Ljava/lang/String;
    sget-object v3, Lcom/asus/reader/book/ReaderDatabaseUtil;->sBookSourceMap:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 969
    const-string v3, "book_source"

    sget-object v4, Lcom/asus/reader/book/ReaderDatabaseUtil;->sBookSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :cond_3
    sget-object v3, Lcom/asus/reader/book/ReaderDatabaseUtil;->sVibeIdMap:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 971
    const-string v3, "vibe_id"

    sget-object v4, Lcom/asus/reader/book/ReaderDatabaseUtil;->sVibeIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v16

    move-object v1, v3

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 974
    .end local v9           #bookSourceUrl:Ljava/lang/String;
    .end local v14           #mediaTableId:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v11, v3

    .line 975
    .local v11, e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 978
    .end local v11           #e:Ljava/lang/Exception;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableAcsm:Landroid/net/Uri;

    move-object v0, v3

    move-object v1, v4

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 979
    const/4 v13, 0x1

    .line 981
    if-eqz v10, :cond_1

    .line 982
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1

    .line 953
    :catch_1
    move-exception v3

    move-object v11, v3

    .line 954
    .restart local v11       #e:Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 955
    const/4 v3, 0x2

    move-object/from16 v0, p2

    move v1, v3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    move-object/from16 v0, p2

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v16

    move-object v1, v3

    move-object v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 985
    .end local v10           #downloadCursor:Landroid/database/Cursor;
    .end local v11           #e:Ljava/lang/Exception;
    :cond_5
    return v13
.end method

.method private checkBookExist(Ljava/lang/String;)Z
    .locals 2
    .parameter "mFilePath"

    .prologue
    .line 1180
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1181
    .local v0, mBook:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1182
    const/4 v1, 0x1

    .line 1184
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static checkBrand()Z
    .locals 2

    .prologue
    .line 2878
    const-string v0, "ro.product.brand"

    const-string v1, "notasus"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2879
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2880
    const/4 v0, 0x1

    .line 2881
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkCoverExist(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "mFilePath"

    .prologue
    .line 1154
    const-string v2, "ReaderDatabase"

    const-string v3, "check cover exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1155
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1156
    .local v0, f_bmp:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1158
    .local v1, f_png:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1159
    const-string v2, "ReaderDatabase"

    const-string v3, "BMP EXIST!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    const-string v2, ".bmp"

    .line 1167
    :goto_0
    return-object v2

    .line 1162
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1163
    const-string v2, "ReaderDatabase"

    const-string v3, "PNG EXIST!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    const-string v2, ".png"

    goto :goto_0

    .line 1167
    :cond_1
    const-string v2, ""

    goto :goto_0
.end method

.method public static native cleanupNativeDataNative()V
.end method

.method private clearVolumeIdList()V
    .locals 1

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->volume_ids:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1057
    return-void
.end method

.method private copyAllDataFromDocumentTable(Landroid/database/Cursor;I)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1189
    const-string v0, "ReaderDatabase"

    const-string v1, "========copyAllDataFromDocumentTable========"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1192
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 1194
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/reader/book/ReaderDatabase;->checkBookExist(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1197
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->syncCepubBook(Landroid/database/Cursor;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1200
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->syncTxtBook(Landroid/database/Cursor;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1203
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->syncKindleBook(Landroid/database/Cursor;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1206
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertPdbBookData(Landroid/content/Context;Landroid/database/Cursor;)Z

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 1209
    const-string v1, "_id_doc"

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1210
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1211
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1212
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1213
    const/4 v1, 0x4

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1214
    const/4 v1, 0x7

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1217
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_8

    .line 1218
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1219
    const-string v2, "ReaderDatabase"

    const-string v3, "===Add MIME TYPE IN DB=== "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v2, ".epub"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1221
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1233
    :goto_1
    const/4 v1, 0x1

    :try_start_0
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentNative(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1244
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1245
    const-string v1, "ReaderDatabase"

    const-string v2, "equals(CoverBmp)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    const-string v1, "cover_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1263
    :goto_2
    const-string v1, "ReaderDatabase"

    const-string v2, "After to gen the cover!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const-string v1, "DC.title"

    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1266
    const-string v2, "DC.creator"

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1267
    const-string v3, "DC.description"

    invoke-static {v3}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1268
    const-string v4, "DC.date"

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1269
    const-string v5, "DC.language"

    invoke-static {v5}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1271
    if-eqz v1, :cond_1

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 1272
    :cond_1
    const-string v1, "ReaderDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title == null & title = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    const-string v1, "ReaderDatabase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "title == null & title length= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x6

    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const-string v1, "title"

    const/4 v6, 0x6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1283
    :goto_3
    if-eqz v2, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1284
    const-string v1, "creator"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1287
    :cond_2
    if-eqz v3, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 1288
    const-string v1, "description"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    :cond_3
    if-eqz v4, :cond_4

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1292
    const-string v1, "date_create"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1294
    :cond_4
    if-eqz v5, :cond_5

    .line 1295
    const-string v1, "doc_lang"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1296
    :cond_5
    const-string v1, "last_viewed_font_size"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1298
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 1300
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1301
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1308
    const-string v1, "ReaderDatabase"

    const-string v2, "========End of One Document!!!========="

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1222
    :cond_6
    const-string v2, ".pdf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1223
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1225
    :cond_7
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1228
    :cond_8
    const/4 v1, 0x5

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1235
    :catch_0
    move-exception v1

    .line 1237
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 1238
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    goto/16 :goto_0

    .line 1248
    :cond_9
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1249
    const-string v1, "ReaderDatabase"

    const-string v2, "equals(CoverPng)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const-string v1, "cover_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1255
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/asus/reader/book/ReaderDatabase;->setCoverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1256
    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getCoverPathAndHW(Ljava/lang/String;)V

    .line 1257
    const-string v2, "cover_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 1277
    :cond_b
    const-string v6, "ReaderDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title != null & title = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    const-string v6, "ReaderDatabase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "title != null & title length= "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const-string v6, "title"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 1311
    :cond_c
    return-void
.end method

.method public static deleteOneBook(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 5
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2915
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2916
    const-string v1, "application/pressreader"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2918
    invoke-static {p2, p5}, Lcom/asus/reader/plugin/PressReader;->deleteOneBook(Ljava/lang/String;Landroid/content/Context;)V

    .line 2925
    :goto_0
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2926
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2927
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2934
    :cond_0
    :goto_1
    :try_start_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2935
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2936
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 2941
    :cond_1
    :goto_2
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0

    .line 2921
    :cond_2
    invoke-virtual {p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "content://media/external/file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 2929
    :catch_0
    move-exception v1

    .line 2930
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2938
    :catch_1
    move-exception v1

    .line 2939
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public static deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 2905
    const-string v0, "_id"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 2906
    const-string v1, "_data"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2907
    const-string v1, "cover_path"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2908
    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v0

    .line 2909
    const-string v1, "_id_doc"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 2910
    const-string v4, "mime_type"

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v5, p1

    .line 2911
    invoke-static/range {v0 .. v5}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static native findPageNoByPositionNative(D)I
.end method

.method public static getBookFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2186
    if-nez p1, :cond_0

    move-object v0, v4

    .line 2206
    :goto_0
    return-object v0

    .line 2188
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    move-object v0, v4

    .line 2189
    goto :goto_0

    .line 2190
    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2191
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, v4

    .line 2192
    goto :goto_0

    .line 2193
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_data = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2194
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2199
    if-nez v0, :cond_3

    move-object v0, v4

    .line 2200
    goto :goto_0

    .line 2201
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    .line 2202
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    move-object v0, v4

    .line 2203
    goto :goto_0

    .line 2205
    :cond_4
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    goto :goto_0
.end method

.method public static getBookName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2969
    const-string v0, "DC.title"

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2970
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2971
    :cond_0
    const-string v0, "BOOK"

    .line 2973
    :cond_1
    return-object v0
.end method

.method public static getBookPathFromAcsmVibeId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 2156
    .line 2158
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableAcsm:Landroid/net/Uri;

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "book_path"

    aput-object v3, v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "vibe_id = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\' AND _state = \'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "\'"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2163
    if-nez v0, :cond_3

    move-object v0, v4

    .line 2181
    :goto_0
    return-object v0

    .line 2173
    :catch_0
    move-exception v2

    .line 2165
    :cond_0
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2166
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2168
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2169
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    move v1, v7

    .line 2177
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2178
    if-eqz v1, :cond_1

    move-object v0, v2

    .line 2179
    goto :goto_0

    :cond_1
    move-object v0, v4

    .line 2181
    goto :goto_0

    :cond_2
    move-object v2, v1

    move v1, v6

    goto :goto_2

    :cond_3
    move-object v1, v4

    goto :goto_1
.end method

.method public static getBookPathFromVibeId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "vibe_id = \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->book_projection:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2131
    if-nez v0, :cond_0

    move-object v0, v4

    .line 2151
    :goto_0
    return-object v0

    .line 2133
    :cond_0
    const/4 v1, 0x0

    move-object v2, v4

    .line 2135
    :cond_1
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2136
    const-string v2, "_data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2138
    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2139
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_1

    .line 2140
    const/4 v1, 0x1

    move-object v6, v2

    move v2, v1

    move-object v1, v6

    .line 2147
    :goto_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2148
    if-eqz v2, :cond_2

    move-object v0, v1

    .line 2149
    goto :goto_0

    :cond_2
    move-object v0, v4

    .line 2151
    goto :goto_0

    .line 2143
    :catch_0
    move-exception v3

    goto :goto_1

    :cond_3
    move-object v6, v2

    move v2, v1

    move-object v1, v6

    goto :goto_2
.end method

.method public static getBookTocItems(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2956
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentIndexNative()[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    check-cast v0, [Ljava/lang/String;

    move v1, v5

    .line 2957
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 2959
    aget-object v2, v0, v1

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2962
    const/4 v3, 0x1

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/asus/reader/book/ReaderDatabase;->bookmarkToPosDoubletNative(Ljava/lang/String;)D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/asus/reader/book/ReaderDatabase;->findPageNoByPositionNative(D)I

    move-result v3

    .line 2964
    new-instance v4, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;

    aget-object v2, v2, v5

    invoke-direct {v4, v2, v3}, Lcom/asus/reader/ui/BookIndexAdapter$BookIndexCache;-><init>(Ljava/lang/String;I)V

    .line 2965
    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2957
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2967
    :cond_0
    return-void
.end method

.method public static native getCoverPathAndHW(Ljava/lang/String;)V
.end method

.method public static getExtensionFromMIMEType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 2945
    const-string v0, "application/epub+zip"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2946
    const-string v0, "epub"

    .line 2951
    :goto_0
    return-object v0

    .line 2947
    :cond_0
    const-string v0, "application/pdf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2948
    const-string v0, "pdf"

    goto :goto_0

    .line 2949
    :cond_1
    const-string v0, "text/plain"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2950
    const-string v0, "txt"

    goto :goto_0

    .line 2951
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/asus/reader/book/ReaderDatabase;
    .locals 1

    .prologue
    .line 317
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    return-object v0
.end method

.method public static native getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private getMountedVolumeId()Ljava/lang/String;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 1067
    const/4 v7, 0x0

    .line 1068
    .local v7, where:Ljava/lang/String;
    invoke-direct {p0}, Lcom/asus/reader/book/ReaderDatabase;->clearVolumeIdList()V

    .line 1070
    const-string v0, "content://media/external/volume"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1072
    .local v1, Uri_volume:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "volume_id"

    aput-object v3, v2, v8

    const-string v3, "(is_mounted=1)"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1075
    .local v6, cursor_volume:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 1076
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1078
    :cond_0
    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->setVolumeIdList(I)V

    .line 1080
    if-eqz v7, :cond_2

    .line 1081
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " OR volume_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1085
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1088
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1091
    :cond_1
    return-object v7

    .line 1083
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(volume_id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 347
    const-string v0, "ReaderDatabase"

    const-string v1, "=======Call init DB========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    new-instance v0, Lcom/asus/reader/book/ReaderDatabase;

    invoke-direct {v0, p0}, Lcom/asus/reader/book/ReaderDatabase;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    .line 352
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v1, v1, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 353
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    const/16 v1, 0x6b

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendEmptyMessage(I)Z

    .line 354
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v1, v1, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    const/16 v2, 0x67

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 356
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->sInstance:Lcom/asus/reader/book/ReaderDatabase;

    iget-object v1, v1, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    const/16 v2, 0x69

    invoke-virtual {v1, v2, v3}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 357
    return-void
.end method

.method public static isUser()Z
    .locals 2

    .prologue
    .line 2885
    const-string v0, "ro.build.type"

    const-string v1, "eng"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2886
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2887
    const/4 v0, 0x1

    .line 2888
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized loadDb()V
    .locals 10

    .prologue
    .line 995
    monitor-enter p0

    :try_start_0
    const-string v0, "ReaderDatabase"

    const-string v1, "======= loadDbSetting() ========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ID_DOC_COLUMNS:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mime_type <> \'application/pressreader\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const-string v5, "_data ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1000
    .local v6, cursor_book:Landroid/database/Cursor;
    if-nez v6, :cond_0

    .line 1001
    const-string v0, "ReaderDatabase"

    const-string v1, "QUERY BOOK TABLE FAILED!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1049
    :goto_0
    monitor-exit p0

    return-void

    .line 1007
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->GetFileList:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string v3, "(_data like \'%.epub\' OR _data like \'%.pdf\' OR _data LIKE \'%.txt\' OR _data LIKE \'%.cepub\' OR _data LIKE \'/mnt/sdcard/kindle/%_EBOK.prc\' OR _data LIKE \'%.pdb\' OR _data LIKE \'%.updb\')"

    const/4 v4, 0x0

    const-string v5, "_data ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1010
    .local v7, cursor_media:Landroid/database/Cursor;
    if-nez v7, :cond_1

    .line 1011
    const-string v0, "ReaderDatabase"

    const-string v1, "QUERY MEDIA TABLE FAILED!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 995
    .end local v6           #cursor_book:Landroid/database/Cursor;
    .end local v7           #cursor_media:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 1018
    .restart local v6       #cursor_book:Landroid/database/Cursor;
    .restart local v7       #cursor_media:Landroid/database/Cursor;
    :cond_1
    :try_start_2
    const-string v0, "ReaderDatabase"

    const-string v1, "========Create the folder!========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1019
    new-instance v8, Ljava/io/File;

    const-string v0, "/data/data/com.asus.reader/cover/"

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1020
    .local v8, dir:Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1021
    invoke-virtual {v8}, Ljava/io/File;->mkdir()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1026
    .end local v8           #dir:Ljava/io/File;
    :cond_2
    :goto_1
    :try_start_3
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_3

    .line 1028
    const-string v0, "ReaderDatabase"

    const-string v1, "===========================start copyAllDataFromDocumentTable==============================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    const/4 v0, 0x0

    invoke-direct {p0, v7, v0}, Lcom/asus/reader/book/ReaderDatabase;->copyAllDataFromDocumentTable(Landroid/database/Cursor;I)V

    .line 1046
    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1047
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1048
    const-string v0, "ReaderDatabase"

    const-string v1, "==========End of SYNC============"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1022
    :catch_0
    move-exception v0

    move-object v9, v0

    .line 1023
    .local v9, e:Ljava/lang/SecurityException;
    const-string v0, "ReaderDatabase"

    const-string v1, "cannot create cache DIR"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1032
    .end local v9           #e:Ljava/lang/SecurityException;
    :cond_3
    const-string v0, "ReaderDatabase"

    const-string v1, "=============================start syncDocList==================================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    invoke-direct {p0, v6, v7}, Lcom/asus/reader/book/ReaderDatabase;->syncDocList(Landroid/database/Cursor;Landroid/database/Cursor;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2
.end method

.method public static native loadDocumentIndexNative()[Ljava/lang/Object;
.end method

.method public static native loadDocumentNative(Ljava/lang/String;)V
.end method

.method public static openBook(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 7
    .parameter
    .parameter

    .prologue
    .line 2219
    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2220
    const-string v0, "mime_type"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2221
    const-string v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2222
    const-string v0, "last_viewed_pos"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v4

    .line 2223
    const-string v0, "last_viewed_font_size"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object v0, p0

    .line 2224
    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    .line 2225
    return-void
.end method

.method public static openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/high16 v8, 0x1000

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 2229
    if-gtz p2, :cond_1

    .line 2344
    :cond_0
    :goto_0
    return-void

    .line 2231
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 2233
    const-string v1, "date_access"

    new-instance v2, Ljava/lang/Long;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2235
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->Book_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v0, v1, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2238
    const-string v0, ""

    .line 2241
    :try_start_0
    invoke-static {p0, p3}, Lcom/asus/reader/book/ReaderDatabase;->getBookFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 2242
    if-eqz v1, :cond_14

    .line 2243
    const-string v0, "title"

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 2244
    const-string v2, "error_state"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 2245
    invoke-interface {v1}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v1, v0

    move v0, v2

    .line 2252
    :goto_1
    const-string v2, "application/epub+zip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "application/pdf"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".cepub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".txt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pdb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".updb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2256
    :cond_2
    const-string v2, "/data/data/com.asus.reader/cover/temp_cepub.epub"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/data/data/com.asus.reader/cover/temp_txt2epub.epub"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/data/data/com.asus.reader/cover/temp_converted_epub.epub"

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "/Nook/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    if-gtz v0, :cond_4

    .line 2260
    :cond_3
    new-instance v2, Landroid/content/ContentValues;

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Landroid/content/ContentValues;-><init>(I)V

    .line 2261
    const-string v3, "filepath"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2262
    const-string v3, "mimetype"

    invoke-virtual {v2, v3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2263
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2, v6, v6}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2267
    :cond_4
    const-string v2, "application/epub+zip"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "/Nook/"

    invoke-virtual {p3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-lez v0, :cond_a

    .line 2272
    :try_start_1
    const-string v0, "The "

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2273
    const-string v0, "The "

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2274
    :goto_2
    const-string v2, " Free"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2275
    const-string v1, " Free"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2276
    :cond_5
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 2277
    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 2278
    if-lez v1, :cond_8

    if-lez v2, :cond_8

    .line 2279
    if-le v1, v2, :cond_7

    .line 2280
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2288
    :cond_6
    :goto_3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2289
    const-string v2, "android.intent.action.SEARCH"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2290
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2291
    const-string v2, "bn.ereader/bn.ereader.activities.MyLibraryListActivity"

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2292
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Nook QueryStr = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2293
    const-string v2, "query"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2294
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move v0, v7

    .line 2299
    :goto_4
    if-nez v0, :cond_0

    .line 2301
    :try_start_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2302
    const-string v1, "bn.ereader/bn.ereader.activities.SplashActivity"

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2303
    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2304
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2305
    :catch_0
    move-exception v0

    goto/16 :goto_0

    .line 2247
    :catch_1
    move-exception v0

    .line 2248
    const-string v0, ""

    move-object v1, v0

    move v0, v5

    .line 2249
    goto/16 :goto_1

    .line 2282
    :cond_7
    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2283
    :cond_8
    if-lez v1, :cond_9

    .line 2284
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 2285
    :cond_9
    if-lez v2, :cond_6

    .line 2286
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v0

    goto :goto_3

    .line 2295
    :catch_2
    move-exception v0

    move v0, v5

    .line 2297
    goto :goto_4

    .line 2309
    :cond_a
    const-string v0, "application/epub+zip"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2310
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2311
    const-string v1, "path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2312
    const-string v1, "bookid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2313
    const-string v1, "pos"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2314
    const-string v1, "fontSize"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2315
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2316
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2317
    :cond_b
    const-string v0, "application/pdf"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 2318
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/asus/reader/pdf/PDFActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2319
    const-string v1, "path"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2320
    const-string v1, "bookid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2321
    const-string v1, "pos"

    invoke-virtual {v0, v1, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    .line 2322
    invoke-virtual {v0, v8}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2323
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2324
    :cond_c
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cepub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 2325
    invoke-static/range {p0 .. p6}, Lcom/asus/reader/book/ReaderDatabase;->openPreloadCepubBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)Z

    move-result v0

    .line 2326
    if-nez v0, :cond_0

    .line 2327
    invoke-static/range {p0 .. p6}, Lcom/asus/reader/book/ReaderDatabase;->openVibeCepubBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)Z

    move-result v0

    .line 2328
    if-nez v0, :cond_0

    .line 2329
    invoke-static/range {p0 .. p6}, Lcom/asus/reader/book/ReaderDatabase;->openCepubBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    goto/16 :goto_0

    .line 2331
    :cond_d
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2332
    invoke-static/range {p0 .. p6}, Lcom/asus/reader/book/ReaderDatabase;->openTxtBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    goto/16 :goto_0

    .line 2333
    :cond_e
    const-string v0, "application/pressreader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 2334
    invoke-static {p0, p3}, Lcom/asus/reader/plugin/PressReader;->openBook(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2335
    :cond_f
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".prc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2336
    invoke-static {p0, p3}, Lcom/asus/reader/book/ReaderDatabase;->openKindleBook(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2337
    :cond_10
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2338
    invoke-static/range {p0 .. p6}, Lcom/asus/reader/book/ReaderDatabase;->openPdbBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    goto/16 :goto_0

    .line 2339
    :cond_11
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".updb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 2340
    invoke-static/range {p0 .. p6}, Lcom/asus/reader/book/ReaderDatabase;->openPdbBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    goto/16 :goto_0

    .line 2342
    :cond_12
    const-string v0, "ReaderDatabase"

    const-string v1, "unknown mimetype or file extension"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_13
    move-object v0, v1

    goto/16 :goto_2

    :cond_14
    move-object v1, v0

    move v0, v5

    goto/16 :goto_1
.end method

.method public static openBook(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .parameter "context"
    .parameter "path"

    .prologue
    .line 2210
    invoke-static {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->getBookFromPath(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2211
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 2212
    const/4 v1, 0x0

    .line 2215
    :goto_0
    return v1

    .line 2213
    :cond_0
    invoke-static {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 2214
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 2215
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static openCepubBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2530
    const/4 p1, 0x0

    sput-boolean p1, Lcom/asus/reader/book/ReaderDatabase;->mDoLooperPrepare:Z

    .line 2531
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2532
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 2533
    const/4 p1, 0x1

    sput-boolean p1, Lcom/asus/reader/book/ReaderDatabase;->mDoLooperPrepare:Z

    .line 2536
    :cond_0
    const-string p1, "layout_inflater"

    invoke-virtual {p0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    .line 2537
    const v0, 0x7f030017

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2538
    new-instance v0, Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v5

    .line 2539
    const v0, 0x7f0700c5

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2540
    const v0, 0x7f0b0058

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 2541
    const-string v0, ""

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 2542
    invoke-virtual {v5, p1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 2543
    const p1, 0x7f07005c

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/asus/reader/book/ReaderDatabase$4;

    move-object v2, p3

    move-object v3, p0

    move v4, p2

    move-wide v6, p4

    move v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/asus/reader/book/ReaderDatabase$4;-><init>(Landroid/widget/EditText;Ljava/lang/String;Landroid/content/Context;ILandroid/app/AlertDialog;DI)V

    invoke-virtual {v5, p1, v0}, Landroid/app/AlertDialog;->setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 2570
    invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V

    .line 2571
    sget-boolean p0, Lcom/asus/reader/book/ReaderDatabase;->mDoLooperPrepare:Z

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    .line 2572
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 2574
    :cond_1
    return-void
.end method

.method public static openKindleBook(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 2365
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 2366
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 2367
    const-string v1, "_EBOK.prc"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2368
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2369
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 2370
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "kindle://book/mnt/sdcard/kindle/Treasure Island.mobi?action=open&asin="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "&sample=false"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2375
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 2376
    const-string v3, "kindle"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2377
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2378
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2379
    return-void
.end method

.method public static openPdbBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V
    .locals 7
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2348
    invoke-static {p3}, Lcom/asus/reader/bookconverter/EbookConvertFactory;->createEbook(Ljava/lang/String;)Lcom/asus/reader/bookconverter/Ebook;

    move-result-object v0

    .line 2349
    if-nez v0, :cond_1

    .line 2362
    :cond_0
    :goto_0
    return-void

    .line 2352
    :cond_1
    invoke-interface {v0}, Lcom/asus/reader/bookconverter/Ebook;->convert2Epub()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2354
    invoke-interface {v0}, Lcom/asus/reader/bookconverter/Ebook;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p2, v0}, Lcom/asus/reader/book/ReaderDatabaseUtil;->updatePdbBookData(Landroid/content/Context;ILjava/lang/String;)Z

    .line 2356
    const-string v3, "/data/data/com.asus.reader/cover/temp_converted_epub.epub"

    .line 2357
    const-string v1, "application/epub+zip"

    move-object v0, p0

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    goto :goto_0
.end method

.method public static openPreloadCepubBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2499
    const-string v0, "ChineseAll_asus_ebook_key20110401"

    .line 2501
    const-string v3, "/data/data/com.asus.reader/cover/temp_cepub.epub"

    .line 2502
    invoke-static {p3, v3, v0}, Lcom/asus/reader/bookconverter/Cepub2Epub;->convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 2503
    if-eqz v7, :cond_0

    .line 2504
    invoke-static {p0, p2, v3}, Lcom/asus/reader/book/ReaderDatabase;->updateCepubMetadata(Landroid/content/Context;ILjava/lang/String;)V

    .line 2505
    const-string v1, "application/epub+zip"

    move-object v0, p0

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    .line 2507
    :cond_0
    return v7
.end method

.method public static openTxtBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v1, 0x7f070092

    const/4 v8, 0x0

    .line 2383
    const-string v3, "/data/data/com.asus.reader/cover/temp_txt2epub.epub"

    .line 2384
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {p3, v3, v0}, Lcom/asus/reader/bookconverter/Txt2Epub;->convert(Ljava/lang/String;Ljava/lang/String;Ljava/util/Locale;)I

    move-result v0

    .line 2386
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 2387
    packed-switch v0, :pswitch_data_0

    .line 2402
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v8

    .line 2406
    :goto_0
    if-nez v1, :cond_1

    .line 2407
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2408
    if-nez v1, :cond_0

    .line 2409
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    .line 2411
    :cond_0
    if-eqz v1, :cond_1

    .line 2412
    new-instance v2, Lcom/asus/reader/book/ReaderDatabase$3;

    invoke-direct {v2, v1, p0}, Lcom/asus/reader/book/ReaderDatabase$3;-><init>(Landroid/os/Looper;Landroid/content/Context;)V

    .line 2418
    invoke-virtual {v2, v8, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2421
    :cond_1
    return-void

    .line 2389
    :pswitch_0
    const-string v1, "application/epub+zip"

    move-object v0, p0

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    .line 2390
    const/4 v0, 0x1

    move v1, v0

    move-object v0, v7

    .line 2391
    goto :goto_0

    .line 2393
    :pswitch_1
    const v0, 0x7f07008f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v8

    .line 2394
    goto :goto_0

    .line 2396
    :pswitch_2
    const v0, 0x7f070090

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v8

    .line 2397
    goto :goto_0

    .line 2399
    :pswitch_3
    const v0, 0x7f070091

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v1, v8

    .line 2400
    goto :goto_0

    .line 2387
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static openVibeCepubBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)Z
    .locals 8
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2512
    .line 2513
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/VibeAgent;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 2514
    if-nez v0, :cond_0

    .line 2515
    const/4 v0, 0x0

    .line 2523
    :goto_0
    return v0

    .line 2517
    :cond_0
    const-string v3, "/data/data/com.asus.reader/cover/temp_cepub.epub"

    .line 2518
    invoke-static {p3, v3, v0}, Lcom/asus/reader/bookconverter/Cepub2Epub;->convert(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    .line 2519
    if-eqz v7, :cond_1

    .line 2520
    invoke-static {p0, p2, v3}, Lcom/asus/reader/book/ReaderDatabase;->updateCepubMetadata(Landroid/content/Context;ILjava/lang/String;)V

    .line 2521
    const-string v1, "application/epub+zip"

    move-object v0, p0

    move v2, p2

    move-wide v4, p4

    move v6, p6

    invoke-static/range {v0 .. v6}, Lcom/asus/reader/book/ReaderDatabase;->openBook(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;DI)V

    :cond_1
    move v0, v7

    .line 2523
    goto :goto_0
.end method

.method private saveBitmapToPng(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 6
    .parameter "bitmap"
    .parameter "savePath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 865
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 866
    const/4 v2, 0x0

    .line 868
    .local v2, fOut:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #fOut:Ljava/io/FileOutputStream;
    .local v3, fOut:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 872
    .end local v3           #fOut:Ljava/io/FileOutputStream;
    .restart local v2       #fOut:Ljava/io/FileOutputStream;
    :goto_0
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 874
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 879
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 883
    :goto_2
    return-void

    .line 869
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 870
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 875
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 876
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 880
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 881
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method

.method private setBcastReceiver()V
    .locals 3

    .prologue
    .line 1850
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1851
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1852
    const-string v1, "android.intent.action.MEDIA_UNMOUNTABLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1853
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1854
    const-string v1, "android.intent.action.MEDIA_BAD_REMOVAL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1855
    const-string v1, "android.intent.action.MEDIA_SCANNER_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1856
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1858
    new-instance v1, Lcom/asus/reader/book/ReaderDatabase$2;

    invoke-direct {v1, p0}, Lcom/asus/reader/book/ReaderDatabase$2;-><init>(Lcom/asus/reader/book/ReaderDatabase;)V

    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1909
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1910
    return-void
.end method

.method private setCoverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "mDisplayName"
    .parameter "mPath"

    .prologue
    .line 1171
    const-string v0, "ReaderDatabase"

    const-string v1, "setCoverPath"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    if-nez p1, :cond_0

    .line 1174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {p2, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1838
    const-string v0, "ReaderDatabase"

    const-string v1, "=======setObserver()======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1839
    const-string v0, "content://media/external/file"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 1840
    const-string v1, "content://media/external/object"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 1841
    new-instance v2, Lcom/asus/reader/book/ReaderDatabase$BookContentObserver;

    invoke-direct {v2, p0}, Lcom/asus/reader/book/ReaderDatabase$BookContentObserver;-><init>(Lcom/asus/reader/book/ReaderDatabase;)V

    .line 1842
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1844
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1845
    return-void
.end method

.method private setVolumeIdList(I)V
    .locals 2
    .parameter "volume_id"

    .prologue
    .line 1052
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->volume_ids:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1053
    return-void
.end method

.method private declared-synchronized syncAcsmTableAndStartFulfillService()V
    .locals 10

    .prologue
    .line 889
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableAcsm:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ID_ACSM_COLUMNS:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_id_doc DESC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 891
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->GetFileList:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->MEDIA_COLUMNS:[Ljava/lang/String;

    const-string v3, "(_data LIKE \'%.acsm\' )"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 894
    if-nez v7, :cond_0

    .line 895
    const-string v0, "ReaderDatabase"

    const-string v1, "mediaAcsmCursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 929
    :goto_0
    monitor-exit p0

    return-void

    .line 897
    :cond_0
    if-nez v6, :cond_1

    .line 898
    :try_start_1
    const-string v0, "ReaderDatabase"

    const-string v1, "readerAcsmCursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 889
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 901
    :cond_1
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-double v0, v0

    .line 902
    invoke-direct {p0, v6, v7}, Lcom/asus/reader/book/ReaderDatabase;->bruteForceInsertAcsmTable(Landroid/database/Cursor;Landroid/database/Cursor;)Z

    move-result v2

    .line 903
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    long-to-double v3, v3

    .line 904
    const-string v5, "ReaderDatabase"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "bruteForceInsertAcsmTable(readerAcsmCursor,mediaAcsmCursor) excute time = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sub-double v0, v3, v0

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    if-eqz v2, :cond_2

    .line 907
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 908
    const-string v1, "type"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 909
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 927
    :goto_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 928
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 912
    :cond_2
    const-string v0, "ReaderDatabase"

    const-string v1, "no update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableAcsm:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ID_ACSM_COLUMNS:[Ljava/lang/String;

    const-string v3, "(_state <= \'1\')"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 915
    if-eqz v0, :cond_3

    .line 916
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_3

    .line 917
    const-string v1, "ReaderDatabase"

    const-string v2, "some acsm need fulfill , start drm fulfill service"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/asus/reader/book/DrmBookFulfillmentService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 919
    const-string v2, "type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 920
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 924
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private syncCepubBook(Landroid/database/Cursor;)Z
    .locals 23
    .parameter "movedMediaCursor"

    .prologue
    .line 606
    const-string v4, "ReaderDatabase"

    const-string v5, "check for cepub book"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    if-nez p1, :cond_0

    .line 608
    const-string v4, "ReaderDatabase"

    const-string v5, "cursor null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    const/4 v4, 0x0

    .line 678
    .end local p1
    :goto_0
    return v4

    .line 611
    .restart local p1
    :cond_0
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    .line 612
    .local v20, path:Ljava/lang/String;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".cepub"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 613
    const-string v4, "ReaderDatabase"

    const-string v5, "not a cepub book"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const/4 v4, 0x0

    goto :goto_0

    .line 616
    :cond_1
    const-string v4, "ReaderDatabase"

    const-string v5, "the book is cepub book , start sync to ereader.db"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    new-instance v22, Landroid/content/ContentValues;

    invoke-direct/range {v22 .. v22}, Landroid/content/ContentValues;-><init>()V

    .line 619
    .local v22, values:Landroid/content/ContentValues;
    const-string v4, "_id_doc"

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 620
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    const/4 v4, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v21

    .line 623
    .local v21, uri:Landroid/net/Uri;
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 628
    .end local v21           #uri:Landroid/net/Uri;
    :goto_1
    const/4 v4, 0x3

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 629
    const/4 v4, 0x4

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x4

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 630
    const/4 v4, 0x5

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x5

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    const/4 v4, 0x7

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 634
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/data/com.asus.reader/cover/cepub_cover_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 635
    .local v15, defulatCepubCoverPath:Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 636
    .local v14, defaultCepubCoverFile:Ljava/io/File;
    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    .line 639
    :try_start_1
    invoke-virtual {v14}, Ljava/io/File;->createNewFile()Z

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/book/ReaderDatabase;->mContext:Landroid/content/Context;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v5, "cepub_cover.png"

    invoke-virtual {v4, v5}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v12

    .line 641
    .local v12, cepubCoverInStream:Ljava/io/InputStream;
    new-instance v13, Ljava/io/FileOutputStream;

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 642
    .local v13, cepubCoverOutStream:Ljava/io/FileOutputStream;
    const/16 v4, 0x400

    new-array v11, v4, [B

    .line 644
    .local v11, buf_cover:[B
    :goto_2
    invoke-virtual {v12, v11}, Ljava/io/InputStream;->read([B)I

    move-result v18

    .local v18, len_cover:I
    if-lez v18, :cond_7

    .line 645
    const/4 v4, 0x0

    move-object v0, v13

    move-object v1, v11

    move v2, v4

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 648
    .end local v11           #buf_cover:[B
    .end local v12           #cepubCoverInStream:Ljava/io/InputStream;
    .end local v13           #cepubCoverOutStream:Ljava/io/FileOutputStream;
    .end local v18           #len_cover:I
    :catch_0
    move-exception v4

    move-object/from16 v17, v4

    .line 649
    .local v17, e:Ljava/io/IOException;
    invoke-virtual/range {v17 .. v17}, Ljava/io/IOException;->printStackTrace()V

    .line 652
    .end local v17           #e:Ljava/io/IOException;
    :cond_2
    :goto_3
    const-string v4, "cover_path"

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v15

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    const-string v4, "last_viewed_font_size"

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 656
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->DownloadTable:Landroid/net/Uri;

    sget-object v6, Lcom/asus/reader/book/ReaderDatabase;->DOWN_COLUMNS:[Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "(_data = \'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\' )"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v16

    .line 659
    .local v16, downloadCursor:Landroid/database/Cursor;
    const/4 v4, 0x0

    :try_start_2
    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    .line 660
    .end local p1
    .local v19, mediaTableId:Ljava/lang/String;
    :cond_3
    :goto_4
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 661
    const/4 v4, 0x2

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 662
    const/4 v4, 0x0

    move-object/from16 v0, v16

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 663
    .local v10, bookSourceUrl:Ljava/lang/String;
    sget-object v4, Lcom/asus/reader/book/ReaderDatabaseUtil;->sBookSourceMap:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 664
    const-string v4, "book_source"

    sget-object v5, Lcom/asus/reader/book/ReaderDatabaseUtil;->sBookSourceMap:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    :cond_4
    sget-object v4, Lcom/asus/reader/book/ReaderDatabaseUtil;->sVibeIdMap:Ljava/util/HashMap;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 666
    const-string v4, "vibe_id"

    sget-object v5, Lcom/asus/reader/book/ReaderDatabaseUtil;->sVibeIdMap:Ljava/util/HashMap;

    invoke-virtual {v5, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    .line 669
    .end local v10           #bookSourceUrl:Ljava/lang/String;
    .end local v19           #mediaTableId:Ljava/lang/String;
    :catch_1
    move-exception v4

    move-object/from16 v17, v4

    .line 670
    .local v17, e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 672
    .end local v17           #e:Ljava/lang/Exception;
    :cond_5
    if-eqz v16, :cond_6

    .line 673
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    .line 675
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    move-object v0, v4

    move-object v1, v5

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 676
    invoke-virtual/range {v22 .. v22}, Landroid/content/ContentValues;->clear()V

    .line 677
    const-string v4, "ReaderDatabase"

    const-string v5, "finish the cepub book sync"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v4, 0x1

    goto/16 :goto_0

    .line 624
    .end local v14           #defaultCepubCoverFile:Ljava/io/File;
    .end local v15           #defulatCepubCoverPath:Ljava/lang/String;
    .end local v16           #downloadCursor:Landroid/database/Cursor;
    .restart local p1
    :catch_2
    move-exception v4

    move-object/from16 v17, v4

    .line 625
    .restart local v17       #e:Ljava/lang/Exception;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Exception;->printStackTrace()V

    .line 626
    const/4 v4, 0x2

    move-object/from16 v0, p1

    move v1, v4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v4

    move-object v2, v5

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 646
    .end local v17           #e:Ljava/lang/Exception;
    .restart local v11       #buf_cover:[B
    .restart local v12       #cepubCoverInStream:Ljava/io/InputStream;
    .restart local v13       #cepubCoverOutStream:Ljava/io/FileOutputStream;
    .restart local v14       #defaultCepubCoverFile:Ljava/io/File;
    .restart local v15       #defulatCepubCoverPath:Ljava/lang/String;
    .restart local v18       #len_cover:I
    :cond_7
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V

    .line 647
    invoke-virtual {v12}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3
.end method

.method private syncDocList(Landroid/database/Cursor;Landroid/database/Cursor;)V
    .locals 9
    .parameter
    .parameter

    .prologue
    .line 1315
    const-string v0, "ReaderDatabase"

    const-string v1, "========SYNC Data between Reader & Media Provider========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 1319
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1320
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1323
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-gtz v0, :cond_5

    .line 1324
    const-string v0, "ReaderDatabase"

    const-string v1, "Delete all data in reader table"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 1328
    :cond_0
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkBookExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1330
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 1332
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1335
    if-eqz v0, :cond_4

    .line 1336
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1337
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1338
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->updateShelfTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1339
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1345
    :cond_2
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1801
    :cond_3
    :goto_1
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 1802
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 1803
    const-string v0, "ReaderDatabase"

    const-string v1, "======End of SYNC DB========="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    return-void

    .line 1342
    :cond_4
    const-string v0, "ReaderDatabase"

    const-string v1, "LatestBookPath Cursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1349
    :cond_5
    const/4 v0, 0x1

    const/4 v1, 0x1

    move v7, v1

    move v8, v0

    .line 1350
    :cond_6
    :goto_2
    if-eqz v8, :cond_1c

    if-eqz v7, :cond_1c

    .line 1351
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_a

    .line 1356
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkBookExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1358
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 1360
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1363
    if-eqz v0, :cond_9

    .line 1364
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1365
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1366
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->updateShelfTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1367
    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1373
    :cond_8
    :goto_3
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1374
    const/4 v0, 0x0

    move v8, v0

    goto :goto_2

    .line 1370
    :cond_9
    const-string v0, "ReaderDatabase"

    const-string v1, "LatestBookPath Cursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1376
    :cond_a
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1a

    .line 1378
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkBookExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1381
    invoke-direct {p0, p2}, Lcom/asus/reader/book/ReaderDatabase;->syncCepubBook(Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 1382
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1383
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_2

    .line 1387
    :cond_b
    invoke-direct {p0, p2}, Lcom/asus/reader/book/ReaderDatabase;->syncTxtBook(Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 1388
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1389
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_2

    .line 1393
    :cond_c
    invoke-direct {p0, p2}, Lcom/asus/reader/book/ReaderDatabase;->syncKindleBook(Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    .line 1394
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1395
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_2

    .line 1399
    :cond_d
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertPdbBookData(Landroid/content/Context;Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 1400
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1401
    const/4 v0, 0x0

    move v7, v0

    goto/16 :goto_2

    .line 1409
    :cond_e
    const-string v0, "_id_doc"

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1410
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1411
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1412
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1413
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1414
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1417
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_16

    .line 1418
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1419
    const-string v1, "ReaderDatabase"

    const-string v2, "===Add MIME TYPE IN DB=== "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    const-string v1, ".epub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1421
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/epub+zip"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1433
    :goto_4
    const/4 v0, 0x1

    :try_start_0
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentNative(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1446
    const-string v0, "ReaderDatabase"

    const-string v1, "equals(CoverBmp)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const-string v0, "cover_path"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1459
    :goto_5
    const-string v0, "ReaderDatabase"

    const-string v1, "After to gen the cover!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v0, "DC.title"

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1462
    const-string v1, "DC.creator"

    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1463
    const-string v2, "DC.description"

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1464
    const-string v3, "DC.date"

    invoke-static {v3}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1465
    const-string v4, "DC.language"

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1467
    if-eqz v0, :cond_f

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 1468
    :cond_f
    const-string v0, "title"

    const/4 v5, 0x6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1473
    :goto_6
    if-eqz v1, :cond_10

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 1474
    const-string v0, "creator"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1477
    :cond_10
    if-eqz v2, :cond_11

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 1478
    const-string v0, "description"

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1481
    :cond_11
    if-eqz v3, :cond_12

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 1482
    const-string v0, "date_create"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1484
    :cond_12
    if-eqz v4, :cond_13

    .line 1485
    const-string v0, "doc_lang"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1486
    :cond_13
    const-string v0, "last_viewed_font_size"

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1488
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 1491
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1493
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1495
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_31

    .line 1496
    const/4 v0, 0x0

    :goto_7
    move v7, v0

    .line 1497
    goto/16 :goto_2

    .line 1422
    :cond_14
    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1423
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pdf"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1425
    :cond_15
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1428
    :cond_16
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1435
    :catch_0
    move-exception v0

    .line 1437
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1438
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 1439
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_32

    .line 1440
    const/4 v0, 0x0

    :goto_8
    move v7, v0

    .line 1441
    goto/16 :goto_2

    .line 1449
    :cond_17
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1450
    const-string v0, "ReaderDatabase"

    const-string v1, "equals(CoverPng)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    const-string v0, "cover_path"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1455
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->setCoverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1456
    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->getCoverPathAndHW(Ljava/lang/String;)V

    .line 1457
    const-string v1, "cover_path"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 1470
    :cond_19
    const-string v5, "title"

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 1499
    :cond_1a
    const-string v0, "ReaderDatabase"

    const-string v1, "========== mBookCursor.getString(2).compareTo(mMediaCursor.getString(1)) = 0 ============"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1502
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1503
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 1504
    const-string v0, "ReaderDatabase"

    const-string v1, "=== Book cover need to generate ==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/4 v0, 0x1

    :try_start_1
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentNative(Ljava/lang/String;)V

    .line 1508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1509
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/asus/reader/book/ReaderDatabase;->setCoverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1510
    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getCoverPathAndHW(Ljava/lang/String;)V

    .line 1511
    const-string v2, "cover_path"

    invoke-virtual {v6, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1512
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 1513
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v6, v0, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1514
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1522
    :cond_1b
    :goto_9
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_30

    .line 1523
    const/4 v0, 0x0

    .line 1524
    :goto_a
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 1525
    const/4 v1, 0x0

    move v7, v1

    move v8, v0

    goto/16 :goto_2

    .line 1516
    :catch_1
    move-exception v0

    .line 1517
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    goto :goto_9

    .line 1656
    :cond_1c
    const-string v0, "ReaderDatabase"

    const-string v1, "=================start to check the mBook & mMedia=================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    const/4 v0, 0x1

    if-ne v8, v0, :cond_20

    if-nez v7, :cond_20

    .line 1661
    const-string v0, "ReaderDatabase"

    const-string v1, "(mBook == true && mMedia ==false)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-interface {p1}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1664
    :cond_1d
    :goto_b
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1665
    const/4 v0, 0x2

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkBookExist(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 1667
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/asus/reader/book/ReaderDatabase;->deleteOneBook(Landroid/database/Cursor;Landroid/content/Context;)I

    .line 1669
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1672
    if-eqz v0, :cond_1f

    .line 1673
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1674
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 1675
    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->updateShelfTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    :cond_1e
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_b

    .line 1679
    :cond_1f
    const-string v0, "ReaderDatabase"

    const-string v1, "LatestBookPath Cursor == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 1684
    :cond_20
    if-nez v8, :cond_2e

    const/4 v0, 0x1

    if-ne v7, v0, :cond_2e

    .line 1686
    const-string v0, "ReaderDatabase"

    const-string v1, "mBook == false && mMedia == true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    .line 1689
    :cond_21
    :goto_c
    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 1691
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkBookExist(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 1694
    invoke-direct {p0, p2}, Lcom/asus/reader/book/ReaderDatabase;->syncCepubBook(Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 1697
    invoke-direct {p0, p2}, Lcom/asus/reader/book/ReaderDatabase;->syncTxtBook(Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 1700
    invoke-direct {p0, p2}, Lcom/asus/reader/book/ReaderDatabase;->syncKindleBook(Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 1703
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertPdbBookData(Landroid/content/Context;Landroid/database/Cursor;)Z

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_21

    .line 1706
    const-string v0, "_id_doc"

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1707
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1708
    const/4 v0, 0x2

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1709
    const/4 v0, 0x3

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1710
    const/4 v0, 0x4

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1711
    const/4 v0, 0x7

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x7

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1714
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_29

    .line 1715
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1716
    const-string v1, "ReaderDatabase"

    const-string v2, "===Add MIME TYPE IN DB=== "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    const-string v1, ".epub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1718
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/epub+zip"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1730
    :goto_d
    const/4 v0, 0x1

    :try_start_2
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentNative(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 1742
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".bmp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 1743
    const-string v0, "ReaderDatabase"

    const-string v1, "equals(CoverBmp)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1744
    const-string v0, "cover_path"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1758
    :goto_e
    const-string v0, "ReaderDatabase"

    const-string v1, "After to gen the cover!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1760
    const-string v0, "DC.title"

    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1761
    const-string v1, "DC.creator"

    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1762
    const-string v2, "DC.description"

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1763
    const-string v3, "DC.date"

    invoke-static {v3}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1764
    const-string v4, "DC.language"

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1766
    if-eqz v0, :cond_22

    const-string v5, ""

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 1767
    :cond_22
    const-string v0, "title"

    const/4 v5, 0x6

    invoke-interface {p2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v0, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1771
    :goto_f
    if-eqz v1, :cond_23

    const-string v0, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1772
    const-string v0, "creator"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1774
    :cond_23
    if-eqz v2, :cond_24

    const-string v0, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    .line 1775
    const-string v0, "description"

    invoke-virtual {v6, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1777
    :cond_24
    if-eqz v3, :cond_25

    const-string v0, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 1778
    const-string v0, "date_create"

    invoke-virtual {v6, v0, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1780
    :cond_25
    if-eqz v4, :cond_26

    .line 1781
    const-string v0, "doc_lang"

    invoke-virtual {v6, v0, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :cond_26
    const-string v0, "last_viewed_font_size"

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1784
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 1786
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 1787
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    goto/16 :goto_c

    .line 1719
    :cond_27
    const-string v1, ".pdf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 1720
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "application/pdf"

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1722
    :cond_28
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1725
    :cond_29
    const/4 v0, 0x5

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_d

    .line 1732
    :catch_2
    move-exception v0

    .line 1734
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 1735
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    goto/16 :goto_c

    .line 1746
    :cond_2a
    const/4 v0, 0x1

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 1747
    const-string v0, "ReaderDatabase"

    const-string v1, "equals(CoverPng)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    const-string v0, "cover_path"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1753
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->setCoverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1754
    invoke-static {v0}, Lcom/asus/reader/book/ReaderDatabase;->getCoverPathAndHW(Ljava/lang/String;)V

    .line 1755
    const-string v1, "cover_path"

    invoke-virtual {v6, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_e

    .line 1769
    :cond_2c
    const-string v5, "title"

    invoke-virtual {v6, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_f

    .line 1789
    :cond_2d
    const-string v0, "ReaderDatabase"

    const-string v1, "End of insert media information"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1797
    :cond_2e
    const-string v0, "ReaderDatabase"

    const-string v1, "=======FINISHED!!!!======"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_2f
    move v8, v0

    goto/16 :goto_2

    :cond_30
    move v0, v8

    goto/16 :goto_a

    :cond_31
    move v0, v7

    goto/16 :goto_7

    :cond_32
    move v0, v7

    goto/16 :goto_8
.end method

.method private syncKindleBook(Landroid/database/Cursor;)Z
    .locals 46
    .parameter "movedMediaCursor"

    .prologue
    .line 698
    const-string v43, "ReaderDatabase"

    const-string v44, "check for kindle book"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    if-nez p1, :cond_0

    .line 700
    const-string v43, "ReaderDatabase"

    const-string v44, "cursor null"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/16 v43, 0x0

    .line 860
    :goto_0
    return v43

    .line 703
    :cond_0
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v30

    .line 704
    .local v30, path:Ljava/lang/String;
    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v43

    const-string v44, ".prc"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_1

    .line 705
    const-string v43, "ReaderDatabase"

    const-string v44, "not a kindle book"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const/16 v43, 0x0

    goto :goto_0

    .line 708
    :cond_1
    const-string v43, "ReaderDatabase"

    const-string v44, "the book is kindle book , start sync to ereader.db"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v25

    .line 710
    .local v25, kindleBookPath:Ljava/lang/String;
    const-string v43, "/mnt/sdcard/kindle/"

    move-object/from16 v0, v25

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v43

    if-nez v43, :cond_2

    .line 711
    const-string v43, "ReaderDatabase"

    new-instance v44, Ljava/lang/StringBuilder;

    invoke-direct/range {v44 .. v44}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v44

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    const-string v45, " , not in /mnt/sdcard/kindle/"

    invoke-virtual/range {v44 .. v45}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v44

    invoke-virtual/range {v44 .. v44}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v44

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    const/16 v43, 0x1

    goto :goto_0

    .line 718
    :cond_2
    const/16 v43, 0x1

    :try_start_0
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v41

    .line 719
    .local v41, uri:Landroid/net/Uri;
    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    .line 720
    .local v17, filename:Ljava/lang/String;
    const-string v43, "_EBOK.prc"

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v13

    .line 721
    .local v13, canHandledPrc:Z
    if-nez v13, :cond_3

    .line 722
    const/16 v43, 0x1

    goto :goto_0

    .line 724
    .end local v13           #canHandledPrc:Z
    .end local v17           #filename:Ljava/lang/String;
    .end local v41           #uri:Landroid/net/Uri;
    :catch_0
    move-exception v43

    move-object/from16 v15, v43

    .line 725
    .local v15, e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 726
    const/16 v43, 0x1

    goto/16 :goto_0

    .line 729
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v13       #canHandledPrc:Z
    .restart local v17       #filename:Ljava/lang/String;
    .restart local v41       #uri:Landroid/net/Uri;
    :cond_3
    new-instance v42, Landroid/content/ContentValues;

    invoke-direct/range {v42 .. v42}, Landroid/content/ContentValues;-><init>()V

    .line 730
    .local v42, values:Landroid/content/ContentValues;
    const-string v43, "_id_doc"

    const/16 v44, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 731
    const/16 v43, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    const/4 v11, 0x0

    .line 734
    .local v11, bookId:Ljava/lang/String;
    const/16 v43, 0x1

    :try_start_1
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    invoke-static/range {v43 .. v43}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v41

    .line 735
    invoke-virtual/range {v41 .. v41}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v17

    .line 736
    const-string v43, "_EBOK.prc"

    const-string v44, ""

    move-object/from16 v0, v17

    move-object/from16 v1, v43

    move-object/from16 v2, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v11

    .line 737
    const/16 v43, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object v2, v11

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 742
    :goto_1
    const/16 v43, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x3

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 743
    const/16 v43, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x4

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 745
    const/16 v43, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    if-nez v43, :cond_4

    .line 746
    const/16 v43, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    const-string v44, ""

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :goto_2
    const/16 v43, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x7

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v44

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    if-eqz v11, :cond_6

    .line 753
    :try_start_2
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "/mnt/sdcard/kindle/covers/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 754
    .local v14, coverPath:Ljava/lang/String;
    new-instance v43, Ljava/io/File;

    move-object/from16 v0, v43

    move-object v1, v14

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v43 .. v43}, Ljava/io/File;->exists()Z

    move-result v43

    if-nez v43, :cond_5

    .line 755
    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 756
    const/16 v43, 0x1

    goto/16 :goto_0

    .line 738
    .end local v14           #coverPath:Ljava/lang/String;
    :catch_1
    move-exception v43

    move-object/from16 v15, v43

    .line 739
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 740
    const/16 v43, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 748
    .end local v15           #e:Ljava/lang/Exception;
    :cond_4
    const/16 v43, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v43

    const/16 v44, 0x5

    move-object/from16 v0, p1

    move/from16 v1, v44

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 758
    .restart local v14       #coverPath:Ljava/lang/String;
    :cond_5
    :try_start_3
    invoke-static {v14}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 759
    .local v10, bmp:Landroid/graphics/Bitmap;
    new-instance v43, Ljava/lang/StringBuilder;

    invoke-direct/range {v43 .. v43}, Ljava/lang/StringBuilder;-><init>()V

    const-string v44, "/data/data/com.asus.reader/cover/"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    move-object/from16 v0, v43

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    const-string v44, ".png"

    invoke-virtual/range {v43 .. v44}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v31

    .line 760
    .local v31, saveCoverPath:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object v1, v10

    move-object/from16 v2, v31

    invoke-direct {v0, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->saveBitmapToPng(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 762
    const-string v43, "cover_path"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 768
    .end local v10           #bmp:Landroid/graphics/Bitmap;
    .end local v14           #coverPath:Ljava/lang/String;
    .end local v31           #saveCoverPath:Ljava/lang/String;
    :cond_6
    :goto_3
    const-string v8, "  "

    .line 769
    .local v8, authorStr:Ljava/lang/String;
    const-string v39, "  "

    .line 771
    .local v39, titleStr:Ljava/lang/String;
    const/16 v43, 0x1

    :try_start_4
    move-object/from16 v0, p1

    move/from16 v1, v43

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v32

    .line 772
    .local v32, srcTxtPath:Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    move-object/from16 v0, v16

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 773
    .local v16, file:Ljava/io/File;
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v43

    if-nez v43, :cond_7

    .line 774
    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->clear()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 775
    const/16 v43, 0x1

    goto/16 :goto_0

    .line 763
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v16           #file:Ljava/io/File;
    .end local v32           #srcTxtPath:Ljava/lang/String;
    .end local v39           #titleStr:Ljava/lang/String;
    :catch_2
    move-exception v43

    move-object/from16 v15, v43

    .line 764
    .restart local v15       #e:Ljava/lang/Exception;
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 777
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v8       #authorStr:Ljava/lang/String;
    .restart local v16       #file:Ljava/io/File;
    .restart local v32       #srcTxtPath:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    :cond_7
    :try_start_5
    new-instance v21, Ljava/io/FileInputStream;

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 779
    .local v21, is:Ljava/io/InputStream;
    const-wide/32 v26, 0x10000

    .line 780
    .local v26, length:J
    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v43, v0

    move/from16 v0, v43

    new-array v0, v0, [B

    move-object v12, v0

    .line 782
    .local v12, bytes:[B
    const/16 v29, 0x0

    .line 783
    .local v29, offset:I
    const/16 v28, 0x0

    .line 785
    .local v28, numRead:I
    :goto_4
    move-object v0, v12

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v29

    move/from16 v1, v43

    if-ge v0, v1, :cond_8

    move-object v0, v12

    array-length v0, v0

    move/from16 v43, v0

    sub-int v43, v43, v29

    move-object/from16 v0, v21

    move-object v1, v12

    move/from16 v2, v29

    move/from16 v3, v43

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v28

    if-ltz v28, :cond_8

    .line 786
    add-int v29, v29, v28

    goto :goto_4

    .line 789
    :cond_8
    invoke-virtual/range {v21 .. v21}, Ljava/io/FileInputStream;->close()V

    .line 791
    const/16 v23, 0x0

    .line 792
    .local v23, isStartFin:Z
    const/16 v22, 0x0

    .line 793
    .local v22, isAuthorFin:Z
    const/16 v24, 0x0

    .line 794
    .local v24, isTitleFin:Z
    const/16 v33, 0x0

    .line 795
    .local v33, startArryIndex:I
    const/4 v4, 0x0

    .line 796
    .local v4, authorArryIndex:I
    const/16 v35, 0x0

    .line 797
    .local v35, titleArryIndex:I
    sget-object v43, Lcom/asus/reader/book/ReaderDatabase;->START_CHECK_ARRAY:[I

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v34, v0

    .line 798
    .local v34, startArryLength:I
    sget-object v43, Lcom/asus/reader/book/ReaderDatabase;->AUTHOR_CHECK_ARRAY:[I

    move-object/from16 v0, v43

    array-length v0, v0

    move v5, v0

    .line 799
    .local v5, authorArryLength:I
    sget-object v43, Lcom/asus/reader/book/ReaderDatabase;->TITLE_CHECK_ARRAY:[I

    move-object/from16 v0, v43

    array-length v0, v0

    move/from16 v36, v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 801
    .local v36, titleArryLength:I
    const/16 v18, 0x0

    .local v18, i:I
    move-object/from16 v40, v39

    .end local v39           #titleStr:Ljava/lang/String;
    .local v40, titleStr:Ljava/lang/String;
    move-object v9, v8

    .end local v8           #authorStr:Ljava/lang/String;
    .local v9, authorStr:Ljava/lang/String;
    :goto_5
    :try_start_6
    move-object v0, v12

    array-length v0, v0

    move/from16 v43, v0

    move/from16 v0, v18

    move/from16 v1, v43

    if-ge v0, v1, :cond_13

    .line 802
    if-nez v23, :cond_b

    .line 804
    aget-byte v43, v12, v18

    sget-object v44, Lcom/asus/reader/book/ReaderDatabase;->START_CHECK_ARRAY:[I

    aget v44, v44, v33

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_a

    .line 805
    add-int/lit8 v43, v33, 0x1

    move/from16 v0, v43

    move/from16 v1, v34

    if-ne v0, v1, :cond_9

    .line 806
    const/16 v23, 0x1

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .line 801
    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    :goto_6
    add-int/lit8 v18, v18, 0x1

    move-object/from16 v40, v39

    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    move-object v9, v8

    .end local v8           #authorStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    goto :goto_5

    .line 808
    :cond_9
    add-int/lit8 v33, v33, 0x1

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto :goto_6

    .line 810
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_a
    const/16 v33, 0x0

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto :goto_6

    .line 812
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_b
    if-nez v22, :cond_f

    .line 814
    aget-byte v43, v12, v18

    sget-object v44, Lcom/asus/reader/book/ReaderDatabase;->AUTHOR_CHECK_ARRAY:[I

    aget v44, v44, v4

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_e

    .line 815
    add-int/lit8 v43, v4, 0x1

    move/from16 v0, v43

    move v1, v5

    if-ne v0, v1, :cond_d

    .line 816
    add-int/lit8 v43, v18, 0x4

    aget-byte v43, v12, v43

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    const/16 v44, 0x8

    sub-int v7, v43, v44

    .line 817
    .local v7, authorSize:I
    new-array v6, v7, [B

    .line 818
    .local v6, authorBytes:[B
    const/16 v19, 0x0

    .local v19, ii:I
    :goto_7
    move/from16 v0, v19

    move v1, v7

    if-ge v0, v1, :cond_c

    .line 819
    add-int/lit8 v43, v18, 0x4

    add-int/lit8 v43, v43, 0x1

    add-int v43, v43, v19

    aget-byte v43, v12, v43

    aput-byte v43, v6, v19

    .line 818
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 821
    :cond_c
    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v6}, Ljava/lang/String;-><init>([B)V

    .line 822
    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    const/16 v22, 0x1

    move-object/from16 v39, v40

    .line 823
    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    goto :goto_6

    .line 824
    .end local v6           #authorBytes:[B
    .end local v7           #authorSize:I
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v19           #ii:I
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_d
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto :goto_6

    .line 827
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto :goto_6

    .line 829
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_f
    if-nez v24, :cond_13

    .line 831
    aget-byte v43, v12, v18

    sget-object v44, Lcom/asus/reader/book/ReaderDatabase;->TITLE_CHECK_ARRAY:[I

    aget v44, v44, v35

    move/from16 v0, v43

    move/from16 v1, v44

    if-ne v0, v1, :cond_12

    .line 832
    add-int/lit8 v43, v35, 0x1

    move/from16 v0, v43

    move/from16 v1, v36

    if-ne v0, v1, :cond_11

    .line 833
    add-int/lit8 v43, v18, 0x4

    aget-byte v43, v12, v43

    move/from16 v0, v43

    and-int/lit16 v0, v0, 0xff

    move/from16 v43, v0

    const/16 v44, 0x8

    sub-int v38, v43, v44

    .line 834
    .local v38, titleSize:I
    move/from16 v0, v38

    new-array v0, v0, [B

    move-object/from16 v37, v0

    .line 835
    .local v37, titleBytes:[B
    const/16 v20, 0x0

    .local v20, iii:I
    :goto_8
    move/from16 v0, v20

    move/from16 v1, v38

    if-ge v0, v1, :cond_10

    .line 836
    add-int/lit8 v43, v18, 0x4

    add-int/lit8 v43, v43, 0x1

    add-int v43, v43, v20

    aget-byte v43, v12, v43

    aput-byte v43, v37, v20

    .line 835
    add-int/lit8 v20, v20, 0x1

    goto :goto_8

    .line 838
    :cond_10
    new-instance v39, Ljava/lang/String;

    move-object/from16 v0, v39

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    .line 839
    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    const/16 v24, 0x1

    move-object v8, v9

    .line 840
    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto/16 :goto_6

    .line 841
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v20           #iii:I
    .end local v37           #titleBytes:[B
    .end local v38           #titleSize:I
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_11
    add-int/lit8 v35, v35, 0x1

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto/16 :goto_6

    .line 844
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_12
    const/16 v35, 0x0

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto/16 :goto_6

    .end local v8           #authorStr:Ljava/lang/String;
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v40       #titleStr:Ljava/lang/String;
    :cond_13
    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .line 854
    .end local v4           #authorArryIndex:I
    .end local v5           #authorArryLength:I
    .end local v9           #authorStr:Ljava/lang/String;
    .end local v12           #bytes:[B
    .end local v16           #file:Ljava/io/File;
    .end local v18           #i:I
    .end local v21           #is:Ljava/io/InputStream;
    .end local v22           #isAuthorFin:Z
    .end local v23           #isStartFin:Z
    .end local v24           #isTitleFin:Z
    .end local v26           #length:J
    .end local v28           #numRead:I
    .end local v29           #offset:I
    .end local v32           #srcTxtPath:Ljava/lang/String;
    .end local v33           #startArryIndex:I
    .end local v34           #startArryLength:I
    .end local v35           #titleArryIndex:I
    .end local v36           #titleArryLength:I
    .restart local v8       #authorStr:Ljava/lang/String;
    :goto_9
    const-string v43, "creator"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 855
    const-string v43, "title"

    move-object/from16 v0, v42

    move-object/from16 v1, v43

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    const-string v43, "last_viewed_font_size"

    const/16 v44, 0x10

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v44

    invoke-virtual/range {v42 .. v44}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 857
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v43

    invoke-virtual/range {v43 .. v43}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v43

    sget-object v44, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    move-object/from16 v0, v43

    move-object/from16 v1, v44

    move-object/from16 v2, v42

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 858
    invoke-virtual/range {v42 .. v42}, Landroid/content/ContentValues;->clear()V

    .line 859
    const-string v43, "ReaderDatabase"

    const-string v44, "finish the kindle book sync"

    invoke-static/range {v43 .. v44}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 860
    const/16 v43, 0x1

    goto/16 :goto_0

    .line 851
    :catch_3
    move-exception v43

    move-object/from16 v15, v43

    .line 852
    .restart local v15       #e:Ljava/lang/Exception;
    :goto_a
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 851
    .end local v8           #authorStr:Ljava/lang/String;
    .end local v15           #e:Ljava/lang/Exception;
    .end local v39           #titleStr:Ljava/lang/String;
    .restart local v4       #authorArryIndex:I
    .restart local v5       #authorArryLength:I
    .restart local v9       #authorStr:Ljava/lang/String;
    .restart local v12       #bytes:[B
    .restart local v16       #file:Ljava/io/File;
    .restart local v18       #i:I
    .restart local v21       #is:Ljava/io/InputStream;
    .restart local v22       #isAuthorFin:Z
    .restart local v23       #isStartFin:Z
    .restart local v24       #isTitleFin:Z
    .restart local v26       #length:J
    .restart local v28       #numRead:I
    .restart local v29       #offset:I
    .restart local v32       #srcTxtPath:Ljava/lang/String;
    .restart local v33       #startArryIndex:I
    .restart local v34       #startArryLength:I
    .restart local v35       #titleArryIndex:I
    .restart local v36       #titleArryLength:I
    .restart local v40       #titleStr:Ljava/lang/String;
    :catch_4
    move-exception v43

    move-object/from16 v15, v43

    move-object/from16 v39, v40

    .end local v40           #titleStr:Ljava/lang/String;
    .restart local v39       #titleStr:Ljava/lang/String;
    move-object v8, v9

    .end local v9           #authorStr:Ljava/lang/String;
    .restart local v8       #authorStr:Ljava/lang/String;
    goto :goto_a
.end method

.method private syncTxtBook(Landroid/database/Cursor;)Z
    .locals 12
    .parameter "movedMediaCursor"

    .prologue
    .line 549
    const-string v10, "ReaderDatabase"

    const-string v11, "check for txt book"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    if-nez p1, :cond_0

    .line 551
    const-string v10, "ReaderDatabase"

    const-string v11, "cursor null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    const/4 v10, 0x0

    .line 602
    :goto_0
    return v10

    .line 554
    :cond_0
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 555
    .local v7, path:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".txt"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 556
    const-string v10, "ReaderDatabase"

    const-string v11, "not a txt book"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const/4 v10, 0x0

    goto :goto_0

    .line 559
    :cond_1
    const-string v10, "ReaderDatabase"

    const-string v11, "the book is txt book , start sync to ereader.db"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 562
    .local v9, values:Landroid/content/ContentValues;
    const-string v10, "_id_doc"

    const/4 v11, 0x0

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 563
    const/4 v10, 0x1

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    const/4 v10, 0x1

    :try_start_0
    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 566
    .local v8, uri:Landroid/net/Uri;
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 573
    .end local v8           #uri:Landroid/net/Uri;
    :goto_1
    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 574
    const/4 v10, 0x4

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x4

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 575
    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x5

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const/4 v10, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x7

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 578
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "/data/data/com.asus.reader/cover/txt_cover_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const/4 v11, 0x3

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 579
    .local v4, defulatCepubCoverPath:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 580
    .local v3, defaultCepubCoverFile:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 583
    :try_start_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    .line 584
    iget-object v10, p0, Lcom/asus/reader/book/ReaderDatabase;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    const-string v11, "txt_cover.png"

    invoke-virtual {v10, v11}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 585
    .local v1, cepubCoverInStream:Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 586
    .local v2, cepubCoverOutStream:Ljava/io/FileOutputStream;
    const/16 v10, 0x400

    new-array v0, v10, [B

    .line 588
    .local v0, buf_cover:[B
    :goto_2
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    .local v6, len_cover:I
    if-lez v6, :cond_3

    .line 589
    const/4 v10, 0x0

    invoke-virtual {v2, v0, v10, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 592
    .end local v0           #buf_cover:[B
    .end local v1           #cepubCoverInStream:Ljava/io/InputStream;
    .end local v2           #cepubCoverOutStream:Ljava/io/FileOutputStream;
    .end local v6           #len_cover:I
    :catch_0
    move-exception v10

    move-object v5, v10

    .line 593
    .local v5, e:Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    .line 596
    .end local v5           #e:Ljava/io/IOException;
    :cond_2
    :goto_3
    const-string v10, "cover_path"

    invoke-virtual {v9, v10, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v10, "title"

    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    const-string v10, "last_viewed_font_size"

    const/16 v11, 0x10

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 599
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    sget-object v11, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v10, v11, v9}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 600
    invoke-virtual {v9}, Landroid/content/ContentValues;->clear()V

    .line 601
    const-string v10, "ReaderDatabase"

    const-string v11, "finish the txt book sync"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    const/4 v10, 0x1

    goto/16 :goto_0

    .line 567
    .end local v3           #defaultCepubCoverFile:Ljava/io/File;
    .end local v4           #defulatCepubCoverPath:Ljava/lang/String;
    :catch_1
    move-exception v10

    move-object v5, v10

    .line 568
    .local v5, e:Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 569
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    invoke-interface {p1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 590
    .end local v5           #e:Ljava/lang/Exception;
    .restart local v0       #buf_cover:[B
    .restart local v1       #cepubCoverInStream:Ljava/io/InputStream;
    .restart local v2       #cepubCoverOutStream:Ljava/io/FileOutputStream;
    .restart local v3       #defaultCepubCoverFile:Ljava/io/File;
    .restart local v4       #defulatCepubCoverPath:Ljava/lang/String;
    .restart local v6       #len_cover:I
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 591
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method

.method private static updateCepubMetadata(Landroid/content/Context;ILjava/lang/String;)V
    .locals 11
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 2426
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2427
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->MEDIA_COLUMNS:[Ljava/lang/String;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 2428
    if-nez v0, :cond_0

    .line 2493
    :goto_0
    return-void

    .line 2430
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2431
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 2434
    :cond_2
    const-string v1, "title"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2435
    const-string v2, "date_added"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 2436
    const-string v5, "_display_name"

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2437
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".png"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2438
    const-string v6, ""

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v1, :cond_a

    .line 2440
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2441
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 2443
    :try_start_0
    invoke-static {p2}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentNative(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2453
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_4

    .line 2455
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/data/com.asus.reader/cover/cepub_cover_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "_"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2458
    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getCoverPathAndHW(Ljava/lang/String;)V

    .line 2459
    const-string v3, "cover_path"

    invoke-virtual {v6, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2462
    :cond_4
    const-string v2, "DC.title"

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2463
    const-string v3, "DC.creator"

    invoke-static {v3}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2464
    const-string v5, "DC.description"

    invoke-static {v5}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2465
    const-string v7, "DC.date"

    invoke-static {v7}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2466
    const-string v8, "DC.language"

    invoke-static {v8}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2468
    if-eqz v2, :cond_5

    const-string v9, ""

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_b

    .line 2469
    :cond_5
    const-string v2, "title"

    const/16 v9, 0x2f

    invoke-virtual {p2, v9}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {p2, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v2, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2475
    :goto_1
    if-eqz v3, :cond_6

    const-string v2, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 2476
    const-string v2, "creator"

    invoke-virtual {v6, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2478
    :cond_6
    if-eqz v5, :cond_7

    const-string v2, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 2479
    const-string v2, "description"

    invoke-virtual {v6, v2, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2481
    :cond_7
    if-eqz v7, :cond_8

    const-string v2, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 2482
    const-string v2, "date_create"

    invoke-virtual {v6, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2484
    :cond_8
    if-eqz v8, :cond_9

    .line 2485
    const-string v2, "doc_lang"

    invoke-virtual {v6, v2, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2487
    :cond_9
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 2489
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v2, v3, v6, v1, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2490
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 2492
    :cond_a
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    .line 2445
    :catch_0
    move-exception v0

    .line 2447
    invoke-virtual {v6}, Landroid/content/ContentValues;->clear()V

    .line 2448
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    goto/16 :goto_0

    .line 2472
    :cond_b
    const-string v9, "title"

    invoke-virtual {v6, v9, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method private updateShelfTable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "mLatestBookPath"
    .parameter "mCurrentBookPath"

    .prologue
    const/4 v3, 0x0

    .line 1144
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1145
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 1146
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "filepath"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1147
    const-string v1, "mimetype"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1148
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1150
    .end local v0           #values:Landroid/content/ContentValues;
    :cond_0
    return-void
.end method

.method private updateShelfTableCount()V
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x2

    .line 1125
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/asus/reader/book/ReaderDataProvider;->LatestBookPath_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1127
    .local v7, mCursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1130
    new-instance v6, Ljava/io/File;

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1131
    .local v6, mBook:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1132
    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/asus/reader/book/ReaderDatabase;->updateShelfTable(Ljava/lang/String;Ljava/lang/String;)V

    .line 1136
    .end local v6           #mBook:Ljava/io/File;
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 1138
    return-void
.end method


# virtual methods
.method public addCandidateDownload()V
    .locals 6

    .prologue
    .line 479
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPollingTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 480
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPollingTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 481
    :cond_0
    new-instance v0, Lcom/asus/reader/book/ReaderDatabase$1;

    const-wide/32 v2, 0x1b7740

    const-wide/32 v4, 0x927c0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/asus/reader/book/ReaderDatabase$1;-><init>(Lcom/asus/reader/book/ReaderDatabase;JJ)V

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase$1;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPollingTimer:Landroid/os/CountDownTimer;

    .line 546
    return-void
.end method

.method public addCoverCache(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3
    .parameter "url"
    .parameter "cover"

    .prologue
    .line 420
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    monitor-enter v0

    .line 423
    :try_start_0
    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    monitor-exit v0

    .line 425
    return-void

    .line 424
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addPathCoverCache(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "path"
    .parameter "cover_uri"

    .prologue
    .line 451
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->mPathCoverUriHash:Ljava/util/HashMap;

    monitor-enter v0

    .line 452
    :try_start_0
    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->mPathCoverUriHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    monitor-exit v0

    .line 454
    return-void

    .line 453
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public afterInsert(JLandroid/content/ContentValues;)V
    .locals 4
    .parameter "id"
    .parameter "values"

    .prologue
    .line 443
    const-string v3, "_data"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 444
    .local v0, bookpath:Ljava/lang/String;
    const-string v3, "cover_path"

    invoke-virtual {p3, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 445
    .local v2, coverpath:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/asus/reader/book/ReaderDatabase;->getPathCoverCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, coverURL:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 447
    invoke-static {v2, v1}, Lcom/asus/reader/util/Downloader;->saveURLImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    :cond_0
    return-void
.end method

.method public callSyncDB()V
    .locals 2

    .prologue
    .line 1914
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mDbHandler:Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendEmptyMessage(I)Z

    .line 1915
    return-void
.end method

.method public clearCoverCache()V
    .locals 2

    .prologue
    .line 414
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    monitor-enter v0

    .line 415
    :try_start_0
    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 416
    monitor-exit v0

    .line 417
    return-void

    .line 416
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public copyPreloadBookCover()V
    .locals 9

    .prologue
    const/4 v5, 0x0

    .line 2801
    const-string v0, "/data/data/com.asus.reader/cover/"

    .line 2802
    const-string v1, "/system/media/book_cover/"

    .line 2803
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2804
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2806
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 2807
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    .line 2810
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2811
    invoke-virtual {v3}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    move v3, v5

    .line 2812
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_3

    .line 2813
    new-instance v4, Ljava/io/File;

    aget-object v5, v2, v3

    invoke-direct {v4, v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2814
    new-instance v5, Ljava/io/File;

    aget-object v6, v2, v3

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2816
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 2812
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2822
    :cond_1
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2823
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 2826
    const/16 v4, 0x400

    new-array v4, v4, [B

    .line 2828
    :goto_2
    invoke-virtual {v6, v4}, Ljava/io/FileInputStream;->read([B)I

    move-result v7

    if-lez v7, :cond_2

    .line 2829
    const/4 v8, 0x0

    invoke-virtual {v5, v4, v8, v7}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 2833
    :catch_0
    move-exception v4

    .line 2834
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2831
    :cond_2
    :try_start_1
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V

    .line 2832
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 2838
    :cond_3
    return-void
.end method

.method public getCoverCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "url"

    .prologue
    .line 435
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    monitor-enter v0

    .line 436
    :try_start_0
    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 437
    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->mCoverHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Bitmap;

    monitor-exit v0

    move-object v0, p0

    .line 438
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 439
    .end local p0
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getDefaultBook()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 2854
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/media/book/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2855
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2856
    const-string v1, "Preload"

    invoke-virtual {p0, v1}, Lcom/asus/reader/book/ReaderDatabase;->getPrefSettingInt(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2857
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->copyPreloadBookCover()V

    .line 2861
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2862
    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksTitle:[Ljava/lang/CharSequence;

    .line 2863
    const v2, 0x7f050001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksAuthor:[Ljava/lang/CharSequence;

    .line 2864
    const v2, 0x7f050002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksDocLang:[Ljava/lang/CharSequence;

    .line 2865
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2866
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 2867
    const-string v2, "ReaderDatabase"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "=== Dir List === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".cepub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2869
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/book/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/asus/reader/book/ReaderDatabase;->insertPreloadBook(Ljava/lang/String;I)Z

    .line 2866
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2871
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/system/media/book/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v5}, Lcom/asus/reader/book/ReaderDatabase;->insertBook(Ljava/lang/String;I)Z

    goto :goto_1

    .line 2875
    :cond_2
    return-void
.end method

.method public getMountedID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1095
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->whereColumeID:Ljava/lang/String;

    return-object v0
.end method

.method public native getMutexLockNative()V
.end method

.method public native getMutexUnLockNative()V
.end method

.method public getPathCoverCache(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"

    .prologue
    .line 457
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->mPathCoverUriHash:Ljava/util/HashMap;

    monitor-enter v0

    .line 458
    :try_start_0
    sget-object v1, Lcom/asus/reader/book/ReaderDatabase;->mPathCoverUriHash:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    monitor-exit v0

    return-object p0

    .line 459
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPrefSettingInt(Ljava/lang/String;)Z
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 2846
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Preference"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2847
    invoke-interface {v0, p1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2848
    return v0
.end method

.method public getTimeToken()J
    .locals 2

    .prologue
    .line 364
    iget-wide v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mTimeToken:J

    return-wide v0
.end method

.method public getmContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public insertBook(Ljava/lang/String;I)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/16 v7, 0x2f

    const/4 v4, 0x0

    .line 2681
    const-string v0, "ReaderDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertBook = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVolumeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2683
    const-string v1, "_id_doc"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2684
    const-string v1, "_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2685
    const-string v1, "_display_name"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2688
    :try_start_0
    invoke-static {p1}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentNative(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2698
    const-string v1, ".epub"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2699
    const-string v1, "mime_type"

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2706
    :goto_0
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 2707
    const-string v1, "ReaderDatabase"

    const-string v2, "equals(CoverBmp)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    const-string v1, "cover_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2722
    :goto_1
    const-string v1, "DC.title"

    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2723
    const-string v2, "DC.creator"

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2724
    const-string v3, "DC.description"

    invoke-static {v3}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2725
    const-string v4, "DC.date"

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2726
    const-string v5, "DC.language"

    invoke-static {v5}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2728
    if-eqz v1, :cond_0

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2729
    :cond_0
    const-string v1, "title"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2735
    :goto_2
    if-eqz v2, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 2736
    const-string v1, "creator"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2738
    :cond_1
    if-eqz v3, :cond_2

    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 2739
    const-string v1, "description"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2741
    :cond_2
    if-eqz v4, :cond_3

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2742
    const-string v1, "date_create"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2744
    :cond_3
    if-eqz v5, :cond_4

    .line 2745
    const-string v1, "doc_lang"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2747
    :cond_4
    const-string v1, "last_viewed_font_size"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2749
    const-string v1, "volume_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2751
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 2753
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2754
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2756
    const/4 v0, 0x1

    :goto_3
    return v0

    .line 2690
    :catch_0
    move-exception v1

    .line 2692
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2693
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    move v0, v4

    .line 2694
    goto :goto_3

    .line 2700
    :cond_5
    const-string v1, ".pdf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 2701
    const-string v1, "mime_type"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2703
    :cond_6
    const-string v1, "mime_type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2710
    :cond_7
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2711
    const-string v1, "ReaderDatabase"

    const-string v2, "equals(CoverPng)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2712
    const-string v1, "cover_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2717
    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/asus/reader/book/ReaderDatabase;->setCoverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2718
    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getCoverPathAndHW(Ljava/lang/String;)V

    .line 2719
    const-string v2, "cover_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2732
    :cond_9
    const-string v6, "title"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method public insertPreloadBook(Ljava/lang/String;I)Z
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2761
    const-string v0, "ReaderDatabase"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "InsertBook = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mVolumeId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2762
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 2763
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2764
    const-string v2, "_id_doc"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2765
    const-string v2, "_data"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2766
    const-string v2, "_display_name"

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2767
    const-string v2, "date_added"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2768
    const-string v2, "date_modified"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2769
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".pdf"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2770
    const-string v2, "mime_type"

    const-string v3, "application/pdf"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2774
    :cond_0
    :goto_0
    const-string v2, "cover_path"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2775
    const-string v2, "last_viewed_font_size"

    const/16 v3, 0x10

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2776
    const-string v2, "volume_id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2778
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksTitle:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 2779
    const-string v2, "Preload_Book_"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2781
    const-string v2, "Preload_Book_"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 2782
    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2783
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 2785
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksTitle:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v2, v0, :cond_1

    if-lez v2, :cond_1

    .line 2786
    const-string v3, "title"

    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksTitle:[Ljava/lang/CharSequence;

    sub-int v4, v2, v5

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2787
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksAuthor:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v2, v0, :cond_2

    if-lez v2, :cond_2

    .line 2788
    const-string v3, "creator"

    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksAuthor:[Ljava/lang/CharSequence;

    sub-int v4, v2, v5

    aget-object v0, v0, v4

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2789
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksDocLang:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-gt v2, v0, :cond_3

    if-lez v2, :cond_3

    .line 2790
    const-string v3, "doc_lang"

    iget-object v0, p0, Lcom/asus/reader/book/ReaderDatabase;->mPreloadBooksDocLang:[Ljava/lang/CharSequence;

    sub-int/2addr v2, v5

    aget-object v0, v0, v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2794
    :cond_3
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2795
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 2797
    return v5

    .line 2771
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".cepub"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2772
    const-string v2, "mime_type"

    const-string v3, "application/octet-stream"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public insertUsbBook(Ljava/lang/String;)Z
    .locals 10
    .parameter

    .prologue
    const/16 v7, 0x2f

    const/16 v9, 0x7cf

    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 2579
    const-string v0, "ro.epad.mount_point.sdreader"

    const-string v1, "/data/Removable/SD"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2580
    const-string v1, "ro.epad.mount_point.usbdisk1"

    const-string v2, "/data/Removable/USBdisk1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2581
    const-string v2, "ro.epad.mount_point.usbdisk2"

    const-string v3, "/data/Removable/USBdisk2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2583
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v8

    .line 2586
    :goto_0
    if-nez v0, :cond_2

    move v0, v4

    .line 2675
    :goto_1
    return v0

    :cond_1
    move v0, v4

    .line 2583
    goto :goto_0

    .line 2590
    :cond_2
    const-string v0, "ReaderDatabase"

    const-string v1, "===insert Book in USB Disk==="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".txt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".cepub"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2594
    :cond_3
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, p1, v9}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertBasicBookWithCover(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    .line 2595
    goto :goto_1

    .line 2596
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".pdb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".updb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2598
    :cond_5
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4, p1, v9}, Lcom/asus/reader/book/ReaderDatabaseUtil;->insertPdbBookWithCover(Landroid/content/Context;ILjava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v8

    .line 2599
    goto :goto_1

    .line 2602
    :cond_6
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 2603
    const-string v1, "_id_doc"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2604
    const-string v1, "_data"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2605
    const-string v1, "_display_name"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2609
    :try_start_0
    invoke-static {p1}, Lcom/asus/reader/book/ReaderDatabase;->loadDocumentNative(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2618
    const-string v1, ".epub"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 2619
    const-string v1, "mime_type"

    const-string v2, "application/epub+zip"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2625
    :goto_2
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2626
    const-string v1, "ReaderDatabase"

    const-string v2, "equals(CoverBmp)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    const-string v1, "cover_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".bmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2641
    :goto_3
    const-string v1, "DC.title"

    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2642
    const-string v2, "DC.creator"

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2643
    const-string v3, "DC.description"

    invoke-static {v3}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2644
    const-string v4, "DC.date"

    invoke-static {v4}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2645
    const-string v5, "DC.language"

    invoke-static {v5}, Lcom/asus/reader/book/ReaderDatabase;->getMetaDataNative(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2647
    if-eqz v1, :cond_7

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 2648
    :cond_7
    const-string v1, "title"

    invoke-virtual {p1, v7}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v1, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    :goto_4
    if-eqz v2, :cond_8

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 2655
    const-string v1, "creator"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2657
    :cond_8
    if-eqz v3, :cond_9

    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 2658
    const-string v1, "description"

    invoke-virtual {v0, v1, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2660
    :cond_9
    if-eqz v4, :cond_a

    const-string v1, ""

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 2661
    const-string v1, "date_create"

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2663
    :cond_a
    if-eqz v5, :cond_b

    .line 2664
    const-string v1, "doc_lang"

    invoke-virtual {v0, v1, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2666
    :cond_b
    const-string v1, "last_viewed_font_size"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2668
    const-string v1, "volume_id"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2670
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    .line 2672
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/asus/reader/book/ReaderDatabase;->ReaderTableBook:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2673
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    move v0, v8

    .line 2675
    goto/16 :goto_1

    .line 2611
    :catch_0
    move-exception v1

    .line 2613
    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 2614
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->cleanupNativeDataNative()V

    move v0, v4

    .line 2615
    goto/16 :goto_1

    .line 2620
    :cond_c
    const-string v1, ".pdf"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 2621
    const-string v1, "mime_type"

    const-string v2, "application/pdf"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2623
    :cond_d
    const-string v1, "mime_type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2629
    :cond_e
    invoke-direct {p0, p1}, Lcom/asus/reader/book/ReaderDatabase;->checkCoverExist(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2630
    const-string v1, "ReaderDatabase"

    const-string v2, "equals(CoverPng)"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2631
    const-string v1, "cover_path"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2636
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/data/com.asus.reader/cover/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1}, Lcom/asus/reader/book/ReaderDatabase;->setCoverPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2637
    invoke-static {v1}, Lcom/asus/reader/book/ReaderDatabase;->getCoverPathAndHW(Ljava/lang/String;)V

    .line 2638
    const-string v2, "cover_path"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 2651
    :cond_10
    const-string v6, "title"

    invoke-virtual {v0, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4
.end method

.method public pushTask(Ljava/lang/Runnable;)V
    .locals 1
    .parameter "r"

    .prologue
    .line 408
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->mTaskQueue:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    if-nez v0, :cond_0

    .line 409
    new-instance v0, Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-direct {v0}, Lcom/asus/reader/book/ReaderDatabase$TaskStack;-><init>()V

    sput-object v0, Lcom/asus/reader/book/ReaderDatabase;->mTaskQueue:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    .line 410
    :cond_0
    sget-object v0, Lcom/asus/reader/book/ReaderDatabase;->mTaskQueue:Lcom/asus/reader/book/ReaderDatabase$TaskStack;

    invoke-virtual {v0, p1}, Lcom/asus/reader/book/ReaderDatabase$TaskStack;->push(Ljava/lang/Runnable;)V

    .line 411
    return-void
.end method

.method public setMountListener(Lcom/asus/reader/book/ReaderDatabase$mountListener;)V
    .locals 0
    .parameter "mountlistener"

    .prologue
    .line 2891
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase;->mMountListener:Lcom/asus/reader/book/ReaderDatabase$mountListener;

    .line 2892
    return-void
.end method

.method public setPrefSetting(Ljava/lang/String;Z)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 2841
    invoke-virtual {p0}, Lcom/asus/reader/book/ReaderDatabase;->getmContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "Preference"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2842
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 2843
    return-void
.end method

.method public setTimeToken(J)V
    .locals 0
    .parameter "timetoken"

    .prologue
    .line 360
    iput-wide p1, p0, Lcom/asus/reader/book/ReaderDatabase;->mTimeToken:J

    .line 361
    return-void
.end method

.method public setUnMountListener(Lcom/asus/reader/book/ReaderDatabase$unMountListener;)V
    .locals 0
    .parameter "unMountlistener"

    .prologue
    .line 2899
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase;->mUnMountlistener:Lcom/asus/reader/book/ReaderDatabase$unMountListener;

    .line 2900
    return-void
.end method
