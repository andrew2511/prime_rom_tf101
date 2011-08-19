.class public final Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/MusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Artist"
.end annotation


# instance fields
.field private cachedSize:I

.field private description_:Ljava/lang/String;

.field private hasDescription:Z

.field private hasId:Z

.field private hasName:Z

.field private id_:Ljava/lang/String;

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1154
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1162
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->id_:Ljava/lang/String;

    .line 1179
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->name_:Ljava/lang/String;

    .line 1196
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->description_:Ljava/lang/String;

    .line 1237
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->cachedSize:I

    .line 1154
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1239
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->cachedSize:I

    if-gez v0, :cond_0

    .line 1241
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->getSerializedSize()I

    .line 1243
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->cachedSize:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1197
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->id_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasId()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1249
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasName()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1253
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1256
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasDescription()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1257
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->cachedSize:I

    .line 1261
    return v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 1198
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasDescription:Z

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 1164
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasId:Z

    return v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 1181
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasName:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1268
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1269
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1273
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1274
    :sswitch_0
    return-object p0

    .line 1279
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    goto :goto_0

    .line 1283
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    goto :goto_0

    .line 1287
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    goto :goto_0

    .line 1269
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/protobuf/micro/MessageMicro;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1152
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    .locals 1
    .parameter "value"

    .prologue
    .line 1200
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasDescription:Z

    .line 1201
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->description_:Ljava/lang/String;

    .line 1202
    return-object p0
.end method

.method public setId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    .locals 1
    .parameter "value"

    .prologue
    .line 1166
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasId:Z

    .line 1167
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->id_:Ljava/lang/String;

    .line 1168
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;
    .locals 1
    .parameter "value"

    .prologue
    .line 1183
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasName:Z

    .line 1184
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->name_:Ljava/lang/String;

    .line 1185
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1226
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasId()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1229
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasName()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1230
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1232
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->hasDescription()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1233
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Artist;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1235
    :cond_2
    return-void
.end method
