.class public final enum Lcom/asus/cm/CMService$UIAlertResult;
.super Ljava/lang/Enum;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIAlertResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/cm/CMService$UIAlertResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/cm/CMService$UIAlertResult;

.field public static final enum CANCEL:Lcom/asus/cm/CMService$UIAlertResult;

.field public static final enum CHOICE_LIST_SELECTION:Lcom/asus/cm/CMService$UIAlertResult;

.field public static final enum CONFIRMATION:Lcom/asus/cm/CMService$UIAlertResult;

.field public static final enum DISPLAY_MSG_CLOSE:Lcom/asus/cm/CMService$UIAlertResult;

.field public static final enum INPUT:Lcom/asus/cm/CMService$UIAlertResult;

.field public static final enum TIMOUT:Lcom/asus/cm/CMService$UIAlertResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 178
    new-instance v0, Lcom/asus/cm/CMService$UIAlertResult;

    const-string v1, "CHOICE_LIST_SELECTION"

    invoke-direct {v0, v1, v3}, Lcom/asus/cm/CMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$UIAlertResult;->CHOICE_LIST_SELECTION:Lcom/asus/cm/CMService$UIAlertResult;

    new-instance v0, Lcom/asus/cm/CMService$UIAlertResult;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/asus/cm/CMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$UIAlertResult;->CANCEL:Lcom/asus/cm/CMService$UIAlertResult;

    new-instance v0, Lcom/asus/cm/CMService$UIAlertResult;

    const-string v1, "CONFIRMATION"

    invoke-direct {v0, v1, v5}, Lcom/asus/cm/CMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$UIAlertResult;->CONFIRMATION:Lcom/asus/cm/CMService$UIAlertResult;

    new-instance v0, Lcom/asus/cm/CMService$UIAlertResult;

    const-string v1, "DISPLAY_MSG_CLOSE"

    invoke-direct {v0, v1, v6}, Lcom/asus/cm/CMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$UIAlertResult;->DISPLAY_MSG_CLOSE:Lcom/asus/cm/CMService$UIAlertResult;

    .line 179
    new-instance v0, Lcom/asus/cm/CMService$UIAlertResult;

    const-string v1, "INPUT"

    invoke-direct {v0, v1, v7}, Lcom/asus/cm/CMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$UIAlertResult;->INPUT:Lcom/asus/cm/CMService$UIAlertResult;

    new-instance v0, Lcom/asus/cm/CMService$UIAlertResult;

    const-string v1, "TIMOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/CMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$UIAlertResult;->TIMOUT:Lcom/asus/cm/CMService$UIAlertResult;

    .line 177
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/asus/cm/CMService$UIAlertResult;

    sget-object v1, Lcom/asus/cm/CMService$UIAlertResult;->CHOICE_LIST_SELECTION:Lcom/asus/cm/CMService$UIAlertResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/cm/CMService$UIAlertResult;->CANCEL:Lcom/asus/cm/CMService$UIAlertResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/cm/CMService$UIAlertResult;->CONFIRMATION:Lcom/asus/cm/CMService$UIAlertResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/cm/CMService$UIAlertResult;->DISPLAY_MSG_CLOSE:Lcom/asus/cm/CMService$UIAlertResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/cm/CMService$UIAlertResult;->INPUT:Lcom/asus/cm/CMService$UIAlertResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/cm/CMService$UIAlertResult;->TIMOUT:Lcom/asus/cm/CMService$UIAlertResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/cm/CMService$UIAlertResult;->$VALUES:[Lcom/asus/cm/CMService$UIAlertResult;

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
    .line 177
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/cm/CMService$UIAlertResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 177
    const-class v0, Lcom/asus/cm/CMService$UIAlertResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/cm/CMService$UIAlertResult;

    return-object p0
.end method

.method public static values()[Lcom/asus/cm/CMService$UIAlertResult;
    .locals 1

    .prologue
    .line 177
    sget-object v0, Lcom/asus/cm/CMService$UIAlertResult;->$VALUES:[Lcom/asus/cm/CMService$UIAlertResult;

    invoke-virtual {v0}, [Lcom/asus/cm/CMService$UIAlertResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/cm/CMService$UIAlertResult;

    return-object v0
.end method
