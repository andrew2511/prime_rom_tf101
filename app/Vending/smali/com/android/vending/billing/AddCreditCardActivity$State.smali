.class final enum Lcom/android/vending/billing/AddCreditCardActivity$State;
.super Ljava/lang/Enum;
.source "AddCreditCardActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/AddCreditCardActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/billing/AddCreditCardActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/billing/AddCreditCardActivity$State;

.field public static final enum RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/AddCreditCardActivity$State;

.field public static final enum SAVING_CARD:Lcom/android/vending/billing/AddCreditCardActivity$State;

.field public static final enum START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 146
    new-instance v0, Lcom/android/vending/billing/AddCreditCardActivity$State;

    const-string v1, "START_STATE"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/AddCreditCardActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    .line 161
    new-instance v0, Lcom/android/vending/billing/AddCreditCardActivity$State;

    const-string v1, "SAVING_CARD"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/billing/AddCreditCardActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->SAVING_CARD:Lcom/android/vending/billing/AddCreditCardActivity$State;

    .line 176
    new-instance v0, Lcom/android/vending/billing/AddCreditCardActivity$State;

    const-string v1, "RETRY_SAVE_AFTER_AUTH"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/billing/AddCreditCardActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/AddCreditCardActivity$State;

    .line 138
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/billing/AddCreditCardActivity$State;

    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity$State;->START_STATE:Lcom/android/vending/billing/AddCreditCardActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity$State;->SAVING_CARD:Lcom/android/vending/billing/AddCreditCardActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/billing/AddCreditCardActivity$State;->RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/AddCreditCardActivity$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->$VALUES:[Lcom/android/vending/billing/AddCreditCardActivity$State;

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
    .line 138
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/billing/AddCreditCardActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 138
    const-class v0, Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/billing/AddCreditCardActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/billing/AddCreditCardActivity$State;
    .locals 1

    .prologue
    .line 138
    sget-object v0, Lcom/android/vending/billing/AddCreditCardActivity$State;->$VALUES:[Lcom/android/vending/billing/AddCreditCardActivity$State;

    invoke-virtual {v0}, [Lcom/android/vending/billing/AddCreditCardActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/billing/AddCreditCardActivity$State;

    return-object v0
.end method
