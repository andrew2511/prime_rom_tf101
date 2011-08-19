.class public final Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "Buy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/remoting/protos/Buy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PurchaseStatusResponse"
.end annotation


# instance fields
.field private briefMessage_:Ljava/lang/String;

.field private cachedSize:I

.field private hasBriefMessage:Z

.field private hasInfoUrl:Z

.field private hasStatus:Z

.field private hasStatusMsg:Z

.field private hasStatusTitle:Z

.field private infoUrl_:Ljava/lang/String;

.field private statusMsg_:Ljava/lang/String;

.field private statusTitle_:Ljava/lang/String;

.field private status_:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 854
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 865
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    .line 882
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    .line 899
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    .line 916
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    .line 933
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    .line 981
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    .line 854
    return-void
.end method


# virtual methods
.method public getBriefMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 917
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 983
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    if-gez v0, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getSerializedSize()I

    .line 987
    :cond_0
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    return v0
.end method

.method public getInfoUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 934
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 991
    const/4 v0, 0x0

    .line 992
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 993
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 996
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 997
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1000
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1001
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1004
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1005
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1008
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1009
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1012
    :cond_4
    iput v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->cachedSize:I

    .line 1013
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 867
    iget v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    return v0
.end method

.method public getStatusMsg()Ljava/lang/String;
    .locals 1

    .prologue
    .line 883
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    return-object v0
.end method

.method public getStatusTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 900
    iget-object v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public hasBriefMessage()Z
    .locals 1

    .prologue
    .line 918
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    return v0
.end method

.method public hasInfoUrl()Z
    .locals 1

    .prologue
    .line 935
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 866
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    return v0
.end method

.method public hasStatusMsg()Z
    .locals 1

    .prologue
    .line 884
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    return v0
.end method

.method public hasStatusTitle()Z
    .locals 1

    .prologue
    .line 901
    iget-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1020
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 1021
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 1025
    invoke-virtual {p0, p1, v0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1026
    :sswitch_0
    return-object p0

    .line 1031
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 1035
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatusMsg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 1039
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setStatusTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 1043
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setBriefMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 1047
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->setInfoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    goto :goto_0

    .line 1021
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
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
    .line 852
    invoke-virtual {p0, p1}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;

    move-result-object v0

    return-object v0
.end method

.method public setBriefMessage(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 920
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage:Z

    .line 921
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->briefMessage_:Ljava/lang/String;

    .line 922
    return-object p0
.end method

.method public setInfoUrl(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 937
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl:Z

    .line 938
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->infoUrl_:Ljava/lang/String;

    .line 939
    return-object p0
.end method

.method public setStatus(I)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus:Z

    .line 870
    iput p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->status_:I

    .line 871
    return-object p0
.end method

.method public setStatusMsg(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 886
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg:Z

    .line 887
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusMsg_:Ljava/lang/String;

    .line 888
    return-object p0
.end method

.method public setStatusTitle(Ljava/lang/String;)Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;
    .locals 1
    .parameter "value"

    .prologue
    .line 903
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle:Z

    .line 904
    iput-object p1, p0, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->statusTitle_:Ljava/lang/String;

    .line 905
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
    .line 964
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 965
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatus()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 967
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusMsg()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 968
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 970
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasStatusTitle()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 971
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getStatusTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 973
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasBriefMessage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 974
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getBriefMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 976
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->hasInfoUrl()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 977
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/finsky/remoting/protos/Buy$PurchaseStatusResponse;->getInfoUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 979
    :cond_4
    return-void
.end method
