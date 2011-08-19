.class public final enum Lcom/android/vending/model/Asset$AssetType;
.super Ljava/lang/Enum;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/Asset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AssetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/vending/model/Asset$AssetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/vending/model/Asset$AssetType;

.field static final synthetic $assertionsDisabled:Z

.field public static final enum APPLICATION:Lcom/android/vending/model/Asset$AssetType;

.field public static final enum GAME:Lcom/android/vending/model/Asset$AssetType;

.field public static final enum NONE:Lcom/android/vending/model/Asset$AssetType;

.field public static final enum RINGTONE:Lcom/android/vending/model/Asset$AssetType;

.field public static final enum WALLPAPER:Lcom/android/vending/model/Asset$AssetType;


# instance fields
.field private final mMimeType:Ljava/lang/String;

.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 49
    const-class v0, Lcom/android/vending/model/Asset;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    sput-boolean v0, Lcom/android/vending/model/Asset$AssetType;->$assertionsDisabled:Z

    .line 50
    new-instance v0, Lcom/android/vending/model/Asset$AssetType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v3, v3, v2}, Lcom/android/vending/model/Asset$AssetType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/Asset$AssetType;->NONE:Lcom/android/vending/model/Asset$AssetType;

    .line 51
    new-instance v0, Lcom/android/vending/model/Asset$AssetType;

    const-string v1, "APPLICATION"

    const-string v2, "vnd.android.cursor.dir/vending_applications"

    invoke-direct {v0, v1, v4, v4, v2}, Lcom/android/vending/model/Asset$AssetType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/Asset$AssetType;->APPLICATION:Lcom/android/vending/model/Asset$AssetType;

    .line 52
    new-instance v0, Lcom/android/vending/model/Asset$AssetType;

    const-string v1, "GAME"

    const-string v2, "vnd.android.cursor.dir/vending_games"

    invoke-direct {v0, v1, v5, v7, v2}, Lcom/android/vending/model/Asset$AssetType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/Asset$AssetType;->GAME:Lcom/android/vending/model/Asset$AssetType;

    .line 53
    new-instance v0, Lcom/android/vending/model/Asset$AssetType;

    const-string v1, "RINGTONE"

    const-string v2, "vnd.android.cursor.dir/vending_ringtones"

    invoke-direct {v0, v1, v6, v5, v2}, Lcom/android/vending/model/Asset$AssetType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/Asset$AssetType;->RINGTONE:Lcom/android/vending/model/Asset$AssetType;

    .line 54
    new-instance v0, Lcom/android/vending/model/Asset$AssetType;

    const-string v1, "WALLPAPER"

    const-string v2, "vnd.android.cursor.dir/vending_wallpapers"

    invoke-direct {v0, v1, v7, v6, v2}, Lcom/android/vending/model/Asset$AssetType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/android/vending/model/Asset$AssetType;->WALLPAPER:Lcom/android/vending/model/Asset$AssetType;

    .line 49
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/vending/model/Asset$AssetType;

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->NONE:Lcom/android/vending/model/Asset$AssetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->APPLICATION:Lcom/android/vending/model/Asset$AssetType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->GAME:Lcom/android/vending/model/Asset$AssetType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->RINGTONE:Lcom/android/vending/model/Asset$AssetType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/vending/model/Asset$AssetType;->WALLPAPER:Lcom/android/vending/model/Asset$AssetType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/vending/model/Asset$AssetType;->$VALUES:[Lcom/android/vending/model/Asset$AssetType;

    return-void

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter "v"
    .parameter "mimeType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p3, p0, Lcom/android/vending/model/Asset$AssetType;->mValue:I

    .line 78
    iput-object p4, p0, Lcom/android/vending/model/Asset$AssetType;->mMimeType:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public static valueOf(I)Lcom/android/vending/model/Asset$AssetType;
    .locals 1
    .parameter "value"

    .prologue
    .line 61
    packed-switch p0, :pswitch_data_0

    .line 68
    sget-boolean v0, Lcom/android/vending/model/Asset$AssetType;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 62
    :pswitch_0
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->NONE:Lcom/android/vending/model/Asset$AssetType;

    .line 69
    :goto_0
    return-object v0

    .line 63
    :pswitch_1
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->APPLICATION:Lcom/android/vending/model/Asset$AssetType;

    goto :goto_0

    .line 64
    :pswitch_2
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->RINGTONE:Lcom/android/vending/model/Asset$AssetType;

    goto :goto_0

    .line 65
    :pswitch_3
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->WALLPAPER:Lcom/android/vending/model/Asset$AssetType;

    goto :goto_0

    .line 66
    :pswitch_4
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->GAME:Lcom/android/vending/model/Asset$AssetType;

    goto :goto_0

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/vending/model/Asset$AssetType;
    .locals 1
    .parameter

    .prologue
    .line 49
    const-class v0, Lcom/android/vending/model/Asset$AssetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/vending/model/Asset$AssetType;

    return-object p0
.end method

.method public static values()[Lcom/android/vending/model/Asset$AssetType;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/vending/model/Asset$AssetType;->$VALUES:[Lcom/android/vending/model/Asset$AssetType;

    invoke-virtual {v0}, [Lcom/android/vending/model/Asset$AssetType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/vending/model/Asset$AssetType;

    return-object v0
.end method


# virtual methods
.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/vending/model/Asset$AssetType;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/android/vending/model/Asset$AssetType;->mValue:I

    return v0
.end method
