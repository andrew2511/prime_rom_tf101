.class public final enum Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;
.super Ljava/lang/Enum;
.source "MmiInfoMsg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/MmiInfoMsg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InfoType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

.field public static final enum EXITING:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

.field public static final enum GENERIC:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

.field public static final enum STARTUP:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    const-string v1, "STARTUP"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->STARTUP:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    const-string v1, "GENERIC"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->GENERIC:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    new-instance v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    const-string v1, "EXITING"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->EXITING:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->STARTUP:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->GENERIC:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->EXITING:Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->$VALUES:[Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;
    .locals 1
    .parameter "name"

    .prologue
    .line 15
    const-class v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->$VALUES:[Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/MmiInfoMsg$InfoType;

    return-object v0
.end method
