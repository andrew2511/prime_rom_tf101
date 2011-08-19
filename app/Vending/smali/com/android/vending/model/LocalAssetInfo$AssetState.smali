.class public final enum Lcom/android/vending/model/LocalAssetInfo$AssetState;
.super Ljava/lang/Enum;
.source "LocalAssetInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/LocalAssetInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum DOWNLOAD_DECLINED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

.field public static final enum UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 160
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "DOWNLOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 161
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "INSTALLED"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 162
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "UNINSTALLED"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 163
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "INSTALL_FAILED"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 164
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "DOWNLOAD_FAILED"

    invoke-direct {v0, v1, v7, v8}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 165
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "INSTALLING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v8, v2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 166
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "UNINSTALLING"

    const/4 v2, 0x6

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 167
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "UNINSTALL_FAILED"

    const/4 v2, 0x7

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 168
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "DOWNLOAD_PENDING"

    const/16 v2, 0x8

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 169
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "DOWNLOAD_DECLINED"

    const/16 v2, 0x9

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_DECLINED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 170
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "DOWNLOAD_CANCEL_PENDING"

    const/16 v2, 0xa

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 171
    new-instance v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const-string v1, "DOWNLOAD_CANCELLED"

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/vending/model/LocalAssetInfo$AssetState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 159
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v8

    const/4 v1, 0x6

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_DECLINED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->$VALUES:[Lcom/android/vending/model/LocalAssetInfo$AssetState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .parameter
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 202
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 203
    iput p3, p0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->value:I

    .line 204
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .locals 1
    .parameter

    .prologue
    .line 159
    const-class v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/LocalAssetInfo$AssetState;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->$VALUES:[Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-virtual {v0}, [Lcom/android/vending/model/LocalAssetInfo$AssetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->value:I

    return v0
.end method

.method public isDownloadingOrInstalling()Z
    .locals 1

    .prologue
    .line 184
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNotInstallable()Z
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTransient()Z
    .locals 1

    .prologue
    .line 190
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUninstallable()Z
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
