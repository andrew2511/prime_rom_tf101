.class public final enum Lcom/android/vending/model/BillingEventRequest$BillingEventType;
.super Ljava/lang/Enum;
.source "BillingEventRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/BillingEventRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BillingEventType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/BillingEventRequest$BillingEventType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/BillingEventRequest$BillingEventType;

.field public static final enum CARRIER_BILLING_GET_CREDENTIALS:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

.field public static final enum CARRIER_BILLING_GET_PROVISIONING:Lcom/android/vending/model/BillingEventRequest$BillingEventType;


# instance fields
.field private mRpcId:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    const-string v1, "CARRIER_BILLING_GET_PROVISIONING"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/BillingEventRequest$BillingEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_PROVISIONING:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    .line 20
    new-instance v0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    const-string v1, "CARRIER_BILLING_GET_CREDENTIALS"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/BillingEventRequest$BillingEventType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_CREDENTIALS:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    sget-object v1, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_PROVISIONING:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->CARRIER_BILLING_GET_CREDENTIALS:Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->$VALUES:[Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "rpcId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput p3, p0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->mRpcId:I

    .line 28
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/BillingEventRequest$BillingEventType;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/BillingEventRequest$BillingEventType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->$VALUES:[Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    invoke-virtual {v0}, [Lcom/android/vending/model/BillingEventRequest$BillingEventType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/BillingEventRequest$BillingEventType;

    return-object v0
.end method


# virtual methods
.method public getRpcId()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/android/vending/model/BillingEventRequest$BillingEventType;->mRpcId:I

    return v0
.end method
