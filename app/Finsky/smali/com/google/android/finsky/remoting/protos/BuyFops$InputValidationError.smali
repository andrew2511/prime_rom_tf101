.class public final Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "BuyFops.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/BuyFops;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "InputValidationError"
.end annotation


# instance fields
.field private cachedSize:I

.field private errorMessage_:Ljava/lang/String;

.field private hasErrorMessage:Z

.field private hasInputField:Z

.field private inputField_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1286
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 1312
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->inputField_:I

    .line 1329
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 1365
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->cachedSize:I

    .line 1286
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1367
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->cachedSize:I

    if-gez v0, :cond_0

    .line 1369
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->getSerializedSize()I

    .line 1371
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->cachedSize:I

    return v0
.end method

.method public getErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->errorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getInputField()I
    .locals 1

    .prologue
    .line 1314
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->inputField_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1375
    const/4 v0, 0x0

    .line 1376
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasInputField()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1377
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->getInputField()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1380
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1381
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1384
    :cond_1
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->cachedSize:I

    .line 1385
    return v0
.end method

.method public hasErrorMessage()Z
    .locals 1

    .prologue
    .line 1331
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasErrorMessage:Z

    return v0
.end method

.method public hasInputField()Z
    .locals 1

    .prologue
    .line 1313
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasInputField:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1392
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1393
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1397
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1398
    :sswitch_0
    return-object p0

    .line 1403
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->setInputField(I)Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;

    goto :goto_0

    .line 1407
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;

    goto :goto_0

    .line 1393
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
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
    .line 1284
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;

    move-result-object v0

    return-object v0
.end method

.method public setErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 1333
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasErrorMessage:Z

    .line 1334
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->errorMessage_:Ljava/lang/String;

    .line 1335
    return-object p0
.end method

.method public setInputField(I)Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;
    .locals 1
    .parameter "value"

    .prologue
    .line 1316
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasInputField:Z

    .line 1317
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->inputField_:I

    .line 1318
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
    .line 1357
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasInputField()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1358
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->getInputField()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1360
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->hasErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1361
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/BuyFops$InputValidationError;->getErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1363
    :cond_1
    return-void
.end method
