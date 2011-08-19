.class public Lcom/google/android/music/OfflineMusicManager;
.super Ljava/lang/Object;
.source "OfflineMusicManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;,
        Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;,
        Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;,
        Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;,
        Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;,
        Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;,
        Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;,
        Lcom/google/android/music/OfflineMusicManager$CheckAllArtistAlbumSelectedTask;
    }
.end annotation


# static fields
.field private static final DECREASE:Z = true

.field private static final DESELECT:Z = false

.field private static final INCREASE:Z = false

.field private static final SELECT:Z = true

.field private static final TAG:Ljava/lang/String; = "OfflineMusicManager"


# instance fields
.field private mAlbumListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mAlbumLock:Ljava/lang/Object;

.field private mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

.field private mArtistListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mArtistLock:Ljava/lang/Object;

.field private mAvailabilityTransition:Z

.field private mConnected:Z

.field private mContext:Landroid/content/Context;

.field private final mDeselectedAlbums:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeselectedArtists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeselectedPlaylists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

.field private mFreeSpace:J

.field private mIsActive:Z

.field private mListeners:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mSelectedAlbums:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedArtists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectedPlaylists:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSpaceVariablesLock:Ljava/lang/Object;

.field private mTotalSpace:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 290
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/music/OfflineMusicManager;-><init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V

    .line 291
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 4
    .parameter "context"
    .parameter "appController"

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    .line 78
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    .line 79
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    .line 82
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    .line 83
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    .line 84
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    .line 86
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    .line 87
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    .line 93
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    .line 94
    iput-wide v2, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    .line 99
    iput-wide v2, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    .line 101
    iput-boolean v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 103
    iput-boolean v1, p0, Lcom/google/android/music/OfflineMusicManager;->mConnected:Z

    .line 109
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    .line 111
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    .line 663
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    .line 297
    iput-object p2, p0, Lcom/google/android/music/OfflineMusicManager;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 299
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->bindToDownloadManager()V

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/OfflineMusicManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/OfflineMusicManager;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markArtist(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/google/android/music/OfflineMusicManager;)Ljava/util/TreeSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/google/android/music/OfflineMusicManager;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/google/android/music/OfflineMusicManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/google/android/music/OfflineMusicManager;)Lcom/google/android/music/dl/IDownloadManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/google/android/music/OfflineMusicManager;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide v0
.end method

.method static synthetic access$1902(Lcom/google/android/music/OfflineMusicManager;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-wide p1, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide p1
.end method

.method static synthetic access$1914(Lcom/google/android/music/OfflineMusicManager;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide v0
.end method

.method static synthetic access$1922(Lcom/google/android/music/OfflineMusicManager;J)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iget-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    sub-long/2addr v0, p1

    iput-wide v0, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners()V

    return-void
.end method

.method static synthetic access$2000(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->notifyAvailableSpaceChangedListener()V

    return-void
.end method

.method static synthetic access$2102(Lcom/google/android/music/OfflineMusicManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-boolean p1, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/android/music/OfflineMusicManager;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/google/android/music/OfflineMusicManager;JJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->clearArtistsOfAlbum(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/google/android/music/OfflineMusicManager;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbum(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/google/android/music/OfflineMusicManager;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbum(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/google/android/music/OfflineMusicManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(Ljava/util/List;IZ)V

    return-void
.end method

.method private bindToDownloadManager()V
    .locals 4

    .prologue
    .line 310
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    const-class v3, Lcom/google/android/music/dl/DownloadManager$DownloadManagerService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 311
    return-void
.end method

.method private checkActive()V
    .locals 2

    .prologue
    .line 333
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not make changes once a session is committed or cancelled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 337
    :cond_0
    return-void
.end method

.method private clearAlbum(J)Z
    .locals 3
    .parameter "albumId"

    .prologue
    .line 817
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 819
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearAlbumAndArtistChangeListeners()V
    .locals 2

    .prologue
    .line 731
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 732
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 733
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 735
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 736
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 737
    return-void

    .line 733
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 736
    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private clearAlbumAndNotify(J)V
    .locals 2
    .parameter "albumId"

    .prologue
    .line 827
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 828
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners()V

    .line 829
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 831
    :cond_0
    return-void
.end method

.method private clearArtist(J)Z
    .locals 3
    .parameter "artistId"

    .prologue
    .line 782
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 784
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearArtistsOfAlbum(JJ)Z
    .locals 6
    .parameter "albumId"
    .parameter "skipArtistId"

    .prologue
    .line 865
    const/4 v3, 0x0

    .line 866
    .local v3, changed:Z
    iget-object v5, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v4

    .line 867
    .local v4, store:Lcom/google/android/music/store/Store;
    invoke-virtual {v4, p1, p2}, Lcom/google/android/music/store/Store;->getArtistIdsForAlbum(J)Landroid/database/Cursor;

    move-result-object v2

    .line 869
    .local v2, artists:Landroid/database/Cursor;
    if-eqz v2, :cond_1

    .line 870
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 871
    const/4 v5, 0x0

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 872
    .local v0, artistId:J
    cmp-long v5, v0, p3

    if-eqz v5, :cond_0

    .line 875
    invoke-direct {p0, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    if-nez v3, :cond_0

    .line 876
    const/4 v3, 0x1

    goto :goto_0

    .line 881
    .end local v0           #artistId:J
    :cond_1
    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    .line 883
    return v3

    .line 881
    :catchall_0
    move-exception v5

    invoke-static {v2}, Lcom/google/android/music/store/Store;->safeClose(Landroid/database/Cursor;)V

    throw v5
.end method

.method private isAvailableSpaceInitialized()Z
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    .line 581
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 582
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 583
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private markAlbum(J)Z
    .locals 3
    .parameter "albumId"

    .prologue
    .line 794
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 796
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private markAlbumAndNotify(J)V
    .locals 2
    .parameter "albumId"

    .prologue
    const/4 v1, 0x1

    .line 804
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbum(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 805
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->notifyAlbumChangedListeners()V

    .line 806
    invoke-direct {p0, p1, p2, v1, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 808
    :cond_0
    return-void
.end method

.method private markArtist(J)Z
    .locals 3
    .parameter "artistId"

    .prologue
    .line 772
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-direct {p0, p1, p2, v1, v2}, Lcom/google/android/music/OfflineMusicManager;->moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 774
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private moveIdFromTo(JLjava/util/TreeSet;Ljava/util/TreeSet;)Z
    .locals 2
    .parameter "id"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 836
    .local p3, fromSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    .local p4, toSet:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    const/4 v0, 0x0

    .line 838
    .local v0, insert:Z
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 839
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 840
    const/4 v0, 0x1

    .line 842
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    .line 843
    return v0
.end method

.method private notifyAlbumChangedListeners()V
    .locals 4

    .prologue
    .line 740
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 741
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 742
    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 743
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;

    .line 744
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    if-nez v1, :cond_0

    .line 745
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 750
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 747
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;->onAlbumChanged()V

    goto :goto_0

    .line 750
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 751
    return-void
.end method

.method private notifyArtistChangedListeners()V
    .locals 4

    .prologue
    .line 754
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 755
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 756
    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 757
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;

    .line 758
    .local v1, listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    if-nez v1, :cond_0

    .line 759
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 764
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 761
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;>;>;"
    .restart local v1       #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;->onArtistChanged()V

    goto :goto_0

    .line 764
    .end local v1           #listener:Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;
    :cond_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 765
    return-void
.end method

.method private notifyAvailableSpaceChangedListener()V
    .locals 9

    .prologue
    .line 690
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v7

    .line 691
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mTotalSpace:J

    .line 692
    .local v1, totalSpace:J
    iget-wide v3, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    .line 693
    .local v3, freeSpace:J
    iget-boolean v5, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 694
    .local v5, transition:Z
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/google/android/music/OfflineMusicManager;->mAvailabilityTransition:Z

    .line 695
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 696
    iget-object v7, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v7

    .line 697
    :try_start_1
    iget-object v8, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v8}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 698
    .end local p0
    .local v6, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 699
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;

    .line 700
    .local v0, listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    if-nez v0, :cond_0

    .line 701
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 706
    .end local v0           #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    .end local v6           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :catchall_0
    move-exception v8

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 695
    .end local v1           #totalSpace:J
    .end local v3           #freeSpace:J
    .end local v5           #transition:Z
    .restart local p0
    :catchall_1
    move-exception v8

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v8

    .line 703
    .end local p0
    .restart local v0       #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    .restart local v1       #totalSpace:J
    .restart local v3       #freeSpace:J
    .restart local v5       #transition:Z
    .restart local v6       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :cond_0
    :try_start_3
    invoke-interface/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;->onAvailableSpaceChanged(JJZ)V

    goto :goto_0

    .line 706
    .end local v0           #listener:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :cond_1
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 707
    return-void
.end method

.method private submitUpdateFreespaceTask(JIZ)V
    .locals 2
    .parameter "id"
    .parameter "type"
    .parameter "added"

    .prologue
    .line 565
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 566
    .local v0, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    invoke-direct {p0, v0, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(Ljava/util/List;IZ)V

    .line 568
    return-void
.end method

.method private submitUpdateFreespaceTask(Ljava/util/List;IZ)V
    .locals 1
    .parameter
    .parameter "type"
    .parameter "added"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .prologue
    .line 571
    .local p1, ids:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/android/music/MusicUtils;->assertUiThread()V

    .line 572
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->isAvailableSpaceInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/music/OfflineMusicManager$UpdateFreespaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Ljava/util/List;IZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 575
    :cond_0
    return-void
.end method

.method private toString(Ljava/util/TreeSet;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 905
    .local p1, set:Ljava/util/TreeSet;,"Ljava/util/TreeSet<Ljava/lang/Long;>;"
    invoke-virtual {p1}, Ljava/util/TreeSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized unbindFromDownloadManager()V
    .locals 1

    .prologue
    .line 314
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mConnected:Z

    if-eqz v0, :cond_0

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mConnected:Z

    .line 317
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    :cond_0
    monitor-exit p0

    return-void

    .line 314
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public abandonChanges()V
    .locals 1

    .prologue
    .line 537
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 538
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    .line 539
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->unbindFromDownloadManager()V

    .line 540
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    if-eqz v0, :cond_0

    .line 541
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->exitManageMusicMode()V

    .line 543
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->clearAlbumAndArtistChangeListeners()V

    .line 544
    return-void
.end method

.method public addAvailableSpaceChangeListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 667
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 668
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 669
    monitor-exit v0

    .line 670
    return-void

    .line 669
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public commitChanges()V
    .locals 1

    .prologue
    .line 463
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 464
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mIsActive:Z

    .line 465
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->unbindFromDownloadManager()V

    .line 466
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    if-eqz v0, :cond_0

    .line 467
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    invoke-virtual {v0}, Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;->exitManageMusicMode()V

    .line 469
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->clearAlbumAndArtistChangeListeners()V

    .line 476
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/OfflineMusicManager$1;-><init>(Lcom/google/android/music/OfflineMusicManager;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 514
    return-void
.end method

.method public deselectAlbum(JJ)V
    .locals 6
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 401
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 402
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearAlbumAndNotify(J)V

    .line 406
    invoke-direct {p0, p3, p4}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->notifyArtistChangedListeners()V

    .line 411
    :cond_0
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/music/OfflineMusicManager$DeselectArtistsOfAlbumTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JJ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 414
    return-void
.end method

.method public deselectArtist(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->clearArtist(J)Z

    .line 362
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 363
    return-void
.end method

.method public deselectPlaylist(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 442
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 443
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 444
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 446
    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 447
    return-void
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 891
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 892
    .local v0, msg:Ljava/lang/StringBuilder;
    const-string v1, "OfflineMusicManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nDeselected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n*Artists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Lcom/google/android/music/OfflineMusicManager;->toString(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n*Albums:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Lcom/google/android/music/OfflineMusicManager;->toString(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n*Playlists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Lcom/google/android/music/OfflineMusicManager;->toString(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nSelected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n*Artists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Lcom/google/android/music/OfflineMusicManager;->toString(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n*Albums:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Lcom/google/android/music/OfflineMusicManager;->toString(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n*Playlists:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-direct {p0, v2}, Lcom/google/android/music/OfflineMusicManager;->toString(Ljava/util/TreeSet;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 901
    const-string v1, "OfflineMusicManager"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    return-void
.end method

.method public isAlbumSelected(JJ)Ljava/lang/Boolean;
    .locals 3
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 419
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    .line 429
    :goto_0
    return-object v0

    .line 421
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumLock:Ljava/lang/Object;

    monitor-enter v0

    .line 424
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 425
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    goto :goto_0

    .line 421
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 426
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 429
    :cond_2
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 431
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public isAnyChangeMade()Z
    .locals 3

    .prologue
    .line 522
    const/4 v0, 0x0

    .line 524
    .local v0, totalChanges:I
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedAlbums:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 527
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedAlbums:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-virtual {v2}, Ljava/util/TreeSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    .line 530
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isArtistSelected(J)Ljava/lang/Boolean;
    .locals 3
    .parameter "id"

    .prologue
    .line 366
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistLock:Ljava/lang/Object;

    monitor-enter v0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedArtists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 368
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    .line 372
    :goto_0
    return-object v0

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedArtists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 370
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 372
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    move-object v0, v1

    goto :goto_0

    .line 374
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isOutOfSpace()Z
    .locals 5

    .prologue
    .line 559
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSpaceVariablesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-wide v1, p0, Lcom/google/android/music/OfflineMusicManager;->mFreeSpace:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 561
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isPlaylistSelected(J)Ljava/lang/Boolean;
    .locals 2
    .parameter "id"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDeselectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 455
    :goto_0
    return-object v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 455
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "name"
    .parameter "service"

    .prologue
    .line 322
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mConnected:Z

    .line 323
    invoke-static {p2}, Lcom/google/android/music/dl/IDownloadManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/music/dl/IDownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    .line 324
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/music/OfflineMusicManager$GetFreeSpaceTask;-><init>(Lcom/google/android/music/OfflineMusicManager;Lcom/google/android/music/OfflineMusicManager$1;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 325
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 328
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/OfflineMusicManager;->mConnected:Z

    .line 329
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mDownloadManager:Lcom/google/android/music/dl/IDownloadManager;

    .line 330
    return-void
.end method

.method public registerAlbumChangeListener(Lcom/google/android/music/OfflineMusicManager$AlbumChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 548
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mAlbumListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 549
    monitor-exit v0

    .line 550
    return-void

    .line 549
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerArtistChangeListener(Lcom/google/android/music/OfflineMusicManager$ArtistChangedListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 554
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/OfflineMusicManager;->mArtistListeners:Ljava/util/LinkedList;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 555
    monitor-exit v0

    .line 556
    return-void

    .line 555
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeAvailableSpaceChangedListener(Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 673
    iget-object v2, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    monitor-enter v2

    .line 674
    :try_start_0
    iget-object v3, p0, Lcom/google/android/music/OfflineMusicManager;->mListeners:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 675
    .end local p0
    .local v0, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 676
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;

    .line 677
    .local v1, possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    if-nez v1, :cond_1

    .line 678
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 684
    .end local v0           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 679
    .restart local v0       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/ref/WeakReference<Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;>;>;"
    .restart local v1       #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :cond_1
    if-ne v1, p1, :cond_0

    .line 680
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 681
    monitor-exit v2

    .line 685
    .end local v1           #possibleRemove:Lcom/google/android/music/OfflineMusicManager$AvailableSpaceChangedListener;
    :goto_1
    return-void

    .line 684
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public restoreMusicActivityManager(Landroid/content/Context;Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;)V
    .locals 0
    .parameter "context"
    .parameter "appController"

    .prologue
    .line 304
    iput-object p2, p0, Lcom/google/android/music/OfflineMusicManager;->mAppController:Lcom/google/android/music/activitymanagement/TopLevelActivity$MusicActivityManager;

    .line 305
    iput-object p1, p0, Lcom/google/android/music/OfflineMusicManager;->mContext:Landroid/content/Context;

    .line 306
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->bindToDownloadManager()V

    .line 307
    return-void
.end method

.method public selectAlbum(J)V
    .locals 2
    .parameter "albumId"

    .prologue
    .line 378
    const-wide/16 v0, -0x1

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->selectAlbum(JJ)V

    .line 379
    return-void
.end method

.method public selectAlbum(JJ)V
    .locals 0
    .parameter "albumId"
    .parameter "artistId"

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 384
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markAlbumAndNotify(J)V

    .line 398
    return-void
.end method

.method public selectArtist(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/google/android/music/OfflineMusicManager;->markArtist(J)Z

    .line 349
    new-instance v0, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/music/OfflineMusicManager$ForEachAlbumFromArtistTask;-><init>(Lcom/google/android/music/OfflineMusicManager;JZ)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsyncWithCallback(Lcom/google/android/music/utils/async/AsyncRunner;)V

    .line 350
    return-void
.end method

.method public selectPlaylist(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 436
    invoke-direct {p0}, Lcom/google/android/music/OfflineMusicManager;->checkActive()V

    .line 437
    iget-object v0, p0, Lcom/google/android/music/OfflineMusicManager;->mSelectedPlaylists:Ljava/util/TreeSet;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 438
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/music/OfflineMusicManager;->submitUpdateFreespaceTask(JIZ)V

    .line 439
    return-void
.end method
