.class public final enum Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
.super Ljava/lang/Enum;
.source "LocalAssetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/LocalAssetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AutoUpdateState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

.field public static final enum DEFAULT:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

.field public static final enum DISABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

.field public static final enum ENABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 212
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DEFAULT:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    .line 217
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DISABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    .line 222
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    const-string v1, "ENABLED"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->ENABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    .line 207
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DEFAULT:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DISABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->ENABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->$VALUES:[Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

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
    .line 207
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .locals 1
    .parameter

    .prologue
    .line 207
    const-class v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    .locals 1

    .prologue
    .line 207
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->$VALUES:[Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    invoke-virtual {v0}, [Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    return-object v0
.end method
