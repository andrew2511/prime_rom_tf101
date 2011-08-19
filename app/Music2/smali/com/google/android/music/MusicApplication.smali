.class public Lcom/google/android/music/MusicApplication;
.super Landroid/app/Application;
.source "MusicApplication.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AndroidMusic"


# instance fields
.field mHprofDumped:Z

.field private mImportState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/jumper/MusicPreferences;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/google/android/music/dl/NetworkMonitor;",
            ">;"
        }
    .end annotation
.end field

.field mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private final mStoreStateListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/google/android/music/store/StoreStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Landroid/app/Application;-><init>()V

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mStoreStateListeners:Ljava/util/Collection;

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mImportState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/music/MusicApplication;->mHprofDumped:Z

    .line 87
    iput-object v1, p0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 88
    new-instance v0, Lcom/google/android/music/MusicApplication$2;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicApplication$2;-><init>(Lcom/google/android/music/MusicApplication;)V

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/music/MusicApplication;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1
    .parameter "x0"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method private static getMusicApp(Landroid/content/Context;)Lcom/google/android/music/MusicApplication;
    .locals 3
    .parameter "context"

    .prologue
    .line 168
    instance-of v0, p0, Lcom/google/android/music/MusicApplication;

    if-eqz v0, :cond_0

    .line 169
    check-cast p0, Lcom/google/android/music/MusicApplication;

    .end local p0
    move-object v0, p0

    .line 175
    :goto_0
    return-object v0

    .line 170
    .restart local p0
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/google/android/music/MusicApplication;

    if-eqz v0, :cond_1

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/MusicApplication;

    move-object v0, p0

    goto :goto_0

    .line 172
    .restart local p0
    :cond_1
    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 173
    check-cast p0, Landroid/app/Activity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/MusicApplication;

    move-object v0, p0

    goto :goto_0

    .line 174
    .restart local p0
    :cond_2
    instance-of v0, p0, Landroid/app/Service;

    if-eqz v0, :cond_3

    .line 175
    check-cast p0, Landroid/app/Service;

    .end local p0
    invoke-virtual {p0}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object p0

    check-cast p0, Lcom/google/android/music/MusicApplication;

    move-object v0, p0

    goto :goto_0

    .line 177
    .restart local p0
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown context type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".  Expecting Activity, Service, or MusicApplication"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMusicPreferences(Landroid/content/Context;)Lcom/google/android/music/jumper/MusicPreferences;
    .locals 1
    .parameter "context"

    .prologue
    .line 182
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicApp(Landroid/content/Context;)Lcom/google/android/music/MusicApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicApplication;->getMusicPreferences()Lcom/google/android/music/jumper/MusicPreferences;

    move-result-object v0

    return-object v0
.end method

.method public static getNetworkMonitor(Landroid/content/Context;)Lcom/google/android/music/dl/NetworkMonitor;
    .locals 1
    .parameter "context"

    .prologue
    .line 164
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicApp(Landroid/content/Context;)Lcom/google/android/music/MusicApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/music/MusicApplication;->getNetworkMonitor()Lcom/google/android/music/dl/NetworkMonitor;

    move-result-object v0

    return-object v0
.end method

.method public static registerStoreStateListener(Landroid/content/Context;Lcom/google/android/music/store/StoreStateListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 125
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicApp(Landroid/content/Context;)Lcom/google/android/music/MusicApplication;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/google/android/music/MusicApplication;->registerStoreStateListener(Lcom/google/android/music/store/StoreStateListener;)V

    .line 126
    return-void
.end method

.method private registerStoreStateListener(Lcom/google/android/music/store/StoreStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mStoreStateListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 130
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mStoreStateListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mImportState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/google/android/music/store/StoreStateListener;->onStoreStateChanged(I)V

    .line 133
    return-void

    .line 131
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private setImportState(I)V
    .locals 6
    .parameter "importState"

    .prologue
    .line 151
    iget-object v3, p0, Lcom/google/android/music/MusicApplication;->mImportState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 152
    iget-object v3, p0, Lcom/google/android/music/MusicApplication;->mStoreStateListeners:Ljava/util/Collection;

    monitor-enter v3

    .line 153
    :try_start_0
    iget-object v4, p0, Lcom/google/android/music/MusicApplication;->mStoreStateListeners:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/music/store/StoreStateListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .local v2, listener:Lcom/google/android/music/store/StoreStateListener;
    :try_start_1
    iget-object v4, p0, Lcom/google/android/music/MusicApplication;->mImportState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/google/android/music/store/StoreStateListener;->onStoreStateChanged(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v4

    move-object v0, v4

    .line 157
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    const-string v4, "AndroidMusic"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 160
    .end local v0           #e:Ljava/lang/Exception;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #listener:Lcom/google/android/music/store/StoreStateListener;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 161
    return-void
.end method

.method public static setImportState(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "importState"

    .prologue
    .line 147
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicApp(Landroid/content/Context;)Lcom/google/android/music/MusicApplication;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/google/android/music/MusicApplication;->setImportState(I)V

    .line 148
    return-void
.end method

.method public static unregisterStoreStateListener(Landroid/content/Context;Lcom/google/android/music/store/StoreStateListener;)V
    .locals 1
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 137
    invoke-static {p0}, Lcom/google/android/music/MusicApplication;->getMusicApp(Landroid/content/Context;)Lcom/google/android/music/MusicApplication;

    move-result-object v0

    invoke-direct {v0, p1}, Lcom/google/android/music/MusicApplication;->unregisterStoreStateListener(Lcom/google/android/music/store/StoreStateListener;)V

    .line 138
    return-void
.end method

.method private unregisterStoreStateListener(Lcom/google/android/music/store/StoreStateListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mStoreStateListeners:Ljava/util/Collection;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mStoreStateListeners:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 143
    monitor-exit v0

    .line 144
    return-void

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public getMusicPreferences()Lcom/google/android/music/jumper/MusicPreferences;
    .locals 4

    .prologue
    .line 186
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 189
    const-string v1, "AndroidMusic"

    const-string v2, "Need to wait for MusicPreferences to be created"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :try_start_1
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    const-wide/16 v2, 0xc8

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 194
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 195
    const-string v1, "AndroidMusic"

    const-string v2, "MusicPreferences still not made, creating on UI thread"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/music/jumper/MusicPreferences;

    invoke-direct {v2, p0}, Lcom/google/android/music/jumper/MusicPreferences;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 199
    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mMusicPreferences:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/jumper/MusicPreferences;

    return-object p0

    .line 199
    .restart local p0
    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 192
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public getNetworkMonitor()Lcom/google/android/music/dl/NetworkMonitor;
    .locals 3

    .prologue
    .line 111
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    monitor-enter v0

    .line 113
    :try_start_0
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 116
    iget-object v1, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v2, Lcom/google/android/music/dl/NetworkMonitor;

    invoke-direct {v2, p0}, Lcom/google/android/music/dl/NetworkMonitor;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 118
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/music/dl/NetworkMonitor;

    return-object p0

    .line 118
    .restart local p0
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onCreate()V
    .locals 2

    .prologue
    .line 41
    invoke-super {p0}, Landroid/app/Application;->onCreate()V

    .line 42
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mImportState:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 43
    invoke-static {p0}, Lcom/google/android/music/store/MediaStoreImporter;->isMediaStoreImportValid(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 46
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/android/music/MusicApplication;->setImportState(Landroid/content/Context;I)V

    .line 49
    :cond_0
    invoke-static {p0}, Lcom/google/android/music/MusicUtils;->openPlaylistCursor(Landroid/content/Context;)V

    .line 51
    new-instance v0, Lcom/google/android/music/MusicApplication$1;

    invoke-direct {v0, p0}, Lcom/google/android/music/MusicApplication$1;-><init>(Lcom/google/android/music/MusicApplication;)V

    invoke-static {v0}, Lcom/google/android/music/MusicUtils;->runAsync(Ljava/lang/Runnable;)V

    .line 82
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/music/MusicApplication;->mOldUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 83
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNewUncaughtExceptionHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {v0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 84
    return-void
.end method

.method public onTerminate()V
    .locals 2

    .prologue
    .line 206
    invoke-static {}, Lcom/google/android/music/MusicUtils;->closePlaylistCursor()V

    .line 207
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/music/dl/NetworkMonitor;

    invoke-virtual {v0}, Lcom/google/android/music/dl/NetworkMonitor;->onDestroy()V

    .line 209
    iget-object v0, p0, Lcom/google/android/music/MusicApplication;->mNetworkMonitor:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 211
    :cond_0
    invoke-super {p0}, Landroid/app/Application;->onTerminate()V

    .line 212
    return-void
.end method
