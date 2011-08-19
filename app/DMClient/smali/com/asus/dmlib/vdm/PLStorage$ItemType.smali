.class public final enum Lcom/asus/dmlib/vdm/PLStorage$ItemType;
.super Ljava/lang/Enum;
.source "PLStorage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dmlib/vdm/PLStorage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dmlib/vdm/PLStorage$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dmlib/vdm/PLStorage$ItemType;

.field public static final enum DLRESUME:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

.field public static final enum DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

.field public static final enum FUMODELTA:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

.field public static final enum KEYSTORE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

.field public static final enum RESERVED:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

.field public static final enum TEMP_DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 39
    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    const-string v1, "DMTREE"

    invoke-direct {v0, v1, v3}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    const-string v1, "RESERVED"

    invoke-direct {v0, v1, v4}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->RESERVED:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    const-string v1, "DLRESUME"

    invoke-direct {v0, v1, v5}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->DLRESUME:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    const-string v1, "FUMODELTA"

    invoke-direct {v0, v1, v6}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->FUMODELTA:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    const-string v1, "TEMP_DMTREE"

    invoke-direct {v0, v1, v7}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->TEMP_DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    new-instance v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    const-string v1, "KEYSTORE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/dmlib/vdm/PLStorage$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->KEYSTORE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    .line 38
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->RESERVED:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->DLRESUME:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->FUMODELTA:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->TEMP_DMTREE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->KEYSTORE:Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->$VALUES:[Lcom/asus/dmlib/vdm/PLStorage$ItemType;

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
    .line 38
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dmlib/vdm/PLStorage$ItemType;
    .locals 1
    .parameter "name"

    .prologue
    .line 38
    const-class v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    return-object p0
.end method

.method public static values()[Lcom/asus/dmlib/vdm/PLStorage$ItemType;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/asus/dmlib/vdm/PLStorage$ItemType;->$VALUES:[Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    invoke-virtual {v0}, [Lcom/asus/dmlib/vdm/PLStorage$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dmlib/vdm/PLStorage$ItemType;

    return-object v0
.end method
