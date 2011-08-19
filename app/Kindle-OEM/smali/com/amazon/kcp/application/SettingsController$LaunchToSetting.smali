.class public final enum Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;
.super Ljava/lang/Enum;
.source "SettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/application/SettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LaunchToSetting"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

.field public static final enum HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

.field public static final enum READER:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 99
    new-instance v0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v2}, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    .line 100
    new-instance v0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    const-string v1, "READER"

    invoke-direct {v0, v1, v3}, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->READER:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    .line 97
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    sget-object v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->HOME:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->READER:Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->$VALUES:[Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

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
    .line 97
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;
    .locals 1
    .parameter

    .prologue
    .line 97
    const-class v0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    return-object p0
.end method

.method public static values()[Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->$VALUES:[Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    invoke-virtual {v0}, [Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amazon/kcp/application/SettingsController$LaunchToSetting;

    return-object v0
.end method
