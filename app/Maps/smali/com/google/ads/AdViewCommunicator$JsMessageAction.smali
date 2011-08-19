.class public final enum Lcom/google/ads/AdViewCommunicator$JsMessageAction;
.super Ljava/lang/Enum;
.source "AdViewCommunicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/ads/AdViewCommunicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "JsMessageAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/ads/AdViewCommunicator$JsMessageAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/ads/AdViewCommunicator$JsMessageAction;

.field public static final enum JS_OUTSIDE_CLICK_MESSAGE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;

.field public static final enum JS_REPORT_INSTALL_STATE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;


# instance fields
.field private mMessageString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 50
    new-instance v0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    const-string v1, "JS_OUTSIDE_CLICK_MESSAGE"

    const-string v2, "click_outside_ad"

    invoke-direct {v0, v1, v3, v2}, Lcom/google/ads/AdViewCommunicator$JsMessageAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->JS_OUTSIDE_CLICK_MESSAGE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    .line 51
    new-instance v0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    const-string v1, "JS_REPORT_INSTALL_STATE"

    const-string v2, "report_application_installation_state"

    invoke-direct {v0, v1, v4, v2}, Lcom/google/ads/AdViewCommunicator$JsMessageAction;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->JS_REPORT_INSTALL_STATE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    .line 49
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    sget-object v1, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->JS_OUTSIDE_CLICK_MESSAGE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->JS_REPORT_INSTALL_STATE:Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->$VALUES:[Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "messageString"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 55
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 56
    iput-object p3, p0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->mMessageString:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/ads/AdViewCommunicator$JsMessageAction;
    .locals 1
    .parameter "name"

    .prologue
    .line 49
    const-class v0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    return-object p0
.end method

.method public static values()[Lcom/google/ads/AdViewCommunicator$JsMessageAction;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->$VALUES:[Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    invoke-virtual {v0}, [Lcom/google/ads/AdViewCommunicator$JsMessageAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/ads/AdViewCommunicator$JsMessageAction;

    return-object v0
.end method


# virtual methods
.method public getMessageString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/ads/AdViewCommunicator$JsMessageAction;->mMessageString:Ljava/lang/String;

    return-object v0
.end method
