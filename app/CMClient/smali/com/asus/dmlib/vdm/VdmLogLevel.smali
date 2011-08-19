.class public final enum Lcom/asus/dmlib/vdm/VdmLogLevel;
.super Ljava/lang/Enum;
.source "VdmLogLevel.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/VdmLogLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/VdmLogLevel;

.field public static final enum DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

.field public static final enum ERROR:Lcom/asus/dmlib/vdm/VdmLogLevel;

.field public static final enum INFO:Lcom/asus/dmlib/vdm/VdmLogLevel;

.field public static final enum NOTICE:Lcom/asus/dmlib/vdm/VdmLogLevel;

.field public static final enum WARNING:Lcom/asus/dmlib/vdm/VdmLogLevel;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/asus/dmlib/vdm/VdmLogLevel;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->ERROR:Lcom/asus/dmlib/vdm/VdmLogLevel;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmLogLevel;

    const-string v1, "WARNING"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/VdmLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->WARNING:Lcom/asus/dmlib/vdm/VdmLogLevel;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmLogLevel;

    const-string v1, "NOTICE"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/VdmLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->NOTICE:Lcom/asus/dmlib/vdm/VdmLogLevel;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmLogLevel;

    const-string v1, "INFO"

    invoke-direct {v0, v1, v5}, Lcom/asus/dmlib/vdm/VdmLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->INFO:Lcom/asus/dmlib/vdm/VdmLogLevel;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmLogLevel;

    const-string v1, "DEBUG"

    invoke-direct {v0, v1, v6}, Lcom/asus/dmlib/vdm/VdmLogLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

    .line 4
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/asus/dmlib/vdm/VdmLogLevel;

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->ERROR:Lcom/asus/dmlib/vdm/VdmLogLevel;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->WARNING:Lcom/asus/dmlib/vdm/VdmLogLevel;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->NOTICE:Lcom/asus/dmlib/vdm/VdmLogLevel;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->INFO:Lcom/asus/dmlib/vdm/VdmLogLevel;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/vdm/VdmLogLevel;->DEBUG:Lcom/asus/dmlib/vdm/VdmLogLevel;

    aput-object v1, v0, v6

    sput-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->$VALUES:[Lcom/asus/dmlib/vdm/VdmLogLevel;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/VdmLogLevel;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/VdmLogLevel;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/VdmLogLevel;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/asus/dmlib/vdm/VdmLogLevel;->$VALUES:[Lcom/asus/dmlib/vdm/VdmLogLevel;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/VdmLogLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/VdmLogLevel;

    return-object v0
.end method
