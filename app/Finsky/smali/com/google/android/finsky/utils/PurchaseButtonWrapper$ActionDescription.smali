.class final enum Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;
.super Ljava/lang/Enum;
.source "PurchaseButtonWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/utils/PurchaseButtonWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ActionDescription"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

.field public static final enum BUY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

.field public static final enum INSTALL:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

.field public static final enum OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

.field public static final enum PLAY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

.field public static final enum PRICE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

.field public static final enum UPDATE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 33
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    const-string v1, "UPDATE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->UPDATE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 34
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    const-string v1, "OPEN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 35
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v5}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->INSTALL:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 36
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v6}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->PLAY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 37
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    const-string v1, "BUY"

    invoke-direct {v0, v1, v7}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->BUY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 38
    new-instance v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    const-string v1, "PRICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->PRICE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    .line 32
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->UPDATE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->OPEN:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->INSTALL:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->PLAY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->BUY:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->PRICE:Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->$VALUES:[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

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
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;
    .locals 1
    .parameter

    .prologue
    .line 32
    const-class v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->$VALUES:[Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    invoke-virtual {v0}, [Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/utils/PurchaseButtonWrapper$ActionDescription;

    return-object v0
.end method
