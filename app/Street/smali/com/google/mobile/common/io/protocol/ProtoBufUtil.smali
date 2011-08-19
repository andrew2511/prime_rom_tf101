.class public final Lcom/google/mobile/common/io/protocol/ProtoBufUtil;
.super Ljava/lang/Object;


# static fields
.field public static isGzipResponseSeen:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProtoBuf(Lcom/google/mobile/common/io/protocol/ProtoBuf;I)Lcom/google/mobile/common/io/protocol/ProtoBuf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->addProtoBuf(ILcom/google/mobile/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static createProtoBuf(Lcom/google/mobile/common/io/protocol/ProtoBuf;I)Lcom/google/mobile/common/io/protocol/ProtoBuf;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->createGroup(I)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->setProtoBuf(ILcom/google/mobile/common/io/protocol/ProtoBuf;)V

    return-object v0
.end method

.method public static getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    new-instance v1, Lcom/google/mobile/common/io/BoundInputStream;

    check-cast p0, Ljava/io/InputStream;

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-direct {v1, p0, v2}, Lcom/google/mobile/common/io/BoundInputStream;-><init>(Ljava/io/InputStream;I)V

    if-gez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->isGzipResponseSeen:Z

    invoke-static {v1}, Lcom/google/mobile/common/io/Gunzipper;->gunzip(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method public static readProtoBufResponse(Lcom/google/mobile/common/io/protocol/ProtoBufType;Ljava/io/DataInput;)Lcom/google/mobile/common/io/protocol/ProtoBuf;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/google/mobile/common/io/protocol/ProtoBuf;

    invoke-direct {v0, p0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;-><init>(Lcom/google/mobile/common/io/protocol/ProtoBufType;)V

    invoke-static {p1}, Lcom/google/mobile/common/io/protocol/ProtoBufUtil;->getInputStreamForProtoBufResponse(Ljava/io/DataInput;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/mobile/common/io/protocol/ProtoBuf;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    return-object v0
.end method

.method public static writeProtoBufToOutput(Ljava/io/DataOutput;Lcom/google/mobile/common/io/protocol/ProtoBuf;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/mobile/common/io/protocol/ProtoBuf;->outputTo(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v1, v0

    invoke-interface {p0, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-interface {p0, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method
