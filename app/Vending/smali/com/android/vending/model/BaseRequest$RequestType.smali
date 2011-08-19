.class public final enum Lcom/android/vending/model/BaseRequest$RequestType;
.super Ljava/lang/Enum;
.source "BaseRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/BaseRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/BaseRequest$RequestType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/BaseRequest$RequestType;

.field public static final enum API_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

.field public static final enum BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

.field public static final enum LICENSE_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

.field public static final enum SUGGEST_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/android/vending/model/BaseRequest$RequestType;

    const-string v1, "API_REQUEST"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/model/BaseRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->API_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    new-instance v0, Lcom/android/vending/model/BaseRequest$RequestType;

    const-string v1, "SUGGEST_REQUEST"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/model/BaseRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->SUGGEST_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    new-instance v0, Lcom/android/vending/model/BaseRequest$RequestType;

    const-string v1, "LICENSE_REQUEST"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/model/BaseRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->LICENSE_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    new-instance v0, Lcom/android/vending/model/BaseRequest$RequestType;

    const-string v1, "BILLING_REQUEST"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/model/BaseRequest$RequestType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    .line 16
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/vending/model/BaseRequest$RequestType;

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->API_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->SUGGEST_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->LICENSE_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/BaseRequest$RequestType;->BILLING_REQUEST:Lcom/android/vending/model/BaseRequest$RequestType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->$VALUES:[Lcom/android/vending/model/BaseRequest$RequestType;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1
    .parameter

    .prologue
    .line 16
    const-class v0, Lcom/android/vending/model/BaseRequest$RequestType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/BaseRequest$RequestType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/BaseRequest$RequestType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/android/vending/model/BaseRequest$RequestType;->$VALUES:[Lcom/android/vending/model/BaseRequest$RequestType;

    invoke-virtual {v0}, [Lcom/android/vending/model/BaseRequest$RequestType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/BaseRequest$RequestType;

    return-object v0
.end method
