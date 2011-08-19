.class public Lcom/android/vending/AssetTypeData;
.super Ljava/lang/Object;
.source "AssetTypeData.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static final APPLICATION:Lcom/android/vending/AssetTypeData;

.field public static final GAME:Lcom/android/vending/AssetTypeData;

.field public static final RINGTONE:Lcom/android/vending/AssetTypeData;

.field public static final WALLPAPER:Lcom/android/vending/AssetTypeData;

.field private static sAssetTypeCount:I


# instance fields
.field private mAssetType:Lcom/android/vending/model/Asset$AssetType;

.field private mAssetTypeId:I

.field private mResourceIdentifiers:[I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const v6, 0x7f020002

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    const-class v0, Lcom/android/vending/AssetTypeData;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    sput-boolean v0, Lcom/android/vending/AssetTypeData;->$assertionsDisabled:Z

    .line 31
    sput v2, Lcom/android/vending/AssetTypeData;->sAssetTypeCount:I

    .line 36
    new-instance v0, Lcom/android/vending/AssetTypeData;

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->APPLICATION:Lcom/android/vending/model/Asset$AssetType;

    invoke-direct {v0, v1}, Lcom/android/vending/AssetTypeData;-><init>(Lcom/android/vending/model/Asset$AssetType;)V

    sput-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    .line 37
    sget-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f070084

    invoke-virtual {v0, v2, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 38
    sget-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f070086

    invoke-virtual {v0, v3, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 39
    sget-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    invoke-virtual {v0, v4, v6}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 40
    sget-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f070087

    invoke-virtual {v0, v5, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 42
    new-instance v0, Lcom/android/vending/AssetTypeData;

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->WALLPAPER:Lcom/android/vending/model/Asset$AssetType;

    invoke-direct {v0, v1}, Lcom/android/vending/AssetTypeData;-><init>(Lcom/android/vending/model/Asset$AssetType;)V

    sput-object v0, Lcom/android/vending/AssetTypeData;->WALLPAPER:Lcom/android/vending/AssetTypeData;

    .line 43
    sget-object v0, Lcom/android/vending/AssetTypeData;->WALLPAPER:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f07008c

    invoke-virtual {v0, v2, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 44
    sget-object v0, Lcom/android/vending/AssetTypeData;->WALLPAPER:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f07008d

    invoke-virtual {v0, v3, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 45
    sget-object v0, Lcom/android/vending/AssetTypeData;->WALLPAPER:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f020085

    invoke-virtual {v0, v4, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 46
    sget-object v0, Lcom/android/vending/AssetTypeData;->WALLPAPER:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f07008e

    invoke-virtual {v0, v5, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 48
    new-instance v0, Lcom/android/vending/AssetTypeData;

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->RINGTONE:Lcom/android/vending/model/Asset$AssetType;

    invoke-direct {v0, v1}, Lcom/android/vending/AssetTypeData;-><init>(Lcom/android/vending/model/Asset$AssetType;)V

    sput-object v0, Lcom/android/vending/AssetTypeData;->RINGTONE:Lcom/android/vending/AssetTypeData;

    .line 49
    sget-object v0, Lcom/android/vending/AssetTypeData;->RINGTONE:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f07008f

    invoke-virtual {v0, v2, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 50
    sget-object v0, Lcom/android/vending/AssetTypeData;->RINGTONE:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f070090

    invoke-virtual {v0, v3, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 51
    sget-object v0, Lcom/android/vending/AssetTypeData;->RINGTONE:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f020071

    invoke-virtual {v0, v4, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 52
    sget-object v0, Lcom/android/vending/AssetTypeData;->RINGTONE:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f070091

    invoke-virtual {v0, v5, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 54
    new-instance v0, Lcom/android/vending/AssetTypeData;

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->GAME:Lcom/android/vending/model/Asset$AssetType;

    invoke-direct {v0, v1}, Lcom/android/vending/AssetTypeData;-><init>(Lcom/android/vending/model/Asset$AssetType;)V

    sput-object v0, Lcom/android/vending/AssetTypeData;->GAME:Lcom/android/vending/AssetTypeData;

    .line 55
    sget-object v0, Lcom/android/vending/AssetTypeData;->GAME:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f070088

    invoke-virtual {v0, v2, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 56
    sget-object v0, Lcom/android/vending/AssetTypeData;->GAME:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f07008a

    invoke-virtual {v0, v3, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 57
    sget-object v0, Lcom/android/vending/AssetTypeData;->GAME:Lcom/android/vending/AssetTypeData;

    invoke-virtual {v0, v4, v6}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 58
    sget-object v0, Lcom/android/vending/AssetTypeData;->GAME:Lcom/android/vending/AssetTypeData;

    const v1, 0x7f07008b

    invoke-virtual {v0, v5, v1}, Lcom/android/vending/AssetTypeData;->registerResource(II)V

    .line 59
    return-void

    :cond_0
    move v0, v2

    .line 12
    goto/16 :goto_0
.end method

.method private constructor <init>(Lcom/android/vending/model/Asset$AssetType;)V
    .locals 2
    .parameter "assetType"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/vending/AssetTypeData;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    .line 63
    sget v0, Lcom/android/vending/AssetTypeData;->sAssetTypeCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/vending/AssetTypeData;->sAssetTypeCount:I

    iput v0, p0, Lcom/android/vending/AssetTypeData;->mAssetTypeId:I

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/vending/AssetTypeData;->mResourceIdentifiers:[I

    .line 65
    return-void
.end method

.method public static get(Lcom/android/vending/model/Asset$AssetType;)Lcom/android/vending/AssetTypeData;
    .locals 1
    .parameter "assetType"

    .prologue
    .line 127
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->WALLPAPER:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset$AssetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    sget-object v0, Lcom/android/vending/AssetTypeData;->WALLPAPER:Lcom/android/vending/AssetTypeData;

    .line 134
    :goto_0
    return-object v0

    .line 129
    :cond_0
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->RINGTONE:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset$AssetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 130
    sget-object v0, Lcom/android/vending/AssetTypeData;->RINGTONE:Lcom/android/vending/AssetTypeData;

    goto :goto_0

    .line 131
    :cond_1
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->GAME:Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset$AssetType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 132
    sget-object v0, Lcom/android/vending/AssetTypeData;->GAME:Lcom/android/vending/AssetTypeData;

    goto :goto_0

    .line 134
    :cond_2
    sget-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    goto :goto_0
.end method

.method public static getAssetForMimeType(Ljava/lang/String;)Lcom/android/vending/AssetTypeData;
    .locals 1
    .parameter "mimeType"

    .prologue
    .line 141
    const-string v0, "vnd.android.cursor.dir/vending_applications"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    sget-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    .line 151
    :goto_0
    return-object v0

    .line 143
    :cond_0
    const-string v0, "vnd.android.cursor.dir/vending_ringtones"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    sget-object v0, Lcom/android/vending/AssetTypeData;->RINGTONE:Lcom/android/vending/AssetTypeData;

    goto :goto_0

    .line 145
    :cond_1
    const-string v0, "vnd.android.cursor.dir/vending_games"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    sget-object v0, Lcom/android/vending/AssetTypeData;->GAME:Lcom/android/vending/AssetTypeData;

    goto :goto_0

    .line 147
    :cond_2
    const-string v0, "vnd.android.cursor.dir/vending_wallpapers"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 148
    sget-object v0, Lcom/android/vending/AssetTypeData;->WALLPAPER:Lcom/android/vending/AssetTypeData;

    goto :goto_0

    .line 151
    :cond_3
    sget-object v0, Lcom/android/vending/AssetTypeData;->APPLICATION:Lcom/android/vending/AssetTypeData;

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .parameter "o"

    .prologue
    const/4 v2, 0x0

    .line 106
    instance-of v0, p1, Lcom/android/vending/AssetTypeData;

    if-nez v0, :cond_0

    move v0, v2

    .line 109
    .end local p1
    :goto_0
    return v0

    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/vending/AssetTypeData;

    .end local p1
    iget v0, p1, Lcom/android/vending/AssetTypeData;->mAssetTypeId:I

    iget v1, p0, Lcom/android/vending/AssetTypeData;->mAssetTypeId:I

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public getAssetType()Lcom/android/vending/model/Asset$AssetType;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/android/vending/AssetTypeData;->mAssetType:Lcom/android/vending/model/Asset$AssetType;

    return-object v0
.end method

.method public getResource(I)I
    .locals 1
    .parameter "resourceId"

    .prologue
    .line 89
    sget-boolean v0, Lcom/android/vending/AssetTypeData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetTypeData;->mResourceIdentifiers:[I

    aget v0, v0, p1

    return v0
.end method

.method public getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 2
    .parameter "resId"
    .parameter "context"

    .prologue
    .line 101
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/vending/AssetTypeData;->getResource(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/android/vending/AssetTypeData;->mAssetTypeId:I

    return v0
.end method

.method public registerResource(II)V
    .locals 1
    .parameter "resourceId"
    .parameter "resource"

    .prologue
    .line 78
    sget-boolean v0, Lcom/android/vending/AssetTypeData;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    if-ltz p1, :cond_0

    const/4 v0, 0x4

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 79
    :cond_1
    iget-object v0, p0, Lcom/android/vending/AssetTypeData;->mResourceIdentifiers:[I

    aput p2, v0, p1

    .line 80
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/vending/AssetTypeData;->getAssetType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/vending/model/Asset$AssetType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
