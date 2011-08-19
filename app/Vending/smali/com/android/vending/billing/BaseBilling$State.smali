.class public final enum Lcom/android/vending/billing/BaseBilling$State;
.super Ljava/lang/Enum;
.source "BaseBilling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/BaseBilling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/billing/BaseBilling$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/billing/BaseBilling$State;

.field public static final enum INITIAL:Lcom/android/vending/billing/BaseBilling$State;

.field public static final enum SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    new-instance v0, Lcom/android/vending/billing/BaseBilling$State;

    const-string v1, "INITIAL"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/billing/BaseBilling$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/BaseBilling$State;->INITIAL:Lcom/android/vending/billing/BaseBilling$State;

    .line 62
    new-instance v0, Lcom/android/vending/billing/BaseBilling$State;

    const-string v1, "SAVING_ADDRESS"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/billing/BaseBilling$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    .line 48
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vending/billing/BaseBilling$State;

    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->INITIAL:Lcom/android/vending/billing/BaseBilling$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/billing/BaseBilling$State;->SAVING_ADDRESS:Lcom/android/vending/billing/BaseBilling$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vending/billing/BaseBilling$State;->$VALUES:[Lcom/android/vending/billing/BaseBilling$State;

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
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/billing/BaseBilling$State;
    .locals 1
    .parameter

    .prologue
    .line 48
    const-class v0, Lcom/android/vending/billing/BaseBilling$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/billing/BaseBilling$State;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/billing/BaseBilling$State;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/android/vending/billing/BaseBilling$State;->$VALUES:[Lcom/android/vending/billing/BaseBilling$State;

    invoke-virtual {v0}, [Lcom/android/vending/billing/BaseBilling$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/billing/BaseBilling$State;

    return-object v0
.end method
