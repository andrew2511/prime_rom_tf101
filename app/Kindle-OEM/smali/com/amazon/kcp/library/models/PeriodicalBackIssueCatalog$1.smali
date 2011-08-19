.class Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;
.super Lcom/amazon/kcp/library/models/CatalogListener;
.source "PeriodicalBackIssueCatalog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;)V
    .locals 0
    .parameter

    .prologue
    .line 43
    iput-object p1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;->this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;

    invoke-direct {p0}, Lcom/amazon/kcp/library/models/CatalogListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter

    .prologue
    .line 47
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;->this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->onItemAdded(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 50
    return-void
.end method

.method public onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V
    .locals 1
    .parameter

    .prologue
    .line 58
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;->this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->onItemRemoved(Lcom/amazon/kcp/library/models/ICatalogItem;)V

    .line 62
    return-void
.end method
