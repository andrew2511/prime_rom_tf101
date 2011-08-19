.class public Lcom/amazon/system/io/internal/InputStreamReadPDB;
.super Ljava/lang/Object;
.source "InputStreamReadPDB.java"

# interfaces
.implements Lcom/mobipocket/common/filesystem/ReadPDB;


# static fields
.field private static final FIXED_HEADER_SIZE:I = 0x4e

.field private static final PER_RECORD_HEADER_SIZE:I = 0x8


# instance fields
.field private fileInputStream:Lcom/amazon/system/io/IFileInputStream;

.field private final header:[B

.field private final recordCount:I

.field private final totalSize:I


# direct methods
.method public constructor <init>(Lcom/amazon/system/io/IFileInputStream;)V
    .locals 6
    .parameter "finiteInputStream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/16 v4, 0x4e

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid inputStream"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 65
    :cond_0
    iget-object v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    invoke-virtual {v2}, Lcom/amazon/system/io/IFileInputStream;->size()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->totalSize:I

    .line 68
    new-array v1, v4, [B

    .line 69
    .local v1, short_header:[B
    iget-object v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    invoke-virtual {v2, v1}, Lcom/amazon/system/io/IFileInputStream;->read([B)I

    move-result v2

    if-eq v2, v4, :cond_1

    .line 71
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid PDB: unexpected end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 75
    :cond_1
    invoke-static {v1}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getRecordCount([B)I

    move-result v2

    iput v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->recordCount:I

    .line 76
    iget v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->recordCount:I

    mul-int/lit8 v0, v2, 0x8

    .line 80
    .local v0, recordDescriptorSize:I
    add-int/lit8 v2, v0, 0x4e

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    .line 81
    iget-object v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    invoke-static {v1, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    iget-object v2, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    iget-object v3, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    invoke-virtual {v2, v3, v4, v0}, Lcom/amazon/system/io/IFileInputStream;->read([BII)I

    move-result v2

    if-eq v2, v0, :cond_2

    .line 86
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid PDB: unexpected end of file"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    invoke-virtual {v0}, Lcom/amazon/system/io/IFileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    .line 109
    return-void

    .line 103
    :catch_0
    move-exception v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "close error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public fileSize()I
    .locals 1

    .prologue
    .line 192
    iget v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->totalSize:I

    return v0
.end method

.method public getHeader()[B
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    return-object v0
.end method

.method public getLastModificationDate()I
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    invoke-static {v0}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getLastModificationDate([B)I

    move-result v0

    return v0
.end method

.method public getRecord(I)[B
    .locals 1
    .parameter "index"

    .prologue
    const/4 v0, 0x0

    .line 132
    invoke-virtual {p0, p1, v0, v0}, Lcom/amazon/system/io/internal/InputStreamReadPDB;->getRecord(I[B[I)[B

    move-result-object v0

    return-object v0
.end method

.method public getRecord(I[B[I)[B
    .locals 8
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 143
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    invoke-static {v0, p1}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getOffset([BI)I

    move-result v0

    .line 144
    iget v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->recordCount:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->header:[B

    add-int/lit8 v2, p1, 0x1

    invoke-static {v1, v2}, Lcom/mobipocket/common/filesystem/PDBUtilities;->getOffset([BI)I

    move-result v1

    .line 149
    :goto_0
    if-ge v1, v0, :cond_2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Wrong offset for record "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v0, v6

    move-object v1, v7

    .line 174
    :goto_1
    if-eqz p3, :cond_0

    array-length v2, p3

    if-lez v2, :cond_0

    .line 176
    aput v0, p3, v6

    .line 178
    :cond_0
    return-object v1

    .line 144
    :cond_1
    iget v1, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->totalSize:I

    goto :goto_0

    .line 155
    :cond_2
    sub-int/2addr v1, v0

    .line 159
    if-eqz p2, :cond_3

    :try_start_0
    array-length v2, p2

    if-ge v2, v1, :cond_4

    .line 161
    :cond_3
    new-array v2, v1, [B

    .line 164
    :goto_2
    iget-object v3, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Lcom/amazon/system/io/IFileInputStream;->resetAndSkip(J)V

    .line 165
    iget-object v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->fileInputStream:Lcom/amazon/system/io/IFileInputStream;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Lcom/amazon/system/io/IFileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    move-object v1, v2

    .line 171
    goto :goto_1

    .line 169
    :catch_0
    move-exception v0

    move v0, v1

    move-object v1, v7

    goto :goto_1

    :cond_4
    move-object v2, p2

    goto :goto_2
.end method

.method public getRecordCount()I
    .locals 1

    .prologue
    .line 185
    iget v0, p0, Lcom/amazon/system/io/internal/InputStreamReadPDB;->recordCount:I

    return v0
.end method
