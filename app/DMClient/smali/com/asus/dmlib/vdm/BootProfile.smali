.class public final enum Lcom/asus/dmlib/vdm/BootProfile;
.super Ljava/lang/Enum;
.source "BootProfile.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/BootProfile;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/BootProfile;

.field public static final enum PLAIN:Lcom/asus/dmlib/vdm/BootProfile;

.field public static final enum WAP:Lcom/asus/dmlib/vdm/BootProfile;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/asus/dmlib/vdm/BootProfile;

    const-string v1, "PLAIN"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/BootProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/BootProfile;->PLAIN:Lcom/asus/dmlib/vdm/BootProfile;

    new-instance v0, Lcom/asus/dmlib/vdm/BootProfile;

    const-string v1, "WAP"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/BootProfile;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/BootProfile;->WAP:Lcom/asus/dmlib/vdm/BootProfile;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/asus/dmlib/vdm/BootProfile;

    sget-object v1, Lcom/asus/dmlib/vdm/BootProfile;->PLAIN:Lcom/asus/dmlib/vdm/BootProfile;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/BootProfile;->WAP:Lcom/asus/dmlib/vdm/BootProfile;

    aput-object v1, v0, v3

    sput-object v0, Lcom/asus/dmlib/vdm/BootProfile;->$VALUES:[Lcom/asus/dmlib/vdm/BootProfile;

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

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/BootProfile;
    .locals 1
    .parameter "name"

    .prologue
    .line 4
    const-class v0, Lcom/asus/dmlib/vdm/BootProfile;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/BootProfile;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/BootProfile;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Lcom/asus/dmlib/vdm/BootProfile;->$VALUES:[Lcom/asus/dmlib/vdm/BootProfile;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/BootProfile;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/BootProfile;

    return-object v0
.end method
