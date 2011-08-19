.class public abstract enum Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
.super Ljava/lang/Enum;
.source "MyDownloadsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/MyDownloadsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "AssetBulkAction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

.field public static final enum INSTALL_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

.field public static final enum STOP_ALL_DOWNLOADS:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

.field public static final enum UPDATE_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 95
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;

    const-string v1, "STOP_ALL_DOWNLOADS"

    invoke-direct {v0, v1, v2}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->STOP_ALL_DOWNLOADS:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    .line 139
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$2;

    const-string v1, "UPDATE_ALL"

    invoke-direct {v0, v1, v3}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->UPDATE_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    .line 176
    new-instance v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$3;

    const-string v1, "INSTALL_ALL"

    invoke-direct {v0, v1, v4}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->INSTALL_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    .line 94
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    sget-object v1, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->STOP_ALL_DOWNLOADS:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->UPDATE_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->INSTALL_ALL:Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->$VALUES:[Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

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
    .line 94
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/vending/MyDownloadsActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 94
    invoke-direct {p0, p1, p2}, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
    .locals 1
    .parameter

    .prologue
    .line 94
    const-class v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->$VALUES:[Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    invoke-virtual {v0}, [Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/MyDownloadsActivity$AssetBulkAction;

    return-object v0
.end method


# virtual methods
.method public abstract getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getLabelId()I
.end method

.method public abstract isVisible(Lcom/android/vending/adapters/MyDownloadsAdapter;)Z
.end method

.method public abstract run(Landroid/app/Activity;Lcom/android/vending/adapters/MyDownloadsAdapter;)V
.end method
