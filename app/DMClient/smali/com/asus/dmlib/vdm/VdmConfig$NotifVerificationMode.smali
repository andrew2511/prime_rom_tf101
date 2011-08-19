.class public final enum Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;
.super Ljava/lang/Enum;
.source "VdmConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/VdmConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotifVerificationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

.field public static final enum DISABLED:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

.field public static final enum RESET_NONCE:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

.field public static final enum REVERIFY:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

.field public static final enum STRICT:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 408
    new-instance v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    const-string v1, "DISABLED"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->DISABLED:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    const-string v1, "REVERIFY"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->REVERIFY:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    const-string v1, "RESET_NONCE"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->RESET_NONCE:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    new-instance v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    const-string v1, "STRICT"

    invoke-direct {v0, v1, v5}, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->STRICT:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    .line 407
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    sget-object v1, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->DISABLED:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->REVERIFY:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->RESET_NONCE:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->STRICT:Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->$VALUES:[Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

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
    .line 407
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method protected static fromInt(I)Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;
    .locals 1
    .parameter "i"

    .prologue
    .line 411
    invoke-static {}, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->values()[Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    move-result-object v0

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 407
    const-class v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;
    .locals 1

    .prologue
    .line 407
    sget-object v0, Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->$VALUES:[Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/VdmConfig$NotifVerificationMode;

    return-object v0
.end method
