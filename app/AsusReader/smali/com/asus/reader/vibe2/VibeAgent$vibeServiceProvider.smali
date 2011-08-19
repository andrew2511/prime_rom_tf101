.class public Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;
.super Ljava/lang/Object;
.source "VibeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/vibe2/VibeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "vibeServiceProvider"
.end annotation


# instance fields
.field private mServiceProvider:Lcom/asus/reader/vibe2/ServiceProvider;

.field private mSubCategoryList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/asus/reader/vibe2/VibeAgent;


# direct methods
.method public constructor <init>(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/vibe2/ServiceProvider;)V
    .locals 6
    .parameter
    .parameter "serviceProvider"

    .prologue
    .line 644
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 642
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    .line 645
    iput-object p2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mServiceProvider:Lcom/asus/reader/vibe2/ServiceProvider;

    .line 646
    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mServiceProvider:Lcom/asus/reader/vibe2/ServiceProvider;

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/ServiceProvider;->getSubcategory()Ljava/util/List;

    move-result-object v1

    .line 647
    .local v1, lSub:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/Subcategory;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/asus/reader/vibe2/Subcategory;

    .line 648
    .local v2, sub:Lcom/asus/reader/vibe2/Subcategory;
    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    new-instance v4, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;

    iget-object v5, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mServiceProvider:Lcom/asus/reader/vibe2/ServiceProvider;

    invoke-virtual {v5}, Lcom/asus/reader/vibe2/ServiceProvider;->getSPName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v2, v5}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;-><init>(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/vibe2/Subcategory;Ljava/lang/String;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 650
    .end local v2           #sub:Lcom/asus/reader/vibe2/Subcategory;
    :cond_0
    return-void
.end method


# virtual methods
.method public getSPName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mServiceProvider:Lcom/asus/reader/vibe2/ServiceProvider;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/ServiceProvider;->getSPName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCategoryList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    return-object v0
.end method

.method public getSubCount()I
    .locals 1

    .prologue
    .line 662
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSubName(I)Ljava/lang/String;
    .locals 1
    .parameter "subposition"

    .prologue
    .line 656
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 657
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 658
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalCount(I)I
    .locals 1
    .parameter "subposition"

    .prologue
    .line 666
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->getTotalCount()I

    move-result v0

    .line 668
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVibeBooksCursor(ILjava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "subposition"
    .parameter "searchText"

    .prologue
    .line 672
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;

    invoke-virtual {p0, p2}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->getVibeBooksCursor(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 674
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVibeBooksCursor(ILjava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "subposition"
    .parameter "searchText"
    .parameter "goDown"

    .prologue
    .line 678
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 679
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->mSubCategoryList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;

    invoke-virtual {p0, p2, p3}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->updateVibeBooksCursor(Ljava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 680
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
