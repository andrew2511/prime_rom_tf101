.class public Ljava/util/zip/ZipOutputStream;
.super Ljava/util/zip/DeflaterOutputStream;
.source "ZipOutputStream.java"

# interfaces
.implements Ljava/util/zip/ZipConstants;


# static fields
.field public static final DEFLATED:I = 0x8

.field public static final STORED:I = 0x0

.field private static final ZIPLocalHeaderVersionNeeded:I = 0x14


# instance fields
.field private cDir:Ljava/io/ByteArrayOutputStream;

.field private comment:Ljava/lang/String;

.field private compressLevel:I

.field private compressMethod:I

.field private final crc:Ljava/util/zip/CRC32;

.field private curOffset:I

.field private currentEntry:Ljava/util/zip/ZipEntry;

.field private final entries:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nameBytes:[B

.field private nameLength:I

.field private offset:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .registers 6
    .parameter "p1"

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 105
    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, 0x1

    invoke-direct {v0, v2, v1}, Ljava/util/zip/Deflater;-><init>(IZ)V

    invoke-direct {p0, p1, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;)V

    .line 81
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    .line 83
    const/16 v0, 0x8

    iput v0, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    .line 85
    iput v2, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    .line 87
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    .line 91
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    .line 93
    iput v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iput v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 106
    return-void
.end method

.method private checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 420
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v0, :cond_c

    .line 421
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 423
    :cond_c
    return-void
.end method

.method private writeLong(Ljava/io/OutputStream;J)J
    .registers 6
    .parameter "os"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 385
    const-wide/16 v0, 0xff

    and-long/2addr v0, p2

    long-to-int v0, v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 386
    const/16 v0, 0x8

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 387
    const/16 v0, 0x10

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 388
    const/16 v0, 0x18

    shr-long v0, p2, v0

    long-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 389
    return-wide p2
.end method

.method private writeShort(Ljava/io/OutputStream;I)I
    .registers 4
    .parameter "os"
    .parameter "i"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 393
    and-int/lit16 v0, p2, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 394
    shr-int/lit8 v0, p2, 0x8

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 395
    return p2
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-eqz v0, :cond_14

    .line 119
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->finish()V

    .line 120
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 121
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 122
    const/4 v0, 0x0

    iput-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    .line 124
    :cond_14
    return-void
.end method

.method public closeEntry()V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x14

    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 134
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkClosed()V

    .line 135
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v2, :cond_e

    .line 208
    :goto_d
    return-void

    .line 138
    :cond_e
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-ne v2, v6, :cond_19

    .line 139
    invoke-super {p0}, Ljava/util/zip/DeflaterOutputStream;->finish()V

    .line 143
    :cond_19
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_4b

    .line 144
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v4, v4, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_37

    .line 145
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "CRC mismatch"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 147
    :cond_37
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v4, v4, Ljava/util/zip/CRC32;->tbytes:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4b

    .line 148
    new-instance v2, Ljava/util/zip/ZipException;

    const-string v3, "Size mismatch"

    invoke-direct {v2, v3}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 151
    :cond_4b
    const/16 v2, 0x1e

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 154
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-eqz v2, :cond_94

    .line 155
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/lit8 v2, v2, 0x10

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 156
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v3, 0x8074b50

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 157
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v4}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    iput-wide v4, v3, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 158
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Ljava/util/zip/ZipEntry;->compressedSize:J

    invoke-direct {p0, v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 159
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v4}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v4

    int-to-long v4, v4

    iput-wide v4, v3, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v2, v4, v5}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 163
    :cond_94
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-nez v2, :cond_18b

    move v1, v7

    .line 164
    .local v1, flags:I
    :goto_9d
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v3, 0x2014b50

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 165
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 166
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v8}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 167
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v1}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 168
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v3

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 169
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, v3, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 170
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v3, v3, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 171
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v3

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 172
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    if-ne v2, v6, :cond_18e

    .line 173
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v2, v2

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v5}, Ljava/util/zip/Deflater;->getTotalOut()I

    move-result v5

    int-to-long v5, v5

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 174
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v3}, Ljava/util/zip/Deflater;->getTotalIn()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 179
    :goto_104
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v4, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 180
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_1aa

    .line 181
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v4, v4, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v4, v4

    invoke-direct {p0, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 186
    :goto_127
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getComment()Ljava/lang/String;

    move-result-object v0

    .local v0, c:Ljava/lang/String;
    if-eqz v0, :cond_1b1

    .line 187
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-direct {p0, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 191
    :goto_138
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 192
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 193
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/16 v3, 0x0

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 194
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 195
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 196
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 197
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v2, :cond_169

    .line 198
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v3, v3, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 200
    :cond_169
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    add-int/2addr v2, v3

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    .line 201
    if-eqz v0, :cond_17b

    .line 202
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 204
    :cond_17b
    iput-object v9, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 205
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v2}, Ljava/util/zip/CRC32;->reset()V

    .line 206
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    invoke-virtual {v2}, Ljava/util/zip/Deflater;->reset()V

    .line 207
    iput-boolean v7, p0, Ljava/util/zip/ZipOutputStream;->done:Z

    goto/16 :goto_d

    .end local v0           #c:Ljava/lang/String;
    .end local v1           #flags:I
    :cond_18b
    move v1, v6

    .line 163
    goto/16 :goto_9d

    .line 176
    .restart local v1       #flags:I
    :cond_18e
    iget v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    int-to-long v2, v2

    iget-object v4, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v5, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v5, v5, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v4, v5, v6}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    move-result-wide v4

    add-long/2addr v2, v4

    long-to-int v2, v2

    iput v2, p0, Ljava/util/zip/ZipOutputStream;->curOffset:I

    .line 177
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v3, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    iget-wide v3, v3, Ljava/util/zip/CRC32;->tbytes:J

    invoke-direct {p0, v2, v3, v4}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto/16 :goto_104

    .line 183
    :cond_1aa
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto/16 :goto_127

    .line 189
    .restart local v0       #c:Ljava/lang/String;
    :cond_1b1
    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v2, v7}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_138
.end method

.method public finish()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    if-nez v1, :cond_d

    .line 221
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Stream is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 223
    :cond_d
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    if-nez v1, :cond_12

    .line 250
    :goto_11
    return-void

    .line 226
    :cond_12
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_22

    .line 227
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "No entries"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 229
    :cond_22
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_29

    .line 230
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 232
    :cond_29
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    .line 234
    .local v0, cdirSize:I
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    const-wide/32 v2, 0x6054b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 235
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 236
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 237
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 238
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 239
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    int-to-long v2, v0

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 240
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->offset:I

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 241
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    if-eqz v1, :cond_8e

    .line 242
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 243
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 248
    :goto_7f
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 249
    const/4 v1, 0x0

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    goto :goto_11

    .line 245
    :cond_8e
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->cDir:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0, v1, v4}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_7f
.end method

.method public putNextEntry(Ljava/util/zip/ZipEntry;)V
    .registers 13
    .parameter "ze"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    const-wide/16 v7, 0x0

    const-wide/16 v5, -0x1

    .line 265
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-eqz v1, :cond_d

    .line 266
    invoke-virtual {p0}, Ljava/util/zip/ZipOutputStream;->closeEntry()V

    .line 268
    :cond_d
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-eqz v1, :cond_1d

    iget v1, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    if-nez v1, :cond_5b

    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-ne v1, v9, :cond_5b

    .line 269
    :cond_1d
    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->crc:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_2b

    .line 270
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "CRC mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :cond_2b
    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_3f

    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_3f

    .line 273
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 275
    :cond_3f
    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    iget-wide v3, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v1, v1, v3

    if-eqz v1, :cond_5b

    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5b

    iget-wide v1, p1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v1, v5

    if-eqz v1, :cond_5b

    .line 276
    new-instance v1, Ljava/util/zip/ZipException;

    const-string v2, "Size mismatch"

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 279
    :cond_5b
    invoke-direct {p0}, Ljava/util/zip/ZipOutputStream;->checkClosed()V

    .line 280
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    iget-object v2, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_83

    .line 281
    new-instance v1, Ljava/util/zip/ZipException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry already exists: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 283
    :cond_83
    iget-object v1, p1, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    sget-object v2, Ljava/nio/charset/Charsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    iput-object v1, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    .line 284
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    array-length v1, v1

    iput v1, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    .line 285
    iget v1, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    const v2, 0xffff

    if-le v1, v2, :cond_ba

    .line 286
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Name too long: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " UTF-8 bytes"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 289
    :cond_ba
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->def:Ljava/util/zip/Deflater;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    invoke-virtual {v1, v2}, Ljava/util/zip/Deflater;->setLevel(I)V

    .line 290
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    .line 291
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->entries:Ljava/util/Vector;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 292
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-ne v1, v9, :cond_db

    .line 293
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipEntry;->setMethod(I)V

    .line 298
    :cond_db
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_18b

    move v0, v10

    .line 301
    .local v0, flags:I
    :goto_e4
    or-int/lit16 v0, v0, 0x800

    .line 302
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const-wide/32 v2, 0x4034b50

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 303
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    const/16 v2, 0x14

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 304
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v0}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 305
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v2}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 306
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getTime()J

    move-result-wide v1

    cmp-long v1, v1, v5

    if-nez v1, :cond_118

    .line 307
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/zip/ZipEntry;->setTime(J)V

    .line 309
    :cond_118
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v2, v2, Ljava/util/zip/ZipEntry;->time:I

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 310
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget v2, v2, Ljava/util/zip/ZipEntry;->modDate:I

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 313
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v1

    if-nez v1, :cond_1a1

    .line 314
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->size:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_190

    .line 315
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->compressedSize:J

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->size:J

    .line 319
    :cond_142
    :goto_142
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->crc:J

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 320
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 321
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    invoke-direct {p0, v1, v2, v3}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 327
    :goto_15d
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget v2, p0, Ljava/util/zip/ZipOutputStream;->nameLength:I

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 328
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v1, :cond_1b1

    .line 329
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    array-length v2, v2

    invoke-direct {p0, v1, v2}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    .line 333
    :goto_174
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->nameBytes:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 334
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v1, v1, Ljava/util/zip/ZipEntry;->extra:[B

    if-eqz v1, :cond_18a

    .line 335
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, v2, Ljava/util/zip/ZipEntry;->extra:[B

    invoke-virtual {v1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 337
    :cond_18a
    return-void

    .line 298
    .end local v0           #flags:I
    :cond_18b
    const/16 v1, 0x8

    move v0, v1

    goto/16 :goto_e4

    .line 316
    .restart local v0       #flags:I
    :cond_190
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v1, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    cmp-long v1, v1, v5

    if-nez v1, :cond_142

    .line 317
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-object v2, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    iget-wide v2, v2, Ljava/util/zip/ZipEntry;->size:J

    iput-wide v2, v1, Ljava/util/zip/ZipEntry;->compressedSize:J

    goto :goto_142

    .line 323
    :cond_1a1
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 324
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    .line 325
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v7, v8}, Ljava/util/zip/ZipOutputStream;->writeLong(Ljava/io/OutputStream;J)J

    goto :goto_15d

    .line 331
    :cond_1b1
    iget-object v1, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-direct {p0, v1, v10}, Ljava/util/zip/ZipOutputStream;->writeShort(Ljava/io/OutputStream;I)I

    goto :goto_174
.end method

.method public setComment(Ljava/lang/String;)V
    .registers 5
    .parameter "comment"

    .prologue
    .line 346
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const v1, 0xffff

    if-le v0, v1, :cond_2c

    .line 347
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Comment too long: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " characters"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 349
    :cond_2c
    iput-object p1, p0, Ljava/util/zip/ZipOutputStream;->comment:Ljava/lang/String;

    .line 350
    return-void
.end method

.method public setLevel(I)V
    .registers 3
    .parameter "level"

    .prologue
    .line 362
    const/4 v0, -0x1

    if-lt p1, v0, :cond_7

    const/16 v0, 0x9

    if-le p1, v0, :cond_d

    .line 363
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 365
    :cond_d
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressLevel:I

    .line 366
    return-void
.end method

.method public setMethod(I)V
    .registers 3
    .parameter "method"

    .prologue
    .line 377
    if-eqz p1, :cond_c

    const/16 v0, 0x8

    if-eq p1, v0, :cond_c

    .line 378
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 380
    :cond_c
    iput p1, p0, Ljava/util/zip/ZipOutputStream;->compressMethod:I

    .line 381
    return-void
.end method

.method public write([BII)V
    .registers 6
    .parameter "buffer"
    .parameter "offset"
    .parameter "byteCount"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 406
    array-length v0, p1

    invoke-static {v0, p2, p3}, Ljava/util/Arrays;->checkOffsetAndCount(III)V

    .line 407
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    if-nez v0, :cond_10

    .line 408
    new-instance v0, Ljava/util/zip/ZipException;

    const-string v1, "No active entry"

    invoke-direct {v0, v1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_10
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->currentEntry:Ljava/util/zip/ZipEntry;

    invoke-virtual {v0}, Ljava/util/zip/ZipEntry;->getMethod()I

    move-result v0

    if-nez v0, :cond_23

    .line 412
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 416
    :goto_1d
    iget-object v0, p0, Ljava/util/zip/ZipOutputStream;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/CRC32;->update([BII)V

    .line 417
    return-void

    .line 414
    :cond_23
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/DeflaterOutputStream;->write([BII)V

    goto :goto_1d
.end method
