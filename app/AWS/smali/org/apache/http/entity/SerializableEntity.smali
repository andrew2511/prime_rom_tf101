.class public Lorg/apache/http/entity/SerializableEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "SerializableEntity.java"


# instance fields
.field private objRef:Ljava/io/Serializable;

.field private objSer:[B


# direct methods
.method public constructor <init>(Ljava/io/Serializable;Z)V
    .locals 2
    .parameter "ser"
    .parameter "bufferize"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    .line 69
    if-nez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source object may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    if-eqz p2, :cond_1

    .line 74
    invoke-direct {p0, p1}, Lorg/apache/http/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    .line 78
    :goto_0
    return-void

    .line 76
    :cond_1
    iput-object p1, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    goto :goto_0
.end method

.method private createBytes(Ljava/io/Serializable;)V
    .locals 3
    .parameter "ser"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 82
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 83
    .local v1, out:Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->flush()V

    .line 85
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    iput-object v2, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    .line 86
    return-void
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 89
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-direct {p0, v0}, Lorg/apache/http/entity/SerializableEntity;->createBytes(Ljava/io/Serializable;)V

    .line 92
    :cond_0
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 96
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_0

    .line 97
    const-wide/16 v0, -0x1

    .line 99
    :goto_0
    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    array-length v0, v0

    int-to-long v0, v0

    goto :goto_0
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .parameter "outstream"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 112
    if-nez p1, :cond_0

    .line 113
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Output stream may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 116
    :cond_0
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    if-nez v1, :cond_1

    .line 117
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 118
    .local v0, out:Ljava/io/ObjectOutputStream;
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objRef:Ljava/io/Serializable;

    invoke-virtual {v0, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 119
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->flush()V

    .line 124
    .end local v0           #out:Ljava/io/ObjectOutputStream;
    :goto_0
    return-void

    .line 121
    :cond_1
    iget-object v1, p0, Lorg/apache/http/entity/SerializableEntity;->objSer:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 122
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_0
.end method
