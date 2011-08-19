.class abstract Lorg/codehaus/jackson/io/BaseReader;
.super Ljava/io/Reader;
.source "BaseReader.java"


# static fields
.field protected static final LAST_VALID_UNICODE_CHAR:I = 0x10ffff

.field protected static final NULL_BYTE:C

.field protected static final NULL_CHAR:C


# instance fields
.field protected mBuffer:[B

.field protected final mContext:Lorg/codehaus/jackson/io/IOContext;

.field protected mIn:Ljava/io/InputStream;

.field protected mLength:I

.field protected mPtr:I

.field mTmpBuf:[C


# direct methods
.method protected constructor <init>(Lorg/codehaus/jackson/io/IOContext;Ljava/io/InputStream;[BII)V
    .locals 1
    .parameter "context"
    .parameter "in"
    .parameter "buf"
    .parameter "ptr"
    .parameter "len"

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    .line 42
    iput-object p1, p0, Lorg/codehaus/jackson/io/BaseReader;->mContext:Lorg/codehaus/jackson/io/IOContext;

    .line 43
    iput-object p2, p0, Lorg/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;

    .line 44
    iput-object p3, p0, Lorg/codehaus/jackson/io/BaseReader;->mBuffer:[B

    .line 45
    iput p4, p0, Lorg/codehaus/jackson/io/BaseReader;->mPtr:I

    .line 46
    iput p5, p0, Lorg/codehaus/jackson/io/BaseReader;->mLength:I

    .line 47
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;

    .line 60
    .local v0, in:Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 61
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->mIn:Ljava/io/InputStream;

    .line 62
    invoke-virtual {p0}, Lorg/codehaus/jackson/io/BaseReader;->freeBuffers()V

    .line 63
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 65
    :cond_0
    return-void
.end method

.method public final freeBuffers()V
    .locals 2

    .prologue
    .line 99
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mBuffer:[B

    .line 100
    .local v0, buf:[B
    if-eqz v0, :cond_0

    .line 101
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->mBuffer:[B

    .line 102
    iget-object v1, p0, Lorg/codehaus/jackson/io/BaseReader;->mContext:Lorg/codehaus/jackson/io/IOContext;

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/io/IOContext;->releaseReadIOBuffer([B)V

    .line 104
    :cond_0
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 77
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    if-nez v0, :cond_0

    .line 78
    new-array v0, v1, [C

    iput-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    .line 80
    :cond_0
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    invoke-virtual {p0, v0, v2, v1}, Lorg/codehaus/jackson/io/BaseReader;->read([CII)I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 81
    const/4 v0, -0x1

    .line 83
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lorg/codehaus/jackson/io/BaseReader;->mTmpBuf:[C

    aget-char v0, v0, v2

    goto :goto_0
.end method

.method protected reportBounds([CII)V
    .locals 3
    .parameter "cbuf"
    .parameter "start"
    .parameter "len"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 109
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(buf,"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), cbuf["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected reportStrangeStream()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Strange I/O stream, returned 0 bytes on read"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
