.class public final Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;
.super Ljava/lang/Object;
.source "ZoneInfoDB.java"


# static fields
.field private static final INDEX_FILE_NAME:Ljava/lang/String;

.field private static final LOCK:Ljava/lang/Object;

.field private static final VERSION:Ljava/lang/String;

.field private static final ZONE_DIRECTORY_NAME:Ljava/lang/String;

.field private static final ZONE_FILE_NAME:Ljava/lang/String;

.field private static final allZoneData:Llibcore/io/MemoryMappedFile;

.field private static byteOffsets:[I

.field private static ids:[Ljava/lang/String;

.field private static rawUtcOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ANDROID_ROOT"

    invoke-static {v1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/usr/share/zoneinfo/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zoneinfo.dat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_FILE_NAME:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "zoneinfo.idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->INDEX_FILE_NAME:Ljava/lang/String;

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->LOCK:Ljava/lang/Object;

    .line 62
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->readVersion()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->VERSION:Ljava/lang/String;

    .line 74
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->readIndex()V

    .line 77
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->mapData()Llibcore/io/MemoryMappedFile;

    move-result-object v0

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->allZoneData:Llibcore/io/MemoryMappedFile;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAvailableIDs()[Ljava/lang/String;
    .registers 1

    .prologue
    .line 236
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static getAvailableIDs(I)[Ljava/lang/String;
    .registers 5
    .parameter "rawOffset"

    .prologue
    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 241
    .local v2, matches:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    sget-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->rawUtcOffsets:[I

    array-length v0, v3

    .local v0, end:I
    :goto_9
    if-ge v1, v0, :cond_1b

    .line 242
    sget-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->rawUtcOffsets:[I

    aget v3, v3, v1

    if-ne v3, p0, :cond_18

    .line 243
    sget-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 241
    :cond_18
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 246
    :cond_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static getSystemDefault()Ljava/util/TimeZone;
    .registers 4

    .prologue
    .line 250
    sget-object v2, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 251
    :try_start_3
    invoke-static {}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getInstance()Lorg/apache/harmony/luni/internal/util/TimezoneGetter;

    move-result-object v0

    .line 252
    .local v0, tzGetter:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lorg/apache/harmony/luni/internal/util/TimezoneGetter;->getId()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 253
    .local v1, zoneName:Ljava/lang/String;
    :goto_e
    if-eqz v1, :cond_14

    .line 254
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 256
    :cond_14
    if-eqz v1, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 259
    :cond_1c
    const-string v1, "localtime"

    .line 261
    :cond_1e
    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    monitor-exit v2

    return-object v3

    .line 252
    .end local v1           #zoneName:Ljava/lang/String;
    :cond_24
    const/4 v3, 0x0

    move-object v1, v3

    goto :goto_e

    .line 262
    .end local v0           #tzGetter:Lorg/apache/harmony/luni/internal/util/TimezoneGetter;
    :catchall_27
    move-exception v3

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_27

    throw v3
.end method

.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 3
    .parameter "id"

    .prologue
    const/4 v1, 0x0

    .line 266
    if-nez p0, :cond_4

    .line 272
    :goto_3
    return-object v1

    .line 270
    :cond_4
    :try_start_4
    invoke-static {p0}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->makeTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_9

    move-result-object v1

    goto :goto_3

    .line 271
    :catch_9
    move-exception v0

    .line 272
    .local v0, ignored:Ljava/io/IOException;
    goto :goto_3
.end method

.method public static getVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 277
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->VERSION:Ljava/lang/String;

    return-object v0
.end method

.method private static makeTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .registers 14
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 188
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    .line 189
    .local v8, index:I
    if-gez v8, :cond_c

    move-object v0, v12

    .line 232
    :goto_b
    return-object v0

    .line 193
    :cond_c
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->allZoneData:Llibcore/io/MemoryMappedFile;

    invoke-virtual {v0}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v6

    .line 194
    .local v6, data:Llibcore/io/BufferIterator;
    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->byteOffsets:[I

    aget v0, v0, v8

    invoke-virtual {v6, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 198
    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    const v1, 0x545a6966

    if-eq v0, v1, :cond_24

    move-object v0, v12

    .line 199
    goto :goto_b

    .line 203
    :cond_24
    const/16 v0, 0x1c

    invoke-virtual {v6, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 206
    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v9

    .line 207
    .local v9, tzh_timecnt:I
    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v10

    .line 209
    .local v10, tzh_typecnt:I
    const/4 v0, 0x4

    invoke-virtual {v6, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 211
    new-array v2, v9, [I

    .line 212
    .local v2, transitions:[I
    array-length v0, v2

    invoke-virtual {v6, v2, v11, v0}, Llibcore/io/BufferIterator;->readIntArray([III)V

    .line 214
    new-array v3, v9, [B

    .line 215
    .local v3, type:[B
    array-length v0, v3

    invoke-virtual {v6, v3, v11, v0}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    .line 217
    new-array v4, v10, [I

    .line 218
    .local v4, gmtOffsets:[I
    new-array v5, v10, [B

    .line 219
    .local v5, isDsts:[B
    const/4 v7, 0x0

    .local v7, i:I
    :goto_46
    if-ge v7, v10, :cond_5b

    .line 220
    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readInt()I

    move-result v0

    aput v0, v4, v7

    .line 221
    invoke-virtual {v6}, Llibcore/io/BufferIterator;->readByte()B

    move-result v0

    aput-byte v0, v5, v7

    .line 229
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Llibcore/io/BufferIterator;->skip(I)V

    .line 219
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 232
    :cond_5b
    new-instance v0, Lorg/apache/harmony/luni/internal/util/ZoneInfo;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/harmony/luni/internal/util/ZoneInfo;-><init>(Ljava/lang/String;[I[B[I[B)V

    goto :goto_b
.end method

.method private static mapData()Llibcore/io/MemoryMappedFile;
    .registers 9

    .prologue
    .line 175
    const/4 v7, 0x0

    .line 177
    .local v7, file:Ljava/io/RandomAccessFile;
    :try_start_1
    new-instance v8, Ljava/io/RandomAccessFile;

    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_FILE_NAME:Ljava/lang/String;

    const-string v1, "r"

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_26
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_a} :catch_1e

    .line 178
    .end local v7           #file:Ljava/io/RandomAccessFile;
    .local v8, file:Ljava/io/RandomAccessFile;
    :try_start_a
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Llibcore/io/MemoryMappedFile;->mmap(Ljava/io/FileDescriptor;Ljava/nio/channels/FileChannel$MapMode;JJ)Llibcore/io/MemoryMappedFile;
    :try_end_19
    .catchall {:try_start_a .. :try_end_19} :catchall_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_19} :catch_2e

    move-result-object v0

    .line 182
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    .line 179
    .end local v8           #file:Ljava/io/RandomAccessFile;
    .restart local v7       #file:Ljava/io/RandomAccessFile;
    :catch_1e
    move-exception v0

    move-object v6, v0

    .line 180
    .local v6, ex:Ljava/io/IOException;
    :goto_20
    :try_start_20
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_26
    .catchall {:try_start_20 .. :try_end_26} :catchall_26

    .line 182
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_26
    move-exception v0

    :goto_27
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .end local v7           #file:Ljava/io/RandomAccessFile;
    .restart local v8       #file:Ljava/io/RandomAccessFile;
    :catchall_2b
    move-exception v0

    move-object v7, v8

    .end local v8           #file:Ljava/io/RandomAccessFile;
    .restart local v7       #file:Ljava/io/RandomAccessFile;
    goto :goto_27

    .line 179
    .end local v7           #file:Ljava/io/RandomAccessFile;
    .restart local v8       #file:Ljava/io/RandomAccessFile;
    :catch_2e
    move-exception v0

    move-object v6, v0

    move-object v7, v8

    .end local v8           #file:Ljava/io/RandomAccessFile;
    .restart local v7       #file:Ljava/io/RandomAccessFile;
    goto :goto_20
.end method

.method private static readIndex()V
    .registers 10

    .prologue
    .line 105
    const/4 v7, 0x0

    .line 106
    .local v7, file:Ljava/io/RandomAccessFile;
    const/4 v9, 0x0

    .line 108
    .local v9, mappedFile:Llibcore/io/MemoryMappedFile;
    :try_start_2
    new-instance v8, Ljava/io/RandomAccessFile;

    sget-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->INDEX_FILE_NAME:Ljava/lang/String;

    const-string v1, "r"

    invoke-direct {v8, v0, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_2d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_b} :catch_25

    .line 109
    .end local v7           #file:Ljava/io/RandomAccessFile;
    .local v8, file:Ljava/io/RandomAccessFile;
    :try_start_b
    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    invoke-virtual {v8}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-static/range {v0 .. v5}, Llibcore/io/MemoryMappedFile;->mmap(Ljava/io/FileDescriptor;Ljava/nio/channels/FileChannel$MapMode;JJ)Llibcore/io/MemoryMappedFile;

    move-result-object v9

    .line 110
    invoke-static {v9}, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->readIndex(Llibcore/io/MemoryMappedFile;)V
    :try_end_1e
    .catchall {:try_start_b .. :try_end_1e} :catchall_35
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_1e} :catch_38

    .line 114
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v8}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 117
    return-void

    .line 111
    .end local v8           #file:Ljava/io/RandomAccessFile;
    .restart local v7       #file:Ljava/io/RandomAccessFile;
    :catch_25
    move-exception v0

    move-object v6, v0

    .line 112
    .local v6, ex:Ljava/io/IOException;
    :goto_27
    :try_start_27
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .line 114
    .end local v6           #ex:Ljava/io/IOException;
    :catchall_2d
    move-exception v0

    :goto_2e
    invoke-static {v9}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 115
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/Closeable;)V

    throw v0

    .line 114
    .end local v7           #file:Ljava/io/RandomAccessFile;
    .restart local v8       #file:Ljava/io/RandomAccessFile;
    :catchall_35
    move-exception v0

    move-object v7, v8

    .end local v8           #file:Ljava/io/RandomAccessFile;
    .restart local v7       #file:Ljava/io/RandomAccessFile;
    goto :goto_2e

    .line 111
    .end local v7           #file:Ljava/io/RandomAccessFile;
    .restart local v8       #file:Ljava/io/RandomAccessFile;
    :catch_38
    move-exception v0

    move-object v6, v0

    move-object v7, v8

    .end local v8           #file:Ljava/io/RandomAccessFile;
    .restart local v7       #file:Ljava/io/RandomAccessFile;
    goto :goto_27
.end method

.method private static readIndex(Llibcore/io/MemoryMappedFile;)V
    .registers 11
    .parameter "mappedFile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    invoke-virtual {p0}, Llibcore/io/MemoryMappedFile;->bigEndianIterator()Llibcore/io/BufferIterator;

    move-result-object v5

    .line 123
    .local v5, it:Llibcore/io/BufferIterator;
    const/16 v0, 0x28

    .line 125
    .local v0, SIZEOF_TZNAME:I
    const/4 v0, 0x4

    .line 127
    .local v0, SIZEOF_TZINT:I
    const/16 v0, 0x28

    new-array v0, v0, [B

    .line 128
    .local v0, idBytes:[B
    invoke-virtual {p0}, Llibcore/io/MemoryMappedFile;->size()I

    move-result p0

    .end local p0
    div-int/lit8 v8, p0, 0x34

    .line 130
    .local v8, numEntries:I
    mul-int/lit8 p0, v8, 0x28

    new-array v1, p0, [C

    .line 131
    .local v1, idChars:[C
    new-array v2, v8, [I

    .line 132
    .local v2, idEnd:[I
    const/4 v3, 0x0

    .line 134
    .local v3, idOffset:I
    new-array p0, v8, [I

    sput-object p0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->byteOffsets:[I

    .line 135
    new-array p0, v8, [I

    sput-object p0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->rawUtcOffsets:[I

    .line 137
    const/4 p0, 0x0

    .local p0, i:I
    :goto_21
    if-ge p0, v8, :cond_66

    .line 138
    const/4 v4, 0x0

    array-length v6, v0

    invoke-virtual {v5, v0, v4, v6}, Llibcore/io/BufferIterator;->readByteArray([BII)V

    .line 139
    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->byteOffsets:[I

    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    aput v6, v4, p0

    .line 140
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v4

    .line 141
    .local v4, length:I
    const/16 v6, 0x2c

    if-ge v4, v6, :cond_40

    .line 142
    new-instance p0, Ljava/lang/AssertionError;

    .end local p0           #i:I
    const-string v0, "length in index file < sizeof(tzhead)"

    .end local v0           #idBytes:[B
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p0

    .line 144
    .restart local v0       #idBytes:[B
    .restart local p0       #i:I
    :cond_40
    sget-object v4, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->rawUtcOffsets:[I

    .end local v4           #length:I
    invoke-virtual {v5}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    aput v6, v4, p0

    .line 147
    array-length v7, v0

    .line 148
    .local v7, len:I
    const/4 v4, 0x0

    .local v4, j:I
    move v6, v4

    .end local v4           #j:I
    .local v6, j:I
    move v4, v3

    .end local v3           #idOffset:I
    .local v4, idOffset:I
    :goto_4c
    if-ge v6, v7, :cond_52

    .line 149
    aget-byte v3, v0, v6

    if-nez v3, :cond_58

    .line 155
    :cond_52
    aput v4, v2, p0

    .line 137
    add-int/lit8 p0, p0, 0x1

    move v3, v4

    .end local v4           #idOffset:I
    .restart local v3       #idOffset:I
    goto :goto_21

    .line 152
    .end local v3           #idOffset:I
    .restart local v4       #idOffset:I
    :cond_58
    add-int/lit8 v3, v4, 0x1

    .end local v4           #idOffset:I
    .restart local v3       #idOffset:I
    aget-byte v9, v0, v6

    and-int/lit16 v9, v9, 0xff

    int-to-char v9, v9

    aput-char v9, v1, v4

    .line 148
    add-int/lit8 v4, v6, 0x1

    .end local v6           #j:I
    .local v4, j:I
    move v6, v4

    .end local v4           #j:I
    .restart local v6       #j:I
    move v4, v3

    .end local v3           #idOffset:I
    .local v4, idOffset:I
    goto :goto_4c

    .line 160
    .end local v4           #idOffset:I
    .end local v6           #j:I
    .end local v7           #len:I
    .restart local v3       #idOffset:I
    :cond_66
    new-instance p0, Ljava/lang/String;

    .end local p0           #i:I
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0, v3}, Ljava/lang/String;-><init>([CII)V

    .line 161
    .end local v0           #idBytes:[B
    .local p0, allIds:Ljava/lang/String;
    new-array v0, v8, [Ljava/lang/String;

    sput-object v0, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    .end local v1           #idChars:[C
    .end local v3           #idOffset:I
    .local v0, i:I
    :goto_71
    if-ge v0, v8, :cond_89

    .line 163
    sget-object v1, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ids:[Ljava/lang/String;

    if-nez v0, :cond_83

    const/4 v3, 0x0

    :goto_78
    aget v4, v2, v0

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    .line 162
    add-int/lit8 v0, v0, 0x1

    goto :goto_71

    .line 163
    :cond_83
    const/4 v3, 0x1

    sub-int v3, v0, v3

    aget v3, v2, v3

    goto :goto_78

    .line 165
    :cond_89
    return-void
.end method

.method private static readVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 87
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lorg/apache/harmony/luni/internal/util/ZoneInfoDB;->ZONE_DIRECTORY_NAME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "zoneinfo.version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    move-result-object v0

    .line 88
    .local v0, bytes:[B
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    array-length v4, v0

    sget-object v5, Ljava/nio/charset/Charsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v2, v0, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_25} :catch_27

    move-result-object v2

    return-object v2

    .line 89
    .end local v0           #bytes:[B
    :catch_27
    move-exception v2

    move-object v1, v2

    .line 90
    .local v1, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method
