.class public final enum Lcom/android/vending/model/PurchaseResult$ResultCode;
.super Ljava/lang/Enum;
.source "PurchaseResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/PurchaseResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ResultCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/PurchaseResult$ResultCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_BAD_CREDIT_CARD_INPUT:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_CC_AUTH_DELAYED:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_CC_AUTH_FAILED:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_DEVELOPER_ERROR:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_GAIA_AUTH:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_GENERAL_PERMANENT:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_GENERAL_RETRY:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_ITEM_UNAVAILABLE:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum ERROR_PURCHASED_OR_PENDING:Lcom/android/vending/model/PurchaseResult$ResultCode;

.field public static final enum OK:Lcom/android/vending/model/PurchaseResult$ResultCode;


# instance fields
.field private final mPurchaseResult:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "OK"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->OK:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 17
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_GENERAL_RETRY"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_RETRY:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 18
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_GENERAL_PERMANENT"

    invoke-direct {v0, v1, v6, v6}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_PERMANENT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 19
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_GAIA_AUTH"

    invoke-direct {v0, v1, v7, v7}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GAIA_AUTH:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 20
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_BAD_CREDIT_CARD_INPUT"

    invoke-direct {v0, v1, v8, v8}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_BAD_CREDIT_CARD_INPUT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 21
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_CC_AUTH_FAILED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_FAILED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 22
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_CC_AUTH_DELAYED"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_DELAYED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 23
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_ITEM_UNAVAILABLE"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_ITEM_UNAVAILABLE:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 24
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_PURCHASED_OR_PENDING"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_PURCHASED_OR_PENDING:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 25
    new-instance v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    const-string v1, "ERROR_DEVELOPER_ERROR"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/PurchaseResult$ResultCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_DEVELOPER_ERROR:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 15
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/android/vending/model/PurchaseResult$ResultCode;

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->OK:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_RETRY:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_PERMANENT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GAIA_AUTH:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_BAD_CREDIT_CARD_INPUT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_FAILED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_DELAYED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_ITEM_UNAVAILABLE:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_PURCHASED_OR_PENDING:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_DEVELOPER_ERROR:Lcom/android/vending/model/PurchaseResult$ResultCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->$VALUES:[Lcom/android/vending/model/PurchaseResult$ResultCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "protoPurchaseResult"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lcom/android/vending/model/PurchaseResult$ResultCode;->mPurchaseResult:I

    .line 31
    return-void
.end method

.method public static fromProtoPurchaseResult(I)Lcom/android/vending/model/PurchaseResult$ResultCode;
    .locals 1
    .parameter "protoPurchaseResult"

    .prologue
    .line 34
    packed-switch p0, :pswitch_data_0

    .line 56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 36
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->OK:Lcom/android/vending/model/PurchaseResult$ResultCode;

    .line 54
    :goto_0
    return-object v0

    .line 38
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_RETRY:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 40
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GENERAL_PERMANENT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 42
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_GAIA_AUTH:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 44
    :pswitch_4
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_BAD_CREDIT_CARD_INPUT:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 46
    :pswitch_5
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_FAILED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 48
    :pswitch_6
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_CC_AUTH_DELAYED:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 50
    :pswitch_7
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_ITEM_UNAVAILABLE:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 52
    :pswitch_8
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_PURCHASED_OR_PENDING:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 54
    :pswitch_9
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->ERROR_DEVELOPER_ERROR:Lcom/android/vending/model/PurchaseResult$ResultCode;

    goto :goto_0

    .line 34
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/PurchaseResult$ResultCode;
    .locals 1
    .parameter

    .prologue
    .line 15
    const-class v0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/PurchaseResult$ResultCode;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/PurchaseResult$ResultCode;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/android/vending/model/PurchaseResult$ResultCode;->$VALUES:[Lcom/android/vending/model/PurchaseResult$ResultCode;

    invoke-virtual {v0}, [Lcom/android/vending/model/PurchaseResult$ResultCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/PurchaseResult$ResultCode;

    return-object v0
.end method
