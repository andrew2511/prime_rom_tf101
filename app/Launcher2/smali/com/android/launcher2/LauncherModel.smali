.class public Lcom/android/launcher2/LauncherModel;
.super Landroid/content/BroadcastReceiver;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;,
        Lcom/android/launcher2/LauncherModel$LoaderTask;,
        Lcom/android/launcher2/LauncherModel$Callbacks;
    }
.end annotation


# static fields
.field public static final APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final APP_NAME_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher2/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static mCellCountX:I

.field private static mCellCountY:I

.field private static final sCollator:Ljava/text/Collator;

.field private static final sWorker:Landroid/os/Handler;

.field private static final sWorkerThread:Landroid/os/HandlerThread;


# instance fields
.field private mAllAppsList:Lcom/android/launcher2/AllAppsList;

.field private mAllAppsLoadDelay:I

.field private mAllAppsLoaded:Z

.field private final mApp:Lcom/android/launcher2/LauncherApplication;

.field final mAppWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mAppsCanBeOnExternalStorage:Z

.field private mBatchSize:I

.field private mCallbacks:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/launcher2/LauncherModel$Callbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mDefaultIcon:Landroid/graphics/Bitmap;

.field final mFolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/launcher2/DeferredHandler;

.field private mIconCache:Lcom/android/launcher2/IconCache;

.field final mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

.field private final mLock:Ljava/lang/Object;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "launcher-loader"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    .line 80
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/launcher2/LauncherModel;->sWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    .line 1778
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher2/LauncherModel;->sCollator:Ljava/text/Collator;

    .line 1779
    new-instance v0, Lcom/android/launcher2/LauncherModel$4;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherModel$4;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->APP_NAME_COMPARATOR:Ljava/util/Comparator;

    .line 1785
    new-instance v0, Lcom/android/launcher2/LauncherModel$5;

    invoke-direct {v0}, Lcom/android/launcher2/LauncherModel$5;-><init>()V

    sput-object v0, Lcom/android/launcher2/LauncherModel;->APP_INSTALL_TIME_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher2/LauncherApplication;Lcom/android/launcher2/IconCache;)V
    .locals 2
    .parameter "app"
    .parameter "iconCache"

    .prologue
    .line 119
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    .line 75
    new-instance v0, Lcom/android/launcher2/DeferredHandler;

    invoke-direct {v0}, Lcom/android/launcher2/DeferredHandler;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    .line 120
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    .line 121
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    .line 122
    new-instance v0, Lcom/android/launcher2/AllAppsList;

    invoke-direct {v0, p2}, Lcom/android/launcher2/AllAppsList;-><init>(Lcom/android/launcher2/IconCache;)V

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    .line 123
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    .line 125
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v0}, Lcom/android/launcher2/IconCache;->getFullResDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    .line 128
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I

    .line 130
    invoke-virtual {p1}, Lcom/android/launcher2/LauncherApplication;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher2/LauncherModel;->mBatchSize:I

    .line 131
    return-void

    .line 120
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mWorkspaceLoaded:Z

    return p1
.end method

.method static synthetic access$1000(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher2/LauncherModel;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return v0
.end method

.method static synthetic access$1202(Lcom/android/launcher2/LauncherModel;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-boolean p1, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher2/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mBatchSize:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/IconCache;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher2/LauncherModel;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget v0, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoadDelay:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherApplication;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/text/Collator;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mHandler:Lcom/android/launcher2/DeferredHandler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 1
    .parameter "x0"

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/LauncherModel$LoaderTask;)Lcom/android/launcher2/LauncherModel$LoaderTask;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    return-object p1
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    .prologue
    .line 64
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 64
    invoke-direct/range {p0 .. p7}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 64
    invoke-static {p0, p1, p2}, Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    return-object v0
.end method

.method static addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V
    .locals 5
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 318
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 319
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 320
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 321
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 323
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 324
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 325
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v2}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 327
    invoke-virtual {p1, v2, p5, p6}, Lcom/android/launcher2/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 329
    if-eqz p7, :cond_1

    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    invoke-virtual {v0, v3, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 332
    .local v1, result:Landroid/net/Uri;
    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/String;

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    iput-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    .line 335
    :cond_0
    return-void

    .line 329
    .end local v1           #result:Landroid/net/Uri;
    .restart local p0
    :cond_1
    sget-object v3, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI_NO_NOTIFICATION:Landroid/net/Uri;

    goto :goto_0
.end method

.method static addOrMoveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V
    .locals 8
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 143
    iget-wide v0, p1, Lcom/android/launcher2/ItemInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 145
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-static/range {p0 .. p6}, Lcom/android/launcher2/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V

    goto :goto_0
.end method

.method static deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V
    .locals 5
    .parameter "context"
    .parameter "item"

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 383
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 384
    .local v1, uriToDelete:Landroid/net/Uri;
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v3, Lcom/android/launcher2/LauncherModel$3;

    invoke-direct {v3, v0, v1}, Lcom/android/launcher2/LauncherModel$3;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 389
    return-void
.end method

.method static deleteUserFolderContentsFromDatabase(Landroid/content/Context;Lcom/android/launcher2/UserFolderInfo;)V
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    const/4 v5, 0x0

    .line 395
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 397
    .local v0, cr:Landroid/content/ContentResolver;
    iget-wide v1, p1, Lcom/android/launcher2/UserFolderInfo;->id:J

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "container="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p1, Lcom/android/launcher2/UserFolderInfo;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 400
    return-void
.end method

.method private static findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/LiveFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1758
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1759
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/LiveFolderInfo;

    if-nez v1, :cond_1

    .line 1761
    :cond_0
    new-instance v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/LiveFolderInfo;-><init>()V

    .line 1762
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1764
    :cond_1
    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method private static findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;
    .locals 2
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/UserFolderInfo;"
        }
    .end annotation

    .prologue
    .line 1743
    .local p0, folders:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/FolderInfo;

    .line 1744
    .local v0, folderInfo:Lcom/android/launcher2/FolderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher2/UserFolderInfo;

    if-nez v1, :cond_1

    .line 1746
    :cond_0
    new-instance v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-direct {v0}, Lcom/android/launcher2/UserFolderInfo;-><init>()V

    .line 1747
    .restart local v0       #folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1749
    :cond_1
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    .end local v0           #folderInfo:Lcom/android/launcher2/FolderInfo;
    return-object v0
.end method

.method static getCellCountX()I
    .locals 1

    .prologue
    .line 347
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    return v0
.end method

.method static getCellCountY()I
    .locals 1

    .prologue
    .line 351
    sget v0, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    return v0
.end method

.method static getCellLayoutChildId(IIIIII)I
    .locals 2
    .parameter "cellId"
    .parameter "screen"
    .parameter "localCellX"
    .parameter "localCellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 342
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method static getItemsInLocalCoordinates(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 11
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher2/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 229
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 230
    .local v6, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 231
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x7

    new-array v2, p0, [Ljava/lang/String;

    .end local p0
    const/4 p0, 0x0

    const-string v3, "itemType"

    aput-object v3, v2, p0

    const/4 p0, 0x1

    const-string v3, "container"

    aput-object v3, v2, p0

    const/4 p0, 0x2

    const-string v3, "screen"

    aput-object v3, v2, p0

    const/4 p0, 0x3

    const-string v3, "cellX"

    aput-object v3, v2, p0

    const/4 p0, 0x4

    const-string v3, "cellY"

    aput-object v3, v2, p0

    const/4 p0, 0x5

    const-string v3, "spanX"

    aput-object v3, v2, p0

    const/4 p0, 0x6

    const-string v3, "spanY"

    aput-object v3, v2, p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 236
    .local p0, c:Landroid/database/Cursor;
    const-string v0, "itemType"

    .end local v0           #cr:Landroid/content/ContentResolver;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    .line 237
    .local v4, itemTypeIndex:I
    const-string v0, "container"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 238
    .local v2, containerIndex:I
    const-string v0, "screen"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v5

    .line 239
    .local v5, screenIndex:I
    const-string v0, "cellX"

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 240
    .local v0, cellXIndex:I
    const-string v1, "cellY"

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 241
    .local v1, cellYIndex:I
    const-string v3, "spanX"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v7

    .line 242
    .local v7, spanXIndex:I
    const-string v3, "spanY"

    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v8

    .line 245
    .local v8, spanYIndex:I
    :goto_0
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 246
    new-instance v3, Lcom/android/launcher2/ItemInfo;

    invoke-direct {v3}, Lcom/android/launcher2/ItemInfo;-><init>()V

    .line 247
    .local v3, item:Lcom/android/launcher2/ItemInfo;
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 248
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 249
    invoke-interface {p0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 250
    invoke-interface {p0, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 251
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    int-to-long v9, v9

    iput-wide v9, v3, Lcom/android/launcher2/ItemInfo;->container:J

    .line 252
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/ItemInfo;->itemType:I

    .line 253
    invoke-interface {p0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    iput v9, v3, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 255
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    .end local v3           #item:Lcom/android/launcher2/ItemInfo;
    :catch_0
    move-exception v0

    .line 258
    .local v0, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 263
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-object v6

    .line 260
    .local v0, cellXIndex:I
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .end local v0           #cellXIndex:I
    :catchall_0
    move-exception v0

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private getShortcutInfo(Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;
    .locals 13
    .parameter "c"
    .parameter "context"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    .line 1488
    const/4 v3, 0x0

    .line 1489
    .local v3, icon:Landroid/graphics/Bitmap;
    new-instance v6, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v6}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1490
    .local v6, info:Lcom/android/launcher2/ShortcutInfo;
    const/4 v11, 0x1

    iput v11, v6, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    .line 1494
    move-object v0, p1

    move/from16 v1, p7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, v6, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1496
    move-object v0, p1

    move/from16 v1, p3

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1497
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_0

    .line 1535
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1536
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1537
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1540
    :cond_0
    :goto_0
    invoke-virtual {v6, v3}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1541
    return-object v6

    .line 1499
    :pswitch_0
    move-object v0, p1

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1500
    .local v8, packageName:Ljava/lang/String;
    move-object v0, p1

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1501
    .local v9, resourceName:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 1502
    .local v7, packageManager:Landroid/content/pm/PackageManager;
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1505
    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v10

    .line 1506
    .local v10, resources:Landroid/content/res/Resources;
    if-eqz v10, :cond_1

    .line 1507
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v10, v9, v11, v12}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1508
    .local v5, id:I
    iget-object v11, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v11, v10, v5}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-static {v11, p2}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 1515
    .end local v5           #id:I
    .end local v10           #resources:Landroid/content/res/Resources;
    :cond_1
    :goto_1
    if-nez v3, :cond_2

    .line 1516
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1519
    :cond_2
    if-nez v3, :cond_0

    .line 1520
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1521
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1525
    .end local v7           #packageManager:Landroid/content/pm/PackageManager;
    .end local v8           #packageName:Ljava/lang/String;
    .end local v9           #resourceName:Ljava/lang/String;
    :pswitch_1
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p6

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1526
    if-nez v3, :cond_3

    .line 1527
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1528
    const/4 v11, 0x0

    iput-boolean v11, v6, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1529
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_0

    .line 1531
    :cond_3
    const/4 v11, 0x1

    iput-boolean v11, v6, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    goto :goto_0

    .line 1511
    .restart local v7       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v8       #packageName:Ljava/lang/String;
    .restart local v9       #resourceName:Ljava/lang/String;
    :catch_0
    move-exception v11

    goto :goto_1

    .line 1497
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadLiveFolderIcon(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V
    .locals 12
    .parameter "context"
    .parameter "c"
    .parameter "iconTypeIndex"
    .parameter "iconPackageIndex"
    .parameter "iconResourceIndex"
    .parameter "liveFolderInfo"

    .prologue
    .line 1674
    invoke-interface {p2, p3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 1675
    .local v4, iconType:I
    packed-switch v4, :pswitch_data_0

    .line 1696
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1697
    .local v9, resources:Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    const v11, 0x7f020066

    invoke-virtual {v10, v9, v11}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p6

    iput-object v0, v1, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    .line 1701
    .end local v9           #resources:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 1677
    :pswitch_0
    move-object v0, p2

    move/from16 v1, p4

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1678
    .local v7, packageName:Ljava/lang/String;
    move-object v0, p2

    move/from16 v1, p5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1679
    .local v8, resourceName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1681
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v2

    .line 1682
    .local v2, appResources:Landroid/content/res/Resources;
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v2, v8, v10, v11}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 1683
    .local v5, id:I
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v10, v2, v5}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p6

    iput-object v0, v1, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    .end local v2           #appResources:Landroid/content/res/Resources;
    .end local v5           #id:I
    :goto_1
    new-instance v10, Landroid/content/Intent$ShortcutIconResource;

    invoke-direct {v10}, Landroid/content/Intent$ShortcutIconResource;-><init>()V

    move-object v0, v10

    move-object/from16 v1, p6

    iput-object v0, v1, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1692
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object v10, v0

    iput-object v7, v10, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    .line 1693
    move-object/from16 v0, p6

    iget-object v0, v0, Lcom/android/launcher2/LiveFolderInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    move-object v10, v0

    iput-object v8, v10, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    goto :goto_0

    .line 1685
    :catch_0
    move-exception v10

    move-object v3, v10

    .line 1686
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 1687
    .restart local v9       #resources:Landroid/content/res/Resources;
    iget-object v10, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    const v11, 0x7f020066

    invoke-virtual {v10, v9, v11}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-static {v10, p1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v10

    move-object v0, v10

    move-object/from16 v1, p6

    iput-object v0, v1, Lcom/android/launcher2/LiveFolderInfo;->icon:Landroid/graphics/Bitmap;

    goto :goto_1

    .line 1675
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method static moveItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIII)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "container"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"

    .prologue
    .line 158
    iput-wide p2, p1, Lcom/android/launcher2/ItemInfo;->container:J

    .line 159
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    .line 160
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 161
    iput p6, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 163
    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 164
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 165
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "container"

    iget-wide v4, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 168
    const-string v3, "cellX"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 169
    const-string v3, "cellY"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 170
    const-string v3, "screen"

    iget v4, p1, Lcom/android/launcher2/ItemInfo;->screen:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 172
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v4, Lcom/android/launcher2/LauncherModel$1;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher2/LauncherModel$1;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 177
    return-void
.end method

.method static resizeItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;IIII)V
    .locals 6
    .parameter "context"
    .parameter "item"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "spanX"
    .parameter "spanY"

    .prologue
    .line 184
    iput p4, p1, Lcom/android/launcher2/ItemInfo;->spanX:I

    .line 185
    iput p5, p1, Lcom/android/launcher2/ItemInfo;->spanY:I

    .line 186
    iput p2, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    .line 187
    iput p3, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    .line 189
    iget-wide v3, p1, Lcom/android/launcher2/ItemInfo;->id:J

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v1

    .line 190
    .local v1, uri:Landroid/net/Uri;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 191
    .local v2, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "container"

    iget-wide v4, p1, Lcom/android/launcher2/ItemInfo;->container:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 194
    const-string v3, "spanX"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 195
    const-string v3, "spanY"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 196
    const-string v3, "cellX"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 197
    const-string v3, "cellY"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 199
    sget-object v3, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    new-instance v4, Lcom/android/launcher2/LauncherModel$2;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher2/LauncherModel$2;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 204
    return-void
.end method

.method static shortcutExists(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 9
    .parameter "context"
    .parameter "title"
    .parameter "intent"

    .prologue
    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 211
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 212
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    new-array v2, v4, [Ljava/lang/String;

    const-string v3, "title"

    aput-object v3, v2, v5

    const-string v3, "intent"

    aput-object v3, v2, v8

    const-string v3, "title=? and intent=?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v5

    invoke-virtual {p2, v5}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 215
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 217
    .local v7, result:Z
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 219
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 221
    return v7

    .line 219
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1
.end method

.method static updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V
    .locals 6
    .parameter "context"
    .parameter "item"

    .prologue
    const/4 v5, 0x0

    .line 367
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .local v1, values:Landroid/content/ContentValues;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 370
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-virtual {p1, v1}, Lcom/android/launcher2/ItemInfo;->onAddToDatabase(Landroid/content/ContentValues;)V

    .line 371
    iget v2, p1, Lcom/android/launcher2/ItemInfo;->cellX:I

    iget v3, p1, Lcom/android/launcher2/ItemInfo;->cellY:I

    invoke-virtual {p1, v1, v2, v3}, Lcom/android/launcher2/ItemInfo;->updateValuesWithCoordinates(Landroid/content/ContentValues;II)V

    .line 373
    iget-wide v2, p1, Lcom/android/launcher2/ItemInfo;->id:J

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(JZ)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 374
    return-void
.end method

.method static updateWorkspaceLayoutCells(II)V
    .locals 0
    .parameter "shortAxisCellCount"
    .parameter "longAxisCellCount"

    .prologue
    .line 359
    sput p0, Lcom/android/launcher2/LauncherModel;->mCellCountX:I

    .line 360
    sput p1, Lcom/android/launcher2/LauncherModel;->mCellCountY:I

    .line 361
    return-void
.end method


# virtual methods
.method addShortcut(Landroid/content/Context;Landroid/content/Intent;IIIZ)Lcom/android/launcher2/ShortcutInfo;
    .locals 8
    .parameter "context"
    .parameter "data"
    .parameter "screen"
    .parameter "cellX"
    .parameter "cellY"
    .parameter "notify"

    .prologue
    .line 1560
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher2/LauncherModel;->infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v1

    .line 1561
    .local v1, info:Lcom/android/launcher2/ShortcutInfo;
    const-wide/16 v2, -0x64

    move-object v0, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/launcher2/LauncherModel;->addItemToDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;JIIIZ)V

    .line 1564
    return-object v1
.end method

.method public dumpState()V
    .locals 3

    .prologue
    .line 1795
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallbacks="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1796
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.data"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->data:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1797
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.added"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1798
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.removed"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1799
    const-string v0, "Launcher.Model"

    const-string v1, "mAllAppsList.modified"

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsList:Lcom/android/launcher2/AllAppsList;

    iget-object v2, v2, Lcom/android/launcher2/AllAppsList;->modified:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2}, Lcom/android/launcher2/ApplicationInfo;->dumpApplicationInfoList(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1800
    const-string v0, "Launcher.Model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mItems size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v0, :cond_0

    .line 1802
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->dumpState()V

    .line 1806
    :goto_0
    return-void

    .line 1804
    :cond_0
    const-string v0, "Launcher.Model"

    const-string v1, "mLoaderTask=null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 1301
    sget-object v0, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1302
    return-void
.end method

.method public getFallbackIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mDefaultIcon:Landroid/graphics/Bitmap;

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method getFolderById(Landroid/content/Context;Ljava/util/HashMap;J)Lcom/android/launcher2/FolderInfo;
    .locals 17
    .parameter "context"
    .parameter
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/launcher2/FolderInfo;",
            ">;J)",
            "Lcom/android/launcher2/FolderInfo;"
        }
    .end annotation

    .prologue
    .line 270
    .local p2, folderList:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 271
    .local v3, cr:Landroid/content/ContentResolver;
    sget-object v4, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const-string v6, "_id=? and (itemType=? or itemType=?)"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    const/4 v9, 0x3

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 278
    .local v9, c:Landroid/database/Cursor;
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 279
    const-string v4, "itemType"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v14

    .line 280
    .local v14, itemTypeIndex:I
    const-string v4, "title"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    .line 281
    .local v16, titleIndex:I
    const-string v4, "container"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    .line 282
    .local v12, containerIndex:I
    const-string v4, "screen"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v15

    .line 283
    .local v15, screenIndex:I
    const-string v4, "cellX"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 284
    .local v10, cellXIndex:I
    const-string v4, "cellY"

    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v11

    .line 286
    .local v11, cellYIndex:I
    const/4 v13, 0x0

    .line 287
    .local v13, folderInfo:Lcom/android/launcher2/FolderInfo;
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 296
    :goto_0
    move-object v0, v9

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v13, Lcom/android/launcher2/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 297
    move-wide/from16 v0, p3

    move-object v2, v13

    iput-wide v0, v2, Lcom/android/launcher2/FolderInfo;->id:J

    .line 298
    invoke-interface {v9, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v13, Lcom/android/launcher2/FolderInfo;->container:J

    .line 299
    invoke-interface {v9, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/android/launcher2/FolderInfo;->screen:I

    .line 300
    invoke-interface {v9, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/android/launcher2/FolderInfo;->cellX:I

    .line 301
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    iput v4, v13, Lcom/android/launcher2/FolderInfo;->cellY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 306
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    move-object v4, v13

    .line 309
    .end local v10           #cellXIndex:I
    .end local v11           #cellYIndex:I
    .end local v12           #containerIndex:I
    .end local v13           #folderInfo:Lcom/android/launcher2/FolderInfo;
    .end local v14           #itemTypeIndex:I
    .end local v15           #screenIndex:I
    .end local v16           #titleIndex:I
    :goto_1
    return-object v4

    .line 289
    .restart local v10       #cellXIndex:I
    .restart local v11       #cellYIndex:I
    .restart local v12       #containerIndex:I
    .restart local v13       #folderInfo:Lcom/android/launcher2/FolderInfo;
    .restart local v14       #itemTypeIndex:I
    .restart local v15       #screenIndex:I
    .restart local v16       #titleIndex:I
    :pswitch_0
    :try_start_1
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeUserFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v13

    .line 290
    goto :goto_0

    .line 292
    :pswitch_1
    invoke-static/range {p2 .. p4}, Lcom/android/launcher2/LauncherModel;->findOrMakeLiveFolder(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v13

    goto :goto_0

    .line 306
    .end local v10           #cellXIndex:I
    .end local v11           #cellYIndex:I
    .end local v12           #containerIndex:I
    .end local v13           #folderInfo:Lcom/android/launcher2/FolderInfo;
    .end local v14           #itemTypeIndex:I
    .end local v15           #screenIndex:I
    .end local v16           #titleIndex:I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 309
    const/4 v4, 0x0

    goto :goto_1

    .line 306
    :catchall_0
    move-exception v4

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v4

    .line 287
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;
    .locals 4
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    .line 1549
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1551
    .local v0, data:[B
    const/4 v2, 0x0

    :try_start_0
    array-length v3, v0

    invoke-static {v0, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1553
    :goto_0
    return-object v2

    .line 1552
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 1553
    .local v1, e:Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;)Lcom/android/launcher2/ShortcutInfo;
    .locals 7
    .parameter "manager"
    .parameter "intent"
    .parameter "context"

    .prologue
    const/4 v5, -0x1

    .line 1421
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;
    .locals 6
    .parameter "manager"
    .parameter "intent"
    .parameter "context"
    .parameter "c"
    .parameter "iconIndex"
    .parameter "titleIndex"

    .prologue
    const/4 v5, 0x0

    .line 1431
    const/4 v1, 0x0

    .line 1432
    .local v1, icon:Landroid/graphics/Bitmap;
    new-instance v2, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v2}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1434
    .local v2, info:Lcom/android/launcher2/ShortcutInfo;
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1435
    .local v0, componentName:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 1436
    const/4 v4, 0x0

    .line 1478
    :goto_0
    return-object v4

    .line 1446
    :cond_0
    invoke-virtual {p1, p2, v5}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    .line 1447
    .local v3, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v3, :cond_1

    .line 1448
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {v4, v0, v3}, Lcom/android/launcher2/IconCache;->getIcon(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1451
    :cond_1
    if-nez v1, :cond_2

    .line 1452
    if-eqz p4, :cond_2

    .line 1453
    invoke-virtual {p0, p4, p5}, Lcom/android/launcher2/LauncherModel;->getIconFromCursor(Landroid/database/Cursor;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1457
    :cond_2
    if-nez v1, :cond_3

    .line 1458
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1459
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    .line 1461
    :cond_3
    invoke-virtual {v2, v1}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1464
    if-eqz v3, :cond_4

    .line 1465
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, p1}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1468
    :cond_4
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_5

    .line 1469
    if-eqz p4, :cond_5

    .line 1470
    invoke-interface {p4, p6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1474
    :cond_5
    iget-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    if-nez v4, :cond_6

    .line 1475
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1477
    :cond_6
    iput v5, v2, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    move-object v4, v2

    .line 1478
    goto :goto_0
.end method

.method infoFromShortcutIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;)Lcom/android/launcher2/ShortcutInfo;
    .locals 18
    .parameter "context"
    .parameter "data"
    .parameter "fallbackIcon"

    .prologue
    .line 1621
    const-string v15, "android.intent.extra.shortcut.INTENT"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v11

    check-cast v11, Landroid/content/Intent;

    .line 1622
    .local v11, intent:Landroid/content/Intent;
    const-string v15, "android.intent.extra.shortcut.NAME"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1623
    .local v12, name:Ljava/lang/String;
    const-string v15, "android.intent.extra.shortcut.ICON"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    .line 1625
    .local v2, bitmap:Landroid/os/Parcelable;
    const/4 v7, 0x0

    .line 1626
    .local v7, icon:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 1627
    .local v6, filtered:Z
    const/4 v3, 0x0

    .line 1628
    .local v3, customIcon:Z
    const/4 v8, 0x0

    .line 1630
    .local v8, iconResource:Landroid/content/Intent$ShortcutIconResource;
    if-eqz v2, :cond_2

    instance-of v15, v2, Landroid/graphics/Bitmap;

    if-eqz v15, :cond_2

    .line 1631
    new-instance v15, Lcom/android/launcher2/FastBitmapDrawable;

    check-cast v2, Landroid/graphics/Bitmap;

    .end local v2           #bitmap:Landroid/os/Parcelable;
    invoke-direct {v15, v2}, Lcom/android/launcher2/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1632
    const/4 v6, 0x1

    .line 1633
    const/4 v3, 0x1

    .line 1651
    :cond_0
    :goto_0
    new-instance v10, Lcom/android/launcher2/ShortcutInfo;

    invoke-direct {v10}, Lcom/android/launcher2/ShortcutInfo;-><init>()V

    .line 1653
    .local v10, info:Lcom/android/launcher2/ShortcutInfo;
    if-nez v7, :cond_1

    .line 1654
    if-eqz p3, :cond_3

    .line 1655
    move-object/from16 v7, p3

    .line 1661
    :cond_1
    :goto_1
    invoke-virtual {v10, v7}, Lcom/android/launcher2/ShortcutInfo;->setIcon(Landroid/graphics/Bitmap;)V

    .line 1663
    iput-object v12, v10, Lcom/android/launcher2/ShortcutInfo;->title:Ljava/lang/CharSequence;

    .line 1664
    iput-object v11, v10, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 1665
    iput-boolean v3, v10, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    .line 1666
    iput-object v8, v10, Lcom/android/launcher2/ShortcutInfo;->iconResource:Landroid/content/Intent$ShortcutIconResource;

    .line 1668
    return-object v10

    .line 1635
    .end local v10           #info:Lcom/android/launcher2/ShortcutInfo;
    .restart local v2       #bitmap:Landroid/os/Parcelable;
    :cond_2
    const-string v15, "android.intent.extra.shortcut.ICON_RESOURCE"

    move-object/from16 v0, p2

    move-object v1, v15

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    .line 1636
    .local v5, extra:Landroid/os/Parcelable;
    if-eqz v5, :cond_0

    instance-of v15, v5, Landroid/content/Intent$ShortcutIconResource;

    if-eqz v15, :cond_0

    .line 1638
    :try_start_0
    move-object v0, v5

    check-cast v0, Landroid/content/Intent$ShortcutIconResource;

    move-object v8, v0

    .line 1639
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    .line 1640
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v14

    .line 1642
    .local v14, resources:Landroid/content/res/Resources;
    iget-object v15, v8, Landroid/content/Intent$ShortcutIconResource;->resourceName:Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {v14 .. v17}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 1643
    .local v9, id:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    move-object v15, v0

    invoke-virtual {v15, v14, v9}, Lcom/android/launcher2/IconCache;->getFullResIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/android/launcher2/Utilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    goto :goto_0

    .line 1645
    .end local v9           #id:I
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #resources:Landroid/content/res/Resources;
    :catch_0
    move-exception v15

    move-object v4, v15

    .line 1646
    .local v4, e:Ljava/lang/Exception;
    const-string v15, "Launcher.Model"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Could not load shortcut icon: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1657
    .end local v2           #bitmap:Landroid/os/Parcelable;
    .end local v4           #e:Ljava/lang/Exception;
    .end local v5           #extra:Landroid/os/Parcelable;
    .restart local v10       #info:Lcom/android/launcher2/ShortcutInfo;
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher2/LauncherModel;->getFallbackIcon()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1658
    const/4 v15, 0x1

    iput-boolean v15, v10, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    goto :goto_1
.end method

.method public initialize(Lcom/android/launcher2/LauncherModel$Callbacks;)V
    .locals 2
    .parameter "callbacks"

    .prologue
    .line 406
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 407
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    .line 408
    monitor-exit v0

    .line 409
    return-void

    .line 408
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 418
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 420
    .local v0, action:Ljava/lang/String;
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 423
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    .line 424
    .local v2, packageName:Ljava/lang/String;
    const-string v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 426
    .local v4, replacing:Z
    const/4 v1, 0x0

    .line 428
    .local v1, op:I
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 472
    .end local v1           #op:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #replacing:Z
    :cond_1
    :goto_0
    return-void

    .line 433
    .restart local v1       #op:I
    .restart local v2       #packageName:Ljava/lang/String;
    .restart local v4       #replacing:Z
    :cond_2
    const-string v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 434
    const/4 v1, 0x2

    .line 449
    :cond_3
    :goto_1
    if-eqz v1, :cond_1

    .line 450
    new-instance v5, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    new-array v6, v6, [Ljava/lang/String;

    aput-object v2, v6, v7

    invoke-direct {v5, p0, v1, v6}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 435
    :cond_4
    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 436
    if-nez v4, :cond_3

    .line 437
    const/4 v1, 0x3

    goto :goto_1

    .line 441
    :cond_5
    const-string v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 442
    if-nez v4, :cond_6

    .line 443
    const/4 v1, 0x1

    goto :goto_1

    .line 445
    :cond_6
    const/4 v1, 0x2

    goto :goto_1

    .line 453
    .end local v1           #op:I
    .end local v2           #packageName:Ljava/lang/String;
    .end local v4           #replacing:Z
    :cond_7
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 455
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 456
    .local v3, packages:[Ljava/lang/String;
    new-instance v5, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    invoke-direct {v5, p0, v6, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0

    .line 459
    .end local v3           #packages:[Ljava/lang/String;
    :cond_8
    const-string v5, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 460
    const-string v5, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 461
    .restart local v3       #packages:[Ljava/lang/String;
    new-instance v5, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;

    const/4 v6, 0x4

    invoke-direct {v5, p0, v6, v3}, Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;-><init>(Lcom/android/launcher2/LauncherModel;I[Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/android/launcher2/LauncherModel;->enqueuePackageUpdated(Lcom/android/launcher2/LauncherModel$PackageUpdatedTask;)V

    goto :goto_0

    .line 463
    .end local v3           #packages:[Ljava/lang/String;
    :cond_9
    const-string v5, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 469
    iput-boolean v7, p0, Lcom/android/launcher2/LauncherModel;->mAllAppsLoaded:Z

    .line 470
    invoke-virtual {p0}, Lcom/android/launcher2/LauncherModel;->startLoaderFromBackground()V

    goto :goto_0
.end method

.method resolveWidgetsForMimeType(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "context"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1586
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    .line 1587
    .local v6, packageManager:Landroid/content/pm/PackageManager;
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1590
    .local v7, supportedConfigurationActivities:Ljava/util/List;,"Ljava/util/List<Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;>;"
    new-instance v8, Landroid/content/Intent;

    const-string v10, "com.android.launcher.action.SUPPORTS_CLIPDATA_MIMETYPE"

    invoke-direct {v8, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1592
    .local v8, supportsIntent:Landroid/content/Intent;
    invoke-virtual {v8, p2}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1595
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/appwidget/AppWidgetManager;->getInstalledProviders()Ljava/util/List;

    move-result-object v9

    .line 1597
    .local v9, widgets:Ljava/util/List;,"Ljava/util/List<Landroid/appwidget/AppWidgetProviderInfo;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1599
    .local v2, configurationComponentToWidget:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/content/ComponentName;Landroid/appwidget/AppWidgetProviderInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/appwidget/AppWidgetProviderInfo;

    .line 1600
    .local v4, info:Landroid/appwidget/AppWidgetProviderInfo;
    iget-object v10, v4, Landroid/appwidget/AppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    invoke-virtual {v2, v10, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1605
    .end local v4           #info:Landroid/appwidget/AppWidgetProviderInfo;
    :cond_0
    const/high16 v10, 0x1

    invoke-virtual {v6, v8, v10}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 1607
    .local v0, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local p0
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 1608
    .local v4, info:Landroid/content/pm/ResolveInfo;
    iget-object v1, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 1609
    .local v1, activityInfo:Landroid/content/pm/ActivityInfo;
    new-instance v5, Landroid/content/ComponentName;

    iget-object v10, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    .local v5, infoComponent:Landroid/content/ComponentName;
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1612
    new-instance v10, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/appwidget/AppWidgetProviderInfo;

    invoke-direct {v10, v4, p0}, Lcom/android/launcher2/InstallWidgetReceiver$WidgetMimeTypeHandlerData;-><init>(Landroid/content/pm/ResolveInfo;Landroid/appwidget/AppWidgetProviderInfo;)V

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1617
    .end local v1           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v4           #info:Landroid/content/pm/ResolveInfo;
    .end local v5           #infoComponent:Landroid/content/ComponentName;
    :cond_2
    return-object v7
.end method

.method public startLoader(Landroid/content/Context;Z)V
    .locals 4
    .parameter "context"
    .parameter "isLaunching"

    .prologue
    .line 497
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 505
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 506
    .local v0, oldTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    if-eqz v0, :cond_1

    .line 507
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->isLaunching()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 509
    const/4 p2, 0x1

    .line 511
    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 513
    :cond_1
    new-instance v2, Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher2/LauncherModel$LoaderTask;-><init>(Lcom/android/launcher2/LauncherModel;Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    .line 514
    sget-object v2, Lcom/android/launcher2/LauncherModel;->sWorker:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 516
    .end local v0           #oldTask:Lcom/android/launcher2/LauncherModel$LoaderTask;
    :cond_2
    monitor-exit v1

    .line 517
    return-void

    .line 516
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public startLoaderFromBackground()V
    .locals 4

    .prologue
    .line 481
    const/4 v1, 0x0

    .line 482
    .local v1, runLoader:Z
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 483
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mCallbacks:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 484
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eqz v0, :cond_0

    .line 486
    invoke-interface {v0}, Lcom/android/launcher2/LauncherModel$Callbacks;->setLoadOnResume()Z

    move-result v2

    if-nez v2, :cond_0

    .line 487
    const/4 v1, 0x1

    .line 491
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_0
    if-eqz v1, :cond_1

    .line 492
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel;->mApp:Lcom/android/launcher2/LauncherApplication;

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher2/LauncherModel;->startLoader(Landroid/content/Context;Z)V

    .line 494
    :cond_1
    return-void
.end method

.method public stopLoader()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 521
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    if-eqz v1, :cond_0

    .line 522
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel;->mLoaderTask:Lcom/android/launcher2/LauncherModel$LoaderTask;

    invoke-virtual {v1}, Lcom/android/launcher2/LauncherModel$LoaderTask;->stopLocked()V

    .line 524
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 525
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 526
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 527
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 528
    return-void

    .line 524
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V
    .locals 8
    .parameter "context"
    .parameter "info"
    .parameter "c"
    .parameter "iconIndex"

    .prologue
    const/4 v7, 0x0

    .line 1705
    iget-boolean v5, p0, Lcom/android/launcher2/LauncherModel;->mAppsCanBeOnExternalStorage:Z

    if-nez v5, :cond_1

    .line 1735
    :cond_0
    :goto_0
    return-void

    .line 1714
    :cond_1
    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->customIcon:Z

    if-nez v5, :cond_0

    iget-boolean v5, p2, Lcom/android/launcher2/ShortcutInfo;->usingFallbackIcon:Z

    if-nez v5, :cond_0

    .line 1716
    invoke-interface {p3, p4}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    .line 1718
    .local v0, data:[B
    if-eqz v0, :cond_3

    .line 1719
    const/4 v5, 0x0

    :try_start_0
    array-length v6, v0

    invoke-static {v0, v5, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 1720
    .local v4, saved:Landroid/graphics/Bitmap;
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel;->mIconCache:Lcom/android/launcher2/IconCache;

    invoke-virtual {p2, v5}, Lcom/android/launcher2/ShortcutInfo;->getIcon(Lcom/android/launcher2/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1721
    .local v2, loaded:Landroid/graphics/Bitmap;
    invoke-virtual {v4, v2}, Landroid/graphics/Bitmap;->sameAs(Landroid/graphics/Bitmap;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    const/4 v5, 0x1

    move v3, v5

    .line 1728
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    .local v3, needSave:Z
    :goto_1
    if-eqz v3, :cond_0

    .line 1729
    const-string v5, "Launcher.Model"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "going to save icon bitmap for info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1732
    invoke-static {p1, p2}, Lcom/android/launcher2/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)V

    goto :goto_0

    .end local v3           #needSave:Z
    .restart local v2       #loaded:Landroid/graphics/Bitmap;
    .restart local v4       #saved:Landroid/graphics/Bitmap;
    :cond_2
    move v3, v7

    .line 1721
    goto :goto_1

    .line 1723
    .end local v2           #loaded:Landroid/graphics/Bitmap;
    .end local v4           #saved:Landroid/graphics/Bitmap;
    :cond_3
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_1

    .line 1725
    .end local v3           #needSave:Z
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 1726
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x1

    .restart local v3       #needSave:Z
    goto :goto_1
.end method
