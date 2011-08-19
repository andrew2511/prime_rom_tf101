.class final enum Lcom/google/android/finsky/activities/PurchaseActivity$State;
.super Ljava/lang/Enum;
.source "PurchaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/finsky/activities/PurchaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/finsky/activities/PurchaseActivity$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/finsky/activities/PurchaseActivity$State;

.field public static final enum PURCHASE_FOP_LOADING:Lcom/google/android/finsky/activities/PurchaseActivity$State;

.field public static final enum PURCHASE_SUMMARY:Lcom/google/android/finsky/activities/PurchaseActivity$State;

.field public static final enum WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 96
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;

    const-string v1, "PURCHASE_SUMMARY"

    invoke-direct {v0, v1, v2}, Lcom/google/android/finsky/activities/PurchaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_SUMMARY:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    .line 99
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;

    const-string v1, "PURCHASE_FOP_LOADING"

    invoke-direct {v0, v1, v3}, Lcom/google/android/finsky/activities/PurchaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_FOP_LOADING:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    .line 101
    new-instance v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;

    const-string v1, "WEBVIEW"

    invoke-direct {v0, v1, v4}, Lcom/google/android/finsky/activities/PurchaseActivity$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    .line 93
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/finsky/activities/PurchaseActivity$State;

    sget-object v1, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_SUMMARY:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/finsky/activities/PurchaseActivity$State;->PURCHASE_FOP_LOADING:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/finsky/activities/PurchaseActivity$State;->WEBVIEW:Lcom/google/android/finsky/activities/PurchaseActivity$State;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->$VALUES:[Lcom/google/android/finsky/activities/PurchaseActivity$State;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/finsky/activities/PurchaseActivity$State;
    .locals 1
    .parameter

    .prologue
    .line 93
    const-class v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/android/finsky/activities/PurchaseActivity$State;

    return-object p0
.end method

.method public static values()[Lcom/google/android/finsky/activities/PurchaseActivity$State;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/google/android/finsky/activities/PurchaseActivity$State;->$VALUES:[Lcom/google/android/finsky/activities/PurchaseActivity$State;

    invoke-virtual {v0}, [Lcom/google/android/finsky/activities/PurchaseActivity$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/finsky/activities/PurchaseActivity$State;

    return-object v0
.end method
