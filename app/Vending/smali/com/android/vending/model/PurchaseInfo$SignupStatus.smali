.class public final enum Lcom/android/vending/model/PurchaseInfo$SignupStatus;
.super Ljava/lang/Enum;
.source "PurchaseInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/PurchaseInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SignupStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/PurchaseInfo$SignupStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/PurchaseInfo$SignupStatus;

.field public static final enum NEW_USER:Lcom/android/vending/model/PurchaseInfo$SignupStatus;

.field public static final enum SIGNED_UP:Lcom/android/vending/model/PurchaseInfo$SignupStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 39
    new-instance v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    const-string v1, "SIGNED_UP"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/PurchaseInfo$SignupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->SIGNED_UP:Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    new-instance v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    const-string v1, "NEW_USER"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/PurchaseInfo$SignupStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->NEW_USER:Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    .line 38
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->SIGNED_UP:Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->NEW_USER:Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->$VALUES:[Lcom/android/vending/model/PurchaseInfo$SignupStatus;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/PurchaseInfo$SignupStatus;
    .locals 1
    .parameter

    .prologue
    .line 38
    const-class v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/PurchaseInfo$SignupStatus;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/android/vending/model/PurchaseInfo$SignupStatus;->$VALUES:[Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    invoke-virtual {v0}, [Lcom/android/vending/model/PurchaseInfo$SignupStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/PurchaseInfo$SignupStatus;

    return-object v0
.end method
