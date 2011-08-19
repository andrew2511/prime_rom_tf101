.class public final enum Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;
.super Ljava/lang/Enum;
.source "VdmFumo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/fumo/VdmFumo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ClientType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

.field public static final enum DEVICE:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

.field public static final enum USER:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 211
    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    const-string v1, "USER"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->USER:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    new-instance v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    const-string v1, "DEVICE"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->DEVICE:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    .line 210
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->USER:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->DEVICE:Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->$VALUES:[Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

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
    .line 210
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;
    .locals 1
    .parameter "name"

    .prologue
    .line 210
    const-class v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;
    .locals 1

    .prologue
    .line 210
    sget-object v0, Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->$VALUES:[Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/fumo/VdmFumo$ClientType;

    return-object v0
.end method
