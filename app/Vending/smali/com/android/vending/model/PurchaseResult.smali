.class public Lcom/android/vending/model/PurchaseResult;
.super Ljava/lang/Object;
.source "PurchaseResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/PurchaseResult$ResultCode;
    }
.end annotation


# instance fields
.field protected final mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;)V
    .locals 0
    .parameter "protoBuf"

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/vending/model/PurchaseResult;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    .line 68
    return-void
.end method


# virtual methods
.method public getResultCode()Lcom/android/vending/model/PurchaseResult$ResultCode;
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/vending/model/PurchaseResult;->mProtoBuf:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/PurchaseResult$ResultCode;->fromProtoPurchaseResult(I)Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    return-object v0
.end method
