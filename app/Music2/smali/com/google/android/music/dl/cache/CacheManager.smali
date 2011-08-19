.class public Lcom/google/android/music/dl/cache/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;,
        Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    }
.end annotation


# static fields
.field private static final DELETE_ALL_CACHED_FILES_DELAY_MS:J = 0x2710L

#the value of this static final field might be set in the static constructor
.field private static final LOGV:Z = false

.field private static final MAX_SPACE_TO_USE_FOR_CACHING:J = 0x80000000L

#the value of this static final field might be set in the static constructor
.field private static final MSG_DELETE_ALL_CACHED_FILES:I = 0x0

.field private static final MUSIC_DIRECTORY:Ljava/lang/String; = "music"

.field private static final NO_MEDIA_FILE:Ljava/lang/String; = ".nomedia"

.field private static final PERCENTAGE_SPACE_TO_USE_FOR_CACHING:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "MusicCache"


# instance fields
.field private mAllowCaching:Z

.field private mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

.field private final mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

.field private mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

.field private final mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

.field private final mFileSys:Lcom/google/android/music/dl/FileSystem;

.field private mIsExternalSameAsInternal:Z

.field private final mMusicPrefernces:Lcom/google/android/music/jumper/MusicPreferences;

.field private final mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "MusicCache"

    invoke-static {v0}, Lcom/google/android/music/DebugUtils;->isLoggable(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/google/android/music/dl/cache/CacheManager;->LOGV:Z

    .line 61
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    invoke-static {v0}, Lcom/google/android/music/utils/async/AsyncWorkers;->getUniqueMessageType(Lcom/google/android/music/Worker;)I

    move-result v0

    sput v0, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;)V
    .locals 1
    .parameter "context"
    .parameter "doNotDelete"

    .prologue
    .line 86
    new-instance v0, Lcom/google/android/music/dl/FileSystemImpl;

    invoke-direct {v0}, Lcom/google/android/music/dl/FileSystemImpl;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/music/dl/cache/CacheManager;-><init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;Lcom/google/android/music/dl/FileSystem;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;Lcom/google/android/music/dl/FileSystem;)V
    .locals 6
    .parameter "context"
    .parameter "doNotDelete"
    .parameter "fs"
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z

    .line 83
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    .line 127
    new-instance v3, Lcom/google/android/music/dl/cache/CacheManager$1;

    invoke-direct {v3, p0}, Lcom/google/android/music/dl/cache/CacheManager$1;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    iput-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    .line 158
    new-instance v3, Lcom/google/android/music/dl/cache/CacheManager$2;

    invoke-direct {v3, p0}, Lcom/google/android/music/dl/cache/CacheManager$2;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    iput-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

    .line 358
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    .line 92
    iput-object p2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    .line 93
    iput-object p3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    .line 94
    invoke-static {p1}, Lcom/google/android/music/MusicApplication;->getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v3

    iput-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPrefernces:Lcom/google/android/music/jumper/MusicPreferences;

    .line 96
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPrefernces:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v4, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v3, v4}, Lcom/google/android/music/jumper/MusicPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 98
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v3, v5, v5}, Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;->onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V

    .line 101
    :try_start_0
    const-class v3, Landroid/os/Environment;

    const-string v4, "isExternalStorageEmulated"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 103
    .local v1, fieldIsExternalStorageEmulated:Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 104
    .local v2, retValue:Ljava/lang/Object;
    if-eqz v2, :cond_1

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 105
    check-cast v2, Ljava/lang/Boolean;

    .end local v2           #retValue:Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4

    .line 124
    .end local v1           #fieldIsExternalStorageEmulated:Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager;->startClearingOrphanedFilesAsync()V

    .line 125
    return-void

    .line 107
    .restart local v1       #fieldIsExternalStorageEmulated:Ljava/lang/reflect/Method;
    .restart local v2       #retValue:Ljava/lang/Object;
    :cond_1
    :try_start_1
    const-string v3, "MusicCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Returned value which was not a Boolean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    goto :goto_0

    .line 109
    .end local v1           #fieldIsExternalStorageEmulated:Ljava/lang/reflect/Method;
    .end local v2           #retValue:Ljava/lang/Object;
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 110
    .local v0, e:Ljava/lang/SecurityException;
    const-string v3, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 111
    .end local v0           #e:Ljava/lang/SecurityException;
    :catch_1
    move-exception v3

    move-object v0, v3

    .line 112
    .local v0, e:Ljava/lang/NoSuchMethodException;
    invoke-static {}, Lcom/google/android/music/jumper/MusicPreferences;->isHoneycomb()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 113
    const-string v3, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 116
    .end local v0           #e:Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    move-object v0, v3

    .line 117
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v3, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 118
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v3

    move-object v0, v3

    .line 119
    .local v0, e:Ljava/lang/IllegalAccessException;
    const-string v3, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 120
    .end local v0           #e:Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v3

    move-object v0, v3

    .line 121
    .local v0, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v3, "MusicCache"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/google/android/music/dl/cache/CacheManager;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-boolean v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/android/music/dl/cache/CacheManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-boolean p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/jumper/MusicPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPrefernces:Lcom/google/android/music/jumper/MusicPreferences;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getExternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getLocalCacheDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/google/android/music/dl/cache/CacheManager;->LOGV:Z

    return v0
.end method

.method static synthetic access$200(Lcom/google/android/music/dl/cache/CacheManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/CacheStrategy;)Lcom/google/android/music/dl/cache/CacheStrategy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

    return-object p1
.end method

.method static synthetic access$400(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/FileSystem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    return-object v0
.end method

.method static synthetic access$502(Lcom/google/android/music/dl/cache/CacheManager;Lcom/google/android/music/dl/cache/DeletionStrategy;)Lcom/google/android/music/dl/cache/DeletionStrategy;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 42
    iput-object p1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

    return-object p1
.end method

.method static synthetic access$600(Lcom/google/android/music/dl/cache/CacheManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->cancelClearAllCachedFiles()V

    return-void
.end method

.method static synthetic access$700(Lcom/google/android/music/dl/cache/CacheManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->clearAllCachedFilesAsync()V

    return-void
.end method

.method static synthetic access$800(Lcom/google/android/music/dl/cache/CacheManager;)Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    return-object v0
.end method

.method static synthetic access$900(Lcom/google/android/music/dl/cache/CacheManager;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private cancelClearAllCachedFiles()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    sget v1, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    invoke-virtual {v0, v1}, Lcom/google/android/music/Worker;->removeMessages(I)V

    .line 148
    return-void
.end method

.method private clearAllCachedFilesAsync()V
    .locals 4

    .prologue
    .line 151
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearAllCachedFilesRunnable:Ljava/lang/Runnable;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v0

    .line 153
    .local v0, msg:Landroid/os/Message;
    sget v1, Lcom/google/android/music/dl/cache/CacheManager;->MSG_DELETE_ALL_CACHED_FILES:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 154
    sget-object v1, Lcom/google/android/music/utils/async/AsyncWorkers;->sBackendServiceWorker:Lcom/google/android/music/Worker;

    const-wide/16 v2, 0x2710

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/music/Worker;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 156
    return-void
.end method

.method private getCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getExternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 191
    .local v0, externalCacheDir:Ljava/io/File;
    if-eqz v0, :cond_1

    .line 192
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    .line 204
    :goto_0
    return-object v2

    .line 196
    :cond_1
    iget-boolean v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mIsExternalSameAsInternal:Z

    if-nez v2, :cond_3

    .line 197
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getLocalCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 198
    .local v1, localCacheDir:Ljava/io/File;
    if-eqz v1, :cond_3

    .line 199
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move-object v2, v1

    .line 200
    goto :goto_0

    .line 204
    .end local v1           #localCacheDir:Ljava/io/File;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static getExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"

    .prologue
    .line 328
    const-string v0, "mp3"

    return-object v0
.end method

.method private getExternalCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 296
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 297
    .local v0, externalCache:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 298
    new-instance v1, Ljava/io/File;

    const-string v2, "music"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 300
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getLocalCacheDirectory()Ljava/io/File;
    .locals 3

    .prologue
    .line 304
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    .line 305
    .local v0, cacheDir:Ljava/io/File;
    if-eqz v0, :cond_0

    .line 306
    new-instance v1, Ljava/io/File;

    const-string v2, "music"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 308
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private prepareDirectory(Ljava/io/File;)Z
    .locals 6
    .parameter "directory"

    .prologue
    const/4 v5, 0x0

    .line 336
    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v2, p1}, Lcom/google/android/music/dl/FileSystem;->exists(Ljava/io/File;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 337
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v2

    if-nez v2, :cond_0

    .line 338
    const-string v2, "MusicCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create directory: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 354
    :goto_0
    return v2

    .line 342
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, ".nomedia"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 343
    .local v1, noMediaFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 345
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 346
    const-string v2, "MusicCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not create: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v5

    .line 347
    goto :goto_0

    .line 349
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 350
    .local v0, e:Ljava/io/IOException;
    const-string v2, "MusicCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while trying to create ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v5

    .line 351
    goto :goto_0

    .line 354
    .end local v0           #e:Ljava/io/IOException;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private prepareForNonCachableDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    .locals 8
    .parameter "order"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 276
    iget-object v2, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->STREAMING:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->USER_PLAYLIST:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq v2, v3, :cond_0

    iget-object v2, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v3, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->PREDICTIVE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-eq v2, v3, :cond_0

    move v2, v6

    .line 292
    :goto_0
    return v2

    .line 281
    :cond_0
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getExternalCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 282
    .local v0, externalDir:Ljava/io/File;
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getLocalCacheDirectory()Ljava/io/File;

    move-result-object v1

    .line 283
    .local v1, localDir:Ljava/io/File;
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v2, v0}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/music/dl/DownloadOrder;->length:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 285
    invoke-virtual {p0, p1, v0, v6}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)V

    move v2, v7

    .line 286
    goto :goto_0

    .line 287
    :cond_1
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v2, v1}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v2

    iget-wide v4, p1, Lcom/google/android/music/dl/DownloadOrder;->length:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    invoke-direct {p0, v1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareDirectory(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 289
    invoke-virtual {p0, p1, v1, v6}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)V

    move v2, v7

    .line 290
    goto :goto_0

    :cond_2
    move v2, v6

    .line 292
    goto :goto_0
.end method


# virtual methods
.method public getFreeSpace()J
    .locals 5

    .prologue
    .line 218
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v2

    .line 219
    .local v2, cacheDir:Ljava/io/File;
    if-nez v2, :cond_0

    .line 220
    const-wide/16 v3, 0x0

    .line 233
    :goto_0
    return-wide v3

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v3, v2}, Lcom/google/android/music/dl/FileSystem;->getFreeSpace(Ljava/io/File;)J

    move-result-wide v0

    .line 227
    .local v0, availableFreeSpace:J
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    const/16 v4, 0x64

    invoke-virtual {v3, v4}, Lcom/google/android/music/store/Store;->getTotalCachedSize(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    .line 231
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/music/store/Store;->getInstance(Landroid/content/Context;)Lcom/google/android/music/store/Store;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/android/music/store/Store;->getSizeOfUndownloadedKeepOnFiles()J

    move-result-wide v3

    sub-long/2addr v0, v3

    move-wide v3, v0

    .line 233
    goto :goto_0
.end method

.method public getTotalSpace()J
    .locals 3

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 209
    .local v0, cacheDir:Ljava/io/File;
    if-nez v0, :cond_0

    .line 210
    const-wide/16 v1, 0x0

    .line 213
    :goto_0
    return-wide v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mFileSys:Lcom/google/android/music/dl/FileSystem;

    invoke-interface {v1, v0}, Lcom/google/android/music/dl/FileSystem;->getTotalSpace(Ljava/io/File;)J

    move-result-wide v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/google/android/music/dl/cache/CacheManager;->mMusicPrefernces:Lcom/google/android/music/jumper/MusicPreferences;

    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mPreferenceChangeListener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/music/jumper/MusicPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 238
    return-void
.end method

.method public prepareForDownload(Lcom/google/android/music/dl/DownloadOrder;)Z
    .locals 9
    .parameter "order"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 246
    invoke-direct {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getCacheDirectory()Ljava/io/File;

    move-result-object v0

    .line 247
    .local v0, location:Ljava/io/File;
    if-nez v0, :cond_0

    move v3, v8

    .line 269
    :goto_0
    return v3

    .line 250
    :cond_0
    iget-object v3, p1, Lcom/google/android/music/dl/DownloadOrder;->scheduledBy:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    sget-object v4, Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;->KEEP_ON_DEVICE:Lcom/google/android/music/dl/DownloadOrder$ScheduledBy;

    if-ne v3, v4, :cond_2

    .line 252
    iget-wide v3, p1, Lcom/google/android/music/dl/DownloadOrder;->length:J

    invoke-virtual {p0}, Lcom/google/android/music/dl/cache/CacheManager;->getFreeSpace()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-gtz v3, :cond_1

    .line 253
    invoke-virtual {p0, p1, v0, v7}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)V

    move v3, v7

    .line 254
    goto :goto_0

    :cond_1
    move v3, v8

    .line 256
    goto :goto_0

    .line 259
    :cond_2
    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mCacheStrategy:Lcom/google/android/music/dl/cache/CacheStrategy;

    invoke-virtual {v3, p1, v0}, Lcom/google/android/music/dl/cache/CacheStrategy;->findSpaceForCacheFile(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;)J

    move-result-wide v1

    .line 260
    .local v1, spaceToDelete:J
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDeletionStrategy:Lcom/google/android/music/dl/cache/DeletionStrategy;

    iget-object v4, p0, Lcom/google/android/music/dl/cache/CacheManager;->mDoNotDelete:Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;

    invoke-interface {v4}, Lcom/google/android/music/dl/cache/CacheManager$DoNotDeleteSet;->getDoNotDeletes()Ljava/util/HashSet;

    move-result-object v4

    invoke-interface {v3, v1, v2, v0, v4}, Lcom/google/android/music/dl/cache/DeletionStrategy;->createSpace(JLjava/io/File;Ljava/util/HashSet;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 264
    :cond_3
    iget-boolean v3, p0, Lcom/google/android/music/dl/cache/CacheManager;->mAllowCaching:Z

    invoke-virtual {p0, p1, v0, v3}, Lcom/google/android/music/dl/cache/CacheManager;->storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)V

    move v3, v7

    .line 265
    goto :goto_0

    .line 269
    :cond_4
    invoke-direct {p0, p1}, Lcom/google/android/music/dl/cache/CacheManager;->prepareForNonCachableDownload(Lcom/google/android/music/dl/DownloadOrder;)Z

    move-result v3

    goto :goto_0
.end method

.method public startClearingOrphanedFilesAsync()V
    .locals 3

    .prologue
    .line 362
    iget-object v1, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v1

    .line 363
    :try_start_0
    iget-object v2, p0, Lcom/google/android/music/dl/cache/CacheManager;->mClearOrphanedFilesWorker:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;

    .line 364
    .local v0, worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    if-nez v0, :cond_0

    .line 365
    new-instance v0, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;

    .end local v0           #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    invoke-direct {v0, p0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;-><init>(Lcom/google/android/music/dl/cache/CacheManager;)V

    .line 367
    .restart local v0       #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;->startClearingOrphanedFilesAsync()V

    .line 368
    monitor-exit v1

    .line 369
    return-void

    .line 368
    .end local v0           #worker:Lcom/google/android/music/dl/cache/CacheManager$ClearOrphanedFilesWorker;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected final storeIn(Lcom/google/android/music/dl/DownloadOrder;Ljava/io/File;Z)V
    .locals 5
    .parameter "order"
    .parameter "location"
    .parameter "saveable"
    .annotation build Lcom/google/android/music/VisibleForTesting;
    .end annotation

    .prologue
    .line 313
    iget-wide v1, p1, Lcom/google/android/music/dl/DownloadOrder;->seekPoint:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 314
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".tmp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    .line 324
    :goto_0
    return-void

    .line 316
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p1, Lcom/google/android/music/dl/DownloadOrder;->xId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-static {v2}, Lcom/google/android/music/dl/cache/CacheManager;->getExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 317
    .local v0, localLocation:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_1

    .line 319
    const-string v1, "MusicCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not delete: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    :cond_1
    invoke-virtual {p1, v0, p3}, Lcom/google/android/music/dl/DownloadOrder;->setLocalLocation(Ljava/io/File;Z)V

    goto :goto_0
.end method
