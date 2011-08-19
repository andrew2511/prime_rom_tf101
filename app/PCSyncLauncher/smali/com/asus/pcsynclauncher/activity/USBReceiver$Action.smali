.class public final enum Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;
.super Ljava/lang/Enum;
.source "USBReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/pcsynclauncher/activity/USBReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

.field public static final enum AGENT_CONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

.field public static final enum AGENT_DISCONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

.field public static final enum CANCEL_NOTIFICATION:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

.field public static final enum NONE:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

.field public static final enum START_LAUNCHER:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->NONE:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    new-instance v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    const-string v1, "START_LAUNCHER"

    invoke-direct {v0, v1, v3}, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->START_LAUNCHER:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    new-instance v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    const-string v1, "AGENT_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_CONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    new-instance v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    const-string v1, "AGENT_DISCONNECTED"

    invoke-direct {v0, v1, v5}, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_DISCONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    new-instance v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    const-string v1, "CANCEL_NOTIFICATION"

    invoke-direct {v0, v1, v6}, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->CANCEL_NOTIFICATION:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    .line 40
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    sget-object v1, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->NONE:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->START_LAUNCHER:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_CONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->AGENT_DISCONNECTED:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->CANCEL_NOTIFICATION:Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    aput-object v1, v0, v6

    sput-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->$VALUES:[Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

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
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;
    .locals 1
    .parameter

    .prologue
    .line 40
    const-class v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    return-object p0
.end method

.method public static values()[Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->$VALUES:[Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    invoke-virtual {v0}, [Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/pcsynclauncher/activity/USBReceiver$Action;

    return-object v0
.end method
