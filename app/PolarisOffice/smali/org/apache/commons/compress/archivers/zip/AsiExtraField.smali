.class public Lorg/apache/commons/compress/archivers/zip/AsiExtraField;
.super Ljava/lang/Object;
.source "AsiExtraField.java"

# interfaces
.implements Lorg/apache/commons/compress/archivers/zip/ZipExtraField;
.implements Lorg/apache/commons/compress/archivers/zip/UnixStat;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort; = null

.field private static final WORD:I = 0x4


# instance fields
.field private crc:Ljava/util/zip/CRC32;

.field private dirFlag:Z

.field private gid:I

.field private link:Ljava/lang/String;

.field private mode:I

.field private uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    const/16 v1, 0x756e

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    sput-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 64
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    .line 68
    iput v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 78
    iput-boolean v1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    .line 83
    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    .line 87
    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 322
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;

    .line 323
    .local v0, cloned:Lorg/apache/commons/compress/archivers/zip/AsiExtraField;
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    iput-object v2, v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    return-object v0

    .line 325
    .end local v0           #cloned:Lorg/apache/commons/compress/archivers/zip/AsiExtraField;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 327
    .local v1, cnfe:Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public getCentralDirectoryData()[B
    .locals 1

    .prologue
    .line 158
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataData()[B

    move-result-object v0

    return-object v0
.end method

.method public getCentralDirectoryLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .prologue
    .line 117
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v0

    return-object v0
.end method

.method public getGroupId()I
    .locals 1

    .prologue
    .line 190
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    return v0
.end method

.method public getHeaderId()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->HEADER_ID:Lorg/apache/commons/compress/archivers/zip/ZipShort;

    return-object v0
.end method

.method public getLinkedFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    iget-object v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalFileDataData()[B
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/4 v7, 0x0

    .line 127
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue()I

    move-result v5

    sub-int/2addr v5, v9

    new-array v2, v5, [B

    .line 128
    .local v2, data:[B
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode()I

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    invoke-static {v5, v7, v2, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 130
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 132
    .local v3, linkArray:[B
    array-length v5, v3

    int-to-long v5, v5

    invoke-static {v5, v6}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v7, v2, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getUserId()I

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    const/4 v6, 0x6

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 137
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getGroupId()I

    move-result v5

    invoke-static {v5}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getBytes(I)[B

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v5, v7, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 140
    const/16 v5, 0xa

    array-length v6, v3

    invoke-static {v3, v7, v2, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 143
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->reset()V

    .line 144
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5, v2}, Ljava/util/zip/CRC32;->update([B)V

    .line 145
    iget-object v5, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v5}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    .line 147
    .local v0, checksum:J
    array-length v5, v2

    add-int/lit8 v5, v5, 0x4

    new-array v4, v5, [B

    .line 148
    .local v4, result:[B
    invoke-static {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getBytes(J)[B

    move-result-object v5

    invoke-static {v5, v7, v4, v7, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 149
    array-length v5, v2

    invoke-static {v2, v7, v4, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 150
    return-object v4
.end method

.method public getLocalFileDataLength()Lorg/apache/commons/compress/archivers/zip/ZipShort;
    .locals 2

    .prologue
    .line 103
    new-instance v0, Lorg/apache/commons/compress/archivers/zip/ZipShort;

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xe

    invoke-direct {v0, v1}, Lorg/apache/commons/compress/archivers/zip/ZipShort;-><init>(I)V

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    return v0
.end method

.method protected getMode(I)I
    .locals 2
    .parameter "mode"

    .prologue
    .line 311
    const v0, 0x8000

    .line 312
    .local v0, type:I
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    const v0, 0xa000

    .line 317
    :cond_0
    :goto_0
    and-int/lit16 v1, p1, 0xfff

    or-int/2addr v1, v0

    return v1

    .line 314
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 315
    const/16 v0, 0x4000

    goto :goto_0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 174
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    return v0
.end method

.method public isDirectory()Z
    .locals 1

    .prologue
    .line 252
    iget-boolean v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->isLink()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLink()Z
    .locals 1

    .prologue
    .line 219
    invoke-virtual {p0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getLinkedFile()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parseFromCentralDirectoryData([BII)V
    .locals 0
    .parameter "buffer"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    .line 302
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->parseFromLocalFileData([BII)V

    .line 303
    return-void
.end method

.method public parseFromLocalFileData([BII)V
    .locals 10
    .parameter "data"
    .parameter "offset"
    .parameter "length"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/zip/ZipException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x4

    const/4 v9, 0x0

    .line 265
    invoke-static {p1, p2}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v0

    .line 266
    .local v0, givenChecksum:J
    sub-int v7, p3, v8

    new-array v6, v7, [B

    .line 267
    .local v6, tmp:[B
    add-int/lit8 v7, p2, 0x4

    sub-int v8, p3, v8

    invoke-static {p1, v7, v6, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 268
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->reset()V

    .line 269
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7, v6}, Ljava/util/zip/CRC32;->update([B)V

    .line 270
    iget-object v7, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->crc:Ljava/util/zip/CRC32;

    invoke-virtual {v7}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    .line 271
    .local v4, realChecksum:J
    cmp-long v7, v0, v4

    if-eqz v7, :cond_0

    .line 272
    new-instance v7, Ljava/util/zip/ZipException;

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v9, "bad CRC checksum "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, " instead of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 278
    :cond_0
    invoke-static {v6, v9}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v3

    .line 280
    .local v3, newMode:I
    const/4 v7, 0x2

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipLong;->getValue([BI)J

    move-result-wide v7

    long-to-int v7, v7

    new-array v2, v7, [B

    .line 281
    .local v2, linkArray:[B
    const/4 v7, 0x6

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    .line 282
    const/16 v7, 0x8

    invoke-static {v6, v7}, Lorg/apache/commons/compress/archivers/zip/ZipShort;->getValue([BI)I

    move-result v7

    iput v7, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    .line 284
    array-length v7, v2

    if-nez v7, :cond_1

    .line 285
    const-string v7, ""

    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 291
    :goto_0
    and-int/lit16 v7, v3, 0x4000

    if-eqz v7, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {p0, v7}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setDirectory(Z)V

    .line 292
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->setMode(I)V

    .line 293
    return-void

    .line 287
    :cond_1
    const/16 v7, 0xa

    array-length v8, v2

    invoke-static {v6, v7, v2, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 288
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v7, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move v7, v9

    .line 291
    goto :goto_1
.end method

.method public setDirectory(Z)V
    .locals 1
    .parameter "dirFlag"

    .prologue
    .line 243
    iput-boolean p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->dirFlag:Z

    .line 244
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 245
    return-void
.end method

.method public setGroupId(I)V
    .locals 0
    .parameter "gid"

    .prologue
    .line 182
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->gid:I

    .line 183
    return-void
.end method

.method public setLinkedFile(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 200
    iput-object p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->link:Ljava/lang/String;

    .line 201
    iget v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 202
    return-void
.end method

.method public setMode(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 227
    invoke-virtual {p0, p1}, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->getMode(I)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->mode:I

    .line 228
    return-void
.end method

.method public setUserId(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 166
    iput p1, p0, Lorg/apache/commons/compress/archivers/zip/AsiExtraField;->uid:I

    .line 167
    return-void
.end method
