.class public final enum Lcom/android/vending/model/PrefetchedBundle$RequestType;
.super Ljava/lang/Enum;
.source "PrefetchedBundle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/PrefetchedBundle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/PrefetchedBundle$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field public static final enum ASSET:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field public static final enum COMMENTS:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field public static final enum GET_CARRIER_INFO:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field public static final enum GET_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field public static final enum GET_IMAGE:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field public static final enum PURCHASE_METADATA:Lcom/android/vending/model/PrefetchedBundle$RequestType;

.field public static final enum SUB_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    const-string v1, "ASSET"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/PrefetchedBundle$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->ASSET:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 22
    new-instance v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    const-string v1, "GET_IMAGE"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/model/PrefetchedBundle$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_IMAGE:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 23
    new-instance v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    const-string v1, "GET_CARRIER_INFO"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/model/PrefetchedBundle$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_CARRIER_INFO:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 24
    new-instance v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    const-string v1, "GET_CATEGORIES"

    invoke-direct {v0, v1, v6}, Lcom/android/vending/model/PrefetchedBundle$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 25
    new-instance v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    const-string v1, "COMMENTS"

    invoke-direct {v0, v1, v7}, Lcom/android/vending/model/PrefetchedBundle$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->COMMENTS:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 26
    new-instance v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    const-string v1, "PURCHASE_METADATA"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/PrefetchedBundle$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->PURCHASE_METADATA:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 27
    new-instance v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    const-string v1, "SUB_CATEGORIES"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/PrefetchedBundle$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->SUB_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    .line 20
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/vending/model/PrefetchedBundle$RequestType;

    sget-object v1, Lcom/android/vending/model/PrefetchedBundle$RequestType;->ASSET:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_IMAGE:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_CARRIER_INFO:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/model/PrefetchedBundle$RequestType;->COMMENTS:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->PURCHASE_METADATA:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/model/PrefetchedBundle$RequestType;->SUB_CATEGORIES:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->$VALUES:[Lcom/android/vending/model/PrefetchedBundle$RequestType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/PrefetchedBundle$RequestType;
    .locals 1
    .parameter

    .prologue
    .line 20
    const-class v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/PrefetchedBundle$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/PrefetchedBundle$RequestType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/android/vending/model/PrefetchedBundle$RequestType;->$VALUES:[Lcom/android/vending/model/PrefetchedBundle$RequestType;

    invoke-virtual {v0}, [Lcom/android/vending/model/PrefetchedBundle$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/PrefetchedBundle$RequestType;

    return-object v0
.end method
