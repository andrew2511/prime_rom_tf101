.class public final enum Lcom/android/vending/billing/MarketBillingService$ResponseCode;
.super Ljava/lang/Enum;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResponseCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/billing/MarketBillingService$ResponseCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field public static final enum RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field public static final enum RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field public static final enum RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field public static final enum RESULT_ITEM_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field public static final enum RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field public static final enum RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

.field public static final enum RESULT_USER_CANCELED:Lcom/android/vending/billing/MarketBillingService$ResponseCode;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 71
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_OK"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 72
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_USER_CANCELED"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 73
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_SERVICE_UNAVAILABLE"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 74
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_BILLING_UNAVAILABLE"

    invoke-direct {v0, v1, v6}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 75
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_ITEM_UNAVAILABLE"

    invoke-direct {v0, v1, v7}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 76
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_DEVELOPER_ERROR"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 77
    new-instance v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    const-string v1, "RESULT_ERROR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/MarketBillingService$ResponseCode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    .line 70
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_OK:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_USER_CANCELED:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_SERVICE_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_BILLING_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ITEM_UNAVAILABLE:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_DEVELOPER_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->RESULT_ERROR:Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->$VALUES:[Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/billing/MarketBillingService$ResponseCode;
    .locals 1
    .parameter

    .prologue
    .line 70
    const-class v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/billing/MarketBillingService$ResponseCode;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$ResponseCode;->$VALUES:[Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    invoke-virtual {v0}, [Lcom/android/vending/billing/MarketBillingService$ResponseCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/billing/MarketBillingService$ResponseCode;

    return-object v0
.end method
