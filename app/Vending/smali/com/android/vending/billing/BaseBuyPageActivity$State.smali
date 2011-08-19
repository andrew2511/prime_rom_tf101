.class final enum Lcom/android/vending/billing/BaseBuyPageActivity$State;
.super Ljava/lang/Enum;
.source "BaseBuyPageActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/BaseBuyPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/billing/BaseBuyPageActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/billing/BaseBuyPageActivity$State;

.field public static final enum BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

.field public static final enum CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

.field public static final enum RETRY_PURCHASE_AFTER_AUTH:Lcom/android/vending/billing/BaseBuyPageActivity$State;

.field public static final enum START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    new-instance v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;

    const-string v1, "START_STATE"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/BaseBuyPageActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    .line 185
    new-instance v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;

    const-string v1, "BUY"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/billing/BaseBuyPageActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    .line 194
    new-instance v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;

    const-string v1, "CART_PURCHASE"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/billing/BaseBuyPageActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    .line 207
    new-instance v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;

    const-string v1, "RETRY_PURCHASE_AFTER_AUTH"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/billing/BaseBuyPageActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->RETRY_PURCHASE_AFTER_AUTH:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    .line 170
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/billing/BaseBuyPageActivity$State;

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->START_STATE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->BUY:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->CART_PURCHASE:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/billing/BaseBuyPageActivity$State;->RETRY_PURCHASE_AFTER_AUTH:Lcom/android/vending/billing/BaseBuyPageActivity$State;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->$VALUES:[Lcom/android/vending/billing/BaseBuyPageActivity$State;

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
    .line 170
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/billing/BaseBuyPageActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 170
    const-class v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/billing/BaseBuyPageActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/billing/BaseBuyPageActivity$State;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Lcom/android/vending/billing/BaseBuyPageActivity$State;->$VALUES:[Lcom/android/vending/billing/BaseBuyPageActivity$State;

    invoke-virtual {v0}, [Lcom/android/vending/billing/BaseBuyPageActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/billing/BaseBuyPageActivity$State;

    return-object v0
.end method
