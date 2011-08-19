.class public Lcom/google/android/youtube/core/cache/PersistentCache;
.super Lcom/google/android/youtube/core/cache/AbstractCache;
.source "PersistentCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "E::",
        "Ljava/io/Serializable;",
        ">",
        "Lcom/google/android/youtube/core/cache/AbstractCache",
        "<TK;TE;>;"
    }
.end annotation


# static fields
.field private static final DEFAULT_EXT:Ljava/lang/String; = ".cache"

.field static final NO_VALUE:Ljava/lang/String; = ""


# instance fields
.field private final cachePath:Ljava/lang/String;

.field private final ext:Ljava/lang/String;

.field private final filenames:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final filter:Ljava/io/FilenameFilter;

.field private volatile initCalled:Z

.field private final initialized:Landroid/os/ConditionVariable;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "cachePath"

    .prologue
    .line 79
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    const-string v0, ".cache"

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/cache/PersistentCache;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "cachePath"
    .parameter "ext"

    .prologue
    .line 64
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/AbstractCache;-><init>()V

    .line 65
    const-string v0, "cachePath may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    invoke-static {v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkArgument(Z)V

    .line 67
    iput-object p1, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->cachePath:Ljava/lang/String;

    .line 68
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->initialized:Landroid/os/ConditionVariable;

    .line 69
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    .line 70
    const-string v0, "ext may not be null"

    invoke-static {p2, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->ext:Ljava/lang/String;

    .line 71
    new-instance v0, Lcom/google/android/youtube/core/cache/PersistentCache$1;

    invoke-direct {v0, p0, p2}, Lcom/google/android/youtube/core/cache/PersistentCache$1;-><init>(Lcom/google/android/youtube/core/cache/PersistentCache;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filter:Ljava/io/FilenameFilter;

    .line 76
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/youtube/core/cache/PersistentCache;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->doInit()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/youtube/core/cache/PersistentCache;)Landroid/os/ConditionVariable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->initialized:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method private assertInitWasStartedAndWaitForIt()V
    .locals 2

    .prologue
    .line 275
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    iget-boolean v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->initCalled:Z

    const-string v1, "init() must be called before calling to this method"

    invoke-static {v0, v1}, Lcom/google/android/youtube/core/utils/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 277
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->initialized:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    .line 278
    return-void
.end method

.method private closeIfOpen(Ljava/io/InputStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 263
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    if-nez p1, :cond_0

    .line 271
    :goto_0
    return-void

    .line 267
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 268
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private closeIfOpen(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 252
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    if-nez p1, :cond_0

    .line 260
    :goto_0
    return-void

    .line 256
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private doInit()V
    .locals 8

    .prologue
    .line 117
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->cachePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 118
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_0

    .line 119
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 120
    .local v1, file:Ljava/io/File;
    iget-object v5, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v5, v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 123
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #file:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_0
    return-void
.end method

.method private syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 237
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    if-nez p1, :cond_0

    .line 249
    :goto_0
    return-void

    .line 241
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 244
    :catch_1
    move-exception v0

    .line 247
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    throw v0
.end method


# virtual methods
.method public clear()V
    .locals 7

    .prologue
    .line 221
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->assertInitWasStartedAndWaitForIt()V

    .line 222
    iget-object v5, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v5}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 223
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->cachePath:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filter:Ljava/io/FilenameFilter;

    invoke-virtual {v5, v6}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 224
    .local v2, files:[Ljava/io/File;
    if-nez v2, :cond_1

    .line 230
    :cond_0
    return-void

    .line 227
    :cond_1
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 228
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 227
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method public filter(Lcom/google/android/youtube/core/utils/Predicate;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Predicate",
            "<TK;>;)V"
        }
    .end annotation

    .prologue
    .line 210
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    .local p1, predicate:Lcom/google/android/youtube/core/utils/Predicate;,"Lcom/google/android/youtube/core/utils/Predicate<TK;>;"
    const-string v0, "predicate may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    const-string v0, "Clearing persistent cache as a result of a filtered remove"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->d(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->clear()V

    .line 213
    return-void
.end method

.method generateFilename(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 233
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->ext:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/io/Serializable;
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 127
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const-string v11, "key may not be null"

    invoke-static {p1, v11}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->assertInitWasStartedAndWaitForIt()V

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->generateFilename(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 130
    .local v6, filename:Ljava/lang/String;
    iget-object v11, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->miss()V

    .line 132
    const/4 v11, 0x0

    .line 158
    :goto_0
    return-object v11

    .line 134
    :cond_0
    new-instance v5, Ljava/io/File;

    iget-object v11, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->cachePath:Ljava/lang/String;

    invoke-direct {v5, v11, v6}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    .local v5, file:Ljava/io/File;
    const/4 v7, 0x0

    .line 136
    .local v7, fis:Ljava/io/FileInputStream;
    const/4 v1, 0x0

    .line 137
    .local v1, bis:Ljava/io/BufferedInputStream;
    const/4 v9, 0x0

    .line 138
    .local v9, ois:Ljava/io/ObjectInputStream;
    const/4 v4, 0x0

    .line 140
    .local v4, element:Ljava/io/Serializable;,"TE;"
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .end local v7           #fis:Ljava/io/FileInputStream;
    .local v8, fis:Ljava/io/FileInputStream;
    :try_start_1
    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 142
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .local v2, bis:Ljava/io/BufferedInputStream;
    :try_start_2
    new-instance v10, Ljava/io/ObjectInputStream;

    invoke-direct {v10, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 143
    .end local v9           #ois:Ljava/io/ObjectInputStream;
    .local v10, ois:Ljava/io/ObjectInputStream;
    :try_start_3
    invoke-virtual {v10}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/io/Serializable;

    move-object v4, v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 149
    invoke-direct {p0, v8}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    .line 150
    invoke-direct {p0, v2}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    .line 151
    invoke-direct {p0, v10}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    move-object v9, v10

    .end local v10           #ois:Ljava/io/ObjectInputStream;
    .restart local v9       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .line 153
    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    :goto_1
    if-eqz v4, :cond_1

    .line 154
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->hit()V

    :goto_2
    move-object v11, v4

    .line 158
    goto :goto_0

    .line 144
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 146
    .local v3, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    iget-object v11, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v11, v6}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Error opening cache file (maybe removed). [filename="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 149
    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    .line 150
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    .line 151
    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    goto :goto_1

    .line 149
    .end local v3           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    :goto_4
    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    .line 150
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    .line 151
    invoke-direct {p0, v9}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/InputStream;)V

    throw v11

    .line 156
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->miss()V

    goto :goto_2

    .line 149
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v11

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #ois:Ljava/io/ObjectInputStream;
    :catchall_3
    move-exception v11

    move-object v9, v10

    .end local v10           #ois:Ljava/io/ObjectInputStream;
    .restart local v9       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_4

    .line 144
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_1
    move-exception v11

    move-object v3, v11

    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    :catch_2
    move-exception v11

    move-object v3, v11

    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_3

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v7           #fis:Ljava/io/FileInputStream;
    .end local v9           #ois:Ljava/io/ObjectInputStream;
    .restart local v2       #bis:Ljava/io/BufferedInputStream;
    .restart local v8       #fis:Ljava/io/FileInputStream;
    .restart local v10       #ois:Ljava/io/ObjectInputStream;
    :catch_3
    move-exception v11

    move-object v3, v11

    move-object v9, v10

    .end local v10           #ois:Ljava/io/ObjectInputStream;
    .restart local v9       #ois:Ljava/io/ObjectInputStream;
    move-object v1, v2

    .end local v2           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    move-object v7, v8

    .end local v8           #fis:Ljava/io/FileInputStream;
    .restart local v7       #fis:Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->get(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public init()Lcom/google/android/youtube/core/cache/PersistentCache;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/youtube/core/cache/PersistentCache",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 90
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->initCalled:Z

    .line 91
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->doInit()V

    .line 92
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->initialized:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 93
    return-object p0
.end method

.method public init(Ljava/util/concurrent/Executor;)Lcom/google/android/youtube/core/cache/PersistentCache;
    .locals 1
    .parameter "executor"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/google/android/youtube/core/cache/PersistentCache",
            "<TK;TE;>;"
        }
    .end annotation

    .prologue
    .line 105
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    const-string v0, "executor may not be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->initCalled:Z

    .line 107
    new-instance v0, Lcom/google/android/youtube/core/cache/PersistentCache$2;

    invoke-direct {v0, p0}, Lcom/google/android/youtube/core/cache/PersistentCache$2;-><init>(Lcom/google/android/youtube/core/cache/PersistentCache;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 113
    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/io/Serializable;)V
    .locals 11
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TE;)V"
        }
    .end annotation

    .prologue
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    .local p2, element:Ljava/io/Serializable;,"TE;"
    const-string v9, "Error creating cache file."

    .line 162
    const-string v9, "key may not be null"

    invoke-static {p1, v9}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    const-string v9, "element may not be null"

    invoke-static {p1, v9}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->assertInitWasStartedAndWaitForIt()V

    .line 165
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->generateFilename(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 166
    .local v4, filename:Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    iget-object v9, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->cachePath:Ljava/lang/String;

    invoke-direct {v3, v9, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v3, file:Ljava/io/File;
    const/4 v5, 0x0

    .line 168
    .local v5, fos:Ljava/io/FileOutputStream;
    const/4 v0, 0x0

    .line 169
    .local v0, bos:Ljava/io/BufferedOutputStream;
    const/4 v7, 0x0

    .line 171
    .local v7, oos:Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 172
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .local v6, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v1, Ljava/io/BufferedOutputStream;

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 173
    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .local v1, bos:Ljava/io/BufferedOutputStream;
    :try_start_2
    new-instance v8, Ljava/io/ObjectOutputStream;

    invoke-direct {v8, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 174
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .local v8, oos:Ljava/io/ObjectOutputStream;
    :try_start_3
    invoke-virtual {v8, p2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 175
    invoke-virtual {v8}, Ljava/io/ObjectOutputStream;->flush()V

    .line 176
    iget-object v9, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    const-string v10, ""

    invoke-virtual {v9, v4, v10}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 184
    invoke-direct {p0, v6}, Lcom/google/android/youtube/core/cache/PersistentCache;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    .line 185
    invoke-direct {p0, v1}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 186
    invoke-direct {p0, v8}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .line 188
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v9

    move-object v2, v9

    .line 179
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_4
    const-string v9, "Error creating cache file."

    invoke-static {v9, v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 184
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/cache/PersistentCache;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 186
    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 180
    .end local v2           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v9

    move-object v2, v9

    .line 182
    .local v2, e:Ljava/io/IOException;
    :goto_2
    :try_start_5
    const-string v9, "Error creating cache file."

    invoke-static {v9, v2}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 184
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/cache/PersistentCache;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 186
    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    goto :goto_0

    .line 184
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    :goto_3
    invoke-direct {p0, v5}, Lcom/google/android/youtube/core/cache/PersistentCache;->syncAndCloseIfOpen(Ljava/io/FileOutputStream;)V

    .line 185
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    .line 186
    invoke-direct {p0, v7}, Lcom/google/android/youtube/core/cache/PersistentCache;->closeIfOpen(Ljava/io/OutputStream;)V

    throw v9

    .line 184
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catchall_2
    move-exception v9

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catchall_3
    move-exception v9

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 180
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v9

    move-object v2, v9

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v9

    move-object v2, v9

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catch_4
    move-exception v9

    move-object v2, v9

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 177
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_5
    move-exception v9

    move-object v2, v9

    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :catch_6
    move-exception v9

    move-object v2, v9

    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v0           #bos:Ljava/io/BufferedOutputStream;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .end local v7           #oos:Ljava/io/ObjectOutputStream;
    .restart local v1       #bos:Ljava/io/BufferedOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v8       #oos:Ljava/io/ObjectOutputStream;
    :catch_7
    move-exception v9

    move-object v2, v9

    move-object v7, v8

    .end local v8           #oos:Ljava/io/ObjectOutputStream;
    .restart local v7       #oos:Ljava/io/ObjectOutputStream;
    move-object v0, v1

    .end local v1           #bos:Ljava/io/BufferedOutputStream;
    .restart local v0       #bos:Ljava/io/BufferedOutputStream;
    move-object v5, v6

    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    check-cast p2, Ljava/io/Serializable;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/google/android/youtube/core/cache/PersistentCache;->put(Ljava/lang/Object;Ljava/io/Serializable;)V

    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/io/Serializable;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TE;"
        }
    .end annotation

    .prologue
    .line 191
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    .local p1, key:Ljava/lang/Object;,"TK;"
    const-string v3, "key may not be null"

    invoke-static {p1, v3}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->assertInitWasStartedAndWaitForIt()V

    .line 193
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->get(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v0

    .line 194
    .local v0, element:Ljava/io/Serializable;,"TE;"
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->generateFilename(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, filename:Ljava/lang/String;
    iget-object v3, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->cachePath:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 200
    .end local v1           #file:Ljava/io/File;
    .end local v2           #filename:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 50
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/cache/PersistentCache;->remove(Ljava/lang/Object;)Ljava/io/Serializable;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 216
    .local p0, this:Lcom/google/android/youtube/core/cache/PersistentCache;,"Lcom/google/android/youtube/core/cache/PersistentCache<TK;TE;>;"
    invoke-direct {p0}, Lcom/google/android/youtube/core/cache/PersistentCache;->assertInitWasStartedAndWaitForIt()V

    .line 217
    iget-object v0, p0, Lcom/google/android/youtube/core/cache/PersistentCache;->filenames:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v0

    return v0
.end method
