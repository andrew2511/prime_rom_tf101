.class Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;
.super Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;
.source "PeriodicalBackIssueCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PeriodicalBackIssueEventProvider"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/CatalogChangeEventProvider;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyBackIssueStatusChanged(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 5
    .parameter "item"

    .prologue
    .line 124
    iget-object v4, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$PeriodicalBackIssueEventProvider;->listeners:Ljava/util/WeakHashMap;

    invoke-virtual {v4}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amazon/kcp/library/models/ICatalogListener;

    .line 126
    .local v3, listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    move-object v0, v3

    check-cast v0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$IPeriodicalBackIssueListener;

    move-object v1, v0

    .line 127
    .local v1, backIssueListener:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$IPeriodicalBackIssueListener;
    invoke-interface {v1, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$IPeriodicalBackIssueListener;->onBackIssueStatusChanged(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    goto :goto_0

    .line 129
    .end local v1           #backIssueListener:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$IPeriodicalBackIssueListener;
    .end local v3           #listener:Lcom/amazon/kcp/library/models/ICatalogListener;
    :cond_0
    return-void
.end method
