.class public Lcom/android/vending/model/Asset;
.super Ljava/lang/Object;
.source "Asset.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/Asset$2;,
        Lcom/android/vending/model/Asset$BitmapState;,
        Lcom/android/vending/model/Asset$AppImageUsage;,
        Lcom/android/vending/model/Asset$AssetType;
    }
.end annotation


# static fields
.field static final EVER_INSTALLED_STATES:Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/EnumSet",
            "<",
            "Lcom/android/vending/model/LocalAssetInfo$AssetState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAccount:Ljava/lang/String;

.field private mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

.field private mBitmapDrawable:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mBitmapState:Lcom/android/vending/model/Asset$BitmapState;

.field private volatile mCachedExactLocalAsset:Lcom/android/vending/model/LocalAsset;

.field private volatile mCachedLocalAssets:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation
.end field

.field private mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation
.end field

.field private mPromoBitmapState:Lcom/android/vending/model/Asset$BitmapState;

.field private mScreenshotBitmapDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenshotBitmapStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/vending/model/Asset$BitmapState;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotThumbBitmapDrawables:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mScreenshotThumbBitmapStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/vending/model/Asset$BitmapState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mSnapshotted:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 166
    sget-object v0, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    invoke-static {v0, v1, v2, v3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    sput-object v0, Lcom/android/vending/model/Asset;->EVER_INSTALLED_STATES:Ljava/util/EnumSet;

    return-void
.end method

.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;Ljava/lang/String;)V
    .locals 2
    .parameter "assetProto"
    .parameter "account"

    .prologue
    const/4 v1, 0x2

    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    sget-object v0, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    .line 144
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapDrawables:Landroid/util/SparseArray;

    .line 146
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapStates:Landroid/util/SparseArray;

    .line 149
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapDrawables:Landroid/util/SparseArray;

    .line 151
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapStates:Landroid/util/SparseArray;

    .line 155
    sget-object v0, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mPromoBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    .line 171
    iput-object p1, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 172
    iput-object p2, p0, Lcom/android/vending/model/Asset;->mAccount:Ljava/lang/String;

    .line 173
    if-nez p2, :cond_0

    .line 174
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "An asset\'s account should never be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 176
    :cond_0
    return-void
.end method

.method private areCollectionImagesLoaded(ILandroid/util/SparseArray;Landroid/util/SparseArray;I)Z
    .locals 8
    .parameter "numPossibleImagesForAsset"
    .parameter
    .parameter
    .parameter "imageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/vending/model/Asset$BitmapState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, drawables:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    .local p3, drawableStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/vending/model/Asset$BitmapState;>;"
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 935
    if-nez p1, :cond_0

    move v3, v6

    .line 956
    .end local p0
    :goto_0
    return v3

    .line 938
    .restart local p0
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-gtz v3, :cond_2

    :cond_1
    move v3, v5

    .line 939
    goto :goto_0

    .line 941
    :cond_2
    const/4 v3, -0x1

    if-ne p4, v3, :cond_7

    .line 942
    const/4 v2, 0x0

    .end local p0
    .local v2, i:I
    :goto_1
    if-ge v2, p1, :cond_6

    .line 943
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 944
    .local v1, drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-nez v1, :cond_4

    move-object v0, v7

    .line 945
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_2
    invoke-virtual {p3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    if-ne v3, v4, :cond_3

    if-nez v0, :cond_5

    :cond_3
    move v3, v5

    .line 946
    goto :goto_0

    .line 944
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_4
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, p0

    goto :goto_2

    .line 942
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    :cond_6
    move v3, v6

    .line 949
    goto :goto_0

    .line 950
    .end local v2           #i:I
    .restart local p0
    :cond_7
    if-ge p4, p1, :cond_a

    .line 951
    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/SoftReference;

    .line 952
    .restart local v1       #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-nez v1, :cond_8

    move-object v0, v7

    .line 953
    .end local p0
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_3
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    if-ne v3, v4, :cond_9

    if-eqz v0, :cond_9

    move v3, v6

    goto :goto_0

    .line 952
    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local p0
    :cond_8
    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v0, p0

    goto :goto_3

    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_9
    move v3, v5

    .line 953
    goto :goto_0

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    .restart local p0
    :cond_a
    move v3, v5

    .line 956
    goto :goto_0
.end method

.method private areCollectionImagesLoadedOrLoading(ILandroid/util/SparseArray;Landroid/util/SparseArray;I)Z
    .locals 5
    .parameter "numPossibleImagesForAsset"
    .parameter
    .parameter
    .parameter "imageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/ref/SoftReference",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;>;",
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/vending/model/Asset$BitmapState;",
            ">;I)Z"
        }
    .end annotation

    .prologue
    .local p2, drawables:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    .local p3, drawableStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/vending/model/Asset$BitmapState;>;"
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 884
    if-nez p1, :cond_0

    move v2, v4

    .line 902
    .end local p0
    :goto_0
    return v2

    .line 887
    .restart local p0
    :cond_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    move v2, v3

    .line 888
    goto :goto_0

    .line 890
    :cond_1
    const/4 v2, -0x1

    if-ne p4, v2, :cond_5

    .line 891
    const/4 v0, 0x0

    .end local p0
    .local v0, i:I
    :goto_1
    if-ge v0, p1, :cond_4

    .line 892
    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/Asset$BitmapState;

    .line 893
    .local v1, state:Lcom/android/vending/model/Asset$BitmapState;
    if-eqz v1, :cond_2

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, p0}, Lcom/android/vending/model/Asset$BitmapState;->needsLoading(Ljava/lang/ref/SoftReference;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v3

    .line 894
    goto :goto_0

    .line 891
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #state:Lcom/android/vending/model/Asset$BitmapState;
    :cond_4
    move v2, v4

    .line 897
    goto :goto_0

    .line 898
    .end local v0           #i:I
    .restart local p0
    :cond_5
    if-ge p4, p1, :cond_7

    .line 899
    invoke-virtual {p3, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/Asset$BitmapState;

    .line 900
    .restart local v1       #state:Lcom/android/vending/model/Asset$BitmapState;
    if-eqz v1, :cond_6

    invoke-virtual {p2, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/ref/SoftReference;

    invoke-virtual {v1, p0}, Lcom/android/vending/model/Asset$BitmapState;->needsLoading(Ljava/lang/ref/SoftReference;)Z

    move-result v2

    if-nez v2, :cond_6

    move v2, v4

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0

    .end local v1           #state:Lcom/android/vending/model/Asset$BitmapState;
    .restart local p0
    :cond_7
    move v2, v3

    .line 902
    goto :goto_0
.end method

.method private getAllLocalAssets()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/vending/model/LocalAsset;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1290
    iget-boolean v0, p0, Lcom/android/vending/model/Asset;->mSnapshotted:Z

    if-eqz v0, :cond_0

    .line 1291
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mCachedLocalAssets:Ljava/util/Collection;

    .line 1293
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/vending/model/LocalAssetCache;->get()Lcom/android/vending/model/AbstractLocalAssetCache;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/vending/model/AbstractLocalAssetCache;->getAllByPackageName(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    goto :goto_0
.end method

.method public static getIdByPackageNameAndState(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "state"

    .prologue
    .line 1215
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1216
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0, p1}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetForPackageName(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIdsByPackageNameAndSource(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "packageName"
    .parameter "source"

    .prologue
    .line 1220
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1221
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0, p1}, Lcom/android/vending/api/LocalAssetDatabase;->getAssetsForPackageNameAndSource(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalInfoById(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;
    .locals 2
    .parameter "assetId"

    .prologue
    .line 1235
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1236
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAsset(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalInfoByPackageName(Ljava/lang/String;I)Lcom/android/vending/model/LocalAssetInfo;
    .locals 2
    .parameter "packageName"
    .parameter "versionCode"

    .prologue
    .line 1240
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1241
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0, p1}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAssetByPackageName(Ljava/lang/String;I)Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v1

    return-object v1
.end method

.method public static getLocalInfoForAll()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/LocalAssetInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 1230
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1231
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    const/4 v1, 0x1

    invoke-virtual {v0, v2, v2, v1}, Lcom/android/vending/api/LocalAssetDatabase;->getLocalAssets(Lcom/android/vending/model/Asset$AssetType;Lcom/android/vending/model/LocalAssetInfo$AssetState;Z)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getPackageInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .locals 3
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 1118
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1120
    :goto_0
    return-object v1

    .line 1119
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 1120
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static invalidateById(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "assetId"
    .parameter "account"

    .prologue
    .line 1314
    new-instance v0, Lcom/android/vending/api/AssetService;

    invoke-direct {v0}, Lcom/android/vending/api/AssetService;-><init>()V

    .line 1315
    .local v0, service:Lcom/android/vending/api/AssetService;
    invoke-virtual {v0, p0, p1}, Lcom/android/vending/api/AssetService;->invalidateById(Ljava/lang/String;Ljava/lang/String;)V

    .line 1316
    return-void
.end method

.method private loadLocalAssetPermissions(Landroid/content/Context;)Ljava/util/Set;
    .locals 10
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1093
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v8, 0x0

    sget-object v9, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v9, v7, v8

    invoke-virtual {p0, v7}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v3

    .line 1094
    .local v3, localAsset:Lcom/android/vending/model/LocalAsset;
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1097
    .local v4, oldPermissions:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getPackageName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_1

    .line 1109
    :cond_0
    return-object v4

    .line 1102
    :cond_1
    invoke-virtual {v3}, Lcom/android/vending/model/LocalAsset;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 1103
    .local v5, packageInfo:Landroid/content/pm/PackageInfo;
    if-eqz v5, :cond_0

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v7, :cond_0

    .line 1104
    iget-object v0, v5, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v6, v0, v1

    .line 1105
    .local v6, permission:Ljava/lang/String;
    invoke-virtual {v4, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1104
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static setRefundTimeoutByPackageName(Ljava/lang/String;Ljava/lang/Long;)V
    .locals 1
    .parameter "packageName"
    .parameter "refundTimeout"

    .prologue
    .line 1225
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1226
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0, p1}, Lcom/android/vending/api/LocalAssetDatabase;->updateRefundTimeoutOfAsset(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1227
    return-void
.end method

.method public static setSizeById(Ljava/lang/String;I)V
    .locals 3
    .parameter "assetId"
    .parameter "size"

    .prologue
    .line 1204
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1205
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    int-to-long v1, p1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/vending/api/LocalAssetDatabase;->updateSizeOfAsset(Ljava/lang/String;J)V

    .line 1206
    return-void
.end method

.method public static setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;)V
    .locals 1
    .parameter "assetId"
    .parameter "state"

    .prologue
    const/4 v0, 0x0

    .line 1192
    invoke-static {p0, p1, v0, v0}, Lcom/android/vending/model/Asset;->setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1193
    return-void
.end method

.method public static setStateById(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V
    .locals 3
    .parameter "assetId"
    .parameter "state"
    .parameter "time"
    .parameter "version"

    .prologue
    .line 1196
    if-nez p0, :cond_0

    .line 1197
    const-string v1, "assetId is null!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/vending/util/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1199
    :cond_0
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1200
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/vending/api/LocalAssetDatabase;->updateStateOfAsset(Ljava/lang/String;Lcom/android/vending/model/LocalAssetInfo$AssetState;Ljava/lang/Long;Ljava/lang/Long;)V

    .line 1201
    return-void
.end method

.method public static setUriById(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 1
    .parameter "assetId"
    .parameter "uri"
    .parameter "signature"

    .prologue
    .line 1209
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1210
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/vending/api/LocalAssetDatabase;->updateContentUriOfAsset(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V

    .line 1211
    return-void
.end method

.method public static uninstallById(Ljava/lang/String;)V
    .locals 6
    .parameter "assetId"

    .prologue
    .line 1245
    invoke-static {p0}, Lcom/android/vending/model/Asset;->getLocalInfoById(Ljava/lang/String;)Lcom/android/vending/model/LocalAssetInfo;

    move-result-object v1

    .line 1247
    .local v1, localInfo:Lcom/android/vending/model/LocalAssetInfo;
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v3

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v3, v4, :cond_0

    .line 1248
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1249
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {v0, p0}, Lcom/android/vending/api/LocalAssetDatabase;->uninstallAsset(Ljava/lang/String;)V

    .line 1251
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 1252
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAssetInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 1254
    .end local v0           #db:Lcom/android/vending/api/LocalAssetDatabase;
    .end local v2           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    return-void
.end method


# virtual methods
.method public areBitmapsLoaded(Lcom/android/vending/model/Asset$AppImageUsage;I)Z
    .locals 4
    .parameter "usage"
    .parameter "imageId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 914
    sget-object v0, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 928
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown image usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 916
    :pswitch_0
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    sget-object v1, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->getBitmapDrawable(Lcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 925
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 916
    goto :goto_0

    .line 919
    :pswitch_1
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mPromoBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    sget-object v1, Lcom/android/vending/model/Asset$BitmapState;->LOADED:Lcom/android/vending/model/Asset$BitmapState;

    if-ne v0, v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->getBitmapDrawable(Lcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v0

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 922
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    iget-object v1, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapDrawables:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapStates:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/vending/model/Asset;->areCollectionImagesLoaded(ILandroid/util/SparseArray;Landroid/util/SparseArray;I)Z

    move-result v0

    goto :goto_0

    .line 925
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    iget-object v1, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapDrawables:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapStates:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/vending/model/Asset;->areCollectionImagesLoaded(ILandroid/util/SparseArray;Landroid/util/SparseArray;I)Z

    move-result v0

    goto :goto_0

    .line 914
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public areBitmapsLoadedOrLoading(Lcom/android/vending/model/Asset$AppImageUsage;I)Z
    .locals 4
    .parameter "usage"
    .parameter "imageId"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 863
    sget-object v0, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 877
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown image usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 865
    :pswitch_0
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    iget-object v1, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/Asset$BitmapState;->needsLoading(Ljava/lang/ref/SoftReference;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v3

    .line 874
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 865
    goto :goto_0

    .line 868
    :pswitch_1
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mPromoBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    iget-object v1, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v0, v1}, Lcom/android/vending/model/Asset$BitmapState;->needsLoading(Ljava/lang/ref/SoftReference;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0

    .line 871
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    iget-object v1, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapDrawables:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapStates:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/vending/model/Asset;->areCollectionImagesLoadedOrLoading(ILandroid/util/SparseArray;Landroid/util/SparseArray;I)Z

    move-result v0

    goto :goto_0

    .line 874
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    iget-object v1, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapDrawables:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapStates:Landroid/util/SparseArray;

    invoke-direct {p0, v0, v1, v2, p2}, Lcom/android/vending/model/Asset;->areCollectionImagesLoadedOrLoading(ILandroid/util/SparseArray;Landroid/util/SparseArray;I)Z

    move-result v0

    goto :goto_0

    .line 863
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public canAutoUpdate(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1152
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isUpdate()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->isAutoUpdateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->containsDangerousNewPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canUninstall(Landroid/content/Context;)Z
    .locals 4
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 983
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v1

    .line 984
    .local v1, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 986
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0
.end method

.method public clearPurchaseInfo()V
    .locals 3

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/common/io/protocol/ProtoBuf;->remove(II)V

    .line 220
    return-void
.end method

.method public containsDangerousNewPermissions(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1075
    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->loadPermissionInfos(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 1076
    .local v4, permissionInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    invoke-direct {p0, p1}, Lcom/android/vending/model/Asset;->loadLocalAssetPermissions(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v2

    .line 1077
    .local v2, oldPermissions:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PermissionInfo;

    .line 1078
    .local v3, permissionInfo:Landroid/content/pm/PermissionInfo;
    iget v5, v3, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-ne v5, v6, :cond_1

    move v1, v6

    .line 1080
    .local v1, isDangerous:Z
    :goto_0
    if-eqz v1, :cond_0

    iget-object v5, v3, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 1084
    .end local v1           #isDangerous:Z
    .end local v3           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :goto_1
    return v5

    .restart local v3       #permissionInfo:Landroid/content/pm/PermissionInfo;
    :cond_1
    move v1, v7

    .line 1078
    goto :goto_0

    .end local v3           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :cond_2
    move v5, v7

    .line 1084
    goto :goto_1
.end method

.method public findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;
    .locals 3

    .prologue
    .line 1301
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v2, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public varargs findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;
    .locals 2
    .parameter "states"

    .prologue
    .line 1310
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAccount:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/vending/model/Asset;->getAllLocalAssets()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/vending/model/LocalAsset;->getMatchingLocalAsset(Ljava/lang/String;Ljava/util/Collection;[Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    return-object v0
.end method

.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAccount:Ljava/lang/String;

    return-object v0
.end method

.method public getApplicationPackageName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 761
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationPermissionId(I)Ljava/lang/String;
    .locals 2
    .parameter "i"

    .prologue
    .line 697
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0xf

    invoke-virtual {v0, v1, p1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getApplicationPermissions()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumPermissions()I

    move-result v1

    .line 703
    .local v1, numPerm:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 704
    .local v2, result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 705
    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset;->getApplicationPermissionId(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 708
    :cond_0
    return-object v2
.end method

.method public getBitmapDrawable(Lcom/android/vending/model/Asset$AppImageUsage;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3
    .parameter "usage"

    .prologue
    .line 351
    const/4 v0, 0x0

    .line 352
    .local v0, drawable:Landroid/graphics/drawable/BitmapDrawable;
    sget-object v1, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 364
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unrecognized image usage"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 354
    :pswitch_0
    iget-object v1, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 355
    iget-object v1, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 366
    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    move-object v1, v0

    .line 369
    :goto_1
    return-object v1

    .line 359
    :pswitch_1
    iget-object v1, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    if-eqz v1, :cond_0

    .line 360
    iget-object v1, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    .end local v0           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .restart local v0       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    goto :goto_0

    .line 369
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 352
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getBitmapDrawables(Lcom/android/vending/model/Asset$AppImageUsage;I)Ljava/util/List;
    .locals 9
    .parameter "usage"
    .parameter "imageId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I)",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 380
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 381
    .local v0, bitmaps:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    sget-object v6, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 421
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Unrecognized image usage"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 383
    :pswitch_0
    iget-object v6, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    if-eqz v6, :cond_0

    .line 384
    iget-object v6, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 385
    .local v1, drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_0

    .line 386
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 389
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v8

    .line 419
    .end local p0
    :goto_0
    return-object v6

    .restart local p0
    :cond_1
    move-object v6, v0

    .line 389
    goto :goto_0

    .line 391
    :pswitch_1
    iget-object v6, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    if-eqz v6, :cond_2

    .line 392
    iget-object v6, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 393
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v1, :cond_2

    .line 394
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    move-object v6, v8

    goto :goto_0

    :cond_3
    move-object v6, v0

    goto :goto_0

    .line 400
    :pswitch_2
    sget-object v6, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne v6, p1, :cond_5

    iget-object v6, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapDrawables:Landroid/util/SparseArray;

    move-object v3, v6

    .line 403
    .local v3, drawables:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    :goto_1
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v5

    .line 404
    .local v5, numScreenshots:I
    const/4 v6, -0x1

    if-ne p2, v6, :cond_7

    .line 405
    const/4 v4, 0x0

    .end local p0
    .local v4, i:I
    :goto_2
    if-ge v4, v5, :cond_8

    .line 406
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 407
    .local v2, drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-nez v2, :cond_6

    move-object v1, v8

    .line 408
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_3
    if-eqz v1, :cond_4

    .line 409
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 405
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 400
    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v3           #drawables:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    .end local v4           #i:I
    .end local v5           #numScreenshots:I
    .restart local p0
    :cond_5
    iget-object v6, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapDrawables:Landroid/util/SparseArray;

    move-object v3, v6

    goto :goto_1

    .line 407
    .end local p0
    .restart local v2       #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    .restart local v3       #drawables:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;>;"
    .restart local v4       #i:I
    .restart local v5       #numScreenshots:I
    :cond_6
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, p0

    goto :goto_3

    .line 412
    .end local v2           #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    .end local v4           #i:I
    .restart local p0
    :cond_7
    if-ge p2, v5, :cond_8

    .line 413
    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/SoftReference;

    .line 414
    .restart local v2       #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    if-nez v2, :cond_9

    move-object v1, v8

    .line 415
    .end local p0
    .restart local v1       #drawable:Landroid/graphics/drawable/BitmapDrawable;
    :goto_4
    if-eqz v1, :cond_8

    .line 416
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .end local v1           #drawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v2           #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    :cond_8
    move-object v6, v0

    .line 419
    goto :goto_0

    .line 414
    .restart local v2       #drawableRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/BitmapDrawable;>;"
    .restart local p0
    :cond_9
    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v1, p0

    goto :goto_4

    .line 381
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getBitmapState(Lcom/android/vending/model/Asset$AppImageUsage;I)Lcom/android/vending/model/Asset$BitmapState;
    .locals 2
    .parameter "usage"
    .parameter "imageId"

    .prologue
    .line 515
    sget-object v0, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 535
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized image usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 517
    :pswitch_0
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    .line 532
    .end local p0
    :goto_0
    return-object v0

    .line 519
    .restart local p0
    :pswitch_1
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mPromoBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    goto :goto_0

    .line 521
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 523
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/Asset$BitmapState;

    move-object v0, p0

    goto :goto_0

    .line 525
    .restart local p0
    :cond_0
    sget-object v0, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    goto :goto_0

    .line 528
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 530
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/vending/model/Asset$BitmapState;

    move-object v0, p0

    goto :goto_0

    .line 532
    .restart local p0
    :cond_1
    sget-object v0, Lcom/android/vending/model/Asset$BitmapState;->NONE:Lcom/android/vending/model/Asset$BitmapState;

    goto :goto_0

    .line 515
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getCategory()Ljava/lang/String;
    .locals 2

    .prologue
    .line 629
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 630
    .local v0, extendedInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    .line 631
    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 633
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getContactEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactPhone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 280
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContactWebsite()Ljava/lang/String;
    .locals 2

    .prologue
    .line 289
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentRatingString()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x25

    .line 257
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->hasExtendedInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 262
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadCount()Ljava/lang/String;
    .locals 2

    .prologue
    .line 607
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2

    .prologue
    .line 215
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public getFilterReason()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x23

    .line 204
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 207
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 1039
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v0

    .line 1040
    .local v0, packageName:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1041
    const/4 v1, 0x0

    .line 1044
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0
.end method

.method public getLocalAsset()Lcom/android/vending/model/LocalAsset;
    .locals 3

    .prologue
    .line 1277
    iget-boolean v1, p0, Lcom/android/vending/model/Asset;->mSnapshotted:Z

    if-eqz v1, :cond_0

    .line 1278
    iget-object v1, p0, Lcom/android/vending/model/Asset;->mCachedExactLocalAsset:Lcom/android/vending/model/LocalAsset;

    .line 1285
    :goto_0
    return-object v1

    .line 1280
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/vending/model/LocalAsset;->getById(Ljava/lang/String;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 1282
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/vending/model/Asset;->mAccount:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    .line 1283
    goto :goto_0

    .line 1285
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLocalId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 191
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 192
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getAssetId()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNumPermissions()I
    .locals 2

    .prologue
    .line 687
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 688
    .local v0, extendedInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    .line 689
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 692
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getNumRaters()I
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 616
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getNumScreenshots()I
    .locals 2

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getOwnerId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOwnerName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 625
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriceMicros()J
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getPromotionalDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 243
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProtoBuf()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 1

    .prologue
    .line 851
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    return-object v0
.end method

.method public getPurchaseInfo()Lcom/google/common/io/protocol/ProtoBuf;
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(I)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseTime()Ljava/util/Date;
    .locals 4

    .prologue
    const/16 v2, 0xa

    .line 654
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getPurchaseInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 655
    .local v0, purchaseInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 660
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRating()D
    .locals 2

    .prologue
    const/4 v1, 0x7

    .line 611
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public getRecentChanges()Ljava/lang/String;
    .locals 2

    .prologue
    const/16 v1, 0x26

    .line 248
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->hasExtendedInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 253
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRefundTimeoutLong()Ljava/lang/Long;
    .locals 3

    .prologue
    const/16 v2, 0xb

    .line 664
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getPurchaseInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 665
    .local v0, purchaseInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 667
    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 670
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getRefundTimeoutTime()Ljava/util/Date;
    .locals 4

    .prologue
    .line 674
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getRefundTimeoutLong()Ljava/lang/Long;

    move-result-object v0

    .line 675
    .local v0, refundTimeLong:Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 676
    const/4 v1, 0x0

    .line 679
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    goto :goto_0
.end method

.method public getRequiredInstallationSize()J
    .locals 3

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 638
    .local v0, extendedInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    .line 639
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getLong(I)J

    move-result-wide v1

    .line 642
    :goto_0
    return-wide v1

    :cond_0
    const-wide/16 v1, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getType()Lcom/android/vending/model/Asset$AssetType;
    .locals 2

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/vending/model/Asset$AssetType;->valueOf(I)Lcom/android/vending/model/Asset$AssetType;

    move-result-object v0

    return-object v0
.end method

.method public getUninstallActionLabel(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "shortLabel"

    .prologue
    .line 969
    if-eqz p2, :cond_0

    const v1, 0x7f07009e

    move v0, v1

    .line 970
    .local v0, defaultLabel:I
    :goto_0
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isRefundable()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f07015a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    return-object v1

    .line 969
    .end local v0           #defaultLabel:I
    :cond_0
    const v1, 0x7f070159

    move v0, v1

    goto :goto_0

    .line 970
    .restart local v0       #defaultLabel:I
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->isUpdatedSystemApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f07009f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public getVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 646
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewInfoIntent(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1172
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1173
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1174
    const-string v1, "assetid"

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    const-string v1, "asset_package"

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1176
    if-nez p2, :cond_0

    .line 1177
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Referrer URI must be non-null when you launch the asset info activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1180
    :cond_0
    const-string v1, "referrer"

    invoke-virtual {p2}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1181
    return-object v0
.end method

.method public getViewInfoIntent(Lcom/android/vending/BaseActivity;I)Landroid/content/Intent;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 1158
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1159
    const-class v1, Lcom/android/vending/MyDownloadsActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1160
    const-string v1, "assetid"

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1161
    const-string v1, "asset_package"

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1162
    invoke-virtual {p1, p2}, Lcom/android/vending/BaseActivity;->getReferrerUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 1163
    if-nez v1, :cond_0

    .line 1164
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Referrer URI must be non-null when you launch the asset info activity"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1167
    :cond_0
    const-string v2, "referrer"

    invoke-virtual {v1}, Landroid/net/Uri;->getQuery()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    return-object v0
.end method

.method public hasContactEmail()Z
    .locals 2

    .prologue
    .line 266
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->hasExtendedInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContactPhone()Z
    .locals 2

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->hasExtendedInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x1a

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasContactWebsite()Z
    .locals 2

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->hasExtendedInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    const/16 v1, 0x1b

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasExtendedInfo()Z
    .locals 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public hasLaunchIntent(Landroid/content/Context;)Z
    .locals 1
    .parameter "context"

    .prologue
    .line 1035
    invoke-virtual {p0, p1}, Lcom/android/vending/model/Asset;->getLaunchIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNextPurchaseRefundable()Z
    .locals 2

    .prologue
    .line 748
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 749
    .local v0, extendedInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    const/16 v1, 0x1c

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasPurchaseInfo()Z
    .locals 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v0

    return v0
.end method

.method public insertDownloadPendingIntoLocalDb(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "refundTimeout"
    .parameter "referrer"
    .parameter "source"

    .prologue
    .line 1186
    invoke-static {}, Lcom/android/vending/ServiceLocator;->getLocalAssetDatabase()Lcom/android/vending/api/LocalAssetDatabase;

    move-result-object v0

    .line 1187
    .local v0, db:Lcom/android/vending/api/LocalAssetDatabase;
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/vending/model/Asset$AssetType;->getValue()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isForwardLocked()Z

    move-result v5

    iget-object v9, p0, Lcom/android/vending/model/Asset;->mAccount:Ljava/lang/String;

    move-object v6, p1

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v0 .. v9}, Lcom/android/vending/api/LocalAssetDatabase;->insertDownloadPendingAsset(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;IZLjava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1189
    return-void
.end method

.method public isAutoUpdateEnabled(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1131
    new-array v2, v5, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v1

    .line 1133
    .local v1, localAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v1, :cond_0

    move v2, v4

    .line 1144
    :goto_0
    return v2

    .line 1137
    :cond_0
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getAutoUpdateState()Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    move-result-object v0

    .line 1140
    .local v0, autoUpdateState:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->DEFAULT:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    if-ne v0, v2, :cond_1

    .line 1141
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->isSystemApp()Z

    move-result v2

    goto :goto_0

    .line 1144
    :cond_1
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;->ENABLED:Lcom/android/vending/model/LocalAssetInfo$AutoUpdateState;

    if-ne v0, v2, :cond_2

    move v2, v5

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_0
.end method

.method public isDownloadable()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 789
    new-array v2, v4, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v3, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v3, v2, v5

    invoke-virtual {p0, v2}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 790
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-nez v0, :cond_0

    move v2, v4

    .line 794
    :goto_0
    return v2

    .line 793
    :cond_0
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v1

    .line 794
    .local v1, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALL_FAILED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCELLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_CANCEL_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-eq v1, v2, :cond_1

    sget-object v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_DECLINED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    if-ne v1, v2, :cond_2

    :cond_1
    move v2, v4

    goto :goto_0

    :cond_2
    move v2, v5

    goto :goto_0
.end method

.method public isDownloading()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 808
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOADING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->DOWNLOAD_PENDING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v3

    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isDownloadingOrInstalling()Z
    .locals 3

    .prologue
    .line 813
    invoke-direct {p0}, Lcom/android/vending/model/Asset;->getAllLocalAssets()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/vending/model/LocalAsset;

    .line 814
    .local v1, localAsset:Lcom/android/vending/model/LocalAsset;
    invoke-virtual {v1}, Lcom/android/vending/model/LocalAsset;->getState()Lcom/android/vending/model/LocalAssetInfo$AssetState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/vending/model/LocalAssetInfo$AssetState;->isDownloadingOrInstalling()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 815
    const/4 v2, 0x1

    .line 818
    .end local v1           #localAsset:Lcom/android/vending/model/LocalAsset;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isEverInstalledByUser()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 331
    const/16 v3, 0x15

    .line 332
    .local v3, tag:I
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 333
    .local v0, extendedInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v5

    .line 342
    :goto_0
    return v4

    .line 337
    :cond_0
    sget-object v4, Lcom/android/vending/model/Asset;->EVER_INSTALLED_STATES:Ljava/util/EnumSet;

    invoke-virtual {v4}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/LocalAssetInfo$AssetState;

    .line 338
    .local v2, state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    new-array v4, v5, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v2, v4, v6

    invoke-virtual {p0, v4}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v4

    if-eqz v4, :cond_1

    move v4, v5

    .line 339
    goto :goto_0

    .end local v2           #state:Lcom/android/vending/model/LocalAssetInfo$AssetState;
    :cond_2
    move v4, v6

    .line 342
    goto :goto_0
.end method

.method public isFiltered()Z
    .locals 1

    .prologue
    .line 211
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getFilterReason()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isForwardLocked()Z
    .locals 3

    .prologue
    const/16 v2, 0x13

    .line 741
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 742
    .local v0, extendedInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFree()Z
    .locals 1

    .prologue
    .line 301
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getPrice()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstallable()Z
    .locals 1

    .prologue
    .line 781
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isFiltered()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInstalled()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 773
    new-array v0, v3, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isNextPurchaseRefundable()Z
    .locals 3

    .prologue
    const/16 v2, 0x1c

    .line 754
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getExtendedInfo()Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v0

    .line 755
    .local v0, extendedInfo:Lcom/google/common/io/protocol/ProtoBuf;
    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getBool(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOwnedByUser()Z
    .locals 1

    .prologue
    .line 318
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->hasPurchaseInfo()Z

    move-result v0

    return v0
.end method

.method public isRefundable()Z
    .locals 2

    .prologue
    .line 313
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getRefundTimeoutTime()Ljava/util/Date;

    move-result-object v0

    .line 314
    .local v0, refundTimeout:Ljava/util/Date;
    if-eqz v0, :cond_0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isUninstalling()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 822
    new-array v0, v3, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v1, Lcom/android/vending/model/LocalAssetInfo$AssetState;->UNINSTALLING:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public isUpdate()Z
    .locals 8

    .prologue
    const/16 v7, 0x19

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 715
    new-array v3, v6, [Lcom/android/vending/model/LocalAssetInfo$AssetState;

    sget-object v4, Lcom/android/vending/model/LocalAssetInfo$AssetState;->INSTALLED:Lcom/android/vending/model/LocalAssetInfo$AssetState;

    aput-object v4, v3, v5

    invoke-virtual {p0, v3}, Lcom/android/vending/model/Asset;->findMatchingLocalAsset([Lcom/android/vending/model/LocalAssetInfo$AssetState;)Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    .line 718
    .local v0, localAsset:Lcom/android/vending/model/LocalAsset;
    if-eqz v0, :cond_1

    .line 719
    invoke-virtual {v0}, Lcom/android/vending/model/LocalAsset;->getVersionCode()I

    move-result v1

    .line 732
    .local v1, localVersion:I
    :cond_0
    iget-object v3, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 733
    iget-object v3, p0, Lcom/android/vending/model/Asset;->mAssetProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v3, v7}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v2

    .line 734
    .local v2, serverVersion:I
    if-ge v1, v2, :cond_2

    move v3, v6

    .line 736
    .end local v2           #serverVersion:I
    :goto_0
    return v3

    .line 722
    .end local v1           #localVersion:I
    :cond_1
    invoke-static {}, Lcom/android/vending/VendingApplication;->getVendingApplication()Lcom/android/vending/VendingApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/vending/VendingApplication;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/vending/util/Util;->getSystemAppVersion(Landroid/content/pm/PackageManager;Ljava/lang/String;)I

    move-result v1

    .line 725
    .restart local v1       #localVersion:I
    const/4 v3, -0x1

    if-ne v1, v3, :cond_0

    move v3, v5

    .line 727
    goto :goto_0

    .restart local v2       #serverVersion:I
    :cond_2
    move v3, v5

    .line 734
    goto :goto_0

    .end local v2           #serverVersion:I
    :cond_3
    move v3, v5

    .line 736
    goto :goto_0
.end method

.method public isUpdatedSystemApp(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 1004
    :try_start_0
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1005
    .local v2, packageName:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1007
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    .line 1010
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageName:Ljava/lang/String;
    :goto_0
    return v3

    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #packageName:Ljava/lang/String;
    :cond_0
    move v3, v5

    .line 1007
    goto :goto_0

    .line 1008
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #packageName:Ljava/lang/String;
    :catch_0
    move-exception v3

    move-object v1, v3

    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    move v3, v5

    .line 1010
    goto :goto_0
.end method

.method public loadPermissionInfos(Landroid/content/Context;)Ljava/util/ArrayList;
    .locals 7
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PermissionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1052
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1053
    .local v1, packageManager:Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getApplicationPermissions()Ljava/util/List;

    move-result-object v5

    .line 1054
    .local v5, permissionStrings:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1055
    .local v3, permissionInfos:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PermissionInfo;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1057
    .local v4, permissionString:Ljava/lang/String;
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v1, v4, v6}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v2

    .line 1059
    .local v2, permissionInfo:Landroid/content/pm/PermissionInfo;
    if-eqz v2, :cond_0

    .line 1060
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1062
    .end local v2           #permissionInfo:Landroid/content/pm/PermissionInfo;
    :catch_0
    move-exception v6

    goto :goto_0

    .line 1066
    .end local v4           #permissionString:Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public setBitmap(Lcom/android/vending/model/Asset$AppImageUsage;ILandroid/graphics/drawable/BitmapDrawable;)V
    .locals 3
    .parameter "usage"
    .parameter "imageId"
    .parameter "bitmap"

    .prologue
    const/4 v2, 0x0

    .line 447
    sget-object v0, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 475
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized image usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 449
    :pswitch_0
    if-eqz p3, :cond_1

    .line 450
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 452
    :cond_1
    iput-object v2, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 456
    :pswitch_1
    if-eqz p3, :cond_2

    .line 457
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 459
    :cond_2
    iput-object v2, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 463
    :pswitch_2
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 464
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapDrawables:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 469
    :pswitch_3
    if-eqz p3, :cond_0

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapDrawables:Landroid/util/SparseArray;

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, p3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 447
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setBitmapState(Lcom/android/vending/model/Asset$AppImageUsage;ILcom/android/vending/model/Asset$BitmapState;)V
    .locals 2
    .parameter "usage"
    .parameter "imageId"
    .parameter "bitmapState"

    .prologue
    .line 545
    sget-object v0, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 563
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized image usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 547
    :pswitch_0
    iput-object p3, p0, Lcom/android/vending/model/Asset;->mBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    .line 565
    :cond_0
    :goto_0
    return-void

    .line 550
    :pswitch_1
    iput-object p3, p0, Lcom/android/vending/model/Asset;->mPromoBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    goto :goto_0

    .line 553
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 554
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 558
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setLoadingBitmaps(Lcom/android/vending/model/Asset$AppImageUsage;ILjava/util/List;)V
    .locals 5
    .parameter "usage"
    .parameter "imageId"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/vending/model/Asset$AppImageUsage;",
            "I",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/drawable/BitmapDrawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, bitmapDrawables:Ljava/util/List;,"Ljava/util/List<Landroid/graphics/drawable/BitmapDrawable;>;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 485
    sget-object v0, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 506
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unrecognized image usage"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 487
    :pswitch_0
    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_0

    .line 488
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    .line 508
    :goto_0
    :pswitch_1
    return-void

    .line 490
    :cond_0
    iput-object v4, p0, Lcom/android/vending/model/Asset;->mBitmapDrawable:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 494
    :pswitch_2
    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 495
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 498
    :cond_1
    iput-object v4, p0, Lcom/android/vending/model/Asset;->mPromoBitmapDrawable:Ljava/lang/ref/SoftReference;

    goto :goto_0

    .line 485
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setLoadingBitmapsState(Lcom/android/vending/model/Asset$AppImageUsage;I)V
    .locals 5
    .parameter "usage"
    .parameter "imageId"

    .prologue
    .line 571
    sget-object v3, Lcom/android/vending/model/Asset$2;->$SwitchMap$com$android$vending$model$Asset$AppImageUsage:[I

    invoke-virtual {p1}, Lcom/android/vending/model/Asset$AppImageUsage;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 602
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Unrecognized image usage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 573
    :pswitch_0
    sget-object v3, Lcom/android/vending/model/Asset$BitmapState;->LOADING:Lcom/android/vending/model/Asset$BitmapState;

    iput-object v3, p0, Lcom/android/vending/model/Asset;->mBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    .line 604
    :cond_0
    :goto_0
    return-void

    .line 576
    :pswitch_1
    sget-object v3, Lcom/android/vending/model/Asset$BitmapState;->LOADING:Lcom/android/vending/model/Asset$BitmapState;

    iput-object v3, p0, Lcom/android/vending/model/Asset;->mPromoBitmapState:Lcom/android/vending/model/Asset$BitmapState;

    goto :goto_0

    .line 580
    :pswitch_2
    sget-object v3, Lcom/android/vending/model/Asset$AppImageUsage;->SCREENSHOT:Lcom/android/vending/model/Asset$AppImageUsage;

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Lcom/android/vending/model/Asset;->mScreenshotBitmapStates:Landroid/util/SparseArray;

    move-object v0, v3

    .line 583
    .local v0, bitmapStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/vending/model/Asset$BitmapState;>;"
    :goto_1
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v2

    .line 584
    .local v2, numScreenshots:I
    const/4 v3, -0x1

    if-ne p2, v3, :cond_2

    .line 590
    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 591
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v2, :cond_0

    .line 592
    sget-object v3, Lcom/android/vending/model/Asset$BitmapState;->LOADING:Lcom/android/vending/model/Asset$BitmapState;

    invoke-virtual {v0, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 591
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 580
    .end local v0           #bitmapStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/vending/model/Asset$BitmapState;>;"
    .end local v1           #i:I
    .end local v2           #numScreenshots:I
    :cond_1
    iget-object v3, p0, Lcom/android/vending/model/Asset;->mScreenshotThumbBitmapStates:Landroid/util/SparseArray;

    move-object v0, v3

    goto :goto_1

    .line 597
    .restart local v0       #bitmapStates:Landroid/util/SparseArray;,"Landroid/util/SparseArray<Lcom/android/vending/model/Asset$BitmapState;>;"
    .restart local v2       #numScreenshots:I
    :cond_2
    sget-object v3, Lcom/android/vending/model/Asset$BitmapState;->LOADING:Lcom/android/vending/model/Asset$BitmapState;

    invoke-virtual {v0, p2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public snapshotLocalState()V
    .locals 1

    .prologue
    .line 1262
    invoke-static {}, Lcom/android/vending/util/MainThreadEnforcer;->enforce()V

    .line 1265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/vending/model/Asset;->mSnapshotted:Z

    .line 1267
    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getLocalAsset()Lcom/android/vending/model/LocalAsset;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mCachedExactLocalAsset:Lcom/android/vending/model/LocalAsset;

    .line 1268
    invoke-direct {p0}, Lcom/android/vending/model/Asset;->getAllLocalAssets()Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lcom/android/vending/model/Asset;->mCachedLocalAssets:Ljava/util/Collection;

    .line 1270
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/vending/model/Asset;->mSnapshotted:Z

    .line 1271
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 829
    .local v0, sb:Ljava/lang/StringBuilder;
    const-string v1, "Id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    const-string v1, ", Type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getType()Lcom/android/vending/model/Asset$AssetType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 831
    const-string v1, ", OwnerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getOwnerId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    const-string v1, ", OwnerName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getOwnerName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 833
    const-string v1, ", Title = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 834
    const-string v1, ", Description = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    const-string v1, ", Price = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getPrice()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 836
    const-string v1, ", Size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getRequiredInstallationSize()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 837
    const-string v1, ", Category = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 838
    const-string v1, ", DownloadCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getDownloadCount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 839
    const-string v1, ", Rating = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getRating()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 840
    const-string v1, ", NumRaters = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumRaters()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 841
    const-string v1, ", isForwardLocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->isForwardLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 842
    const-string v1, ", NumScreenshots = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/vending/model/Asset;->getNumScreenshots()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 844
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateToUninstalled()V
    .locals 2

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/vending/model/Asset$1;

    invoke-direct {v1, p0}, Lcom/android/vending/model/Asset$1;-><init>(Lcom/android/vending/model/Asset;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1032
    return-void
.end method
