.class Lcom/android/vending/api/AssetService$CachedAssetList;
.super Ljava/lang/Object;
.source "AssetService.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/api/AssetService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedAssetList"
.end annotation


# instance fields
.field mAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCorrectedAssetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCorrectedQuery:Ljava/lang/String;

.field mHeader:Ljava/lang/String;

.field mListType:Ljava/lang/Integer;

.field mNumTotalAssets:J

.field mNumTotalCorrectedAssets:J


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/AssetService$CachedAssetList;->mAssetList:Ljava/util/List;

    .line 679
    iput-wide v2, p0, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalAssets:J

    .line 682
    iput-object v1, p0, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedQuery:Ljava/lang/String;

    .line 685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/vending/api/AssetService$CachedAssetList;->mCorrectedAssetList:Ljava/util/List;

    .line 688
    iput-wide v2, p0, Lcom/android/vending/api/AssetService$CachedAssetList;->mNumTotalCorrectedAssets:J

    .line 691
    iput-object v1, p0, Lcom/android/vending/api/AssetService$CachedAssetList;->mHeader:Ljava/lang/String;

    .line 696
    iput-object v1, p0, Lcom/android/vending/api/AssetService$CachedAssetList;->mListType:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/vending/api/AssetService$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 673
    invoke-direct {p0}, Lcom/android/vending/api/AssetService$CachedAssetList;-><init>()V

    return-void
.end method
