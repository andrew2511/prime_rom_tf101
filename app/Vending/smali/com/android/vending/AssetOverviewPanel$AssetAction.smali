.class public abstract enum Lcom/android/vending/AssetOverviewPanel$AssetAction;
.super Ljava/lang/Enum;
.source "AssetOverviewPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/AssetOverviewPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "AssetAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/AssetOverviewPanel$AssetAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/AssetOverviewPanel$AssetAction;

.field public static final enum CANCEL_DOWNLOAD:Lcom/android/vending/AssetOverviewPanel$AssetAction;

.field public static final enum CHANGE_AUTO_UPDATE:Lcom/android/vending/AssetOverviewPanel$AssetAction;

.field public static final enum INSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;

.field public static final enum LAUNCH:Lcom/android/vending/AssetOverviewPanel$AssetAction;

.field public static final enum SEE_DETAILS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

.field public static final enum SHOW_PERMISSIONS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

.field public static final enum UNINSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 61
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$AssetAction$1;

    const-string v1, "SHOW_PERMISSIONS"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/AssetOverviewPanel$AssetAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->SHOW_PERMISSIONS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 68
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$AssetAction$2;

    const-string v1, "INSTALL"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/AssetOverviewPanel$AssetAction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->INSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 75
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$AssetAction$3;

    const-string v1, "CANCEL_DOWNLOAD"

    invoke-direct {v0, v1, v5}, Lcom/android/vending/AssetOverviewPanel$AssetAction$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->CANCEL_DOWNLOAD:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 81
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$AssetAction$4;

    const-string v1, "UNINSTALL"

    invoke-direct {v0, v1, v6}, Lcom/android/vending/AssetOverviewPanel$AssetAction$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->UNINSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 120
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$AssetAction$5;

    const-string v1, "LAUNCH"

    invoke-direct {v0, v1, v7}, Lcom/android/vending/AssetOverviewPanel$AssetAction$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->LAUNCH:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 126
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$AssetAction$6;

    const-string v1, "SEE_DETAILS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/vending/AssetOverviewPanel$AssetAction$6;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->SEE_DETAILS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 136
    new-instance v0, Lcom/android/vending/AssetOverviewPanel$AssetAction$7;

    const-string v1, "CHANGE_AUTO_UPDATE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/vending/AssetOverviewPanel$AssetAction$7;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->CHANGE_AUTO_UPDATE:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    .line 59
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/android/vending/AssetOverviewPanel$AssetAction;

    sget-object v1, Lcom/android/vending/AssetOverviewPanel$AssetAction;->SHOW_PERMISSIONS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/AssetOverviewPanel$AssetAction;->INSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/AssetOverviewPanel$AssetAction;->CANCEL_DOWNLOAD:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/AssetOverviewPanel$AssetAction;->UNINSTALL:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/AssetOverviewPanel$AssetAction;->LAUNCH:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/vending/AssetOverviewPanel$AssetAction;->SEE_DETAILS:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/AssetOverviewPanel$AssetAction;->CHANGE_AUTO_UPDATE:Lcom/android/vending/AssetOverviewPanel$AssetAction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->$VALUES:[Lcom/android/vending/AssetOverviewPanel$AssetAction;

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
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/vending/AssetOverviewPanel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Lcom/android/vending/AssetOverviewPanel$AssetAction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/AssetOverviewPanel$AssetAction;
    .locals 1
    .parameter

    .prologue
    .line 59
    const-class v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/AssetOverviewPanel$AssetAction;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/AssetOverviewPanel$AssetAction;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/android/vending/AssetOverviewPanel$AssetAction;->$VALUES:[Lcom/android/vending/AssetOverviewPanel$AssetAction;

    invoke-virtual {v0}, [Lcom/android/vending/AssetOverviewPanel$AssetAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/AssetOverviewPanel$AssetAction;

    return-object v0
.end method


# virtual methods
.method public abstract run(Lcom/android/vending/model/Asset;Landroid/app/Activity;Lcom/android/vending/AssetOverviewPanel;)V
.end method
