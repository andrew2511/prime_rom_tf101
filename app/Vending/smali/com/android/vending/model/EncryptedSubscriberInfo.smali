.class public Lcom/android/vending/model/EncryptedSubscriberInfo;
.super Ljava/lang/Object;
.source "EncryptedSubscriberInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/EncryptedSubscriberInfo$1;,
        Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final mProto:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/android/vending/model/EncryptedSubscriberInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/EncryptedSubscriberInfo;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->ENCRYPTED_SUBSCRIBER_INFO_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 19
    return-void
.end method

.method private constructor <init>(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)V
    .locals 3
    .parameter "builder"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/google/common/io/protocol/ProtoBuf;

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->ENCRYPTED_SUBSCRIBER_INFO_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-direct {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;-><init>(Lcom/google/common/io/protocol/ProtoBufType;)V

    iput-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 28
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-static {p1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->access$000(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-static {p1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->access$100(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-static {p1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->access$200(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-static {p1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->access$300(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-static {p1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->access$400(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 33
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-static {p1}, Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;->access$500(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 34
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;Lcom/android/vending/model/EncryptedSubscriberInfo$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/android/vending/model/EncryptedSubscriberInfo;-><init>(Lcom/android/vending/model/EncryptedSubscriberInfo$Builder;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 2
    .parameter "proto"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    sget-boolean v0, Lcom/android/vending/model/EncryptedSubscriberInfo;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/google/common/io/protocol/ProtoBuf;->getType()Lcom/google/common/io/protocol/ProtoBufType;

    move-result-object v0

    sget-object v1, Lcom/android/vending/model/ApiDefsMessageTypes;->ENCRYPTED_SUBSCRIBER_INFO_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBufType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 24
    return-void
.end method


# virtual methods
.method public getCarrierKeyVersion()I
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getEncryptedKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGoogleKeyVersion()I
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getInitVector()Ljava/lang/String;
    .locals 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getSignature()Ljava/lang/String;
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 131
    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setCarrierKeyVersion(I)V
    .locals 2
    .parameter "carrierKeyVersion"

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 84
    return-void
.end method

.method public setEncryptedKey(Ljava/lang/String;)V
    .locals 2
    .parameter "encryptedKey"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 70
    return-void
.end method

.method public setGoogleKeyVersion(I)V
    .locals 2
    .parameter "googleKeyVersion"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 80
    return-void
.end method

.method public setInitVector(Ljava/lang/String;)V
    .locals 2
    .parameter "initVector"

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 76
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2
    .parameter "message"

    .prologue
    .line 66
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 67
    return-void
.end method

.method public setSignature(Ljava/lang/String;)V
    .locals 2
    .parameter "signature"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/vending/model/EncryptedSubscriberInfo;->mProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 73
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EncryptedSubscriberInfo { "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "message= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "encryptedKey= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getEncryptedKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "signature= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getSignature()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "initVector= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getInitVector()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "googleKeyVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getGoogleKeyVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "carrierKeyVersion= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/EncryptedSubscriberInfo;->getCarrierKeyVersion()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
