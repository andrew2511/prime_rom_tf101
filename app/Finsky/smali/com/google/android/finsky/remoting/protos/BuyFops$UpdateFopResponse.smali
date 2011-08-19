.class public final Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyFops.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyFops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateFopResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorInputField_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;",
            ">;"
        }
    .end annotation
.end field

.field private hasInstrumentId:Z

.field private hasResult:Z

.field private hasUserMessageHtml:Z

.field private instrumentId_:Ljava/lang/String;

.field private result_:I

.field private userMessageHtml_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 147
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->result_:I

    .line 164
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->instrumentId_:Ljava/lang/String;

    .line 181
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->userMessageHtml_:Ljava/lang/String;

    .line 197
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->errorInputField_:Ljava/util/List;

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->cachedSize:I

    .line 137
    return-void
.end method


# virtual methods
.method public addErrorInputField(Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 214
    if-nez p1, :cond_0

    .line 215
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->errorInputField_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 218
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->errorInputField_:Ljava/util/List;

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->errorInputField_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-object p0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 263
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getSerializedSize()I

    .line 267
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->cachedSize:I

    return v0
.end method

.method public getErrorInputFieldList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;",
            ">;"
        }
    .end annotation

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->errorInputField_:Ljava/util/List;

    return-object v0
.end method

.method public getInstrumentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->instrumentId_:Ljava/lang/String;

    return-object v0
.end method

.method public getResult()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->result_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 271
    const/4 v2, 0x0

    .line 272
    .local v2, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasResult()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getResult()I

    move-result v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasInstrumentId()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 277
    const/4 v3, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getInstrumentId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 280
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasUserMessageHtml()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 281
    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 284
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;

    .line 285
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    const/4 v3, 0x4

    invoke-static {v3, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 288
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    :cond_3
    iput v2, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->cachedSize:I

    .line 289
    return v2
.end method

.method public getUserMessageHtml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->userMessageHtml_:Ljava/lang/String;

    return-object v0
.end method

.method public hasInstrumentId()Z
    .locals 1

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasInstrumentId:Z

    return v0
.end method

.method public hasResult()Z
    .locals 1

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasResult:Z

    return v0
.end method

.method public hasUserMessageHtml()Z
    .locals 1

    .prologue
    .line 183
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasUserMessageHtml:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 296
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 297
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 301
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 302
    :sswitch_0
    return-object p0

    .line 307
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->setResult(I)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    goto :goto_0

    .line 311
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    goto :goto_0

    .line 315
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    goto :goto_0

    .line 319
    :sswitch_4
    new-instance v1, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;-><init>()V

    .line 320
    .local v1, value:Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 321
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->addErrorInputField(Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    goto :goto_0

    .line 297
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
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
    .line 135
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;

    move-result-object v0

    return-object v0
.end method

.method public setInstrumentId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasInstrumentId:Z

    .line 169
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->instrumentId_:Ljava/lang/String;

    .line 170
    return-object p0
.end method

.method public setResult(I)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasResult:Z

    .line 152
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->result_:I

    .line 153
    return-object p0
.end method

.method public setUserMessageHtml(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasUserMessageHtml:Z

    .line 186
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->userMessageHtml_:Ljava/lang/String;

    .line 187
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
    .line 247
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasResult()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 248
    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getResult()I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 250
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasInstrumentId()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 251
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getInstrumentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 253
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->hasUserMessageHtml()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 254
    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getUserMessageHtml()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 256
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$UpdateFopResponse;->getErrorInputFieldList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;

    .line 257
    .local v0, element:Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    goto :goto_0

    .line 259
    .end local v0           #element:Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    :cond_3
    return-void
.end method
