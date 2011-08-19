.class public Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
.super Ljava/lang/Object;
.source "MyLibraryItem.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;,
        Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;,
        Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;,
        Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;,
        Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnPurchaseAdviceProcessedListener;
    }
.end annotation


# static fields
.field private static final DOWNLOADING_URLS_RETRY_TIMEOUT:I = 0x7530

.field private static final STATE_DOWNLOADING:I = 0x2

.field private static final STATE_HAS_EVERYTHING:I = 0x3c

.field private static final STATE_HAS_EVERYTHING_BUT_LAYOUT:I = 0x34

.field private static final STATE_HAS_LAYOUT:I = 0x8

.field private static final STATE_HAS_PAGES:I = 0x10

.field private static final STATE_HAS_PAGES_INFO:I = 0x40

.field private static final STATE_HAS_PDF:I = 0x80

.field private static final STATE_HAS_THUMBNAIL:I = 0x4

.field private static final STATE_HAS_ZOOMS:I = 0x20

.field private static final STATE_READY:I = 0x1

.field private static final STATE_SEMIREADY:I = 0x54

.field private static mBackgroundThread:Landroid/os/HandlerThread;

.field private static mBackgroundThreadHandler:Landroid/os/Handler;

.field private static mCurrent:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

.field private static volatile mIsUpdatingItemsList:Z

.field private static mItems:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mItemsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ">;"
        }
    .end annotation
.end field

.field private static final mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private static mOnDownloadRetryListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;

.field private static mOnItemsListUpdatedListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;


# instance fields
.field private mCertificateString:Ljava/lang/String;

.field private mCid:Ljava/lang/String;

.field private mCountry:Ljava/lang/String;

.field private mCurrentPageNumber:I

.field private mDataDir:Ljava/io/File;

.field private mDownloadUrls:[Ljava/lang/String;

.field private mEnableSmart:Z

.field private mId:J

.field private mIsAdvice:Z

.field private mIssueDate:Ljava/util/Date;

.field private mIssueId:Ljava/lang/String;

.field private mIssueOpenDate:Ljava/util/Date;

.field private mLanguage:Ljava/lang/String;

.field private mLayout:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

.field private mLayoutDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutUrls:[Ljava/lang/String;

.field private mLicenseUrls:[Ljava/lang/String;

.field private mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;

.field private mPagesCount:I

.field private volatile mPagesDownloadProgress:I

.field private mPagesDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mPagesUrls:[Ljava/lang/String;

.field private mParentName:Ljava/lang/String;

.field private mPdfDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mThumbnailDownloadProgress:I

.field private mThumbnailDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private volatile mZoomsDownloadProgress:I

.field private mZoomsDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/DownloadTask;",
            ">;"
        }
    .end annotation
.end field

.field private mZoomsUrls:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 106
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 114
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MyLibraryItem.BackgroundThread"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 115
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 116
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThreadHandler:Landroid/os/Handler;

    .line 43
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLicenseUrls:[Ljava/lang/String;

    .line 101
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 120
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mThumbnailDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 122
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 123
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 125
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 127
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPdfDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    .line 243
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueOpenDate:Ljava/util/Date;

    .line 244
    const/4 v0, 0x1

    iput v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrentPageNumber:I

    .line 256
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCertificateString:Ljava/lang/String;

    .line 137
    return-void
.end method

.method synthetic constructor <init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Lcom/newspaperdirect/pressreader/android/core/layout/Issue;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 102
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayout:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    return-void
.end method

.method static synthetic access$1(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 121
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mThumbnailDownloadProgress:I

    return-void
.end method

.method static synthetic access$10(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 124
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadProgress:I

    return-void
.end method

.method static synthetic access$11(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 123
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$12(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 548
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesUrlsThenStartDownloading()V

    return-void
.end method

.method static synthetic access$13(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 126
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadProgress:I

    return-void
.end method

.method static synthetic access$14(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 125
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$15(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 606
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsUrlsThenStartDownloading()V

    return-void
.end method

.method static synthetic access$16(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 127
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPdfDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$17(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 653
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDownloadUrlsThenStartDownloading()V

    return-void
.end method

.method static synthetic access$18(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 256
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCertificateString:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$19()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnItemsListUpdatedListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;

    return-object v0
.end method

.method static synthetic access$2(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 743
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->updateDownloadProgress(Z)V

    return-void
.end method

.method static synthetic access$20(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;)V
    .locals 0
    .parameter

    .prologue
    .line 131
    sput-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnItemsListUpdatedListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;

    return-void
.end method

.method static synthetic access$21(Z)V
    .locals 0
    .parameter

    .prologue
    .line 132
    sput-boolean p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIsUpdatingItemsList:Z

    return-void
.end method

.method static synthetic access$22(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/Date;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueOpenDate:Ljava/util/Date;

    return-void
.end method

.method static synthetic access$24(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/concurrent/atomic/AtomicInteger;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method static synthetic access$25(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 92
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIsAdvice:Z

    return-void
.end method

.method static synthetic access$26(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$27(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mTitle:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$28(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 86
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesCount:I

    return-void
.end method

.method static synthetic access$29(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mEnableSmart:Z

    return-void
.end method

.method static synthetic access$3(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$30(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 88
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mParentName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$31(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCountry:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$32(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 90
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLanguage:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$33(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLicenseUrls:[Ljava/lang/String;

    return-void
.end method

.method static synthetic access$4(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 757
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->updateState()V

    return-void
.end method

.method static synthetic access$5(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 120
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mThumbnailDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$6(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/io/File;)Z
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 672
    invoke-direct {p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkZipFileConsistency(Ljava/io/File;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$7(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter

    .prologue
    .line 122
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$8()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;
    .locals 1

    .prologue
    .line 130
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadRetryListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;

    return-object v0
.end method

.method static synthetic access$9(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
    .locals 0
    .parameter

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutUrlsThenStartDownloading()V

    return-void
.end method

.method private checkZipFileConsistency(Ljava/io/File;)Z
    .locals 3
    .parameter "file"

    .prologue
    const/4 v2, 0x0

    .line 674
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-direct {v1, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 675
    const/4 v1, 0x1

    .line 687
    :goto_0
    return v1

    .line 677
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 678
    .local v0, e:Ljava/util/zip/ZipException;
    invoke-virtual {v0}, Ljava/util/zip/ZipException;->printStackTrace()V

    move v1, v2

    .line 679
    goto :goto_0

    .line 681
    .end local v0           #e:Ljava/util/zip/ZipException;
    :catch_1
    move-exception v1

    move-object v0, v1

    .line 682
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move v1, v2

    .line 683
    goto :goto_0

    .line 685
    .end local v0           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    move-object v0, v1

    .line 686
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 687
    goto :goto_0
.end method

.method private cleanUpStorage()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 870
    invoke-direct {p0, v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 871
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    :goto_0
    if-lt v3, v2, :cond_1

    .line 873
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 874
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    .line 876
    :cond_0
    return-void

    .line 871
    :cond_1
    aget-object v0, v1, v3

    .line 872
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 871
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public static findItem(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 3
    .parameter "issue"

    .prologue
    .line 1216
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1218
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 1224
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1226
    const/4 v1, 0x0

    :goto_0
    return-object v1

    .line 1218
    :cond_1
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1219
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 1224
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v1, v0

    .line 1220
    goto :goto_0

    .line 1223
    .end local v0           #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    :catchall_0
    move-exception v1

    .line 1224
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1225
    throw v1
.end method

.method public static findItem(Ljava/lang/String;Ljava/util/Date;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 5
    .parameter "cid"
    .parameter "date"

    .prologue
    .line 1230
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1231
    .local v1, prefix:Ljava/lang/String;
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1233
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 1239
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1241
    const/4 v2, 0x0

    :goto_0
    return-object v2

    .line 1233
    :cond_1
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1234
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 1239
    sget-object v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    move-object v2, v0

    .line 1235
    goto :goto_0

    .line 1238
    .end local v0           #item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    :catchall_0
    move-exception v2

    .line 1239
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1240
    throw v2
.end method

.method public static findItemById(J)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 5
    .parameter "id"

    .prologue
    const/4 v4, 0x0

    .line 1193
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsCount()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v4

    .line 1198
    :goto_0
    return-object v1

    .line 1194
    :cond_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    move-object v1, v4

    .line 1198
    goto :goto_0

    .line 1194
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1195
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getId()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-nez v2, :cond_1

    move-object v1, v0

    .line 1196
    goto :goto_0
.end method

.method public static getCurrent()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 1

    .prologue
    .line 1202
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrent:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    return-object v0
.end method

.method private getDataDir(Z)Ljava/io/File;
    .locals 3
    .parameter "create"

    .prologue
    .line 295
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->getDataDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    .line 296
    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->isExternalStorageWriteable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 297
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDataDir:Ljava/io/File;

    return-object v0
.end method

.method private getDownloadUrls()V
    .locals 13

    .prologue
    .line 799
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLicenseUrls:[Ljava/lang/String;

    new-instance v11, Ljava/util/Random;

    invoke-direct {v11}, Ljava/util/Random;-><init>()V

    iget-object v12, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLicenseUrls:[Ljava/lang/String;

    array-length v12, v12

    invoke-virtual {v11, v12}, Ljava/util/Random;->nextInt(I)I

    move-result v11

    aget-object v4, v10, v11

    .line 800
    .local v4, licenseUrl:Ljava/lang/String;
    const/4 v10, 0x0

    new-array v1, v10, [Ljava/lang/String;

    .line 801
    .local v1, dummy:[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 802
    .local v3, layoutUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 803
    .local v6, pagesUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 804
    .local v9, zoomsUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 805
    .local v0, downloadUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "http://tempuri.org/"

    .line 806
    .local v8, uri:Ljava/lang/String;
    new-instance v7, Landroid/sax/RootElement;

    const-string v10, "ActivationResponse"

    invoke-direct {v7, v8, v10}, Landroid/sax/RootElement;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    .local v7, root:Landroid/sax/RootElement;
    const-string v10, "Certificate"

    invoke-virtual {v7, v8, v10}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    new-instance v11, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$16;

    invoke-direct {v11, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$16;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v10, v11}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 812
    const-string v10, "SmartLayoutUrls"

    invoke-virtual {v7, v8, v10}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    const-string v11, "Url"

    invoke-virtual {v10, v8, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    .line 813
    new-instance v11, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$17;

    invoke-direct {v11, p0, v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$17;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 818
    const-string v10, "ThumbnailUrlsByWidth"

    invoke-virtual {v7, v8, v10}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    const-string v11, "Url"

    invoke-virtual {v10, v8, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    .line 819
    new-instance v11, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$18;

    invoke-direct {v11, p0, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$18;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 824
    const-string v10, "ZoomUrls"

    invoke-virtual {v7, v8, v10}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    const-string v11, "Url"

    invoke-virtual {v10, v8, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    .line 825
    new-instance v11, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$19;

    invoke-direct {v11, p0, v9}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$19;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 830
    const-string v10, "DownloadUrls"

    invoke-virtual {v7, v8, v10}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    const-string v11, "Url"

    invoke-virtual {v10, v8, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    new-instance v11, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$20;

    invoke-direct {v11, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$20;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/util/List;)V

    invoke-virtual {v10, v11}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 835
    const/4 v5, 0x0

    .line 836
    .local v5, pagesLoader:Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v10

    and-int/lit8 v10, v10, 0x40

    if-nez v10, :cond_0

    .line 837
    const-string v10, "DocumentInfo"

    invoke-virtual {v7, v8, v10}, Landroid/sax/RootElement;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    const-string v11, "Pages"

    invoke-virtual {v10, v8, v11}, Landroid/sax/Element;->getChild(Ljava/lang/String;Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    invoke-static {p0, v8, v10}, Lcom/newspaperdirect/pressreader/android/core/layout/Issue;->getPagesLoaderFromLicenseXml(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/lang/String;Landroid/sax/Element;)Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;

    move-result-object v5

    .line 839
    :cond_0
    :try_start_0
    invoke-virtual {v7}, Landroid/sax/RootElement;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v10

    invoke-static {v4, v10}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getContent(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 857
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Lcom/newspaperdirect/pressreader/android/core/layout/Page$LoaderFromLicenseXml;->getCount()I

    move-result v10

    if-lez v10, :cond_1

    .line 858
    iget-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v11

    or-int/lit8 v11, v11, 0x40

    invoke-virtual {v10, v11}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 859
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->updateState()V

    .line 861
    :cond_1
    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    .line 862
    invoke-interface {v6, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    .line 863
    invoke-interface {v9, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    .line 864
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    iput-object v10, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    .line 866
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->update(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)Z

    .line 867
    :goto_0
    return-void

    .line 841
    :catch_0
    move-exception v10

    move-object v2, v10

    .line 842
    .local v2, e:Ljava/lang/AssertionError;
    invoke-virtual {v2}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 843
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    .line 844
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    .line 845
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    .line 846
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    goto :goto_0

    .line 849
    .end local v2           #e:Ljava/lang/AssertionError;
    :catch_1
    move-exception v10

    move-object v2, v10

    .line 850
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 851
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    .line 852
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    .line 853
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    .line 854
    iput-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    goto :goto_0
.end method

.method private getDownloadUrlsThenStartDownloading()V
    .locals 5

    .prologue
    .line 654
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPdfDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 655
    .local v0, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-nez v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 656
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 659
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDownloadUrls()V

    .line 660
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 661
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 663
    :cond_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$15;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$15;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 667
    const-wide/16 v3, 0x7530

    .line 663
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static getItem(I)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 2
    .parameter "idx"

    .prologue
    .line 1206
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1208
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1211
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1208
    return-object p0

    .line 1210
    :catchall_0
    move-exception v0

    .line 1211
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1212
    throw v0
.end method

.method public static getItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1144
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1146
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1149
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1146
    return-object v0

    .line 1148
    :catchall_0
    move-exception v0

    .line 1149
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1150
    throw v0
.end method

.method public static getItemsCount()I
    .locals 2

    .prologue
    .line 1154
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 1156
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1159
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1156
    return v0

    .line 1158
    :catchall_0
    move-exception v0

    .line 1159
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 1160
    throw v0
.end method

.method private static getItemsList()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1164
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsList:Ljava/util/List;

    if-nez v0, :cond_1

    .line 1165
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    monitor-enter v0

    .line 1166
    :try_start_0
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsList:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1167
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->loadItemsList()V

    .line 1165
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1171
    :cond_1
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsList:Ljava/util/List;

    return-object v0

    .line 1165
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private getLayoutUrlsThenStartDownloading()V
    .locals 5

    .prologue
    .line 491
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 492
    .local v0, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-nez v0, :cond_0

    .line 507
    :goto_0
    return-void

    .line 493
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 494
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 496
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDownloadUrls()V

    .line 497
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 498
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 500
    :cond_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$6;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 504
    const-wide/16 v3, 0x7530

    .line 500
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private getPagesUrlsThenStartDownloading()V
    .locals 5

    .prologue
    .line 549
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 550
    .local v0, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-nez v0, :cond_0

    .line 565
    :goto_0
    return-void

    .line 551
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 552
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 554
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDownloadUrls()V

    .line 555
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 556
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 558
    :cond_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$9;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$9;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 562
    const-wide/16 v3, 0x7530

    .line 558
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method private getZoomsUrlsThenStartDownloading()V
    .locals 5

    .prologue
    .line 607
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 608
    .local v0, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-nez v0, :cond_0

    .line 623
    :goto_0
    return-void

    .line 609
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 610
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 612
    :cond_1
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDownloadUrls()V

    .line 613
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_2

    .line 614
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setUrls([Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 616
    :cond_2
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$12;

    invoke-direct {v2, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$12;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 620
    const-wide/16 v3, 0x7530

    .line 616
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public static init()V
    .locals 0

    .prologue
    .line 1325
    return-void
.end method

.method private static loadItemsList()V
    .locals 22

    .prologue
    .line 1245
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsList:Ljava/util/List;

    .line 1246
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    .line 1247
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->getItems()Landroid/database/Cursor;

    move-result-object v3

    .line 1248
    .local v3, cur:Landroid/database/Cursor;
    if-nez v3, :cond_0

    .line 1294
    :goto_0
    return-void

    .line 1249
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    .line 1250
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1251
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 1255
    :cond_1
    const-string v4, "rowid"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 1256
    .local v9, idxId:I
    const-string v4, "issue_id"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 1257
    .local v10, idxIssueId:I
    const-string v4, "title"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v16

    .line 1258
    .local v16, idxTitle:I
    const-string v4, "pages_count"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 1259
    .local v13, idxPagesCount:I
    const-string v4, "enable_smart"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1260
    .local v8, idxEnableSmart:I
    const-string v4, "parent_name"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 1261
    .local v14, idxParentName:I
    const-string v4, "country"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 1262
    .local v6, idxCountry:I
    const-string v4, "language"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 1263
    .local v11, idxLanguage:I
    const-string v4, "state"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 1264
    .local v15, idxState:I
    const-string v4, "license_urls"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 1265
    .local v12, idxLicenseUrls:I
    const-string v4, "current_page_number"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 1266
    .local v7, idxCurrentPageNumber:I
    const-string v4, "certificate"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 1267
    .local v5, idxCertificate:I
    const-string v4, "advice"

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 1269
    .local v4, idxAdvice:I
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v17

    if-nez v17, :cond_2

    .line 1289
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1290
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 1293
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->synchronizeStatsList()V

    goto :goto_0

    .line 1270
    :cond_2
    new-instance v17, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    invoke-direct/range {v17 .. v17}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;-><init>()V

    .line 1271
    .local v17, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-interface {v3, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    move-wide/from16 v0, v18

    move-object/from16 v2, v17

    iput-wide v0, v2, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mId:J

    .line 1272
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    .line 1273
    move-object v0, v3

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mTitle:Ljava/lang/String;

    .line 1274
    invoke-interface {v3, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesCount:I

    .line 1275
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_3

    const/16 v18, 0x1

    :goto_2
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mEnableSmart:Z

    .line 1276
    invoke-interface {v3, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mParentName:Ljava/lang/String;

    .line 1277
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCountry:Ljava/lang/String;

    .line 1278
    invoke-interface {v3, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLanguage:Ljava/lang/String;

    .line 1279
    new-instance v18, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-interface {v3, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    invoke-direct/range {v18 .. v19}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 1280
    invoke-interface {v3, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "\n"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLicenseUrls:[Ljava/lang/String;

    .line 1281
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    move-object/from16 v1, v17

    iput v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrentPageNumber:I

    .line 1282
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCertificateString:Ljava/lang/String;

    .line 1283
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->getItemOpenDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueOpenDate:Ljava/util/Date;

    .line 1284
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_4

    const/16 v18, 0x1

    :goto_3
    move/from16 v0, v18

    move-object/from16 v1, v17

    iput-boolean v0, v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIsAdvice:Z

    .line 1285
    const/16 v18, 0x0

    invoke-direct/range {v17 .. v18}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->updateDownloadProgress(Z)V

    .line 1286
    sget-object v18, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsList:Ljava/util/List;

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1287
    sget-object v18, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {v17 .. v17}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0xc

    invoke-virtual/range {v19 .. v21}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1275
    :cond_3
    const/16 v18, 0x0

    goto/16 :goto_2

    .line 1284
    :cond_4
    const/16 v18, 0x0

    goto :goto_3
.end method

.method public static refreshItemsList(Landroid/app/Activity;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;)V
    .locals 2
    .parameter "myActivity"
    .parameter "itemsUpdatedListener"

    .prologue
    .line 879
    sput-object p1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnItemsListUpdatedListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;

    .line 880
    sget-boolean v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIsUpdatingItemsList:Z

    if-eqz v0, :cond_0

    .line 899
    :goto_0
    return-void

    .line 881
    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIsUpdatingItemsList:Z

    .line 883
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$21;

    invoke-direct {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$21;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 898
    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$21;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public static removeAllOnDownloadProgressListeners()V
    .locals 3

    .prologue
    .line 1175
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1177
    return-void

    .line 1175
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1176
    .local v0, item:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->removeOnDownloadProgressListener()V

    goto :goto_0
.end method

.method public static removeOnDownloadRetryListener()V
    .locals 1

    .prologue
    .line 1140
    const/4 v0, 0x0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadRetryListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;

    .line 1141
    return-void
.end method

.method public static removeOnItemsListUpdatedListener()V
    .locals 1

    .prologue
    .line 1136
    const/4 v0, 0x0

    sput-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnItemsListUpdatedListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnItemsListUpdatedListener;

    .line 1137
    return-void
.end method

.method public static startItemsDownloading(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 1180
    sput-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadRetryListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadRetryListener;

    .line 1181
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 1190
    :goto_0
    return-void

    .line 1182
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mBackgroundThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$33;

    invoke-direct {v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$33;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private startLayoutDownloadTask()V
    .locals 5

    .prologue
    .line 454
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return-void

    .line 455
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutFile()Ljava/io/File;

    move-result-object v0

    .line 456
    .local v0, file:Ljava/io/File;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;-><init>(I[Ljava/lang/String;Ljava/io/File;)V

    .line 457
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$4;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnProgressUpdateListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v2

    .line 462
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$5;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnDownloadCompleteListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    .line 485
    .local v1, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutUrls:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 487
    :cond_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutUrlsThenStartDownloading()V

    goto :goto_0
.end method

.method private startPagesDownloadTask()V
    .locals 5

    .prologue
    .line 510
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 546
    :cond_0
    :goto_0
    return-void

    .line 511
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v0

    .line 512
    .local v0, file:Ljava/io/File;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;-><init>(I[Ljava/lang/String;Ljava/io/File;)V

    .line 513
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$7;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$7;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnProgressUpdateListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v2

    .line 519
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$8;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$8;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnDownloadCompleteListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    .line 543
    .local v1, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 544
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesUrls:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 545
    :cond_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesUrlsThenStartDownloading()V

    goto :goto_0
.end method

.method private startPdfDownloadTask()V
    .locals 5

    .prologue
    .line 626
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPdfDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 627
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPdfFile()Ljava/io/File;

    move-result-object v0

    .line 628
    .local v0, file:Ljava/io/File;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;-><init>(I[Ljava/lang/String;Ljava/io/File;)V

    .line 629
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$13;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$13;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnProgressUpdateListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v2

    .line 634
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$14;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnDownloadCompleteListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    .line 648
    .local v1, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPdfDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 649
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mDownloadUrls:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 650
    :cond_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDownloadUrlsThenStartDownloading()V

    goto :goto_0
.end method

.method private startThumbnailDownloadTask()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 418
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mThumbnailDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 451
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->getThumbnailUrls()Ljava/util/List;

    move-result-object v2

    .line 420
    .local v2, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-eqz v5, :cond_0

    .line 422
    new-array v5, v7, [Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    .line 423
    .local v4, urls:[Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "?cid="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getCid()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&date="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 424
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDateString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "&page=1&width="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 425
    sget v6, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->THUMBNAIL_WIDTH:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 423
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 426
    .local v3, urlParams:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v5, v4

    if-lt v0, v5, :cond_2

    .line 428
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getThumbnailFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v5, v7, v4, v6}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;-><init>(I[Ljava/lang/String;Ljava/io/File;)V

    .line 429
    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$2;

    invoke-direct {v6, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnProgressUpdateListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v5

    .line 435
    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$3;

    invoke-direct {v6, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnDownloadCompleteListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    .line 449
    .local v1, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mThumbnailDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 450
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 427
    .end local v1           #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    :cond_2
    aget-object v5, v4, v0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 426
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private startZoomsDownloadTask()V
    .locals 5

    .prologue
    .line 568
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 569
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsFile()Ljava/io/File;

    move-result-object v0

    .line 570
    .local v0, file:Ljava/io/File;
    new-instance v2, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;-><init>(I[Ljava/lang/String;Ljava/io/File;)V

    .line 571
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$10;

    invoke-direct {v3, p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$10;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnProgressUpdateListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnProgressUpdateListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v2

    .line 577
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;

    invoke-direct {v3, p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$11;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Ljava/io/File;)V

    invoke-virtual {v2, v3}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->setOnDownloadCompleteListener(Lcom/newspaperdirect/pressreader/android/core/DownloadTask$OnDownloadCompleteListener;)Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    move-result-object v1

    .line 601
    .local v1, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsUrls:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->execute()V

    goto :goto_0

    .line 603
    :cond_2
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsUrlsThenStartDownloading()V

    goto :goto_0
.end method

.method public static declared-synchronized syncItemsList(Ljava/util/List;Ljava/util/List;)Z
    .locals 19
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 902
    .local p0, newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .local p1, updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    const-class v16, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    monitor-enter v16

    const/4 v13, 0x1

    .line 904
    .local v13, noErrors:Z
    :try_start_0
    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v6}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 905
    .local v6, item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 906
    .local v7, mids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 907
    .local v4, licenseUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 909
    .local v14, openIssues:Ljava/util/Map;,"Ljava/util/Map<Ljava/util/UUID;Ljava/lang/String;>;"
    new-instance v9, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v3, "get-messages"

    invoke-direct {v9, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 910
    .local v9, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    const-string v3, ""

    .line 911
    .local v3, body:Ljava/lang/String;
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->getUnreportedItems()Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v5

    .line 913
    .local v5, cur:Landroid/database/Cursor;
    if-eqz v5, :cond_0

    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v8

    if-lez v8, :cond_0

    .line 914
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "<print-reports>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 915
    const-string v8, "issue_id"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 916
    .local v10, idxIssueId:I
    const-string v8, "open_time"

    invoke-interface {v5, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 918
    .local v11, idxOpenTime:I
    :goto_0
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_7

    .line 925
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .end local v10           #idxIssueId:I
    invoke-direct {v8, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "</print-reports>"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v3

    .line 929
    .end local v11           #idxOpenTime:I
    :cond_0
    if-eqz v5, :cond_1

    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 930
    :cond_1
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 932
    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #cur:Landroid/database/Cursor;
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .end local v3           #body:Ljava/lang/String;
    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "<thumbnail-width>"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v5, Lcom/newspaperdirect/pressreader/android/core/GlobalConfiguration;->PAGE_PREVIEW_WIDTH:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "</thumbnail-width>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 933
    .restart local v3       #body:Ljava/lang/String;
    invoke-virtual {v9, v3}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->setRequestBody(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    .line 935
    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    .end local v3           #body:Ljava/lang/String;
    const-string v5, "open-reports-result"

    invoke-virtual {v3, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    const-string v5, "open"

    invoke-virtual {v3, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    .line 936
    .local v3, open:Landroid/sax/Element;
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$22;

    invoke-direct {v5, v14}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$22;-><init>(Ljava/util/Map;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 952
    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v3

    .end local v3           #open:Landroid/sax/Element;
    const-string v5, "message"

    invoke-virtual {v3, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v10

    .line 953
    .local v10, message:Landroid/sax/Element;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;

    move-object/from16 v5, p0

    move-object/from16 v8, p1

    invoke-direct/range {v3 .. v8}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$23;-><init>(Ljava/util/List;Ljava/util/List;Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;Ljava/util/List;)V

    invoke-virtual {v10, v3}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 991
    const-string v3, "issue-id"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$24;

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$24;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 999
    const-string v3, "title"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$25;

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$25;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 1005
    const-string v3, "pages"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$26;

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$26;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 1011
    const-string v3, "enable-smart"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$27;

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$27;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 1017
    const-string v3, "parent-name"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$28;

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$28;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 1023
    const-string v3, "country"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$29;

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$29;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 1029
    const-string v3, "language"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$30;

    invoke-direct {v5, v6}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$30;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 1035
    const-string v3, "get-license-url3"

    invoke-virtual {v10, v3}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v3

    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$31;

    invoke-direct {v5, v6, v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$31;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V

    invoke-virtual {v3, v5}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 1049
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;

    invoke-direct {v3, v6, v4}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$32;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V

    invoke-virtual {v10, v3}, Landroid/sax/Element;->setEndElementListener(Landroid/sax/EndElementListener;)V

    .line 1055
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/Service;->getServices()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v4

    .end local v4           #licenseUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move v8, v13

    .end local v13           #noErrors:Z
    .local v8, noErrors:Z
    :goto_1
    :try_start_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_9

    .line 1071
    if-eqz p0, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 1072
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1073
    .local v5, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .end local v6           #item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .end local v7           #mids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v10           #message:Landroid/sax/Element;
    :cond_2
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_a

    .line 1085
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->clear()V

    .line 1086
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .end local v5           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :cond_3
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_c

    .line 1107
    :cond_4
    if-eqz p1, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result p0

    .end local p0           #newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    if-lez p0, :cond_6

    .line 1108
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local p1           #updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :cond_5
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result p0

    if-nez p0, :cond_e

    .line 1131
    :cond_6
    monitor-exit v16

    return v8

    .line 919
    .end local v8           #noErrors:Z
    .local v3, body:Ljava/lang/String;
    .restart local v4       #licenseUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .local v5, cur:Landroid/database/Cursor;
    .restart local v6       #item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .restart local v7       #mids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v9       #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .local v10, idxIssueId:I
    .restart local v11       #idxOpenTime:I
    .restart local v13       #noErrors:Z
    .restart local p0       #newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .restart local p1       #updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :cond_7
    :try_start_4
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 920
    .local v12, issue:Ljava/lang/String;
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 921
    .local v15, openTime:Ljava/lang/String;
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    .line 922
    .local v8, guid:Ljava/util/UUID;
    invoke-interface {v14, v8, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 923
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v17 .. v18}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v18, "<open guid=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual {v8}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v8

    .end local v8           #guid:Ljava/util/UUID;
    move-object/from16 v0, v17

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v17, "\" issueid=\""

    move-object v0, v8

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\" datetime=\""

    .end local v12           #issue:Ljava/lang/String;
    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v12, "\" />"

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v3

    goto/16 :goto_0

    .line 928
    .end local v10           #idxIssueId:I
    .end local v11           #idxOpenTime:I
    .end local v15           #openTime:Ljava/lang/String;
    :catchall_0
    move-exception p0

    move-object/from16 p1, p0

    move-object/from16 p0, v3

    .line 929
    .end local v3           #body:Ljava/lang/String;
    .end local p1           #updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .local p0, body:Ljava/lang/String;
    if-eqz v5, :cond_8

    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 930
    :cond_8
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 931
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 902
    .end local v4           #licenseUrls:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #cur:Landroid/database/Cursor;
    .end local v6           #item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .end local v7           #mids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v14           #openIssues:Ljava/util/Map;,"Ljava/util/Map<Ljava/util/UUID;Ljava/lang/String;>;"
    .end local p0           #body:Ljava/lang/String;
    :catchall_1
    move-exception p0

    move-object/from16 p1, p0

    move/from16 p0, v13

    .end local v13           #noErrors:Z
    .local p0, noErrors:Z
    :goto_5
    monitor-exit v16

    throw p1

    .line 1055
    .restart local v6       #item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .restart local v7       #mids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .local v8, noErrors:Z
    .restart local v9       #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .local v10, message:Landroid/sax/Element;
    .restart local v14       #openIssues:Ljava/util/Map;,"Ljava/util/Map<Ljava/util/UUID;Ljava/lang/String;>;"
    .local p0, newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .restart local p1       #updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :cond_9
    :try_start_6
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/Service;

    .line 1056
    .local v3, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/Service;->setActive()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1058
    :try_start_7
    invoke-virtual {v9}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V

    .line 1059
    invoke-static {v7}, Lcom/newspaperdirect/pressreader/android/core/PRRequests;->deleteMessages(Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/lang/AssertionError; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move v3, v8

    .line 1069
    .end local v8           #noErrors:Z
    .local v3, noErrors:Z
    :goto_6
    :try_start_8
    invoke-interface {v7}, Ljava/util/List;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move v8, v3

    .end local v3           #noErrors:Z
    .restart local v8       #noErrors:Z
    goto/16 :goto_1

    .line 1061
    .local v3, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    :catch_0
    move-exception v3

    .line 1062
    .local v3, e:Ljava/lang/AssertionError;
    :try_start_9
    invoke-virtual {v3}, Ljava/lang/AssertionError;->printStackTrace()V

    .line 1063
    const/4 v3, 0x0

    .end local v8           #noErrors:Z
    .local v3, noErrors:Z
    goto :goto_6

    .line 1065
    .local v3, service:Lcom/newspaperdirect/pressreader/android/core/Service;
    .restart local v8       #noErrors:Z
    :catch_1
    move-exception v3

    .line 1066
    .local v3, e:Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1067
    const/4 v3, 0x0

    .end local v8           #noErrors:Z
    .local v3, noErrors:Z
    goto :goto_6

    .line 1073
    .end local v3           #noErrors:Z
    .end local v6           #item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .end local v7           #mids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .end local v9           #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .end local v10           #message:Landroid/sax/Element;
    .local v5, items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .restart local v8       #noErrors:Z
    :cond_a
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1074
    .local v6, newItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    iget-object v3, v6, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v7, 0x4

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 1075
    .local v3, cid:Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1076
    .local v7, prevItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    if-eqz v7, :cond_b

    .line 1077
    iget-object v4, v6, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    const/4 v10, 0x4

    const/16 v11, 0xc

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1078
    .local v4, issueDate:Ljava/lang/String;
    iget-object v7, v7, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    .end local v7           #prevItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    const/4 v10, 0x4

    const/16 v11, 0xc

    invoke-virtual {v7, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1079
    .local v7, prevDate:Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v4

    .end local v4           #issueDate:Ljava/lang/String;
    if-ltz v4, :cond_2

    .line 1080
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 902
    .end local v3           #cid:Ljava/lang/String;
    .end local v5           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .end local v6           #newItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v7           #prevDate:Ljava/lang/String;
    .end local p0           #newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .end local p1           #updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :catchall_2
    move-exception p0

    move-object/from16 p1, p0

    move/from16 p0, v8

    .end local v8           #noErrors:Z
    .local p0, noErrors:Z
    goto :goto_5

    .line 1083
    .restart local v3       #cid:Ljava/lang/String;
    .restart local v5       #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .restart local v6       #newItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .local v7, prevItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .restart local v8       #noErrors:Z
    .local p0, newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .restart local p1       #updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :cond_b
    invoke-interface {v5, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1086
    .end local v3           #cid:Ljava/lang/String;
    .end local v5           #items:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .end local v6           #newItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local v7           #prevItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    :cond_c
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1087
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1088
    .local v5, newItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    iget-object v3, v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    const/4 v4, 0x0

    const/16 v7, 0xc

    invoke-virtual {v3, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 1089
    .local v4, key:Ljava/lang/String;
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 1090
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1091
    .local v3, adv:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1092
    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->delete()V

    .line 1093
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    .end local v3           #adv:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1096
    :cond_d
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1097
    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->insert(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)J

    move-result-wide v9

    iput-wide v9, v5, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mId:J

    .line 1098
    invoke-direct {v5}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->cleanUpStorage()V

    .line 1099
    move-object/from16 v0, p0

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1100
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1101
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1103
    sget-object v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1108
    .end local v4           #key:Ljava/lang/String;
    .end local v5           #newItem:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .end local p0           #newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .end local p1           #updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1109
    .local v3, update:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    move-object v0, v3

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    move-object/from16 p0, v0

    const/16 p1, 0x0

    const/16 v5, 0xc

    move-object/from16 v0, p0

    move/from16 v1, p1

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 1110
    .local p1, key:Ljava/lang/String;
    sget-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p0 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1112
    sget-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual/range {p0 .. p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    .line 1113
    .local p0, current:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 1114
    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isDownloading()Z

    move-result p1

    .end local p1           #key:Ljava/lang/String;
    if-eqz p1, :cond_f

    .line 1115
    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->stopDownloading()V

    .line 1116
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    move-object/from16 p1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v3

    .end local v3           #update:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    and-int/lit8 v3, v3, -0x9

    and-int/lit8 v3, v3, -0x2

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 1117
    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutFile()Ljava/io/File;

    move-result-object p1

    .line 1118
    .local p1, layout:Ljava/io/File;
    if-eqz p1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 1119
    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->delete()Z

    .line 1120
    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->updateState()V

    goto/16 :goto_4

    .line 1122
    .restart local v3       #update:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .local p1, key:Ljava/lang/String;
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->delete()V

    .line 1123
    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->insert(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)J

    move-result-wide v5

    iput-wide v5, v3, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mId:J

    .line 1124
    sget-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .end local p0           #current:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 1125
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object p0

    move-object/from16 v0, p0

    move-object v1, v3

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1126
    sget-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 1127
    sget-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_4

    .line 902
    .end local v8           #noErrors:Z
    .local v3, noErrors:Z
    .local v6, item:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .local v7, mids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    .restart local v9       #helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    .restart local v10       #message:Landroid/sax/Element;
    .local p0, newItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    .local p1, updatedItems:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;>;"
    :catchall_3
    move-exception p0

    move-object/from16 p1, p0

    move/from16 p0, v3

    .end local v3           #noErrors:Z
    .local p0, noErrors:Z
    goto/16 :goto_5
.end method

.method private static synchronizeStatsList()V
    .locals 6

    .prologue
    .line 1301
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1302
    .local v3, issues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->getReportedItems()Landroid/database/Cursor;

    move-result-object v0

    .line 1303
    .local v0, cur:Landroid/database/Cursor;
    if-nez v0, :cond_1

    .line 1320
    :cond_0
    :goto_0
    return-void

    .line 1304
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_2

    .line 1305
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1306
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    goto :goto_0

    .line 1309
    :cond_2
    const-string v4, "issue_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 1310
    .local v1, idxIssueId:I
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_4

    .line 1314
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1315
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/DataStorageHelper;->closeDatabase()V

    .line 1317
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1318
    .local v2, issue:Ljava/lang/String;
    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->findItem(Ljava/lang/String;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {v2}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->deleteReported(Ljava/lang/String;)V

    goto :goto_2

    .line 1311
    .end local v2           #issue:Ljava/lang/String;
    :cond_4
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1312
    .restart local v2       #issue:Ljava/lang/String;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private updateDownloadProgress(Z)V
    .locals 7
    .parameter "forceUpdate"

    .prologue
    const-wide/high16 v5, 0x4059

    .line 745
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v1

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    const-wide/high16 v1, 0x3ff0

    .line 746
    :goto_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v3

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_4

    const-wide/high16 v3, 0x403e

    .line 745
    :goto_1
    add-double/2addr v1, v3

    .line 747
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v3

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_5

    const-wide v3, 0x4051400000000000L

    .line 745
    :goto_2
    add-double/2addr v1, v3

    .line 744
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v0, v1

    .line 749
    .local v0, newProgress:I
    const/16 v1, 0x64

    if-le v0, v1, :cond_0

    const/16 v0, 0x64

    .line 750
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-gt v0, v1, :cond_1

    if-eqz p1, :cond_2

    .line 751
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 752
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;

    if-eqz v1, :cond_2

    .line 753
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;

    iget-object v2, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;->onDownloadProgress(I)V

    .line 755
    :cond_2
    return-void

    .line 745
    .end local v0           #newProgress:I
    :cond_3
    iget v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mThumbnailDownloadProgress:I

    int-to-double v1, v1

    div-double/2addr v1, v5

    goto :goto_0

    .line 746
    :cond_4
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadProgress:I

    mul-int/lit8 v3, v3, 0x1e

    int-to-double v3, v3

    div-double/2addr v3, v5

    goto :goto_1

    .line 747
    :cond_5
    iget v3, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadProgress:I

    mul-int/lit8 v3, v3, 0x45

    int-to-double v3, v3

    div-double/2addr v3, v5

    goto :goto_2
.end method

.method private updateState()V
    .locals 3

    .prologue
    .line 758
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    const/16 v1, 0x3c

    if-eq v0, v1, :cond_1

    .line 759
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x34

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getEnableSmart()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 760
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 762
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 764
    :cond_2
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mId:J

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    and-int/lit8 v2, v2, -0x3

    invoke-static {v0, v1, v2}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->updateState(JI)Z

    .line 765
    return-void
.end method


# virtual methods
.method public checkFilesConsistency()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 692
    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkThumbnailFileConsistency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkPagesFileConsistency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 695
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkLayoutFileConsistency()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkZoomsFileConsistency()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 692
    goto :goto_0
.end method

.method public checkLayoutFileConsistency()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 718
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasLayout()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 723
    :goto_0
    return v1

    .line 719
    :cond_0
    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 720
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutFile()Ljava/io/File;

    move-result-object v0

    .line 721
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkZipFileConsistency(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 722
    goto :goto_0

    :cond_3
    move v1, v3

    .line 723
    goto :goto_0
.end method

.method public checkPagesFileConsistency()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 709
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasPages()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 714
    :goto_0
    return v1

    .line 710
    :cond_0
    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 711
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v0

    .line 712
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkZipFileConsistency(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 713
    goto :goto_0

    :cond_3
    move v1, v3

    .line 714
    goto :goto_0
.end method

.method public checkPdfFileConsistency()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 736
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasPdf()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 740
    :goto_0
    return v1

    .line 737
    :cond_0
    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 738
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPdfFile()Ljava/io/File;

    move-result-object v0

    .line 739
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 740
    goto :goto_0
.end method

.method public checkThumbnailFileConsistency()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 700
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasThumbnail()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 705
    :goto_0
    return v1

    .line 701
    :cond_0
    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 702
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getThumbnailFile()Ljava/io/File;

    move-result-object v0

    .line 703
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 704
    goto :goto_0

    :cond_3
    move v1, v3

    .line 705
    goto :goto_0
.end method

.method public checkZoomsFileConsistency()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 727
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasZooms()Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v3

    .line 732
    :goto_0
    return v1

    .line 728
    :cond_0
    invoke-direct {p0, v2}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v2

    goto :goto_0

    .line 729
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsFile()Ljava/io/File;

    move-result-object v0

    .line 730
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkZipFileConsistency(Ljava/io/File;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    move v1, v2

    .line 731
    goto :goto_0

    :cond_3
    move v1, v3

    .line 732
    goto :goto_0
.end method

.method public correctState()V
    .locals 3

    .prologue
    .line 768
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkThumbnailFileConsistency()Z

    move-result v1

    if-nez v1, :cond_1

    .line 769
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getThumbnailFile()Ljava/io/File;

    move-result-object v0

    .line 770
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 771
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    and-int/lit8 v2, v2, -0x5

    and-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 773
    .end local v0           #file:Ljava/io/File;
    :cond_1
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkPagesFileConsistency()Z

    move-result v1

    if-nez v1, :cond_3

    .line 774
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getPagesFile()Ljava/io/File;

    move-result-object v0

    .line 775
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 776
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    and-int/lit8 v2, v2, -0x11

    and-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 778
    .end local v0           #file:Ljava/io/File;
    :cond_3
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkLayoutFileConsistency()Z

    move-result v1

    if-nez v1, :cond_5

    .line 779
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getLayoutFile()Ljava/io/File;

    move-result-object v0

    .line 780
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 781
    :cond_4
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    and-int/lit8 v2, v2, -0x9

    and-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 783
    .end local v0           #file:Ljava/io/File;
    :cond_5
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->checkZoomsFileConsistency()Z

    move-result v1

    if-nez v1, :cond_7

    .line 784
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getZoomsFile()Ljava/io/File;

    move-result-object v0

    .line 785
    .restart local v0       #file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 786
    :cond_6
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    and-int/lit8 v2, v2, -0x21

    and-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 794
    .end local v0           #file:Ljava/io/File;
    :cond_7
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->updateState()V

    .line 795
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 796
    return-void
.end method

.method public delete()V
    .locals 4

    .prologue
    .line 365
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->stopDownloading()V

    .line 368
    :cond_0
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x3c

    if-eqz v0, :cond_1

    .line 369
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->cleanUpStorage()V

    .line 370
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v1

    and-int/lit8 v1, v1, -0x3d

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 372
    :cond_1
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/layout/trx/PageDbAdapter;->delete(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 373
    invoke-static {p0}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->delete(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V

    .line 374
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    invoke-static {v0}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->deleteReported(Ljava/lang/String;)V

    .line 375
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 377
    :try_start_0
    invoke-static {}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getItemsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 382
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItems:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, 0xc

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    return-void

    .line 379
    :catchall_0
    move-exception v0

    .line 380
    sget-object v1, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mItemsListLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 381
    throw v0
.end method

.method public download()V
    .locals 1

    .prologue
    .line 302
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->download(Z)V

    .line 303
    return-void
.end method

.method public download(Z)V
    .locals 2
    .parameter "forceDownload"

    .prologue
    .line 309
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 310
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 313
    :cond_1
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v1

    or-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 314
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_2

    .line 315
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startThumbnailDownloadTask()V

    .line 317
    :cond_2
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isAdvice()Z

    move-result v0

    if-nez v0, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mEnableSmart:Z

    if-eqz v0, :cond_3

    .line 319
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startLayoutDownloadTask()V

    .line 321
    :cond_3
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_4

    .line 322
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startPagesDownloadTask()V

    .line 324
    :cond_4
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-nez v0, :cond_0

    .line 325
    invoke-direct {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->startZoomsDownloadTask()V

    goto :goto_0
.end method

.method public getCertificateString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCertificateString:Ljava/lang/String;

    return-object v0
.end method

.method public getCid()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCid:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCid:Ljava/lang/String;

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCid:Ljava/lang/String;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentPageNumber()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrentPageNumber:I

    return v0
.end method

.method public getEnableSmart()Z
    .locals 1

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mEnableSmart:Z

    return v0
.end method

.method public getId()J
    .locals 2

    .prologue
    .line 140
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mId:J

    return-wide v0
.end method

.method public getIssueDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 156
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDateString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueDate:Ljava/util/Date;
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueDate:Ljava/util/Date;

    return-object v0

    .line 158
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getIssueDateString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    const/4 v1, 0x4

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssueDateString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "format"

    .prologue
    .line 168
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getIssueDate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIssueId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getLayout()Lcom/newspaperdirect/pressreader/android/core/layout/Issue;
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayout:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    return-object v0
.end method

.method public getLayoutFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 279
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    const-string v2, "layout"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getLicenseUrlsString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 262
    const/4 v1, 0x1

    .line 263
    .local v1, flag:Z
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    .local v0, builder:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLicenseUrls:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v4, :cond_0

    .line 271
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 264
    :cond_0
    aget-object v2, v3, v5

    .line 265
    .local v2, url:Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 266
    const/4 v1, 0x0

    .line 269
    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method public getOnDownloadProgressListener()Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;

    return-object v0
.end method

.method public getPagesCount()I
    .locals 1

    .prologue
    .line 176
    iget v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesCount:I

    return v0
.end method

.method public getPagesFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 283
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    const-string v2, "pages"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getParentName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mParentName:Ljava/lang/String;

    return-object v0
.end method

.method public getPdfFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 291
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    const-string v2, "pdf"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 200
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mProgress:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getThumbnailFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    const-string v2, "thumbnail"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getZoomsFile()Ljava/io/File;
    .locals 3

    .prologue
    .line 287
    new-instance v0, Ljava/io/File;

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getDataDir(Z)Ljava/io/File;

    move-result-object v1

    const-string v2, "zooms"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public hasEverythingButLayout()Z
    .locals 2

    .prologue
    .line 240
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x34

    const/16 v1, 0x34

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLayout()Z
    .locals 1

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPages()Z
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPdf()Z
    .locals 1

    .prologue
    .line 224
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSmartLayout()Z
    .locals 1

    .prologue
    .line 232
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isSemiReady()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->hasLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasThumbnail()Z
    .locals 1

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasZooms()Z
    .locals 1

    .prologue
    .line 216
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAdvice()Z
    .locals 1

    .prologue
    .line 1297
    iget-boolean v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIsAdvice:Z

    return v0
.end method

.method public isDownloading()Z
    .locals 1

    .prologue
    .line 236
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReady()Z
    .locals 1

    .prologue
    .line 204
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSemiReady()Z
    .locals 2

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v0

    and-int/lit8 v0, v0, 0x54

    const/16 v1, 0x54

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public loadLayout(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayout:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    if-eqz v0, :cond_1

    .line 399
    if-eqz p1, :cond_0

    .line 400
    invoke-interface {p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;->onLayoutLoaded()V

    .line 415
    :cond_0
    :goto_0
    return-void

    .line 403
    :cond_1
    new-instance v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;

    invoke-direct {v0, p0, p1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnLayoutLoadedListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    const/4 v2, 0x0

    .line 414
    const/4 v3, 0x0

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public removeOnDownloadProgressListener()V
    .locals 1

    .prologue
    .line 361
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;

    .line 362
    return-void
.end method

.method public setAsCurrent()V
    .locals 2

    .prologue
    .line 386
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrent:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-ne v0, p0, :cond_0

    .line 391
    :goto_0
    return-void

    .line 388
    :cond_0
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrent:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    if-eqz v0, :cond_1

    .line 389
    sget-object v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrent:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayout:Lcom/newspaperdirect/pressreader/android/core/layout/Issue;

    .line 390
    :cond_1
    sput-object p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrent:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;

    goto :goto_0
.end method

.method public setCurrentPageNumber(I)V
    .locals 2
    .parameter "number"

    .prologue
    .line 249
    iput p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mCurrentPageNumber:I

    .line 250
    iget-wide v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mId:J

    invoke-static {v0, v1, p1}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->updateCurrentPage(JI)Z

    .line 252
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueOpenDate:Ljava/util/Date;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mIssueId:Ljava/lang/String;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-static {v0, v1}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryStatsDbAdapter;->insert(Ljava/lang/String;Ljava/util/Date;)J

    .line 254
    :cond_0
    return-void
.end method

.method public setOnDownloadProgressListener(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;)Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;
    .locals 0
    .parameter "listener"

    .prologue
    .line 352
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mOnDownloadProgressListener:Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem$OnDownloadProgressListener;

    .line 353
    return-object p0
.end method

.method public stopDownloading()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 334
    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v1

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    .line 349
    :goto_0
    return-void

    .line 336
    :cond_0
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mZoomsDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 337
    .local v0, task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->cancel()V

    .line 338
    :cond_1
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPagesDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 339
    .restart local v0       #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->cancel()V

    .line 340
    :cond_2
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mLayoutDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 341
    .restart local v0       #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->cancel()V

    .line 342
    :cond_3
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mThumbnailDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 343
    .restart local v0       #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->cancel()V

    .line 344
    :cond_4
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mPdfDownloadTask:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;

    .line 345
    .restart local v0       #task:Lcom/newspaperdirect/pressreader/android/core/DownloadTask;
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/DownloadTask;->cancel()V

    .line 347
    :cond_5
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v2

    xor-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 348
    iget-wide v1, p0, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->mId:J

    invoke-virtual {p0}, Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;->getState()I

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/core/trx/MyLibraryItemDbAdapter;->updateState(JI)Z

    goto :goto_0
.end method
