.class public final enum Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;
.super Ljava/lang/Enum;
.source "PurchaseStatusTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/model/PurchaseStatusTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PurchaseState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

.field public static final enum PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

.field public static final enum PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

.field public static final enum PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    const-string v1, "PURCHASE_INITIATED"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    .line 39
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    const-string v1, "PURCHASE_COMPLETED"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    .line 41
    new-instance v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    const-string v1, "PURCHASE_COMPLETED_WITH_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    .line 35
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_INITIATED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->PURCHASE_COMPLETED_WITH_ERROR:Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->$VALUES:[Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;
    .locals 1
    .parameter

    .prologue
    .line 35
    const-class v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->$VALUES:[Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    invoke-virtual {v0}, [Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/model/PurchaseStatusTracker$PurchaseState;

    return-object v0
.end method
