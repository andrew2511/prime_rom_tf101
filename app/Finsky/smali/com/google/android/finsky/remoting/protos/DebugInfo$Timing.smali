.class public final Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DebugInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Timing"
.end annotation


# instance fields
.field private cachedSize:I

.field private hasName:Z

.field private hasTimeInMs:Z

.field private name_:Ljava/lang/String;

.field private timeInMs_:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->name_:Ljava/lang/String;

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->timeInMs_:D

    .line 70
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->cachedSize:I

    .line 11
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->cachedSize:I

    if-gez v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->getSerializedSize()I

    .line 76
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->cachedSize:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasName()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasTimeInMs()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->getTimeInMs()D

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->cachedSize:I

    .line 90
    return v0
.end method

.method public getTimeInMs()D
    .locals 2

    .prologue
    .line 34
    iget-wide v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->timeInMs_:D

    return-wide v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasName:Z

    return v0
.end method

.method public hasTimeInMs()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasTimeInMs:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
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
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 103
    :sswitch_0
    return-object p0

    .line 108
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;

    goto :goto_0

    .line 112
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readDouble()D

    move-result-wide v1

    invoke-virtual {p0, v1, v2}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->setTimeInMs(D)Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;

    goto :goto_0

    .line 98
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1a -> :sswitch_1
        0x21 -> :sswitch_2
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
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;

    move-result-object v0

    return-object v0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    .locals 1
    .parameter "value"

    .prologue
    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasName:Z

    .line 21
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->name_:Ljava/lang/String;

    .line 22
    return-object p0
.end method

.method public setTimeInMs(D)Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    .locals 1
    .parameter "value"

    .prologue
    .line 37
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasTimeInMs:Z

    .line 38
    iput-wide p1, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->timeInMs_:D

    .line 39
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 3
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasName()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->hasTimeInMs()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;->getTimeInMs()D

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeDouble(ID)V

    .line 68
    :cond_1
    return-void
.end method
