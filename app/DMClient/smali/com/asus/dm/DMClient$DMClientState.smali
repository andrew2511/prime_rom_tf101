.class public final enum Lcom/asus/dm/DMClient$DMClientState;
.super Ljava/lang/Enum;
.source "DMClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DMClientState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dm/DMClient$DMClientState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dm/DMClient$DMClientState;

.field public static final enum CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

.field public static final enum CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

.field public static final enum IDLE:Lcom/asus/dm/DMClient$DMClientState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 66
    new-instance v0, Lcom/asus/dm/DMClient$DMClientState;

    const-string v1, "CONFIRM_UPDATE_DIALOG"

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMClient$DMClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    new-instance v0, Lcom/asus/dm/DMClient$DMClientState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/asus/dm/DMClient$DMClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    new-instance v0, Lcom/asus/dm/DMClient$DMClientState;

    const-string v1, "CONFIRM_DOWNLOAD_DIALOG"

    invoke-direct {v0, v1, v4}, Lcom/asus/dm/DMClient$DMClientState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    .line 65
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/asus/dm/DMClient$DMClientState;

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_UPDATE_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->IDLE:Lcom/asus/dm/DMClient$DMClientState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dm/DMClient$DMClientState;->CONFIRM_DOWNLOAD_DIALOG:Lcom/asus/dm/DMClient$DMClientState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/asus/dm/DMClient$DMClientState;->$VALUES:[Lcom/asus/dm/DMClient$DMClientState;

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
    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dm/DMClient$DMClientState;
    .locals 1
    .parameter "name"

    .prologue
    .line 65
    const-class v0, Lcom/asus/dm/DMClient$DMClientState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/DMClient$DMClientState;

    return-object p0
.end method

.method public static values()[Lcom/asus/dm/DMClient$DMClientState;
    .locals 1

    .prologue
    .line 65
    sget-object v0, Lcom/asus/dm/DMClient$DMClientState;->$VALUES:[Lcom/asus/dm/DMClient$DMClientState;

    invoke-virtual {v0}, [Lcom/asus/dm/DMClient$DMClientState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dm/DMClient$DMClientState;

    return-object v0
.end method
