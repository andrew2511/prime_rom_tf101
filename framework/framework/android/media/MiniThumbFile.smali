.class public Landroid/media/MiniThumbFile;
.super Ljava/lang/Object;
.source "MiniThumbFile.java"


# static fields
.field public static final BYTES_PER_MINTHUMB:I = 0x2710

.field private static final HEADER_SIZE:I = 0xd

.field private static final MINI_THUMB_DATA_FILE_VERSION:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MiniThumbFile"

.field private static sThumbFiles:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Landroid/media/MiniThumbFile;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBuffer:Ljava/nio/ByteBuffer;

.field private mChannel:Ljava/nio/channels/FileChannel;

.field private mMiniThumbFile:Ljava/io/RandomAccessFile;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 55
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .registers 3
    .parameter "uri"

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 132
    iput-object p1, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    .line 133
    const/16 v0, 0x2710

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    .line 134
    return-void
.end method

.method public static declared-synchronized instance(Landroid/net/Uri;)Landroid/media/MiniThumbFile;
    .registers 6
    .parameter "uri"

    .prologue
    .line 70
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    :try_start_3
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 71
    .local v1, type:Ljava/lang/String;
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 73
    .local v0, file:Landroid/media/MiniThumbFile;
    if-nez v0, :cond_3f

    .line 74
    new-instance v0, Landroid/media/MiniThumbFile;

    .end local v0           #file:Landroid/media/MiniThumbFile;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://media/external/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/media/MiniThumbFile;-><init>(Landroid/net/Uri;)V

    .line 76
    .restart local v0       #file:Landroid/media/MiniThumbFile;
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3f
    .catchall {:try_start_3 .. :try_end_3f} :catchall_41

    .line 79
    :cond_3f
    monitor-exit v2

    return-object v0

    .line 70
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #type:Ljava/lang/String;
    :catchall_41
    move-exception v3

    monitor-exit v2

    throw v3
.end method

.method private miniThumbDataFile()Ljava/io/RandomAccessFile;
    .registers 8

    .prologue
    .line 102
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-nez v4, :cond_58

    .line 103
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->removeOldFile()V

    .line 104
    const/4 v4, 0x3

    invoke-direct {p0, v4}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v3

    .line 105
    .local v3, path:Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 106
    .local v0, directory:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 107
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_3d

    .line 108
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create .thumbnails directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_3d
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v2, f:Ljava/io/File;
    :try_start_42
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "rw"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_4c} :catch_5b

    .line 124
    :goto_4c
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    if-eqz v4, :cond_58

    .line 125
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    .line 128
    .end local v0           #directory:Ljava/io/File;
    .end local v2           #f:Ljava/io/File;
    .end local v3           #path:Ljava/lang/String;
    :cond_58
    iget-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    return-object v4

    .line 115
    .restart local v0       #directory:Ljava/io/File;
    .restart local v2       #f:Ljava/io/File;
    .restart local v3       #path:Ljava/lang/String;
    :catch_5b
    move-exception v4

    move-object v1, v4

    .line 119
    .local v1, ex:Ljava/io/IOException;
    :try_start_5d
    new-instance v4, Ljava/io/RandomAccessFile;

    const-string/jumbo v5, "r"

    invoke-direct {v4, v2, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5d .. :try_end_67} :catch_68

    goto :goto_4c

    .line 120
    :catch_68
    move-exception v4

    goto :goto_4c
.end method

.method private randomAccessFilePath(I)Ljava/lang/String;
    .registers 5
    .parameter "version"

    .prologue
    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/DCIM/.thumbnails"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, directoryName:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/.thumbdata"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MiniThumbFile;->mUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private removeOldFile()V
    .registers 4

    .prologue
    .line 90
    const/4 v2, 0x2

    invoke-direct {p0, v2}, Landroid/media/MiniThumbFile;->randomAccessFilePath(I)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, oldPath:Ljava/lang/String;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    .local v0, oldFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 94
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_13
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_13} :catch_14

    .line 99
    :cond_13
    :goto_13
    return-void

    .line 95
    :catch_14
    move-exception v2

    goto :goto_13
.end method

.method public static declared-synchronized reset()V
    .registers 4

    .prologue
    .line 63
    const-class v2, Landroid/media/MiniThumbFile;

    monitor-enter v2

    :try_start_3
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_20

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MiniThumbFile;

    .line 64
    .local v0, file:Landroid/media/MiniThumbFile;
    invoke-virtual {v0}, Landroid/media/MiniThumbFile;->deactivate()V
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_1d

    goto :goto_d

    .line 63
    .end local v0           #file:Landroid/media/MiniThumbFile;
    .end local v1           #i$:Ljava/util/Iterator;
    :catchall_1d
    move-exception v3

    monitor-exit v2

    throw v3

    .line 66
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_20
    :try_start_20
    sget-object v3, Landroid/media/MiniThumbFile;->sThumbFiles:Ljava/util/Hashtable;

    invoke-virtual {v3}, Ljava/util/Hashtable;->clear()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 67
    monitor-exit v2

    return-void
.end method


# virtual methods
.method public declared-synchronized deactivate()V
    .registers 2

    .prologue
    .line 137
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-eqz v0, :cond_d

    .line 139
    :try_start_5
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/media/MiniThumbFile;->mMiniThumbFile:Ljava/io/RandomAccessFile;
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_f
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_d} :catch_12

    .line 145
    :cond_d
    :goto_d
    monitor-exit p0

    return-void

    .line 137
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0

    .line 141
    :catch_12
    move-exception v0

    goto :goto_d
.end method

.method public declared-synchronized getMagic(J)J
    .registers 14
    .parameter "id"

    .prologue
    const/16 v10, 0x9

    const/4 v9, 0x1

    .line 153
    monitor-enter p0

    :try_start_4
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_99

    move-result-object v8

    .line 154
    .local v8, r:Ljava/io/RandomAccessFile;
    if-eqz v8, :cond_4e

    .line 155
    const-wide/16 v3, 0x2710

    mul-long v1, p1, v3

    .line 156
    .local v1, pos:J
    const/4 v7, 0x0

    .line 158
    .local v7, lock:Ljava/nio/channels/FileLock;
    :try_start_f
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 159
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/16 v3, 0x9

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 161
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x9

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 164
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    if-ne v0, v10, :cond_49

    .line 165
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 166
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    if-ne v0, v9, :cond_49

    .line 167
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getLong()J
    :try_end_41
    .catchall {:try_start_f .. :try_end_41} :catchall_92
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_41} :catch_51
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_41} :catch_62

    move-result-wide v3

    .line 178
    if-eqz v7, :cond_47

    :try_start_44
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_99
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_9c

    .line 185
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_47
    :goto_47
    monitor-exit p0

    return-wide v3

    .line 178
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :cond_49
    if-eqz v7, :cond_4e

    :try_start_4b
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_99
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_9e

    .line 185
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    :cond_4e
    :goto_4e
    const-wide/16 v3, 0x0

    goto :goto_47

    .line 170
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    :catch_51
    move-exception v0

    move-object v6, v0

    .line 171
    .local v6, ex:Ljava/io/IOException;
    :try_start_53
    const-string v0, "MiniThumbFile"

    const-string v3, "Got exception checking file magic: "

    invoke-static {v0, v3, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5a
    .catchall {:try_start_53 .. :try_end_5a} :catchall_92

    .line 178
    if-eqz v7, :cond_4e

    :try_start_5c
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_5f
    .catchall {:try_start_5c .. :try_end_5f} :catchall_99
    .catch Ljava/io/IOException; {:try_start_5c .. :try_end_5f} :catch_60

    goto :goto_4e

    .line 180
    :catch_60
    move-exception v0

    goto :goto_4e

    .line 172
    .end local v6           #ex:Ljava/io/IOException;
    :catch_62
    move-exception v0

    move-object v6, v0

    .line 174
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_64
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got exception when reading magic, id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8a
    .catchall {:try_start_64 .. :try_end_8a} :catchall_92

    .line 178
    if-eqz v7, :cond_4e

    :try_start_8c
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_8f
    .catchall {:try_start_8c .. :try_end_8f} :catchall_99
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_8f} :catch_90

    goto :goto_4e

    .line 180
    :catch_90
    move-exception v0

    goto :goto_4e

    .line 177
    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catchall_92
    move-exception v0

    .line 178
    if-eqz v7, :cond_98

    :try_start_95
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_99
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_a0

    .line 182
    :cond_98
    :goto_98
    :try_start_98
    throw v0
    :try_end_99
    .catchall {:try_start_98 .. :try_end_99} :catchall_99

    .line 153
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    :catchall_99
    move-exception v0

    monitor-exit p0

    throw v0

    .line 180
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :catch_9c
    move-exception v0

    goto :goto_47

    :catch_9e
    move-exception v0

    goto :goto_4e

    :catch_a0
    move-exception v3

    goto :goto_98
.end method

.method public declared-synchronized getMiniThumbFromFile(J[B)[B
    .registers 22
    .parameter "id"
    .parameter "data"

    .prologue
    .line 237
    monitor-enter p0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_ef

    move-result-object v16

    .line 238
    .local v16, r:Ljava/io/RandomAccessFile;
    if-nez v16, :cond_a

    const/4 v4, 0x0

    .line 271
    :goto_8
    monitor-exit p0

    return-object v4

    .line 240
    :cond_a
    const-wide/16 v7, 0x2710

    mul-long v5, p1, v7

    .line 241
    .local v5, pos:J
    const/4 v13, 0x0

    .line 243
    .local v13, lock:Ljava/nio/channels/FileLock;
    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object v4, v0

    const-wide/16 v7, 0x2710

    const/4 v9, 0x1

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v13

    .line 245
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    move-object v4, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v7, v0

    invoke-virtual {v4, v7, v5, v6}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v17

    .line 246
    .local v17, size:I
    const/16 v4, 0xd

    move/from16 v0, v17

    move v1, v4

    if-le v0, v1, :cond_7f

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 248
    .end local v5           #pos:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->get()B

    move-result v11

    .line 249
    .local v11, flag:B
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v14

    .line 250
    .local v14, magic:J
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v12

    .line 252
    .local v12, length:I
    add-int/lit8 v4, v12, 0xd

    move/from16 v0, v17

    move v1, v4

    if-lt v0, v1, :cond_7f

    move-object/from16 v0, p3

    array-length v0, v0

    move v4, v0

    if-lt v4, v12, :cond_7f

    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    move-object v4, v0

    const/4 v5, 0x0

    move-object v0, v4

    move-object/from16 v1, p3

    move v2, v5

    move v3, v12

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;
    :try_end_77
    .catchall {:try_start_f .. :try_end_77} :catchall_e8
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_77} :catch_86
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_77} :catch_b5

    .line 265
    if-eqz v13, :cond_7c

    :try_start_79
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7c
    .catchall {:try_start_79 .. :try_end_7c} :catchall_ef
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_7c} :catch_f2

    :cond_7c
    :goto_7c
    move-object/from16 v4, p3

    .line 269
    goto :goto_8

    .line 265
    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    :cond_7f
    if-eqz v13, :cond_84

    :try_start_81
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_84
    .catchall {:try_start_81 .. :try_end_84} :catchall_ef
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_f4

    .line 271
    .end local v17           #size:I
    :cond_84
    :goto_84
    const/4 v4, 0x0

    goto :goto_8

    .line 257
    :catch_86
    move-exception v4

    move-object v10, v4

    .line 258
    .local v10, ex:Ljava/io/IOException;
    :try_start_88
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "got exception when reading thumbnail id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ad
    .catchall {:try_start_88 .. :try_end_ad} :catchall_e8

    .line 265
    if-eqz v13, :cond_84

    :try_start_af
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_b2
    .catchall {:try_start_af .. :try_end_b2} :catchall_ef
    .catch Ljava/io/IOException; {:try_start_af .. :try_end_b2} :catch_b3

    goto :goto_84

    .line 267
    :catch_b3
    move-exception v4

    goto :goto_84

    .line 259
    .end local v10           #ex:Ljava/io/IOException;
    :catch_b5
    move-exception v4

    move-object v10, v4

    .line 261
    .local v10, ex:Ljava/lang/RuntimeException;
    :try_start_b7
    const-string v4, "MiniThumbFile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Got exception when reading thumbnail, id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v0, v5

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", disk full or mount read-only? "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catchall {:try_start_b7 .. :try_end_e0} :catchall_e8

    .line 265
    if-eqz v13, :cond_84

    :try_start_e2
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_e5
    .catchall {:try_start_e2 .. :try_end_e5} :catchall_ef
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e5} :catch_e6

    goto :goto_84

    .line 267
    :catch_e6
    move-exception v4

    goto :goto_84

    .line 264
    .end local v10           #ex:Ljava/lang/RuntimeException;
    :catchall_e8
    move-exception v4

    .line 265
    if-eqz v13, :cond_ee

    :try_start_eb
    invoke-virtual {v13}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ee
    .catchall {:try_start_eb .. :try_end_ee} :catchall_ef
    .catch Ljava/io/IOException; {:try_start_eb .. :try_end_ee} :catch_f6

    .line 269
    :cond_ee
    :goto_ee
    :try_start_ee
    throw v4
    :try_end_ef
    .catchall {:try_start_ee .. :try_end_ef} :catchall_ef

    .line 237
    .end local v13           #lock:Ljava/nio/channels/FileLock;
    .end local v16           #r:Ljava/io/RandomAccessFile;
    :catchall_ef
    move-exception v4

    monitor-exit p0

    throw v4

    .line 267
    .restart local v11       #flag:B
    .restart local v12       #length:I
    .restart local v13       #lock:Ljava/nio/channels/FileLock;
    .restart local v14       #magic:J
    .restart local v16       #r:Ljava/io/RandomAccessFile;
    .restart local v17       #size:I
    :catch_f2
    move-exception v4

    goto :goto_7c

    .end local v11           #flag:B
    .end local v12           #length:I
    .end local v14           #magic:J
    :catch_f4
    move-exception v4

    goto :goto_84

    .end local v17           #size:I
    :catch_f6
    move-exception v5

    goto :goto_ee
.end method

.method public declared-synchronized saveMiniThumbToFile([BJJ)V
    .registers 15
    .parameter "data"
    .parameter "id"
    .parameter "magic"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, 0x2710

    .line 190
    monitor-enter p0

    :try_start_3
    invoke-direct {p0}, Landroid/media/MiniThumbFile;->miniThumbDataFile()Ljava/io/RandomAccessFile;
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_7b

    move-result-object v8

    .line 191
    .local v8, r:Ljava/io/RandomAccessFile;
    if-nez v8, :cond_b

    .line 227
    :cond_9
    :goto_9
    monitor-exit p0

    return-void

    .line 193
    :cond_b
    mul-long v1, p2, v3

    .line 194
    .local v1, pos:J
    const/4 v7, 0x0

    .line 196
    .local v7, lock:Ljava/nio/channels/FileLock;
    if-eqz p1, :cond_4b

    .line 197
    :try_start_10
    array-length v0, p1
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_74
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_11} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_11} :catch_7e

    const/16 v3, 0x2703

    if-le v0, v3, :cond_1b

    .line 221
    if-eqz v7, :cond_9

    :try_start_17
    throw v7
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_18} :catch_19

    goto :goto_9

    .line 223
    :catch_19
    move-exception v0

    goto :goto_9

    .line 201
    :cond_1b
    :try_start_1b
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 202
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 203
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p4, p5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 204
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    array-length v3, p1

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 205
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 206
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 208
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    const-wide/16 v3, 0x2710

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->lock(JJZ)Ljava/nio/channels/FileLock;

    move-result-object v7

    .line 209
    iget-object v0, p0, Landroid/media/MiniThumbFile;->mChannel:Ljava/nio/channels/FileChannel;

    iget-object v3, p0, Landroid/media/MiniThumbFile;->mBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3, v1, v2}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I
    :try_end_4b
    .catchall {:try_start_1b .. :try_end_4b} :catchall_74
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_4b} :catch_53
    .catch Ljava/lang/RuntimeException; {:try_start_1b .. :try_end_4b} :catch_7e

    .line 221
    :cond_4b
    if-eqz v7, :cond_9

    :try_start_4d
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_50
    .catchall {:try_start_4d .. :try_end_50} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_51

    goto :goto_9

    .line 223
    :catch_51
    move-exception v0

    goto :goto_9

    .line 211
    :catch_53
    move-exception v0

    move-object v6, v0

    .line 212
    .local v6, ex:Ljava/io/IOException;
    :try_start_55
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 214
    throw v6
    :try_end_74
    .catchall {:try_start_55 .. :try_end_74} :catchall_74

    .line 220
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_74
    move-exception v0

    .line 221
    if-eqz v7, :cond_7a

    :try_start_77
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_77 .. :try_end_7a} :catch_b0

    .line 225
    :cond_7a
    :goto_7a
    :try_start_7a
    throw v0
    :try_end_7b
    .catchall {:try_start_7a .. :try_end_7b} :catchall_7b

    .line 190
    .end local v1           #pos:J
    .end local v7           #lock:Ljava/nio/channels/FileLock;
    .end local v8           #r:Ljava/io/RandomAccessFile;
    :catchall_7b
    move-exception v0

    monitor-exit p0

    throw v0

    .line 215
    .restart local v1       #pos:J
    .restart local v7       #lock:Ljava/nio/channels/FileLock;
    .restart local v8       #r:Ljava/io/RandomAccessFile;
    :catch_7e
    move-exception v0

    move-object v6, v0

    .line 217
    .local v6, ex:Ljava/lang/RuntimeException;
    :try_start_80
    const-string v0, "MiniThumbFile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t save mini thumbnail data for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "; disk full or mount read-only? "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a6
    .catchall {:try_start_80 .. :try_end_a6} :catchall_74

    .line 221
    if-eqz v7, :cond_9

    :try_start_a8
    invoke-virtual {v7}, Ljava/nio/channels/FileLock;->release()V
    :try_end_ab
    .catchall {:try_start_a8 .. :try_end_ab} :catchall_7b
    .catch Ljava/io/IOException; {:try_start_a8 .. :try_end_ab} :catch_ad

    goto/16 :goto_9

    .line 223
    :catch_ad
    move-exception v0

    goto/16 :goto_9

    .end local v6           #ex:Ljava/lang/RuntimeException;
    :catch_b0
    move-exception v3

    goto :goto_7a
.end method
