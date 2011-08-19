.class public final Lcom/google/android/finsky/remoting/protos/DebugInfo;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DebugInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    }
.end annotation


# instance fields
.field private cachedSize:I

.field private message_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private timing_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 134
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->message_:Ljava/util/List;

    .line 167
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->timing_:Ljava/util/List;

    .line 222
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->cachedSize:I

    .line 7
    return-void
.end method


# virtual methods
.method public addMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 151
    if-nez p1, :cond_0

    .line 152
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->message_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->message_:Ljava/util/List;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->message_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 158
    return-object p0
.end method

.method public addTiming(Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;)Lcom/google/android/finsky/remoting/protos/DebugInfo;
    .locals 1
    .parameter "value"

    .prologue
    .line 184
    if-nez p1, :cond_0

    .line 185
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->timing_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->timing_:Ljava/util/List;

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->timing_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 224
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->cachedSize:I

    if-gez v0, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->getSerializedSize()I

    .line 228
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->cachedSize:I

    return v0
.end method

.method public getMessageList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->message_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 232
    const/4 v3, 0x0

    .line 234
    .local v3, size:I
    const/4 v0, 0x0

    .line 235
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->getMessageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 236
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 239
    .end local v1           #element:Ljava/lang/String;
    :cond_0
    add-int/2addr v3, v0

    .line 240
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->getMessageList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 242
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->getTimingList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;

    .line 243
    .local v1, element:Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    const/4 v4, 0x2

    invoke-static {v4, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeGroupSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    .line 246
    .end local v1           #element:Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    :cond_1
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->cachedSize:I

    .line 247
    return v3
.end method

.method public getTimingList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DebugInfo;->timing_:Ljava/util/List;

    return-object v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfo;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 254
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 255
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 259
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 260
    :sswitch_0
    return-object p0

    .line 265
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->addMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DebugInfo;

    goto :goto_0

    .line 269
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;-><init>()V

    .line 270
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readGroup(Lcom/google/protobuf/micro/MessageMicro;I)V

    .line 271
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->addTiming(Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;)Lcom/google/android/finsky/remoting/protos/DebugInfo;

    goto :goto_0

    .line 255
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x13 -> :sswitch_2
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
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DebugInfo;

    move-result-object v0

    return-object v0
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
    .line 214
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->getMessageList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 215
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 217
    .end local v0           #element:Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DebugInfo;->getTimingList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;

    .line 218
    .local v0, element:Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeGroup(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_1

    .line 220
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/DebugInfo$Timing;
    :cond_1
    return-void
.end method
