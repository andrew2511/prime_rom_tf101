.class public final enum Lcom/android/vending/model/CreditCard$CardType;
.super Ljava/lang/Enum;
.source "CreditCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/CreditCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CardType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/CreditCard$CardType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/CreditCard$CardType;

.field public static final enum AMEX:Lcom/android/vending/model/CreditCard$CardType;

.field public static final enum DISCOVER:Lcom/android/vending/model/CreditCard$CardType;

.field public static final enum JCB:Lcom/android/vending/model/CreditCard$CardType;

.field public static final enum MC:Lcom/android/vending/model/CreditCard$CardType;

.field public static final enum SOLO:Lcom/android/vending/model/CreditCard$CardType;

.field public static final enum UNKNOWN:Lcom/android/vending/model/CreditCard$CardType;

.field public static final enum VISA:Lcom/android/vending/model/CreditCard$CardType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 26
    new-instance v0, Lcom/android/vending/model/CreditCard$CardType;

    const-string v1, "SOLO"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/CreditCard$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->SOLO:Lcom/android/vending/model/CreditCard$CardType;

    new-instance v0, Lcom/android/vending/model/CreditCard$CardType;

    const-string v1, "DISCOVER"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/model/CreditCard$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->DISCOVER:Lcom/android/vending/model/CreditCard$CardType;

    new-instance v0, Lcom/android/vending/model/CreditCard$CardType;

    const-string v1, "AMEX"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/model/CreditCard$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->AMEX:Lcom/android/vending/model/CreditCard$CardType;

    new-instance v0, Lcom/android/vending/model/CreditCard$CardType;

    const-string v1, "MC"

    invoke-direct {v0, v1, v6}, Lcom/android/vending/model/CreditCard$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->MC:Lcom/android/vending/model/CreditCard$CardType;

    new-instance v0, Lcom/android/vending/model/CreditCard$CardType;

    const-string v1, "VISA"

    invoke-direct {v0, v1, v7}, Lcom/android/vending/model/CreditCard$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->VISA:Lcom/android/vending/model/CreditCard$CardType;

    new-instance v0, Lcom/android/vending/model/CreditCard$CardType;

    const-string v1, "JCB"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/CreditCard$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->JCB:Lcom/android/vending/model/CreditCard$CardType;

    new-instance v0, Lcom/android/vending/model/CreditCard$CardType;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/CreditCard$CardType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->UNKNOWN:Lcom/android/vending/model/CreditCard$CardType;

    .line 25
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/vending/model/CreditCard$CardType;

    sget-object v1, Lcom/android/vending/model/CreditCard$CardType;->SOLO:Lcom/android/vending/model/CreditCard$CardType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/CreditCard$CardType;->DISCOVER:Lcom/android/vending/model/CreditCard$CardType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/CreditCard$CardType;->AMEX:Lcom/android/vending/model/CreditCard$CardType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/CreditCard$CardType;->MC:Lcom/android/vending/model/CreditCard$CardType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/model/CreditCard$CardType;->VISA:Lcom/android/vending/model/CreditCard$CardType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/model/CreditCard$CardType;->JCB:Lcom/android/vending/model/CreditCard$CardType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/model/CreditCard$CardType;->UNKNOWN:Lcom/android/vending/model/CreditCard$CardType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/model/CreditCard$CardType;->$VALUES:[Lcom/android/vending/model/CreditCard$CardType;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static fromCcDefinition(Lcom/android/vending/model/CcDefinition;)Lcom/android/vending/model/CreditCard$CardType;
    .locals 3
    .parameter "ccDef"

    .prologue
    .line 34
    if-nez p0, :cond_0

    .line 35
    sget-object v1, Lcom/android/vending/model/CreditCard$CardType;->UNKNOWN:Lcom/android/vending/model/CreditCard$CardType;

    .line 59
    :goto_0
    return-object v1

    .line 37
    :cond_0
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->UNKNOWN:Lcom/android/vending/model/CreditCard$CardType;

    .line 38
    .local v0, bestType:Lcom/android/vending/model/CreditCard$CardType;
    sget-object v1, Lcom/android/vending/model/CreditCard$1;->$SwitchMap$com$android$vending$model$CcDefinition:[I

    invoke-virtual {p0}, Lcom/android/vending/model/CcDefinition;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    .line 59
    goto :goto_0

    .line 40
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->SOLO:Lcom/android/vending/model/CreditCard$CardType;

    .line 41
    goto :goto_1

    .line 43
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->DISCOVER:Lcom/android/vending/model/CreditCard$CardType;

    .line 44
    goto :goto_1

    .line 46
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->AMEX:Lcom/android/vending/model/CreditCard$CardType;

    .line 47
    goto :goto_1

    .line 49
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->MC:Lcom/android/vending/model/CreditCard$CardType;

    .line 50
    goto :goto_1

    .line 53
    :pswitch_4
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->VISA:Lcom/android/vending/model/CreditCard$CardType;

    .line 54
    goto :goto_1

    .line 56
    :pswitch_5
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->JCB:Lcom/android/vending/model/CreditCard$CardType;

    goto :goto_1

    .line 38
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/CreditCard$CardType;
    .locals 1
    .parameter

    .prologue
    .line 25
    const-class v0, Lcom/android/vending/model/CreditCard$CardType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/CreditCard$CardType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/CreditCard$CardType;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/android/vending/model/CreditCard$CardType;->$VALUES:[Lcom/android/vending/model/CreditCard$CardType;

    invoke-virtual {v0}, [Lcom/android/vending/model/CreditCard$CardType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/CreditCard$CardType;

    return-object v0
.end method
