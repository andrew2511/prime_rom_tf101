.class synthetic Lcom/android/vending/billing/BaseBuyPageActivity$6;
.super Ljava/lang/Object;
.source "BaseBuyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$vending$billing$BaseBuyPageActivity$State:[I

.field static final synthetic $SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1291
    invoke-static {}, Lcom/android/vending/model/PurchaseResult$ResultCode;->values()[Lcom/android/vending/model/PurchaseResult$ResultCode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    :try_start_0
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->OK:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GAIA_AUTH:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_RETRY:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_PERMANENT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_ITEM_UNAVAILABLE:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_PURCHASED_OR_PENDING:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_DELAYED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_FAILED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$model$PurchaseResult$ResultCode:[I

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_BAD_CREDIT_CARD_INPUT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v1}, Lcom/android/vending/model/PurchaseResult$ResultCode;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    .line 1208
    :goto_8
    invoke-static {}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->values()[Lcom/android/vending/billing/BaseBuyPageActivity$State;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$billing$BaseBuyPageActivity$State:[I

    :try_start_9
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$billing$BaseBuyPageActivity$State:[I

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$billing$BaseBuyPageActivity$State:[I

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$billing$BaseBuyPageActivity$State:[I

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$6;->$SwitchMap$com$android$vending$billing$BaseBuyPageActivity$State:[I

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->RETRY_PURCHASE_AFTER_AUTH:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v1}, Lcom/android/vending/billing/BaseBuyPageActivity$State;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    return-void

    :catch_0
    move-exception v0

    goto :goto_c

    :catch_1
    move-exception v0

    goto :goto_b

    :catch_2
    move-exception v0

    goto :goto_a

    :catch_3
    move-exception v0

    goto :goto_9

    .line 1291
    :catch_4
    move-exception v0

    goto :goto_8

    :catch_5
    move-exception v0

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    goto :goto_5

    :catch_8
    move-exception v0

    goto :goto_4

    :catch_9
    move-exception v0

    goto/16 :goto_3

    :catch_a
    move-exception v0

    goto/16 :goto_2

    :catch_b
    move-exception v0

    goto/16 :goto_1

    :catch_c
    move-exception v0

    goto/16 :goto_0
.end method
