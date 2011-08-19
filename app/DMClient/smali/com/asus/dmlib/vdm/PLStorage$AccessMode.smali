.class public final enum Lcom/asus/dmlib/vdm/PLStorage$AccessMode;
.super Ljava/lang/Enum;
.source "PLStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/PLStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccessMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/PLStorage$AccessMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

.field public static final enum APPEND:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

.field public static final enum READ:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

.field public static final enum WRITE:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    const-string v1, "READ"

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->READ:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    const-string v1, "WRITE"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->WRITE:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    const-string v1, "APPEND"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->APPEND:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->READ:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->WRITE:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->APPEND:Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->$VALUES:[Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/PLStorage$AccessMode;
    .locals 1
    .parameter "name"

    .prologue
    .line 42
    const-class v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/PLStorage$AccessMode;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->$VALUES:[Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/PLStorage$AccessMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/PLStorage$AccessMode;

    return-object v0
.end method
