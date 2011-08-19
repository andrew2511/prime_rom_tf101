.class public Lcom/android/vending/model/GetCategoriesResponse$Category;
.super Ljava/lang/Object;
.source "GetCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/model/GetCategoriesResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/GetCategoriesResponse$Category$Visitor;
    }
.end annotation


# instance fields
.field private final mAssetType:I

.field private final mCategoryDisplay:Ljava/lang/String;

.field private final mCategoryId:Ljava/lang/String;

.field private final mCategoryProto:Lcom/google/common/io/protocol/ProtoBuf;

.field private final mCategorySubtitle:Ljava/lang/String;

.field private final mPromotedAssetsFree:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPromotedAssetsHome:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPromotedAssetsNew:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPromotedAssetsPaid:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/GetCategoriesResponse$Category$Visitor;)V
    .locals 6
    .parameter "categoryProto"
    .parameter "visitor"

    .prologue
    const/16 v5, 0x8

    .line 205
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 206
    iput-object p1, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategoryProto:Lcom/google/common/io/protocol/ProtoBuf;

    .line 207
    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getInt(I)I

    move-result v3

    iput v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mAssetType:I

    .line 208
    const/4 v3, 0x3

    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategoryId:Ljava/lang/String;

    .line 209
    const/4 v3, 0x4

    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategoryDisplay:Ljava/lang/String;

    .line 210
    const/4 v3, 0x5

    invoke-virtual {p1, v3}, Lcom/google/common/io/protocol/ProtoBuf;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategorySubtitle:Ljava/lang/String;

    .line 213
    const/4 v3, 0x6

    invoke-direct {p0, p1, v3}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssets(Lcom/google/common/io/protocol/ProtoBuf;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsNew:Ljava/util/List;

    .line 215
    const/16 v3, 0xa

    invoke-direct {p0, p1, v3}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssets(Lcom/google/common/io/protocol/ProtoBuf;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsFree:Ljava/util/List;

    .line 217
    const/16 v3, 0x9

    invoke-direct {p0, p1, v3}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssets(Lcom/google/common/io/protocol/ProtoBuf;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsPaid:Ljava/util/List;

    .line 219
    const/4 v3, 0x7

    invoke-direct {p0, p1, v3}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssets(Lcom/google/common/io/protocol/ProtoBuf;I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsHome:Ljava/util/List;

    .line 223
    if-eqz p2, :cond_0

    .line 224
    invoke-interface {p2, p0}, Lcom/android/vending/model/GetCategoriesResponse$Category$Visitor;->visit(Lcom/android/vending/model/GetCategoriesResponse$Category;)V

    .line 229
    :cond_0
    invoke-virtual {p1, v5}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 230
    .local v1, len:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 231
    .local v2, subCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 232
    new-instance v3, Lcom/android/vending/model/GetCategoriesResponse$Category;

    invoke-virtual {p1, v5, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v4

    invoke-direct {v3, v4, p2}, Lcom/android/vending/model/GetCategoriesResponse$Category;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/GetCategoriesResponse$Category$Visitor;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 236
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mSubCategories:Ljava/util/List;

    .line 237
    return-void
.end method

.method static synthetic access$000(Lcom/android/vending/model/GetCategoriesResponse$Category;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsHome:Ljava/util/List;

    return-object v0
.end method

.method private getPromotedAssets(Lcom/google/common/io/protocol/ProtoBuf;I)Ljava/util/ArrayList;
    .locals 4
    .parameter "categoryProto"
    .parameter "protoTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/io/protocol/ProtoBuf;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 240
    invoke-virtual {p1, p2}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v1

    .line 241
    .local v1, len:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 242
    .local v2, promotedAssets:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 243
    invoke-virtual {p1, p2, v0}, Lcom/google/common/io/protocol/ProtoBuf;->getString(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 242
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_0
    return-object v2
.end method


# virtual methods
.method public getAssetType()I
    .locals 1

    .prologue
    .line 274
    iget v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mAssetType:I

    return v0
.end method

.method public getCategoryDisplay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategoryDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method public getCategorySubtitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategorySubtitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPromotedAssetsFree()Ljava/util/List;
    .locals 1
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
    .line 304
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsFree:Ljava/util/List;

    return-object v0
.end method

.method public getPromotedAssetsHome()Ljava/util/List;
    .locals 1
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
    .line 314
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsHome:Ljava/util/List;

    return-object v0
.end method

.method public getPromotedAssetsNew()Ljava/util/List;
    .locals 1
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
    .line 299
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsNew:Ljava/util/List;

    return-object v0
.end method

.method public getPromotedAssetsPaid()Ljava/util/List;
    .locals 1
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
    .line 309
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mPromotedAssetsPaid:Ljava/util/List;

    return-object v0
.end method

.method public getSubCategories()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;"
        }
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mSubCategories:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse$Category;->mCategoryDisplay:Ljava/lang/String;

    return-object v0
.end method
