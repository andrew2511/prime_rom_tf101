.class public Ljava/util/zip/ZipFile;
.super Ljava/lang/Object;
.source "ZipFile.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/util/zip/ZipFile$ZipInflaterInputStream;,
        Ljava/util/zip/ZipFile$RAFStream;
    }
.end annotation


# static fields
.field static final GPBF_DATA_DESCRIPTOR_FLAG:I = 0x8

.field static final GPBF_UTF8_FLAG:I = 0x800

.field public static final OPEN_DELETE:I = 0x4

.field public static final OPEN_READ:I = 0x1


# instance fields
.field private final fileName:Ljava/lang/String;

.field private fileToDeleteOnClose:Ljava/io/File;

.field private final guard:Ldalvik/system/CloseGuard;

.field private final mEntries:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mRaf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 3
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 105
    return-void
.end method

.method public constructor <init>(Ljava/io/File;I)V
    .registers 7
    .parameter "file"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    .line 91
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    .line 120
    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    .line 121
    const/4 v1, 0x1

    if-eq p2, v1, :cond_22

    const/4 v1, 0x5

    if-eq p2, v1, :cond_22

    .line 122
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 125
    :cond_22
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 126
    .local v0, security:Ljava/lang/SecurityManager;
    if-eqz v0, :cond_2d

    .line 127
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V

    .line 129
    :cond_2d
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_50

    .line 130
    if-eqz v0, :cond_38

    .line 131
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkDelete(Ljava/lang/String;)V

    .line 133
    :cond_38
    iput-object p1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 138
    :goto_3a
    new-instance v1, Ljava/io/RandomAccessFile;

    iget-object v2, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    const-string v3, "r"

    invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 140
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->readCentralDir()V

    .line 141
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    const-string v2, "close"

    invoke-virtual {v1, v2}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 142
    return-void

    .line 135
    :cond_50
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    goto :goto_3a
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 153
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    .line 154
    return-void
.end method

.method static synthetic access$000(Ljava/util/zip/ZipFile;)Ljava/lang/String;
    .registers 2
    .parameter "x0"

    .prologue
    .line 51
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/util/zip/ZipFile;)V
    .registers 1
    .parameter "x0"

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    return-void
.end method

.method private checkNotClosed()V
    .registers 3

    .prologue
    .line 199
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_c

    .line 200
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Zip file closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 202
    :cond_c
    return-void
.end method

.method private readCentralDir()V
    .registers 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v21

    const-wide/16 v23, 0x16

    sub-long v16, v21, v23

    .line 334
    .local v16, scanOffset:J
    const-wide/16 v21, 0x0

    cmp-long v21, v16, v21

    if-gez v21, :cond_1c

    .line 335
    new-instance v21, Ljava/util/zip/ZipException;

    const-string v22, "too short to be Zip"

    invoke-direct/range {v21 .. v22}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 338
    :cond_1c
    const-wide/32 v21, 0x10000

    sub-long v18, v16, v21

    .line 339
    .local v18, stopOffset:J
    const-wide/16 v21, 0x0

    cmp-long v21, v18, v21

    if-gez v21, :cond_29

    .line 340
    const-wide/16 v18, 0x0

    .line 343
    :cond_29
    const v4, 0x6054b50

    .line 345
    .local v4, ENDHEADERMAGIC:I
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->reverseBytes(I)I

    move-result v21

    const v22, 0x6054b50

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_a3

    .line 358
    const/16 v21, 0x12

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v9, v0

    .line 359
    .local v9, eocd:[B
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/io/RandomAccessFile;->readFully([B)V

    .line 362
    const/16 v21, 0x0

    move-object v0, v9

    array-length v0, v0

    move/from16 v22, v0

    sget-object v23, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    move-object v0, v9

    move/from16 v1, v21

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Llibcore/io/HeapBufferIterator;->iterator([BIILjava/nio/ByteOrder;)Llibcore/io/BufferIterator;

    move-result-object v12

    .line 363
    .local v12, it:Llibcore/io/BufferIterator;
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v7

    .line 364
    .local v7, diskNumber:S
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v8

    .line 365
    .local v8, diskWithCentralDir:S
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v14

    .line 366
    .local v14, numEntries:S
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readShort()S

    move-result v20

    .line 367
    .local v20, totalNumEntries:S
    const/16 v21, 0x4

    move-object v0, v12

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Llibcore/io/BufferIterator;->skip(I)V

    .line 368
    invoke-virtual {v12}, Llibcore/io/BufferIterator;->readInt()I

    move-result v6

    .line 370
    .local v6, centralDirOffset:I
    move v0, v14

    move/from16 v1, v20

    if-ne v0, v1, :cond_9b

    if-nez v7, :cond_9b

    if-eqz v8, :cond_b3

    .line 371
    :cond_9b
    new-instance v21, Ljava/util/zip/ZipException;

    const-string v22, "spanned archives not supported"

    invoke-direct/range {v21 .. v22}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 350
    .end local v6           #centralDirOffset:I
    .end local v7           #diskNumber:S
    .end local v8           #diskWithCentralDir:S
    .end local v9           #eocd:[B
    .end local v12           #it:Llibcore/io/BufferIterator;
    .end local v14           #numEntries:S
    .end local v20           #totalNumEntries:S
    :cond_a3
    const-wide/16 v21, 0x1

    sub-long v16, v16, v21

    .line 351
    cmp-long v21, v16, v18

    if-gez v21, :cond_2c

    .line 352
    new-instance v21, Ljava/util/zip/ZipException;

    const-string v22, "EOCD not found; not a Zip archive?"

    invoke-direct/range {v21 .. v22}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v21

    .line 375
    .restart local v6       #centralDirOffset:I
    .restart local v7       #diskNumber:S
    .restart local v8       #diskWithCentralDir:S
    .restart local v9       #eocd:[B
    .restart local v12       #it:Llibcore/io/BufferIterator;
    .restart local v14       #numEntries:S
    .restart local v20       #totalNumEntries:S
    :cond_b3
    new-instance v15, Ljava/util/zip/ZipFile$RAFStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    move-object/from16 v21, v0

    move v0, v6

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object v0, v15

    move-object/from16 v1, v21

    move-wide/from16 v2, v22

    invoke-direct {v0, v1, v2, v3}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 376
    .local v15, rafs:Ljava/util/zip/ZipFile$RAFStream;
    new-instance v5, Ljava/io/BufferedInputStream;

    const/16 v21, 0x1000

    move-object v0, v5

    move-object v1, v15

    move/from16 v2, v21

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    .line 377
    .local v5, bin:Ljava/io/BufferedInputStream;
    const/16 v21, 0x2e

    move/from16 v0, v21

    new-array v0, v0, [B

    move-object v10, v0

    .line 378
    .local v10, hdrBuf:[B
    const/4 v11, 0x0

    .local v11, i:I
    :goto_da
    if-ge v11, v14, :cond_f6

    .line 379
    new-instance v13, Ljava/util/zip/ZipEntry;

    invoke-direct {v13, v10, v5}, Ljava/util/zip/ZipEntry;-><init>([BLjava/io/InputStream;)V

    .line 380
    .local v13, newEntry:Ljava/util/zip/ZipEntry;
    move-object/from16 v0, p0

    iget-object v0, v0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    move-object/from16 v21, v0

    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    add-int/lit8 v11, v11, 0x1

    goto :goto_da

    .line 382
    .end local v13           #newEntry:Ljava/util/zip/ZipEntry;
    :cond_f6
    return-void
.end method


# virtual methods
.method public close()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 177
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 178
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 180
    .local v0, raf:Ljava/io/RandomAccessFile;
    if-eqz v0, :cond_20

    .line 181
    monitor-enter v0

    .line 182
    const/4 v1, 0x0

    :try_start_c
    iput-object v1, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 183
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 184
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_21

    .line 185
    iget-object v1, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    if-eqz v1, :cond_20

    .line 186
    new-instance v1, Ljava/util/zip/ZipFile$1;

    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile$1;-><init>(Ljava/util/zip/ZipFile;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    .line 193
    iput-object v2, p0, Ljava/util/zip/ZipFile;->fileToDeleteOnClose:Ljava/io/File;

    .line 196
    :cond_20
    return-void

    .line 184
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    throw v1
.end method

.method public entries()Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<+",
            "Ljava/util/zip/ZipEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 213
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 215
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/zip/ZipEntry;>;"
    new-instance v1, Ljava/util/zip/ZipFile$2;

    invoke-direct {v1, p0, v0}, Ljava/util/zip/ZipFile$2;-><init>(Ljava/util/zip/ZipFile;Ljava/util/Iterator;)V

    return-object v1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    :try_start_0
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    if-eqz v1, :cond_9

    .line 159
    iget-object v1, p0, Ljava/util/zip/ZipFile;->guard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->warnIfOpen()V
    :try_end_9
    .catchall {:try_start_0 .. :try_end_9} :catchall_14

    .line 163
    :cond_9
    :try_start_9
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_c} :catch_d

    .line 168
    return-void

    .line 164
    :catch_d
    move-exception v0

    .line 165
    .local v0, t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 162
    .end local v0           #t:Ljava/lang/Throwable;
    :catchall_14
    move-exception v1

    .line 163
    :try_start_15
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_18} :catch_19

    .line 165
    throw v1

    .line 164
    :catch_19
    move-exception v0

    .line 165
    .restart local v0       #t:Ljava/lang/Throwable;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;
    .registers 6
    .parameter "entryName"

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 239
    if-nez p1, :cond_b

    .line 240
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 243
    :cond_b
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 244
    .local v0, ze:Ljava/util/zip/ZipEntry;
    if-nez v0, :cond_30

    .line 245
    iget-object v1, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ze:Ljava/util/zip/ZipEntry;
    check-cast v0, Ljava/util/zip/ZipEntry;

    .line 247
    .restart local v0       #ze:Ljava/util/zip/ZipEntry;
    :cond_30
    return-object v0
.end method

.method public getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    .registers 12
    .parameter "entry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 262
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object p1

    .line 263
    if-nez p1, :cond_c

    .line 264
    const/4 v5, 0x0

    .line 286
    :goto_b
    return-object v5

    .line 268
    :cond_c
    iget-object v3, p0, Ljava/util/zip/ZipFile;->mRaf:Ljava/io/RandomAccessFile;

    .line 269
    .local v3, raf:Ljava/io/RandomAccessFile;
    monitor-enter v3

    .line 274
    :try_start_f
    new-instance v4, Ljava/util/zip/ZipFile$RAFStream;

    iget-wide v5, p1, Ljava/util/zip/ZipEntry;->mLocalHeaderRelOffset:J

    const-wide/16 v7, 0x1c

    add-long/2addr v5, v7

    invoke-direct {v4, v3, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;-><init>(Ljava/io/RandomAccessFile;J)V

    .line 275
    .local v4, rafstrm:Ljava/util/zip/ZipFile$RAFStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 276
    .local v1, is:Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    invoke-static {v5}, Ljava/lang/Short;->reverseBytes(S)S

    move-result v2

    .line 277
    .local v2, localExtraLenOrWhatever:I
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 280
    iget v5, p1, Ljava/util/zip/ZipEntry;->nameLength:I

    add-int/2addr v5, v2

    int-to-long v5, v5

    invoke-virtual {v4, v5, v6}, Ljava/util/zip/ZipFile$RAFStream;->skip(J)J

    .line 281
    iget-wide v5, v4, Ljava/util/zip/ZipFile$RAFStream;->mOffset:J

    iget-wide v7, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    add-long/2addr v5, v7

    iput-wide v5, v4, Ljava/util/zip/ZipFile$RAFStream;->mLength:J

    .line 282
    iget v5, p1, Ljava/util/zip/ZipEntry;->compressionMethod:I

    const/16 v6, 0x8

    if-ne v5, v6, :cond_5f

    .line 283
    const/16 v5, 0x400

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v6

    const-wide/32 v8, 0xffff

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 284
    .local v0, bufSize:I
    new-instance v5, Ljava/util/zip/ZipFile$ZipInflaterInputStream;

    new-instance v6, Ljava/util/zip/Inflater;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Ljava/util/zip/Inflater;-><init>(Z)V

    invoke-direct {v5, v4, v6, v0, p1}, Ljava/util/zip/ZipFile$ZipInflaterInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Inflater;ILjava/util/zip/ZipEntry;)V

    monitor-exit v3

    goto :goto_b

    .line 288
    .end local v0           #bufSize:I
    .end local v1           #is:Ljava/io/DataInputStream;
    .end local v2           #localExtraLenOrWhatever:I
    .end local v4           #rafstrm:Ljava/util/zip/ZipFile$RAFStream;
    :catchall_5c
    move-exception v5

    monitor-exit v3
    :try_end_5e
    .catchall {:try_start_f .. :try_end_5e} :catchall_5c

    throw v5

    .line 286
    .restart local v1       #is:Ljava/io/DataInputStream;
    .restart local v2       #localExtraLenOrWhatever:I
    .restart local v4       #rafstrm:Ljava/util/zip/ZipFile$RAFStream;
    :cond_5f
    :try_start_5f
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5c

    move-object v5, v4

    goto :goto_b
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Ljava/util/zip/ZipFile;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 307
    invoke-direct {p0}, Ljava/util/zip/ZipFile;->checkNotClosed()V

    .line 308
    iget-object v0, p0, Ljava/util/zip/ZipFile;->mEntries:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method
