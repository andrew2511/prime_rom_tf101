.class public Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;
.super Lorg/apache/commons/compress/archivers/ArchiveOutputStream;
.source "ZipArchiveOutputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;
    }
.end annotation


# static fields
.field static final BUFFER_SIZE:I = 0x200

.field static final BYTE_MASK:I = 0xff

.field static final CFH_SIG:[B = null

.field static final DD_SIG:[B = null

.field public static final DEFAULT_COMPRESSION:I = -0x1

.field static final DEFAULT_ENCODING:Ljava/lang/String; = "UTF8"

.field public static final DEFLATED:I = 0x8

.field private static final DEFLATER_BLOCK_SIZE:I = 0x2000

.field public static final EFS_FLAG:I = 0x800

.field static final EOCD_SIG:[B = null

.field static final LFH_SIG:[B = null

.field private static final LZERO:[B = null

.field private static final SHORT:I = 0x2

.field public static final STORED:I = 0x0

.field private static final WORD:I = 0x4

.field private static final ZERO:[B


# instance fields
.field private final buf:[B

.field private cdLength:J

.field private cdOffset:J

.field private comment:Ljava/lang/String;

.field private final crc:Ljava/util/zip/CRC32;

.field private createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

.field private dataStart:J

.field protected final def:Ljava/util/zip/Deflater;

.field private encoding:Ljava/lang/String;

.field private final entries:Ljava/util/List;

.field private entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

.field private fallbackToUTF8:Z

.field protected finished:Z

.field private hasCompressionLevelChanged:Z

.field private level:I

.field private localDataStart:J

.field private method:I

.field private final offsets:Ljava/util/Map;

.field private final out:Ljava/io/OutputStream;

.field private final raf:Ljava/io/RandomAccessFile;

.field private useUTF8Flag:Z

.field private written:J

.field private zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 169
    const/4 v0, 0x2

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    .line 174
    const/4 v0, 0x4

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    .line 596
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->LFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    .line 600
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->DD_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    .line 604
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipLong;->CFH_SIG:Lorg/apache/commons/compress/archivers/zip/ZipLong;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes()[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    .line 608
    const-wide/32 v0, 0x6054b50

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    return-void

    .line 169
    :array_0
    .array-data 0x1
        0x0t
        0x0t
    .end array-data

    .line 174
    nop

    :array_1
    .array-data 0x1
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 9
    .parameter "file"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-wide/16 v5, 0x0

    .line 249
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 66
    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 112
    const-string v4, ""

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 117
    const/4 v4, -0x1

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 123
    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 128
    const/16 v4, 0x8

    iput v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 133
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 138
    new-instance v4, Ljava/util/zip/CRC32;

    invoke-direct {v4}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 143
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 148
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->dataStart:J

    .line 154
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->localDataStart:J

    .line 159
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 164
    iput-wide v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 179
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    .line 188
    const-string v4, "UTF8"

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 196
    const-string v4, "UTF8"

    invoke-static {v4}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 203
    new-instance v4, Ljava/util/zip/Deflater;

    iget v5, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v4, v5, v8}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 209
    const/16 v4, 0x200

    new-array v4, v4, [B

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    .line 222
    iput-boolean v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 227
    iput-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 232
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 250
    const/4 v3, 0x0

    .line 251
    .local v3, o:Ljava/io/OutputStream;
    const/4 v0, 0x0

    .line 253
    .local v0, _raf:Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v4, "rw"

    invoke-direct {v1, p1, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v0           #_raf:Ljava/io/RandomAccessFile;
    .local v1, _raf:Ljava/io/RandomAccessFile;
    const-wide/16 v4, 0x0

    :try_start_1
    invoke-virtual {v1, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    .line 266
    .end local v1           #_raf:Ljava/io/RandomAccessFile;
    .restart local v0       #_raf:Ljava/io/RandomAccessFile;
    :goto_0
    iput-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 267
    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 268
    return-void

    .line 255
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 256
    .local v2, e:Ljava/io/IOException;
    :goto_1
    if-eqz v0, :cond_0

    .line 258
    :try_start_2
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 262
    :goto_2
    const/4 v0, 0x0

    .line 264
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    .end local v3           #o:Ljava/io/OutputStream;
    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .restart local v3       #o:Ljava/io/OutputStream;
    goto :goto_0

    .line 259
    :catch_1
    move-exception v4

    goto :goto_2

    .line 255
    .end local v0           #_raf:Ljava/io/RandomAccessFile;
    .end local v2           #e:Ljava/io/IOException;
    .restart local v1       #_raf:Ljava/io/RandomAccessFile;
    :catch_2
    move-exception v4

    move-object v2, v4

    move-object v0, v1

    .end local v1           #_raf:Ljava/io/RandomAccessFile;
    .restart local v0       #_raf:Ljava/io/RandomAccessFile;
    goto :goto_1
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 5
    .parameter "out"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 238
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/ArchiveOutputStream;-><init>()V

    .line 66
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 123
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 128
    const/16 v0, 0x8

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 133
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    .line 138
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 143
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 148
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->dataStart:J

    .line 154
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->localDataStart:J

    .line 159
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 164
    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 179
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    .line 188
    const-string v0, "UTF8"

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 196
    const-string v0, "UTF8"

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 203
    new-instance v0, Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-direct {v0, v1, v4}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    .line 209
    const/16 v0, 0x200

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    .line 222
    iput-boolean v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 227
    iput-boolean v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 232
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 239
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    .line 240
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    .line 241
    return-void
.end method

.method private deflateUntilInputIsNeeded()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 893
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->needsInput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 894
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflate()V

    goto :goto_0

    .line 896
    :cond_0
    return-void
.end method

.method private writeVersionNeededToExtractAndGeneralPurposeBits(IZ)V
    .locals 4
    .parameter "zipMethod"
    .parameter "utfFallback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 905
    const/16 v1, 0xa

    .line 906
    .local v1, versionNeededToExtract:I
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;

    invoke-direct {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;-><init>()V

    .line 907
    .local v0, b:Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;
    iget-boolean v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    if-nez v2, :cond_0

    if-eqz p2, :cond_2

    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useUTF8ForNames(Z)V

    .line 908
    const/16 v2, 0x8

    if-ne p1, v2, :cond_1

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v2, :cond_1

    .line 911
    const/16 v1, 0x14

    .line 912
    invoke-virtual {v0, v3}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->useDataDescriptor(Z)V

    .line 917
    :cond_1
    invoke-static {v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 919
    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/GeneralPurposeBit;->encode()[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 920
    return-void

    .line 907
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public canWriteEntryData(Lorg/apache/commons/compress/archivers/ArchiveEntry;)Z
    .locals 1
    .parameter "ae"

    .prologue
    .line 515
    instance-of v0, p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v0, :cond_0

    .line 516
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p1
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->canHandleEntryData(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)Z

    move-result v0

    .line 518
    :goto_0
    return v0

    .restart local p1
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 566
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-nez v0, :cond_0

    .line 567
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finish()V

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 571
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 573
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_2

    .line 574
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 576
    :cond_2
    return-void
.end method

.method public closeArchiveEntry()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 362
    iget-boolean v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v6, :cond_0

    .line 363
    new-instance v6, Ljava/io/IOException;

    const-string v7, "Stream has already been finished"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 366
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-nez v6, :cond_1

    .line 367
    new-instance v6, Ljava/io/IOException;

    const-string v7, "No current entry to close"

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 370
    :cond_1
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 371
    .local v0, realCrc:J
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v6}, Ljava/util/zip/CRC32;->reset()V

    .line 373
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_5

    .line 374
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->finish()V

    .line 375
    :goto_0
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->finished()Z

    move-result v6

    if-nez v6, :cond_2

    .line 376
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflate()V

    goto :goto_0

    .line 379
    :cond_2
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v7}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v7

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->adjustToLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 380
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v7}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v7

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->adjustToLong(I)J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 381
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    .line 383
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v6}, Ljava/util/zip/Deflater;->reset()V

    .line 385
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v8

    add-long/2addr v6, v8

    iput-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 412
    :cond_3
    :goto_1
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v6, :cond_4

    .line 413
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v2

    .line 415
    .local v2, save:J
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->localDataStart:J

    invoke-virtual {v6, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 416
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 417
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 418
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 419
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v6, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 422
    .end local v2           #save:J
    :cond_4
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {p0, v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 423
    const/4 v6, 0x0

    iput-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 424
    return-void

    .line 386
    :cond_5
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v6, :cond_7

    .line 387
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v6

    cmp-long v6, v6, v0

    if-eqz v6, :cond_6

    .line 388
    new-instance v6, Ljava/util/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "bad CRC checksum for entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " instead of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 395
    :cond_6
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v6

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->dataStart:J

    sub-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-eqz v6, :cond_3

    .line 396
    new-instance v6, Ljava/util/zip/ZipException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "bad size for entry "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " instead of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iget-wide v10, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->dataStart:J

    sub-long/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 403
    :cond_7
    iget-wide v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->dataStart:J

    sub-long v4, v6, v8

    .line 405
    .local v4, size:J
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setSize(J)V

    .line 406
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 407
    iget-object v6, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v6, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCrc(J)V

    goto/16 :goto_1
.end method

.method public createArchiveEntry(Ljava/io/File;Ljava/lang/String;)Lorg/apache/commons/compress/archivers/ArchiveEntry;
    .locals 2
    .parameter "inputFile"
    .parameter "entryName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 964
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 965
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 967
    :cond_0
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method protected final deflate()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 615
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    array-length v3, v3

    invoke-virtual {v1, v2, v4, v3}, Ljava/util/zip/Deflater;->deflate([BII)I

    move-result v0

    .line 616
    .local v0, len:I
    if-lez v0, :cond_0

    .line 617
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->buf:[B

    invoke-virtual {p0, v1, v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 619
    :cond_0
    return-void
.end method

.method public finish()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 338
    iget-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v1, :cond_0

    .line 339
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This archive has already been finished"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 342
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v1, :cond_1

    .line 343
    new-instance v1, Ljava/io/IOException;

    const-string v2, "This archives contains unclosed entries."

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 346
    :cond_1
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    .line 347
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 348
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    goto :goto_0

    .line 350
    :cond_2
    iget-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    .line 351
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeCentralDirectoryEnd()V

    .line 352
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 353
    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 354
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    .line 355
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 585
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_0

    .line 586
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 588
    :cond_0
    return-void
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    return-object v0
.end method

.method public isSeekable()Z
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public putArchiveEntry(Lorg/apache/commons/compress/archivers/ArchiveEntry;)V
    .locals 5
    .parameter "archiveEntry"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v3, -0x1

    .line 431
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->finished:Z

    if-eqz v0, :cond_0

    .line 432
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream has already been finished"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    if-eqz v0, :cond_1

    .line 436
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->closeArchiveEntry()V

    .line 439
    :cond_1
    check-cast p1, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .end local p1
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    .line 440
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    .line 443
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setMethod(I)V

    .line 446
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_3

    .line 447
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setTime(J)V

    .line 451
    :cond_3
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_6

    .line 452
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_4

    .line 453
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "uncompressed size is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 457
    :cond_4
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v0

    cmp-long v0, v0, v3

    if-nez v0, :cond_5

    .line 458
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "crc checksum is required for STORED method when not writing to a file"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 461
    :cond_5
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    iget-object v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->setCompressedSize(J)V

    .line 464
    :cond_6
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_7

    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    if-eqz v0, :cond_7

    .line 465
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    iget v1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    invoke-virtual {v0, v1}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 466
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 468
    :cond_7
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 469
    return-void
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .parameter "comment"

    .prologue
    .line 476
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    .line 477
    return-void
.end method

.method public setCreateUnicodeExtraFields(Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 323
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    .line 324
    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 2
    .parameter "encoding"

    .prologue
    .line 293
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    .line 294
    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->getZipEncoding(Ljava/lang/String;)Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 295
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    invoke-static {p1}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v0, v1

    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 296
    return-void
.end method

.method public setFallbackToUTF8(Z)V
    .locals 0
    .parameter "b"

    .prologue
    .line 333
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    .line 334
    return-void
.end method

.method public setLevel(I)V
    .locals 3
    .parameter "level"

    .prologue
    .line 488
    const/4 v0, -0x1

    if-lt p1, v0, :cond_0

    const/16 v0, 0x9

    if-le p1, v0, :cond_1

    .line 490
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Invalid compression level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 493
    :cond_1
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->hasCompressionLevelChanged:Z

    .line 494
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->level:I

    .line 495
    return-void

    .line 493
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMethod(I)V
    .locals 0
    .parameter "method"

    .prologue
    .line 504
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->method:I

    .line 505
    return-void
.end method

.method public setUseLanguageEncodingFlag(Z)V
    .locals 1
    .parameter "b"

    .prologue
    .line 314
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->encoding:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->isUTF8(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->useUTF8Flag:Z

    .line 315
    return-void

    .line 314
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public write([BII)V
    .locals 7
    .parameter "b"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x2000

    .line 529
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-static {v3}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->checkRequestedFeatures(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V

    .line 530
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_3

    .line 531
    if-lez p3, :cond_0

    .line 532
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->finished()Z

    move-result v3

    if-nez v3, :cond_0

    .line 533
    if-gt p3, v5, :cond_1

    .line 534
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 535
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    .line 555
    :cond_0
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 556
    invoke-virtual {p0, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->count(I)V

    .line 557
    return-void

    .line 537
    :cond_1
    div-int/lit16 v1, p3, 0x2000

    .line 538
    .local v1, fullblocks:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v1, :cond_2

    .line 539
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    mul-int/lit16 v4, v2, 0x2000

    add-int/2addr v4, p2

    invoke-virtual {v3, p1, v4, v5}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 541
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    .line 538
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 543
    :cond_2
    mul-int/lit16 v0, v1, 0x2000

    .line 544
    .local v0, done:I
    if-ge v0, p3, :cond_0

    .line 545
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->def:Ljava/util/zip/Deflater;

    add-int v4, p2, v0

    sub-int v5, p3, v0

    invoke-virtual {v3, p1, v4, v5}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 546
    invoke-direct {p0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->deflateUntilInputIsNeeded()V

    goto :goto_0

    .line 552
    .end local v0           #done:I
    .end local v1           #fullblocks:I
    .end local v2           #i:I
    :cond_3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 553
    iget-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    int-to-long v5, p3

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    goto :goto_0
.end method

.method protected writeCentralDirectoryEnd()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 846
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->EOCD_SIG:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 849
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 850
    sget-object v2, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 853
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entries:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v1

    .line 854
    .local v1, num:[B
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 855
    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 858
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdLength:J

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 859
    iget-wide v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->cdOffset:J

    invoke-static {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 862
    iget-object v2, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->comment:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 863
    .local v0, data:Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-static {v2}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 864
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    invoke-virtual {p0, v2, v3, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 865
    return-void
.end method

.method protected writeCentralFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 11
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 749
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->CFH_SIG:[B

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 750
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 754
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getPlatform()I

    move-result v7

    shl-int/lit8 v7, v7, 0x8

    or-int/lit8 v7, v7, 0x14

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 755
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 757
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v6

    .line 758
    .local v6, zipMethod:I
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 759
    .local v2, encodable:Z
    if-nez v2, :cond_1

    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    :goto_0
    invoke-direct {p0, v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeVersionNeededToExtractAndGeneralPurposeBits(IZ)V

    .line 762
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 765
    invoke-static {v6}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 766
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 769
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 770
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 775
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 776
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 777
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 779
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0xc

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 785
    if-nez v2, :cond_2

    iget-boolean v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v7, :cond_2

    .line 786
    sget-object v3, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 791
    .local v3, entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v3, v7}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 793
    .local v5, name:Ljava/nio/ByteBuffer;
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 794
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 797
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCentralDirectoryExtra()[B

    move-result-object v4

    .line 798
    .local v4, extra:[B
    array-length v7, v4

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 799
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 802
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 803
    .local v0, comm:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 804
    const-string v0, ""

    .line 807
    :cond_0
    invoke-interface {v3, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 809
    .local v1, commentB:Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v7

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 810
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 813
    sget-object v7, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->ZERO:[B

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 814
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 817
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getInternalAttributes()I

    move-result v7

    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 818
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x2

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 821
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getExternalAttributes()J

    move-result-wide v7

    invoke-static {v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v7

    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 822
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 825
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    invoke-interface {v7, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, [B

    check-cast p1, [B

    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 826
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v9, 0x4

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 829
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 830
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 833
    invoke-virtual {p0, v4}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 834
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    array-length v9, v4

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 837
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v7

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v8

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    invoke-virtual {p0, v7, v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 838
    iget-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v9

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 839
    return-void

    .line 759
    .end local v0           #comm:Ljava/lang/String;
    .end local v1           #commentB:Ljava/nio/ByteBuffer;
    .end local v3           #entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .end local v4           #extra:[B
    .end local v5           #name:Ljava/nio/ByteBuffer;
    .restart local p1
    :cond_1
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 788
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .restart local v3       #entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    goto/16 :goto_1
.end method

.method protected writeDataDescriptor(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 4
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 731
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_1

    .line 741
    :cond_0
    :goto_0
    return-void

    .line 734
    :cond_1
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->DD_SIG:[B

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 735
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 736
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCompressedSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 737
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->entry:Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;

    invoke-virtual {v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 739
    iget-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    goto :goto_0
.end method

.method protected writeLocalFileHeader(Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;)V
    .locals 13
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 628
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v3

    .line 632
    .local v3, encodable:Z
    if-nez v3, :cond_5

    iget-boolean v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v8, :cond_5

    .line 633
    sget-object v4, Lorg/apache/commons/compress/archivers/zip/ZipEncodingHelper;->UTF8_ZIP_ENCODING:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .line 638
    .local v4, entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v4, v8}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 640
    .local v6, name:Ljava/nio/ByteBuffer;
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->NEVER:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v8, v9, :cond_3

    .line 642
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v8, v9, :cond_0

    if-nez v3, :cond_1

    .line 644
    :cond_0
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;

    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v10

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v11

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v12

    invoke-direct {v8, v9, v10, v11, v12}, Lorg/apache/commons/compress/archivers/zip/UnicodePathExtraField;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 650
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .line 651
    .local v0, comm:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v8, ""

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 653
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    invoke-interface {v8, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->canEncode(Ljava/lang/String;)Z

    move-result v2

    .line 655
    .local v2, commentEncodable:Z
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->createUnicodeExtraFields:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    sget-object v9, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;->ALWAYS:Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream$UnicodeExtraFieldPolicy;

    if-eq v8, v9, :cond_2

    if-nez v2, :cond_3

    .line 657
    :cond_2
    invoke-interface {v4, v0}, Lorg/apache/commons/compress/archivers/zip/ZipEncoding;->encode(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 658
    .local v1, commentB:Ljava/nio/ByteBuffer;
    new-instance v8, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v9

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v10

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v11

    invoke-direct {v8, v0, v9, v10, v11}, Lorg/apache/commons/compress/archivers/zip/UnicodeCommentExtraField;-><init>(Ljava/lang/String;[BII)V

    invoke-virtual {p1, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->addExtraField(Lorg/apache/commons/compress/archivers/zip/ZipExtraField;)V

    .line 667
    .end local v0           #comm:Ljava/lang/String;
    .end local v1           #commentB:Ljava/nio/ByteBuffer;
    .end local v2           #commentEncodable:Z
    :cond_3
    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->offsets:Ljava/util/Map;

    iget-wide v9, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-static {v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v9

    invoke-interface {v8, p1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LFH_SIG:[B

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 670
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 673
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getMethod()I

    move-result v7

    .line 675
    .local v7, zipMethod:I
    if-nez v3, :cond_6

    iget-boolean v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->fallbackToUTF8:Z

    if-eqz v8, :cond_6

    const/4 v8, 0x1

    :goto_1
    invoke-direct {p0, v7, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeVersionNeededToExtractAndGeneralPurposeBits(IZ)V

    .line 678
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 681
    invoke-static {v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 682
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 685
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getTime()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipUtil;->toDosTime(J)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 686
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x4

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 691
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->localDataStart:J

    .line 692
    const/16 v8, 0x8

    if-eq v7, v8, :cond_4

    iget-object v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v8, :cond_7

    .line 693
    :cond_4
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 694
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 695
    sget-object v8, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->LZERO:[B

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 702
    :goto_2
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0xc

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 706
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v8

    invoke-static {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 707
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 710
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getLocalFileDataExtra()[B

    move-result-object v5

    .line 711
    .local v5, extra:[B
    array-length v8, v5

    invoke-static {v8}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 712
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 715
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v9

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    invoke-virtual {p0, v8, v9, v10}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 716
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 719
    invoke-virtual {p0, v5}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 720
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    array-length v10, v5

    int-to-long v10, v10

    add-long/2addr v8, v10

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    .line 722
    iget-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->written:J

    iput-wide v8, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->dataStart:J

    .line 723
    return-void

    .line 635
    .end local v4           #entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    .end local v5           #extra:[B
    .end local v6           #name:Ljava/nio/ByteBuffer;
    .end local v7           #zipMethod:I
    :cond_5
    iget-object v4, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->zipEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;

    .restart local v4       #entryEncoding:Lorg/apache/commons/compress/archivers/zip/ZipEncoding;
    goto/16 :goto_0

    .line 675
    .restart local v6       #name:Ljava/nio/ByteBuffer;
    .restart local v7       #zipMethod:I
    :cond_6
    const/4 v8, 0x0

    goto/16 :goto_1

    .line 697
    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getCrc()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 698
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    .line 699
    invoke-virtual {p1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveEntry;->getSize()J

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([B)V

    goto :goto_2
.end method

.method protected final writeOut([B)V
    .locals 2
    .parameter "data"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 873
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->writeOut([BII)V

    .line 874
    return-void
.end method

.method protected final writeOut([BII)V
    .locals 1
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 885
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 886
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    .line 890
    :goto_0
    return-void

    .line 888
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/ZipArchiveOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0
.end method
