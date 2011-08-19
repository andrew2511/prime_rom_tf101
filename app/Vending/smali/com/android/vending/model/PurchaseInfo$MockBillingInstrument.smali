.class public Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;
.super Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/PurchaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockBillingInstrument"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "type"
    .parameter "id"
    .parameter "name"

    .prologue
    .line 381
    invoke-static {}, Lcom/android/vending/model/PurchaseInfo;->createBillingInstrumentProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument;-><init>(Lcom/google/common/io/protocol/ProtoBuf;)V

    .line 382
    invoke-virtual {p0, p1}, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;->setType(Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;)V

    .line 383
    invoke-virtual {p0, p2}, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;->setId(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0, p3}, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;->setName(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;->setInvalid(Z)V

    .line 386
    return-void
.end method


# virtual methods
.method public hasId()Z
    .locals 2

    .prologue
    .line 390
    invoke-virtual {p0}, Lcom/android/vending/model/PurchaseInfo$MockBillingInstrument;->getId()Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, id:Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
