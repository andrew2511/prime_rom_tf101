.class public final enum Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;
.super Ljava/lang/Enum;
.source "WLANSubLeafIOHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/handler/WLANSubLeafIOHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HandleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

.field public static final enum NwMode:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

.field public static final enum SSID:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

.field public static final enum SecurityMode:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 27
    new-instance v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    const-string v1, "SSID"

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->SSID:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    new-instance v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    const-string v1, "NwMode"

    invoke-direct {v0, v1, v3}, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->NwMode:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    new-instance v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    const-string v1, "SecurityMode"

    invoke-direct {v0, v1, v4}, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->SecurityMode:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    sget-object v1, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->SSID:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->NwMode:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->SecurityMode:Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->$VALUES:[Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;
    .locals 1
    .parameter "name"

    .prologue
    .line 26
    const-class v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->$VALUES:[Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    invoke-virtual {v0}, [Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dm/handler/WLANSubLeafIOHandler$HandleType;

    return-object v0
.end method
