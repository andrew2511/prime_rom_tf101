.class public final Lcom/google/android/finsky/remoting/protos/DetailsResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DetailsResponse.java"


# instance fields
.field private analyticsCookie_:Ljava/lang/String;

.field private cachedSize:I

.field private doc_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

.field private hasAnalyticsCookie:Z

.field private hasDoc:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->doc_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public getAnalyticsCookie()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getSerializedSize()I

    .line 76
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->cachedSize:I

    return v0
.end method

.method public getDoc()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->doc_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasDoc()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getDoc()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasAnalyticsCookie()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->cachedSize:I

    .line 90
    return v0
.end method

.method public hasAnalyticsCookie()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasAnalyticsCookie:Z

    return v0
.end method

.method public hasDoc()Z
    .locals 1

    .prologue
    .line 13
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasDoc:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DetailsResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 98
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 103
    :sswitch_0
    return-object p0

    .line 108
    :sswitch_1
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;-><init>()V

    .line 109
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 110
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->setDoc(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;)Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    goto :goto_0

    .line 114
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DetailsResponse;

    move-result-object v0

    return-object v0
.end method

.method public setAnalyticsCookie(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DetailsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 36
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasAnalyticsCookie:Z

    .line 37
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->analyticsCookie_:Ljava/lang/String;

    .line 38
    return-object p0
.end method

.method public setDoc(Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;)Lcom/google/android/finsky/remoting/protos/DetailsResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 16
    if-nez p1, :cond_0

    .line 17
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 19
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasDoc:Z

    .line 20
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->doc_:Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    .line 21
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
    .line 62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasDoc()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getDoc()Lcom/google/android/finsky/remoting/protos/DeviceDoc$DeviceDocument;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->hasAnalyticsCookie()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DetailsResponse;->getAnalyticsCookie()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 68
    :cond_1
    return-void
.end method
