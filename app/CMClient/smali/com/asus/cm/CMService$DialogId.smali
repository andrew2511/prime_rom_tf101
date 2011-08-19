.class public final enum Lcom/asus/cm/CMService$DialogId;
.super Ljava/lang/Enum;
.source "CMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/cm/CMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/cm/CMService$DialogId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/cm/CMService$DialogId;

.field public static final enum CONFIRM_DOWNLOAD:Lcom/asus/cm/CMService$DialogId;

.field public static final enum CONFIRM_UPDATE:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_CONFIRM:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_DATE_INPUT:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_DISPLAY:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_INPUT:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_MULTIPLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_SINGLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

.field public static final enum UI_ALERT_TIME_INPUT:Lcom/asus/cm/CMService$DialogId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "CONFIRM_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/cm/CMService$DialogId;

    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "CONFIRM_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/cm/CMService$DialogId;

    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_DISPLAY"

    invoke-direct {v0, v1, v5}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_DISPLAY:Lcom/asus/cm/CMService$DialogId;

    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_CONFIRM"

    invoke-direct {v0, v1, v6}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_CONFIRM:Lcom/asus/cm/CMService$DialogId;

    .line 184
    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_SINGLE_CHOICE"

    invoke-direct {v0, v1, v7}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_SINGLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_MULTIPLE_CHOICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_MULTIPLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_INPUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_INPUT:Lcom/asus/cm/CMService$DialogId;

    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_TIME_INPUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_TIME_INPUT:Lcom/asus/cm/CMService$DialogId;

    .line 185
    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_DATE_INPUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_DATE_INPUT:Lcom/asus/cm/CMService$DialogId;

    new-instance v0, Lcom/asus/cm/CMService$DialogId;

    const-string v1, "UI_ALERT_FIRMWARE_UPGRADE_FAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/asus/cm/CMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/cm/CMService$DialogId;

    .line 182
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/asus/cm/CMService$DialogId;

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/cm/CMService$DialogId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/cm/CMService$DialogId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_DISPLAY:Lcom/asus/cm/CMService$DialogId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_CONFIRM:Lcom/asus/cm/CMService$DialogId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_SINGLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_MULTIPLE_CHOICE:Lcom/asus/cm/CMService$DialogId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_INPUT:Lcom/asus/cm/CMService$DialogId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_TIME_INPUT:Lcom/asus/cm/CMService$DialogId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_DATE_INPUT:Lcom/asus/cm/CMService$DialogId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/asus/cm/CMService$DialogId;->UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/cm/CMService$DialogId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/cm/CMService$DialogId;->$VALUES:[Lcom/asus/cm/CMService$DialogId;

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
    .line 182
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/cm/CMService$DialogId;
    .locals 1
    .parameter "name"

    .prologue
    .line 182
    const-class v0, Lcom/asus/cm/CMService$DialogId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/cm/CMService$DialogId;

    return-object p0
.end method

.method public static values()[Lcom/asus/cm/CMService$DialogId;
    .locals 1

    .prologue
    .line 182
    sget-object v0, Lcom/asus/cm/CMService$DialogId;->$VALUES:[Lcom/asus/cm/CMService$DialogId;

    invoke-virtual {v0}, [Lcom/asus/cm/CMService$DialogId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/cm/CMService$DialogId;

    return-object v0
.end method
