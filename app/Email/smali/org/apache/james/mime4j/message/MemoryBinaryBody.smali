.class Lorg/apache/james/mime4j/message/MemoryBinaryBody;
.super Lorg/apache/james/mime4j/message/AbstractBody;
.source "MemoryBinaryBody.java"

# interfaces
.implements Lorg/apache/james/mime4j/message/BinaryBody;


# static fields
.field private static log:Lorg/apache/james/mime4j/Log;


# instance fields
.field private parent:Lorg/apache/james/mime4j/message/Entity;

.field private tempFile:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;

    invoke-static {v0}, Lorg/apache/james/mime4j/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/james/mime4j/Log;

    move-result-object v0

    sput-object v0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;->log:Lorg/apache/james/mime4j/Log;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 55
    invoke-direct {p0}, Lorg/apache/james/mime4j/message/AbstractBody;-><init>()V

    .line 46
    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 47
    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    .line 57
    invoke-static {}, Lorg/apache/james/mime4j/util/TempStorage;->getInstance()Lorg/apache/james/mime4j/util/TempStorage;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/james/mime4j/util/TempStorage;->getRootTempPath()Lorg/apache/james/mime4j/util/TempPath;

    move-result-object v1

    .line 59
    .local v1, tempPath:Lorg/apache/james/mime4j/util/TempPath;
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 60
    .local v0, out:Ljava/io/ByteArrayOutputStream;
    invoke-static {p1, v0}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 61
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 62
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    .line 63
    return-void
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;->tempFile:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public setParent(Lorg/apache/james/mime4j/message/Entity;)V
    .locals 0
    .parameter "parent"

    .prologue
    .line 76
    iput-object p1, p0, Lorg/apache/james/mime4j/message/MemoryBinaryBody;->parent:Lorg/apache/james/mime4j/message/Entity;

    .line 77
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "out"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-virtual {p0}, Lorg/apache/james/mime4j/message/MemoryBinaryBody;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 91
    return-void
.end method
