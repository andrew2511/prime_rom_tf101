.class final enum Lcom/android/vending/billing/GermanDirectDebitActivity$State;
.super Ljava/lang/Enum;
.source "GermanDirectDebitActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/GermanDirectDebitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/billing/GermanDirectDebitActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/billing/GermanDirectDebitActivity$State;

.field public static final enum ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

.field public static final enum RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

.field public static final enum SAVING_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 83
    new-instance v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    const-string v1, "ADD_CARD"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/GermanDirectDebitActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    .line 96
    new-instance v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    const-string v1, "SAVING_CARD"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/billing/GermanDirectDebitActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->SAVING_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    .line 111
    new-instance v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    const-string v1, "RETRY_SAVE_AFTER_AUTH"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/billing/GermanDirectDebitActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    .line 75
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    sget-object v1, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->ADD_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->SAVING_CARD:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->RETRY_SAVE_AFTER_AUTH:Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->$VALUES:[Lcom/android/vending/billing/GermanDirectDebitActivity$State;

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
    .line 75
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/billing/GermanDirectDebitActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 75
    const-class v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/billing/GermanDirectDebitActivity$State;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/vending/billing/GermanDirectDebitActivity$State;->$VALUES:[Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    invoke-virtual {v0}, [Lcom/android/vending/billing/GermanDirectDebitActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/billing/GermanDirectDebitActivity$State;

    return-object v0
.end method
