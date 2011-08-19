.class public final enum Lcom/android/vending/model/PurchaseInfo$ProductType;
.super Ljava/lang/Enum;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/PurchaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ProductType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/PurchaseInfo$ProductType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/PurchaseInfo$ProductType;

.field public static final enum MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

.field public static final enum MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/android/vending/model/PurchaseInfo$ProductType;

    const-string v1, "MARKET_PRODUCT"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/vending/model/PurchaseInfo$ProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    .line 19
    new-instance v0, Lcom/android/vending/model/PurchaseInfo$ProductType;

    const-string v1, "MARKET_IN_APP_PRODUCT"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/vending/model/PurchaseInfo$ProductType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    .line 17
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vending/model/PurchaseInfo$ProductType;

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$ProductType;->MARKET_IN_APP_PRODUCT:Lcom/android/vending/model/PurchaseInfo$ProductType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->$VALUES:[Lcom/android/vending/model/PurchaseInfo$ProductType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 28
    iput p3, p0, Lcom/android/vending/model/PurchaseInfo$ProductType;->mValue:I

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/PurchaseInfo$ProductType;
    .locals 1
    .parameter

    .prologue
    .line 17
    const-class v0, Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/PurchaseInfo$ProductType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/PurchaseInfo$ProductType;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$ProductType;->$VALUES:[Lcom/android/vending/model/PurchaseInfo$ProductType;

    invoke-virtual {v0}, [Lcom/android/vending/model/PurchaseInfo$ProductType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/PurchaseInfo$ProductType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/android/vending/model/PurchaseInfo$ProductType;->mValue:I

    return v0
.end method
