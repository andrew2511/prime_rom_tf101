.class Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;
.super Ljava/lang/Object;
.source "GroupedCatalogView.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/GroupedCatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GroupedCatalogViewFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;Lcom/amazon/kcp/library/models/GroupedCatalogView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;-><init>(Lcom/amazon/kcp/library/models/GroupedCatalogView;)V

    return-void
.end method


# virtual methods
.method public shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 37
    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->isGroupedItem(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amazon/kcp/library/models/GroupedCatalogView$GroupedCatalogViewFilter;->this$0:Lcom/amazon/kcp/library/models/GroupedCatalogView;

    invoke-static {v0}, Lcom/amazon/kcp/library/models/GroupedCatalogView;->access$100(Lcom/amazon/kcp/library/models/GroupedCatalogView;)Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/amazon/kcp/library/models/GroupedCatalogView$ICatalogItemGroupFunction;->canonicalItemForItemGroup(Lcom/amazon/kcp/library/models/ICatalogItem;)Lcom/amazon/kcp/library/models/ICatalogItem;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
