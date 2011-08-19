.class public final Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "DeviceDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/DeviceDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCredit"
.end annotation


# instance fields
.field private cachedSize:I

.field private creditType_:I

.field private credit_:Ljava/lang/String;

.field private hasCredit:Z

.field private hasCreditType:Z

.field private name_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 2158
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 2169
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->creditType_:I

    .line 2186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->credit_:Ljava/lang/String;

    .line 2202
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->name_:Ljava/util/List;

    .line 2260
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->cachedSize:I

    .line 2158
    return-void
.end method


# virtual methods
.method public addName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    .locals 1
    .parameter "value"

    .prologue
    .line 2219
    if-nez p1, :cond_0

    .line 2220
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 2222
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->name_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->name_:Ljava/util/List;

    .line 2225
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->name_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2226
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 2262
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->cachedSize:I

    if-gez v0, :cond_0

    .line 2264
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getSerializedSize()I

    .line 2266
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->cachedSize:I

    return v0
.end method

.method public getCredit()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2187
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->credit_:Ljava/lang/String;

    return-object v0
.end method

.method public getCreditType()I
    .locals 1

    .prologue
    .line 2171
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->creditType_:I

    return v0
.end method

.method public getNameList()Ljava/util/List;
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
    .line 2205
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->name_:Ljava/util/List;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 2270
    const/4 v3, 0x0

    .line 2271
    .local v3, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCreditType()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2272
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getCreditType()I

    move-result v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v4

    add-int/2addr v3, v4

    .line 2275
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCredit()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2276
    const/4 v4, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getCredit()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    .line 2280
    :cond_1
    const/4 v0, 0x0

    .line 2281
    .local v0, dataSize:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2282
    .local v1, element:Ljava/lang/String;
    invoke-static {v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_0

    .line 2285
    .end local v1           #element:Ljava/lang/String;
    :cond_2
    add-int/2addr v3, v0

    .line 2286
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    .line 2288
    iput v3, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->cachedSize:I

    .line 2289
    return v3
.end method

.method public hasCredit()Z
    .locals 1

    .prologue
    .line 2188
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCredit:Z

    return v0
.end method

.method public hasCreditType()Z
    .locals 1

    .prologue
    .line 2170
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCreditType:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2296
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 2297
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 2301
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2302
    :sswitch_0
    return-object p0

    .line 2307
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->setCreditType(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    goto :goto_0

    .line 2311
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->setCredit(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    goto :goto_0

    .line 2315
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->addName(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    goto :goto_0

    .line 2297
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 2156
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;

    move-result-object v0

    return-object v0
.end method

.method public setCredit(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    .locals 1
    .parameter "value"

    .prologue
    .line 2190
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCredit:Z

    .line 2191
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->credit_:Ljava/lang/String;

    .line 2192
    return-object p0
.end method

.method public setCreditType(I)Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;
    .locals 1
    .parameter "value"

    .prologue
    .line 2173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCreditType:Z

    .line 2174
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->creditType_:I

    .line 2175
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/micro/CodedOutputStreamMicro;)V
    .locals 4
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2249
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCreditType()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2250
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getCreditType()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 2252
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->hasCredit()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2253
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getCredit()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 2255
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/DeviceDoc$VideoCredit;->getNameList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2256
    .local v0, element:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    goto :goto_0

    .line 2258
    .end local v0           #element:Ljava/lang/String;
    :cond_2
    return-void
.end method
