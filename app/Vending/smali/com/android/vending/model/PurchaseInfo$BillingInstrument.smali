.class public Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
.super Ljava/lang/Object;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/PurchaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BillingInstrument"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    }
.end annotation


# instance fields
.field protected mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "billingInstrumentProto"

    .prologue
    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p1, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 231
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "obj"

    .prologue
    .line 322
    if-ne p0, p1, :cond_0

    .line 323
    const/4 v2, 0x1

    .line 329
    :goto_0
    return v2

    .line 325
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 326
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 328
    :cond_2
    move-object v0, p1

    check-cast v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;

    move-object v1, v0

    .line 329
    .local v1, instrument:Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInstrumentStatus()I
    .locals 2

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 248
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 292
    iget-object v1, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 294
    iget-object v1, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    .line 296
    .local v0, instrumentType:I
    invoke-static {v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->fromProtoType(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v1

    .line 298
    .end local v0           #instrumentType:I
    :goto_0
    return-object v1

    :cond_0
    sget-object v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->UNKNOWN:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    goto :goto_0
.end method

.method public hasId()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasInstrumentStatus()Z
    .locals 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 334
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isInvalid()Z
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 269
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 270
    const/4 v0, 0x0

    .line 272
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 2
    .parameter "Id"

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 241
    return-void
.end method

.method public setInvalid(Z)V
    .locals 2
    .parameter "isInvalid"

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x7

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setBool(IZ)V

    .line 286
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->setString(ILjava/lang/String;)V

    .line 255
    return-void
.end method

.method public setType(Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;)V
    .locals 3
    .parameter "type"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xb

    invoke-virtual {p1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->getValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->setInt(II)V

    .line 305
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->mBiBuf:Lcom/google/common/io/protocol/ProtoBuf;

    if-nez v0, :cond_0

    .line 314
    const-string v0, "null proto"

    .line 316
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Invalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->isInvalid()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;->getType()Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
