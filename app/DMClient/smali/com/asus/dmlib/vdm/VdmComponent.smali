.class public final enum Lcom/asus/dmlib/vdm/VdmComponent;
.super Ljava/lang/Enum;
.source "VdmComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/VdmComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum AUTH:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum BOOTSTRAP:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum CLIENT:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum COMM:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum CONNMO:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum CORE:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum DDL:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum DEVICE:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum DL:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum DS:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum FUMO:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum HTTP:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum LAWMO:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum MMI:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum RDM:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum SCOMO:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum SESS:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum SESSCOMM:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum SESSQ:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum SYNCML:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum TREE:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum TRG:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum UDP:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum UTIL:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum WBXML:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum WIB:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum WIMAX:Lcom/asus/dmlib/vdm/VdmComponent;

.field public static final enum WSP:Lcom/asus/dmlib/vdm/VdmComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "CORE"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->CORE:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "UTIL"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->UTIL:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "MMI"

    invoke-direct {v0, v1, v5}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->MMI:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "COMM"

    invoke-direct {v0, v1, v6}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->COMM:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v7}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->DEVICE:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "RDM"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->RDM:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "TRG"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->TRG:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "SESS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->SESS:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "SESSQ"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->SESSQ:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "SESSCOMM"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->SESSCOMM:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "SYNCML"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->SYNCML:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "TREE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->TREE:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "AUTH"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->AUTH:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "WBXML"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->WBXML:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "DL"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->DL:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "HTTP"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->HTTP:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "CLIENT"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->CLIENT:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "FUMO"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->FUMO:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "SCOMO"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->SCOMO:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "BOOTSTRAP"

    const/16 v2, 0x13

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->BOOTSTRAP:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "WIMAX"

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->WIMAX:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "DS"

    const/16 v2, 0x15

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->DS:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "CONNMO"

    const/16 v2, 0x16

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->CONNMO:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "WSP"

    const/16 v2, 0x17

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->WSP:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "UDP"

    const/16 v2, 0x18

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->UDP:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "WIB"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->WIB:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "LAWMO"

    const/16 v2, 0x1a

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->LAWMO:Lcom/asus/dmlib/vdm/VdmComponent;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmComponent;

    const-string v1, "DDL"

    const/16 v2, 0x1b

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->DDL:Lcom/asus/dmlib/vdm/VdmComponent;

    .line 3
    const/16 v0, 0x1c

    new-array v0, v0, [Lcom/asus/dmlib/vdm/VdmComponent;

    sget-object v1, Lcom/asus/dmlib/vdm/VdmComponent;->CORE:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/VdmComponent;->UTIL:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/VdmComponent;->MMI:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/vdm/VdmComponent;->COMM:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dmlib/vdm/VdmComponent;->DEVICE:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->RDM:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->TRG:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->SESS:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->SESSQ:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->SESSCOMM:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->SYNCML:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->TREE:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->AUTH:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->WBXML:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->DL:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->HTTP:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->CLIENT:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->FUMO:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->SCOMO:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->BOOTSTRAP:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->WIMAX:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->DS:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->CONNMO:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->WSP:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->UDP:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->WIB:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->LAWMO:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/asus/dmlib/vdm/VdmComponent;->DDL:Lcom/asus/dmlib/vdm/VdmComponent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->$VALUES:[Lcom/asus/dmlib/vdm/VdmComponent;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/VdmComponent;
    .locals 1
    .parameter "name"

    .prologue
    .line 3
    const-class v0, Lcom/asus/dmlib/vdm/VdmComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/VdmComponent;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/VdmComponent;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/asus/dmlib/vdm/VdmComponent;->$VALUES:[Lcom/asus/dmlib/vdm/VdmComponent;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/VdmComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/VdmComponent;

    return-object v0
.end method
