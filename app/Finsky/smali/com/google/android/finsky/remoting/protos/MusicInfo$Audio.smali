.class public final Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "MusicInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/MusicInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Audio"
.end annotation


# instance fields
.field private audioType_:I

.field private cachedSize:I

.field private durationMsec_:I

.field private hasAudioType:Z

.field private hasDurationMsec:Z

.field private hasUrl:Z

.field private url_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 19
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->audioType_:I

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->url_:Ljava/lang/String;

    .line 53
    iput v1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->durationMsec_:I

    .line 93
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->cachedSize:I

    .line 9
    return-void
.end method


# virtual methods
.method public getAudioType()I
    .locals 1

    .prologue
    .line 21
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->audioType_:I

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->cachedSize:I

    if-gez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->getSerializedSize()I

    .line 99
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->cachedSize:I

    return v0
.end method

.method public getDurationMsec()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->durationMsec_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasAudioType()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 105
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->getAudioType()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 108
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasUrl()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 109
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 112
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasDurationMsec()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 113
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->getDurationMsec()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 116
    :cond_2
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->cachedSize:I

    .line 117
    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->url_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAudioType()Z
    .locals 1

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasAudioType:Z

    return v0
.end method

.method public hasDurationMsec()Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasDurationMsec:Z

    return v0
.end method

.method public hasUrl()Z
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasUrl:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 125
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 129
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 130
    :sswitch_0
    return-object p0

    .line 135
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->setAudioType(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;

    goto :goto_0

    .line 139
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;

    goto :goto_0

    .line 143
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->setDurationMsec(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;

    goto :goto_0

    .line 125
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 7
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;

    move-result-object v0

    return-object v0
.end method

.method public setAudioType(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    .locals 1
    .parameter "value"

    .prologue
    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasAudioType:Z

    .line 24
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->audioType_:I

    .line 25
    return-object p0
.end method

.method public setDurationMsec(I)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    .locals 1
    .parameter "value"

    .prologue
    .line 57
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasDurationMsec:Z

    .line 58
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->durationMsec_:I

    .line 59
    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;
    .locals 1
    .parameter "value"

    .prologue
    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasUrl:Z

    .line 41
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->url_:Ljava/lang/String;

    .line 42
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
    .line 82
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasAudioType()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->getAudioType()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasUrl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->hasDurationMsec()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 89
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/MusicInfo$Audio;->getDurationMsec()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 91
    :cond_2
    return-void
.end method
