.class public Lcom/android/vending/model/GetCategoriesResponse;
.super Lcom/android/vending/model/BaseResponse;
.source "GetCategoriesResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/model/GetCategoriesResponse$Category;
    }
.end annotation


# instance fields
.field private mPromoCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

.field private mPromoImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPromotedHomeCategories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLevelCategories:Ljava/util/List;
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
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 39
    sget-object v0, Lcom/android/vending/model/ApiDefsMessageTypes;->GET_CATEGORIES_RESPONSE_PROTO:Lcom/google/common/io/protocol/ProtoBufType;

    const/16 v1, 0x14

    invoke-direct {p0, v0, v1}, Lcom/android/vending/model/BaseResponse;-><init>(Lcom/google/common/io/protocol/ProtoBufType;I)V

    .line 41
    return-void
.end method

.method private constructCategoryTree()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 118
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 119
    .local v1, homeCategoriesByTopLevel:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 120
    .local v0, homeCategories:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    new-instance v4, Lcom/android/vending/model/GetCategoriesResponse$1;

    invoke-direct {v4, p0, v1}, Lcom/android/vending/model/GetCategoriesResponse$1;-><init>(Lcom/android/vending/model/GetCategoriesResponse;Ljava/util/LinkedList;)V

    .line 128
    .local v4, promotedHomeFilter:Lcom/android/vending/model/GetCategoriesResponse$Category$Visitor;
    iget-object v6, p0, Lcom/android/vending/model/GetCategoriesResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v6, v8}, Lcom/google/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v3

    .line 129
    .local v3, len:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    .local v5, topLevelCategories:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 131
    new-instance v6, Lcom/android/vending/model/GetCategoriesResponse$Category;

    iget-object v7, p0, Lcom/android/vending/model/GetCategoriesResponse;->mResponseProto:Lcom/google/common/io/protocol/ProtoBuf;

    invoke-virtual {v7, v8, v2}, Lcom/google/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/common/io/protocol/ProtoBuf;

    move-result-object v7

    invoke-direct {v6, v7, v4}, Lcom/android/vending/model/GetCategoriesResponse$Category;-><init>(Lcom/google/common/io/protocol/ProtoBuf;Lcom/android/vending/model/GetCategoriesResponse$Category$Visitor;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    add-int/lit8 v6, v2, 0x1

    invoke-direct {p0, v0, v1, v6}, Lcom/android/vending/model/GetCategoriesResponse;->mergeHomeCategories(Ljava/util/LinkedList;Ljava/util/LinkedList;I)V

    .line 130
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/android/vending/model/GetCategoriesResponse;->getPrefetchedBundles()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/vending/model/GetCategoriesResponse;->initializePromoImages(Ljava/util/List;Ljava/util/List;)V

    .line 137
    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/model/GetCategoriesResponse;->mTopLevelCategories:Ljava/util/List;

    .line 138
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromotedHomeCategories:Ljava/util/List;

    .line 139
    return-void
.end method

.method private initializePromoImages(Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/PrefetchedBundle;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, prefetchedBundles:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/PrefetchedBundle;>;"
    .local p2, promotedHomeCategories:Ljava/util/List;,"Ljava/util/List<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    const/4 v7, 0x0

    .line 80
    if-nez p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v5, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromoImages:Ljava/util/List;

    if-nez v5, :cond_0

    .line 87
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromoImages:Ljava/util/List;

    .line 88
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v4

    .line 89
    .local v4, promotedAssets:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/PrefetchedBundle;

    .line 90
    .local v2, prefetchedBundle:Lcom/android/vending/model/PrefetchedBundle;
    invoke-virtual {v2}, Lcom/android/vending/model/PrefetchedBundle;->getRequestType()Lcom/android/vending/model/PrefetchedBundle$RequestType;

    move-result-object v5

    sget-object v6, Lcom/android/vending/model/PrefetchedBundle$RequestType;->GET_IMAGE:Lcom/android/vending/model/PrefetchedBundle$RequestType;

    if-ne v5, v6, :cond_2

    .line 91
    invoke-virtual {v2}, Lcom/android/vending/model/PrefetchedBundle;->getRequest()Lcom/android/vending/model/BaseRequest;

    move-result-object v5

    check-cast v5, Lcom/android/vending/model/GetImageRequest;

    invoke-virtual {v5}, Lcom/android/vending/model/GetImageRequest;->getAssetId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v6, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromoImages:Ljava/util/List;

    invoke-virtual {v2}, Lcom/android/vending/model/PrefetchedBundle;->getResponse()Lcom/android/vending/model/BaseResponse;

    move-result-object v5

    check-cast v5, Lcom/android/vending/model/GetImageResponse;

    invoke-virtual {v5}, Lcom/android/vending/model/GetImageResponse;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 96
    .end local v2           #prefetchedBundle:Lcom/android/vending/model/PrefetchedBundle;
    :cond_3
    if-eqz p2, :cond_0

    .line 97
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 98
    .local v0, category:Lcom/android/vending/model/GetCategoriesResponse$Category;
    invoke-virtual {v0}, Lcom/android/vending/model/GetCategoriesResponse$Category;->getPromotedAssetsHome()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 99
    iput-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromoCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

    goto :goto_2

    .line 104
    .end local v0           #category:Lcom/android/vending/model/GetCategoriesResponse$Category;
    :cond_5
    iget-object v5, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromoCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromoCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

    invoke-interface {p2, v5}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v3

    .line 106
    .local v3, promoIndex:I
    if-eqz v3, :cond_0

    .line 107
    invoke-interface {p2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p2, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 108
    iget-object v5, p0, Lcom/android/vending/model/GetCategoriesResponse;->mPromoCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;

    invoke-interface {p2, v7, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private mergeHomeCategories(Ljava/util/LinkedList;Ljava/util/LinkedList;I)V
    .locals 4
    .parameter
    .parameter
    .parameter "levelNumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/vending/model/GetCategoriesResponse$Category;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, homeCategories:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    .local p2, homeCategoriesByTopLevel:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/android/vending/model/GetCategoriesResponse$Category;>;"
    invoke-static {p2}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 151
    const/4 v3, 0x1

    sub-int v1, p3, v3

    .line 152
    .local v1, position:I
    invoke-virtual {p2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/vending/model/GetCategoriesResponse$Category;

    .line 153
    .local v2, topLevelCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 154
    invoke-virtual {p1, v1, v2}, Ljava/util/LinkedList;->add(ILjava/lang/Object;)V

    .line 158
    :goto_1
    add-int/2addr v1, p3

    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 160
    .end local v2           #topLevelCategory:Lcom/android/vending/model/GetCategoriesResponse$Category;
    :cond_1
    invoke-virtual {p2}, Ljava/util/LinkedList;->clear()V

    .line 161
    return-void
.end method


# virtual methods
.method public getTopLevelCategories()Ljava/util/List;
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
    .line 45
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse;->mTopLevelCategories:Ljava/util/List;

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/vending/model/GetCategoriesResponse;->constructCategoryTree()V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/vending/model/GetCategoriesResponse;->mTopLevelCategories:Ljava/util/List;

    return-object v0
.end method
