.class public final enum Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
.super Ljava/lang/Enum;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/PurchaseInfo$BillingInstrument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

.field public static final enum CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

.field public static final enum CREDIT_CARD:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

.field public static final enum EFT:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

.field public static final enum UNKNOWN:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 187
    new-instance v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->UNKNOWN:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    .line 188
    new-instance v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    const-string v1, "CREDIT_CARD"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CREDIT_CARD:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    .line 189
    new-instance v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    const-string v1, "CARRIER_BILLING"

    invoke-direct {v0, v1, v4, v3}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    .line 190
    new-instance v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    const-string v1, "EFT"

    invoke-direct {v0, v1, v5, v5}, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->EFT:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    .line 186
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->UNKNOWN:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CREDIT_CARD:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->EFT:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->$VALUES:[Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 223
    iput p3, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->mValue:I

    .line 224
    return-void
.end method

.method public static fromProtoType(I)Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    .locals 3
    .parameter "protoInputField"

    .prologue
    .line 213
    packed-switch p0, :pswitch_data_0

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown field value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->UNKNOWN:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    .line 217
    :goto_0
    return-object v0

    .line 215
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CREDIT_CARD:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    goto :goto_0

    .line 216
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->CARRIER_BILLING:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    goto :goto_0

    .line 217
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->EFT:Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    goto :goto_0

    .line 213
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    .locals 1
    .parameter

    .prologue
    .line 186
    const-class v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;
    .locals 1

    .prologue
    .line 186
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->$VALUES:[Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    invoke-virtual {v0}, [Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/vending/model/PurchaseInfo$BillingInstrument$Type;->mValue:I

    return v0
.end method
