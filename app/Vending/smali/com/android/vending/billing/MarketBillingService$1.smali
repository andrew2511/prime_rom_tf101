.class synthetic Lcom/android/vending/billing/MarketBillingService$1;
.super Ljava/lang/Object;
.source "MarketBillingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/MarketBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 503
    invoke-static {}, Lcom/android/vending/model/PurchaseResult$ResultCode;->values()[Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/vending/billing/MarketBillingService$1;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    :try_start_0
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$1;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->OK:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$1;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_DEVELOPER_ERROR:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/vending/billing/MarketBillingService$1;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_ITEM_UNAVAILABLE:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
