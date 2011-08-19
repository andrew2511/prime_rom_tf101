.class public final enum Lcom/asus/dm/DMService$DialogId;
.super Ljava/lang/Enum;
.source "DMService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/dm/DMService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DialogId"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/asus/dm/DMService$DialogId;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/asus/dm/DMService$DialogId;

.field public static final enum CONFIRM_DOWNLOAD:Lcom/asus/dm/DMService$DialogId;

.field public static final enum CONFIRM_UPDATE:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_BATTERY_NOT_ENOUGH:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_CONFIRM:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_DATE_INPUT:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_DISPLAY:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_INPUT:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_MULTIPLE_CHOICE:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_SINGLE_CHOICE:Lcom/asus/dm/DMService$DialogId;

.field public static final enum UI_ALERT_TIME_INPUT:Lcom/asus/dm/DMService$DialogId;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 153
    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "CONFIRM_DOWNLOAD"

    invoke-direct {v0, v1, v3}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "CONFIRM_UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_DISPLAY"

    invoke-direct {v0, v1, v5}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_DISPLAY:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_CONFIRM"

    invoke-direct {v0, v1, v6}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_CONFIRM:Lcom/asus/dm/DMService$DialogId;

    .line 154
    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_SINGLE_CHOICE"

    invoke-direct {v0, v1, v7}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_SINGLE_CHOICE:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_MULTIPLE_CHOICE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_MULTIPLE_CHOICE:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_INPUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_INPUT:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_TIME_INPUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_TIME_INPUT:Lcom/asus/dm/DMService$DialogId;

    .line 155
    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_DATE_INPUT"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_DATE_INPUT:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_FIRMWARE_UPGRADE_FAIL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/dm/DMService$DialogId;

    new-instance v0, Lcom/asus/dm/DMService$DialogId;

    const-string v1, "UI_ALERT_BATTERY_NOT_ENOUGH"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/asus/dm/DMService$DialogId;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_BATTERY_NOT_ENOUGH:Lcom/asus/dm/DMService$DialogId;

    .line 152
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/asus/dm/DMService$DialogId;

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->CONFIRM_DOWNLOAD:Lcom/asus/dm/DMService$DialogId;

    aput-object v1, v0, v3

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->CONFIRM_UPDATE:Lcom/asus/dm/DMService$DialogId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_DISPLAY:Lcom/asus/dm/DMService$DialogId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_CONFIRM:Lcom/asus/dm/DMService$DialogId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_SINGLE_CHOICE:Lcom/asus/dm/DMService$DialogId;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_MULTIPLE_CHOICE:Lcom/asus/dm/DMService$DialogId;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_INPUT:Lcom/asus/dm/DMService$DialogId;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_TIME_INPUT:Lcom/asus/dm/DMService$DialogId;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_DATE_INPUT:Lcom/asus/dm/DMService$DialogId;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_FIRMWARE_UPGRADE_FAIL:Lcom/asus/dm/DMService$DialogId;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/asus/dm/DMService$DialogId;->UI_ALERT_BATTERY_NOT_ENOUGH:Lcom/asus/dm/DMService$DialogId;

    aput-object v2, v0, v1

    sput-object v0, Lcom/asus/dm/DMService$DialogId;->$VALUES:[Lcom/asus/dm/DMService$DialogId;

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
    .line 152
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/asus/dm/DMService$DialogId;
    .locals 1
    .parameter "name"

    .prologue
    .line 152
    const-class v0, Lcom/asus/dm/DMService$DialogId;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/dm/DMService$DialogId;

    return-object p0
.end method

.method public static values()[Lcom/asus/dm/DMService$DialogId;
    .locals 1

    .prologue
    .line 152
    sget-object v0, Lcom/asus/dm/DMService$DialogId;->$VALUES:[Lcom/asus/dm/DMService$DialogId;

    invoke-virtual {v0}, [Lcom/asus/dm/DMService$DialogId;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/asus/dm/DMService$DialogId;

    return-object v0
.end method
