.class final enum Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;
.super Ljava/lang/Enum;
.source "PurchaseButtonWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PurchaseButtonWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionIntent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

.field public static final enum BUY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

.field public static final enum MANAGE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

.field public static final enum OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    const-string v1, "MANAGE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->MANAGE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    .line 28
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    .line 29
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    const-string v1, "BUY"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->BUY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->MANAGE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->BUY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->$VALUES:[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;
    .locals 1
    .parameter

    .prologue
    .line 26
    const-class v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->$VALUES:[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    invoke-virtual {v0}, [Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionIntent;

    return-object v0
.end method
