.class public Lcom/amazon/kcp/library/models/PeridiocalCatalogFilter;
.super Ljava/lang/Object;
.source "PeridiocalCatalogFilter.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 10
    invoke-static {p1}, Lcom/amazon/kcp/util/Utils;->isCatalogItemPeriodical(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    return v0
.end method
