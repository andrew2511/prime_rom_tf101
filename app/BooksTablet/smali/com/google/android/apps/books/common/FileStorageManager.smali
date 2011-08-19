.class public Lcom/google/android/apps/books/common/FileStorageManager;
.super Ljava/lang/Object;
.source "FileStorageManager.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/util/concurrent/locks/ReadWriteLock;

.field private mSequenceNumber:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 48
    iput-object p1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mContext:Landroid/content/Context;

    .line 49
    return-void
.end method


# virtual methods
.method public getLock()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    return-object v0
.end method

.method public getSequenceNumber()I
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/google/android/apps/books/common/FileStorageManager;->getLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 62
    .local v0, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 63
    iget v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mSequenceNumber:I

    .line 64
    .local v1, result:I
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    return v1
.end method

.method public resetFileStorage()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    iget-object v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 106
    .local v0, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 108
    :try_start_0
    iget v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mSequenceNumber:I

    .line 109
    iget-object v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/google/android/apps/books/provider/BooksContract$Files;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 113
    return-void

    .line 111
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public resetFileStorageLocation()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 125
    .local v0, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 127
    :try_start_0
    iget v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mSequenceNumber:I

    .line 128
    iget-object v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/apps/books/provider/BooksProvider;->resetFileStorageLocation(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 132
    return-void

    .line 130
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public setUseExternalStorage(Z)V
    .locals 2
    .parameter "useExternalStorage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    .line 79
    .local v0, lock:Ljava/util/concurrent/locks/Lock;
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 85
    :try_start_0
    iget v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mSequenceNumber:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mSequenceNumber:I

    .line 90
    iget-object v1, p0, Lcom/google/android/apps/books/common/FileStorageManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/google/android/apps/books/provider/BooksProvider;->setUseExternalStorage(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 95
    return-void

    .line 93
    :catchall_0
    move-exception v1

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method
