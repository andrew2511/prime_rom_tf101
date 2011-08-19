.class public final Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
.super Lcom/google/protobuf/micro/MessageMicro;
.source "VendingProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/vending/remoting/protos/VendingProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestPropertiesProto"
.end annotation


# instance fields
.field private aid_:Ljava/lang/String;

.field private cachedSize:I

.field private clientId_:Ljava/lang/String;

.field private hasAid:Z

.field private hasClientId:Z

.field private hasLoggingId:Z

.field private hasOperatorName:Z

.field private hasOperatorNumericName:Z

.field private hasProductNameAndVersion:Z

.field private hasSimOperatorName:Z

.field private hasSimOperatorNumericName:Z

.field private hasSoftwareVersion:Z

.field private hasUserAuthToken:Z

.field private hasUserAuthTokenSecure:Z

.field private hasUserCountry:Z

.field private hasUserLanguage:Z

.field private loggingId_:Ljava/lang/String;

.field private operatorName_:Ljava/lang/String;

.field private operatorNumericName_:Ljava/lang/String;

.field private productNameAndVersion_:Ljava/lang/String;

.field private simOperatorName_:Ljava/lang/String;

.field private simOperatorNumericName_:Ljava/lang/String;

.field private softwareVersion_:I

.field private userAuthTokenSecure_:Z

.field private userAuthToken_:Ljava/lang/String;

.field private userCountry_:Ljava/lang/String;

.field private userLanguage_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 15794
    invoke-direct {p0}, Lcom/google/protobuf/micro/MessageMicro;-><init>()V

    .line 15799
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    .line 15816
    iput-boolean v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    .line 15833
    iput v1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    .line 15850
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    .line 15867
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    .line 15884
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    .line 15901
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    .line 15918
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    .line 15935
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    .line 15952
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    .line 15969
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    .line 15986
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    .line 16003
    const-string v0, ""

    iput-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    .line 16087
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    .line 15794
    return-void
.end method


# virtual methods
.method public getAid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15851
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    return-object v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 16089
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    if-gez v0, :cond_0

    .line 16091
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSerializedSize()I

    .line 16093
    :cond_0
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15987
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLoggingId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16004
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15919
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getOperatorNumericName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15953
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    return-object v0
.end method

.method public getProductNameAndVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15868
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 16097
    const/4 v0, 0x0

    .line 16098
    .local v0, size:I
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 16099
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16102
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 16103
    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthTokenSecure()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 16106
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 16107
    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSoftwareVersion()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 16110
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 16111
    const/4 v1, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getAid()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16114
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 16115
    const/4 v1, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getProductNameAndVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16118
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 16119
    const/4 v1, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16122
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16123
    const/4 v1, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserCountry()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16126
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 16127
    const/16 v1, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16130
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 16131
    const/16 v1, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16134
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 16135
    const/16 v1, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorNumericName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16138
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 16139
    const/16 v1, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorNumericName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16142
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 16143
    const/16 v1, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16146
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 16147
    const/16 v1, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getLoggingId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 16150
    :cond_c
    iput v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->cachedSize:I

    .line 16151
    return v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15936
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSimOperatorNumericName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15970
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()I
    .locals 1

    .prologue
    .line 15834
    iget v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    return v0
.end method

.method public getUserAuthToken()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15800
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAuthTokenSecure()Z
    .locals 1

    .prologue
    .line 15817
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    return v0
.end method

.method public getUserCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15902
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15885
    iget-object v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAid()Z
    .locals 1

    .prologue
    .line 15852
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    return v0
.end method

.method public hasClientId()Z
    .locals 1

    .prologue
    .line 15988
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    return v0
.end method

.method public hasLoggingId()Z
    .locals 1

    .prologue
    .line 16005
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    return v0
.end method

.method public hasOperatorName()Z
    .locals 1

    .prologue
    .line 15920
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    return v0
.end method

.method public hasOperatorNumericName()Z
    .locals 1

    .prologue
    .line 15954
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    return v0
.end method

.method public hasProductNameAndVersion()Z
    .locals 1

    .prologue
    .line 15869
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    return v0
.end method

.method public hasSimOperatorName()Z
    .locals 1

    .prologue
    .line 15937
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    return v0
.end method

.method public hasSimOperatorNumericName()Z
    .locals 1

    .prologue
    .line 15971
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    return v0
.end method

.method public hasSoftwareVersion()Z
    .locals 1

    .prologue
    .line 15835
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    return v0
.end method

.method public hasUserAuthToken()Z
    .locals 1

    .prologue
    .line 15801
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    return v0
.end method

.method public hasUserAuthTokenSecure()Z
    .locals 1

    .prologue
    .line 15818
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    return v0
.end method

.method public hasUserCountry()Z
    .locals 1

    .prologue
    .line 15903
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    return v0
.end method

.method public hasUserLanguage()Z
    .locals 1

    .prologue
    .line 15886
    iget-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    return v0
.end method

.method public mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 2
    .parameter "input"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16158
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readTag()I

    move-result v0

    .line 16159
    .local v0, tag:I
    sparse-switch v0, :sswitch_data_0

    .line 16163
    invoke-virtual {p0, p1, v0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->parseUnknownField(Lcom/google/protobuf/micro/CodedInputStreamMicro;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 16164
    :sswitch_0
    return-object p0

    .line 16169
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16173
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readBool()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserAuthTokenSecure(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16177
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readInt32()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16181
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16185
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16189
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16193
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16197
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16201
    :sswitch_9
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16205
    :sswitch_a
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16209
    :sswitch_b
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16213
    :sswitch_c
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16217
    :sswitch_d
    invoke-virtual {p1}, Lcom/google/protobuf/micro/CodedInputStreamMicro;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    goto :goto_0

    .line 16159
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
        0x4a -> :sswitch_9
        0x52 -> :sswitch_a
        0x5a -> :sswitch_b
        0x62 -> :sswitch_c
        0x6a -> :sswitch_d
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
    .line 15792
    invoke-virtual {p0, p1}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->mergeFrom(Lcom/google/protobuf/micro/CodedInputStreamMicro;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;

    move-result-object v0

    return-object v0
.end method

.method public setAid(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15854
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid:Z

    .line 15855
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->aid_:Ljava/lang/String;

    .line 15856
    return-object p0
.end method

.method public setClientId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15990
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId:Z

    .line 15991
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->clientId_:Ljava/lang/String;

    .line 15992
    return-object p0
.end method

.method public setLoggingId(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 16007
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId:Z

    .line 16008
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->loggingId_:Ljava/lang/String;

    .line 16009
    return-object p0
.end method

.method public setOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15922
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName:Z

    .line 15923
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorName_:Ljava/lang/String;

    .line 15924
    return-object p0
.end method

.method public setOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15956
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName:Z

    .line 15957
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->operatorNumericName_:Ljava/lang/String;

    .line 15958
    return-object p0
.end method

.method public setProductNameAndVersion(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15871
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion:Z

    .line 15872
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->productNameAndVersion_:Ljava/lang/String;

    .line 15873
    return-object p0
.end method

.method public setSimOperatorName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15939
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName:Z

    .line 15940
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorName_:Ljava/lang/String;

    .line 15941
    return-object p0
.end method

.method public setSimOperatorNumericName(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15973
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName:Z

    .line 15974
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->simOperatorNumericName_:Ljava/lang/String;

    .line 15975
    return-object p0
.end method

.method public setSoftwareVersion(I)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15837
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion:Z

    .line 15838
    iput p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->softwareVersion_:I

    .line 15839
    return-object p0
.end method

.method public setUserAuthToken(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15803
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken:Z

    .line 15804
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthToken_:Ljava/lang/String;

    .line 15805
    return-object p0
.end method

.method public setUserAuthTokenSecure(Z)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15820
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure:Z

    .line 15821
    iput-boolean p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userAuthTokenSecure_:Z

    .line 15822
    return-object p0
.end method

.method public setUserCountry(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15905
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry:Z

    .line 15906
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userCountry_:Ljava/lang/String;

    .line 15907
    return-object p0
.end method

.method public setUserLanguage(Ljava/lang/String;)Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;
    .locals 1
    .parameter "value"

    .prologue
    .line 15888
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage:Z

    .line 15889
    iput-object p1, p0, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->userLanguage_:Ljava/lang/String;

    .line 15890
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
    .line 16046
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthToken()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16047
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16049
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserAuthTokenSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16050
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserAuthTokenSecure()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeBool(IZ)V

    .line 16052
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSoftwareVersion()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 16053
    const/4 v0, 0x3

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSoftwareVersion()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeInt32(II)V

    .line 16055
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasAid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16056
    const/4 v0, 0x4

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getAid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16058
    :cond_3
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasProductNameAndVersion()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16059
    const/4 v0, 0x5

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getProductNameAndVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16061
    :cond_4
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserLanguage()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16062
    const/4 v0, 0x6

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16064
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasUserCountry()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16065
    const/4 v0, 0x7

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getUserCountry()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16067
    :cond_6
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorName()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 16068
    const/16 v0, 0x8

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16070
    :cond_7
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorName()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 16071
    const/16 v0, 0x9

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16073
    :cond_8
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasOperatorNumericName()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 16074
    const/16 v0, 0xa

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getOperatorNumericName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16076
    :cond_9
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasSimOperatorNumericName()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 16077
    const/16 v0, 0xb

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getSimOperatorNumericName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16079
    :cond_a
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasClientId()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 16080
    const/16 v0, 0xc

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16082
    :cond_b
    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->hasLoggingId()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 16083
    const/16 v0, 0xd

    invoke-virtual {p0}, Lcom/google/android/vending/remoting/protos/VendingProtos$RequestPropertiesProto;->getLoggingId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/micro/CodedOutputStreamMicro;->writeString(ILjava/lang/String;)V

    .line 16085
    :cond_c
    return-void
.end method
