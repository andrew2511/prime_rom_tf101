.class public Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;
.super Ljava/lang/Object;
.source "VibeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/vibe2/VibeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "vibeCategory"
.end annotation


# instance fields
.field private mMainCategory:Lcom/asus/reader/vibe2/MainCategory;

.field private mServiceProviderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/asus/reader/vibe2/VibeAgent;


# direct methods
.method public constructor <init>(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/vibe2/MainCategory;)V
    .locals 5
    .parameter
    .parameter "maincategory"

    .prologue
    .line 577
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    .line 578
    iput-object p2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mMainCategory:Lcom/asus/reader/vibe2/MainCategory;

    .line 579
    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mMainCategory:Lcom/asus/reader/vibe2/MainCategory;

    invoke-virtual {v3}, Lcom/asus/reader/vibe2/MainCategory;->getServiceProvider()Ljava/util/List;

    move-result-object v2

    .line 580
    .local v2, providers:Ljava/util/List;,"Ljava/util/List<Lcom/asus/reader/vibe2/ServiceProvider;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/vibe2/ServiceProvider;

    .line 581
    .local v1, provider:Lcom/asus/reader/vibe2/ServiceProvider;
    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    new-instance v4, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    invoke-direct {v4, p1, v1}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;-><init>(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/vibe2/ServiceProvider;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 583
    .end local v1           #provider:Lcom/asus/reader/vibe2/ServiceProvider;
    :cond_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 590
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mMainCategory:Lcom/asus/reader/vibe2/MainCategory;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/MainCategory;->getMainCategoryLocale()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSPCount()I
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getSPList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;",
            ">;"
        }
    .end annotation

    .prologue
    .line 636
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    return-object v0
.end method

.method public getSPName(I)Ljava/lang/String;
    .locals 1
    .parameter "position"

    .prologue
    .line 598
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->getSPName()Ljava/lang/String;

    move-result-object v0

    .line 600
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubCount(I)I
    .locals 1
    .parameter "spposition"

    .prologue
    .line 612
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 613
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    invoke-virtual {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->getSubCount()I

    move-result v0

    .line 614
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSubName(II)Ljava/lang/String;
    .locals 1
    .parameter "spposition"
    .parameter "subposition"

    .prologue
    .line 606
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    invoke-virtual {p0, p2}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->getSubName(I)Ljava/lang/String;

    move-result-object v0

    .line 608
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTotalCount(II)I
    .locals 1
    .parameter "spposition"
    .parameter "subposition"

    .prologue
    .line 618
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 619
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    invoke-virtual {p0, p2}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->getTotalCount(I)I

    move-result v0

    .line 620
    :goto_0
    return v0

    .restart local p0
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getVibeBooksCursor(IILjava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .parameter "spposition"
    .parameter "subposition"
    .parameter "searchText"

    .prologue
    .line 624
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 625
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    invoke-virtual {p0, p2, p3}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->getVibeBooksCursor(ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 626
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateVibeBooksCursor(IILjava/lang/String;Z)Landroid/database/Cursor;
    .locals 1
    .parameter "spposition"
    .parameter "subposition"
    .parameter "searchText"
    .parameter "goDown"

    .prologue
    .line 630
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 631
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeCategory;->mServiceProviderList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;

    invoke-virtual {p0, p2, p3, p4}, Lcom/asus/reader/vibe2/VibeAgent$vibeServiceProvider;->updateVibeBooksCursor(ILjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v0

    .line 632
    :goto_0
    return-object v0

    .restart local p0
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
