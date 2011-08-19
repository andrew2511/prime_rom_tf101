.class public Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;
.super Lorg/jivesoftware/smack/packet/Packet;
.source "RmqPacket.java"


# instance fields
.field final mData:[B

.field mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

.field final mProtobufTag:B


# direct methods
.method public constructor <init>(JB[B)V
    .locals 1
    .parameter "rmqId"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/jivesoftware/smack/packet/Packet;-><init>()V

    .line 58
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->setRmqId(J)V

    .line 59
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->setRmq2Id(Ljava/lang/String;)V

    .line 61
    iput-byte p3, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    .line 62
    iput-object p4, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    .line 63
    return-void
.end method

.method public constructor <init>(Lorg/jivesoftware/smack/packet/Packet;JB[B)V
    .locals 0
    .parameter "originalPacket"
    .parameter "rmqId"
    .parameter "tag"
    .parameter "data"

    .prologue
    .line 52
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;-><init>(JB[B)V

    .line 53
    iput-object p1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    .line 54
    return-void
.end method

.method private internalToXml()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v9, -0x1

    const/16 v8, 0x20

    .line 112
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 113
    .local v0, buf:Ljava/lang/StringBuffer;
    const-string v6, "<rmqPacket"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getRmqId()J

    move-result-wide v3

    .line 116
    .local v3, rmqId:J
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getRmq2Id()Ljava/lang/String;

    move-result-object v2

    .line 117
    .local v2, rmq2Id:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getLastStreamId()I

    move-result v1

    .line 118
    .local v1, lastStreamId:I
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->getStreamId()I

    move-result v5

    .line 120
    .local v5, streamId:I
    const-wide/16 v6, -0x1

    cmp-long v6, v3, v6

    if-eqz v6, :cond_0

    .line 121
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "stanza-id"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 124
    :cond_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 125
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "persistent_id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    :cond_1
    if-eq v1, v9, :cond_2

    .line 129
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "last_stream_id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    :cond_2
    if-eq v5, v9, :cond_3

    .line 134
    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "stream_id=\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_3
    const-string v6, " />"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method getData()[B
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    return-object v0
.end method

.method public getOriginalPacket()Lorg/jivesoftware/smack/packet/Packet;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    return-object v0
.end method

.method public getProtoBufTag()B
    .locals 1

    .prologue
    .line 66
    iget-byte v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    return v0
.end method

.method public serializeAsProtoBuf(Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;)[B
    .locals 2
    .parameter "serializer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 172
    iget-byte v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    if-nez v1, :cond_0

    .line 173
    iget-object v1, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    .line 181
    :goto_0
    return-object v1

    .line 176
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 177
    .local v0, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    if-nez v0, :cond_1

    .line 178
    const/4 v1, 0x0

    goto :goto_0

    .line 181
    :cond_1
    invoke-interface {p1, v0}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamSerializer;->serialize(Lcom/google/common/io/protocol/ProtoBuf;)[B

    move-result-object v1

    goto :goto_0
.end method

.method public serializeAsXml()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 186
    const/4 v0, 0x0

    return-object v0
.end method

.method public setLastStreamId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 71
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    .line 73
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setLastStreamId(I)V

    .line 76
    :cond_0
    return-void
.end method

.method public setStreamId(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 80
    invoke-super {p0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 82
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0, p1}, Lorg/jivesoftware/smack/packet/Packet;->setStreamId(I)V

    .line 85
    :cond_0
    return-void
.end method

.method public toLogString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->toLogString()Ljava/lang/String;

    move-result-object v0

    .line 108
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->internalToXml()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public toProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 147
    iget-byte v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    if-nez v5, :cond_0

    move-object v5, v8

    .line 164
    :goto_0
    return-object v5

    .line 152
    :cond_0
    new-instance v0, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;

    invoke-direct {v0}, Lcom/google/android/gsf/gtalkservice/proto/MobileProtoBufStreamConfiguration;-><init>()V

    .line 153
    .local v0, config:Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;
    iget-byte v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mProtobufTag:B

    invoke-interface {v0, v5}, Lcom/google/android/gsf/gtalkservice/proto/ProtoBufStreamConfiguration;->getProtoBuf(B)Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v4

    .line 155
    .local v4, type:Lcom/google/common/io/protocol/ProtoBufType;
    new-instance v3, Lcom/google/common/io/protocol/ProtoBuf;

    invoke-direct {v3, v4}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    .line 156
    .local v3, protobuf:Lcom/google/common/io/protocol/ProtoBuf;
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v5, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mData:[B

    array-length v7, v7

    invoke-direct {v1, v5, v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 159
    .local v1, in:Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v3, v1}, Lcom/google/common/io/protocol/ProtoBuf;->parse(Ljava/io/InputStream;)Lcom/google/common/io/protocol/ProtoBuf;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v3

    .line 164
    goto :goto_0

    .line 160
    :catch_0
    move-exception v2

    .local v2, ioe:Ljava/io/IOException;
    move-object v5, v8

    .line 161
    goto :goto_0
.end method

.method public toXML()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->mOriginalPacket:Lorg/jivesoftware/smack/packet/Packet;

    invoke-virtual {v0}, Lorg/jivesoftware/smack/packet/Packet;->toXML()Ljava/lang/String;

    move-result-object v0

    .line 100
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/gtalkservice/rmq/RmqPacket;->internalToXml()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
