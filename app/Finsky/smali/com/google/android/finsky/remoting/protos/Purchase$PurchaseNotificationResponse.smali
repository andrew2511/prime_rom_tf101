.class public final Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Purchase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Purchase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseNotificationResponse"
.end annotation


# instance fields
.field private cachedSize:I

.field private debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

.field private hasDebugInfo:Z

.field private hasLocalizedErrorMessage:Z

.field private hasPurchaseId:Z

.field private hasStatus:Z

.field private localizedErrorMessage_:Ljava/lang/String;

.field private purchaseId_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 913
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 923
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->status_:I

    .line 940
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    .line 957
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    .line 974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

    .line 1023
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->cachedSize:I

    .line 913
    return-void
.end method


# virtual methods
.method public getCachedSize()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 1027
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getSerializedSize()I

    .line 1029
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->cachedSize:I

    return v0
.end method

.method public getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfo;
    .locals 1

    .prologue
    .line 976
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

    return-object v0
.end method

.method public getLocalizedErrorMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 958
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getPurchaseId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 941
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1035
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1038
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasDebugInfo()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1039
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfo;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeMessageSize(ILcom/google/protobuf/micro/MessageMicro;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1042
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasLocalizedErrorMessage()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1043
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getLocalizedErrorMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1046
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasPurchaseId()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1047
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getPurchaseId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1050
    :cond_3
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->cachedSize:I

    .line 1051
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 925
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->status_:I

    return v0
.end method

.method public hasDebugInfo()Z
    .locals 1

    .prologue
    .line 975
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasDebugInfo:Z

    return v0
.end method

.method public hasLocalizedErrorMessage()Z
    .locals 1

    .prologue
    .line 959
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasLocalizedErrorMessage:Z

    return v0
.end method

.method public hasPurchaseId()Z
    .locals 1

    .prologue
    .line 942
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasPurchaseId:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 924
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasStatus:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    .locals 3
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1059
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1063
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1064
    :sswitch_0
    return-object p0

    .line 1069
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    goto :goto_0

    .line 1073
    :sswitch_2
    new-instance v1, Lcom/google/android/finsky/remoting/protos/DebugInfo;

    invoke-direct {v1}, Lcom/google/android/finsky/remoting/protos/DebugInfo;-><init>()V

    .line 1074
    .local v1, value:Lcom/google/android/finsky/remoting/protos/DebugInfo;
    invoke-virtual {p1, v1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readMessage(Lcom/google/protobuf/micro/MessageMicro;)V

    .line 1075
    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->setDebugInfo(Lcom/google/android/finsky/remoting/protos/DebugInfo;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    goto :goto_0

    .line 1079
    .end local v1           #value:Lcom/google/android/finsky/remoting/protos/DebugInfo;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->setLocalizedErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    goto :goto_0

    .line 1083
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->setPurchaseId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    goto :goto_0

    .line 1059
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
    .line 911
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;

    move-result-object v0

    return-object v0
.end method

.method public setDebugInfo(Lcom/google/android/finsky/remoting/protos/DebugInfo;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 978
    if-nez p1, :cond_0

    .line 979
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 981
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasDebugInfo:Z

    .line 982
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->debugInfo_:Lcom/google/android/finsky/remoting/protos/DebugInfo;

    .line 983
    return-object p0
.end method

.method public setLocalizedErrorMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 961
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasLocalizedErrorMessage:Z

    .line 962
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->localizedErrorMessage_:Ljava/lang/String;

    .line 963
    return-object p0
.end method

.method public setPurchaseId(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 944
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasPurchaseId:Z

    .line 945
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->purchaseId_:Ljava/lang/String;

    .line 946
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 927
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasStatus:Z

    .line 928
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->status_:I

    .line 929
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
    .line 1009
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1010
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 1012
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasDebugInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1013
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getDebugInfo()Lcom/google/android/finsky/remoting/protos/DebugInfo;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeMessage(ILcom/google/protobuf/micro/MessageMicro;)V

    .line 1015
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasLocalizedErrorMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1016
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getLocalizedErrorMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1018
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->hasPurchaseId()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1019
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Purchase$PurchaseNotificationResponse;->getPurchaseId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 1021
    :cond_3
    return-void
.end method
