.class public final enum Lcom/asus/dm/DMService$UIAlertResult;
.super Ljava/lang/Enum;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UIAlertResult"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dm/DMService$UIAlertResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dm/DMService$UIAlertResult;

.field public static final enum CANCEL:Lcom/asus/dm/DMService$UIAlertResult;

.field public static final enum CHOICE_LIST_SELECTION:Lcom/asus/dm/DMService$UIAlertResult;

.field public static final enum CONFIRMATION:Lcom/asus/dm/DMService$UIAlertResult;

.field public static final enum DISPLAY_MSG_CLOSE:Lcom/asus/dm/DMService$UIAlertResult;

.field public static final enum INPUT:Lcom/asus/dm/DMService$UIAlertResult;

.field public static final enum TIMOUT:Lcom/asus/dm/DMService$UIAlertResult;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 148
    new-instance v0, Lcom/asus/dm/DMService$UIAlertResult;

    const-string v1, "CHOICE_LIST_SELECTION"

    invoke-direct {v0, v1, v3}, Lcom/asus/dm/DMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$UIAlertResult;->CHOICE_LIST_SELECTION:Lcom/asus/dm/DMService$UIAlertResult;

    new-instance v0, Lcom/asus/dm/DMService$UIAlertResult;

    const-string v1, "CANCEL"

    invoke-direct {v0, v1, v4}, Lcom/asus/dm/DMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$UIAlertResult;->CANCEL:Lcom/asus/dm/DMService$UIAlertResult;

    new-instance v0, Lcom/asus/dm/DMService$UIAlertResult;

    const-string v1, "CONFIRMATION"

    invoke-direct {v0, v1, v5}, Lcom/asus/dm/DMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$UIAlertResult;->CONFIRMATION:Lcom/asus/dm/DMService$UIAlertResult;

    new-instance v0, Lcom/asus/dm/DMService$UIAlertResult;

    const-string v1, "DISPLAY_MSG_CLOSE"

    invoke-direct {v0, v1, v6}, Lcom/asus/dm/DMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$UIAlertResult;->DISPLAY_MSG_CLOSE:Lcom/asus/dm/DMService$UIAlertResult;

    .line 149
    new-instance v0, Lcom/asus/dm/DMService$UIAlertResult;

    const-string v1, "INPUT"

    invoke-direct {v0, v1, v7}, Lcom/asus/dm/DMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$UIAlertResult;->INPUT:Lcom/asus/dm/DMService$UIAlertResult;

    new-instance v0, Lcom/asus/dm/DMService$UIAlertResult;

    const-string v1, "TIMOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMService$UIAlertResult;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$UIAlertResult;->TIMOUT:Lcom/asus/dm/DMService$UIAlertResult;

    .line 147
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/asus/dm/DMService$UIAlertResult;

    sget-object v1, Lcom/asus/dm/DMService$UIAlertResult;->CHOICE_LIST_SELECTION:Lcom/asus/dm/DMService$UIAlertResult;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dm/DMService$UIAlertResult;->CANCEL:Lcom/asus/dm/DMService$UIAlertResult;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dm/DMService$UIAlertResult;->CONFIRMATION:Lcom/asus/dm/DMService$UIAlertResult;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dm/DMService$UIAlertResult;->DISPLAY_MSG_CLOSE:Lcom/asus/dm/DMService$UIAlertResult;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dm/DMService$UIAlertResult;->INPUT:Lcom/asus/dm/DMService$UIAlertResult;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dm/DMService$UIAlertResult;->TIMOUT:Lcom/asus/dm/DMService$UIAlertResult;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dm/DMService$UIAlertResult;->$VALUES:[Lcom/asus/dm/DMService$UIAlertResult;

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
    .line 147
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dm/DMService$UIAlertResult;
    .locals 1
    .parameter "name"

    .prologue
    .line 147
    const-class v0, Lcom/asus/dm/DMService$UIAlertResult;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/DMService$UIAlertResult;

    return-object p0
.end method

.method public static values()[Lcom/asus/dm/DMService$UIAlertResult;
    .locals 1

    .prologue
    .line 147
    sget-object v0, Lcom/asus/dm/DMService$UIAlertResult;->$VALUES:[Lcom/asus/dm/DMService$UIAlertResult;

    invoke-virtual {v0}, [Lcom/asus/dm/DMService$UIAlertResult;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dm/DMService$UIAlertResult;

    return-object v0
.end method
