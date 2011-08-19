.class public final enum Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
.super Ljava/lang/Enum;
.source "BrowserHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/store/BrowserHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum CONNECTED_MOBILE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum CONNECTED_UNKNOWN:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum CONNECTED_WIFI:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum DISCONNECTED:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

.field public static final enum NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;


# instance fields
.field private final status:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 45
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const-string v1, "NOT_AVAILABLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 49
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v3, v3}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->DISCONNECTED:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 53
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const-string v1, "CONNECTED_UNKNOWN"

    invoke-direct {v0, v1, v4, v4}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_UNKNOWN:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 57
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const-string v1, "CONNECTED_WIFI"

    invoke-direct {v0, v1, v5, v5}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_WIFI:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 61
    new-instance v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    const-string v1, "CONNECTED_MOBILE"

    invoke-direct {v0, v1, v6, v6}, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_MOBILE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->NOT_AVAILABLE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->DISCONNECTED:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_UNKNOWN:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_WIFI:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->CONNECTED_MOBILE:Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->$VALUES:[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "status"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 67
    iput p3, p0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->status:I

    .line 68
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->$VALUES:[Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    invoke-virtual {v0}, [Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;

    return-object v0
.end method


# virtual methods
.method getValue()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/amazon/kcp/store/BrowserHost$NetworkStatus;->status:I

    return v0
.end method
