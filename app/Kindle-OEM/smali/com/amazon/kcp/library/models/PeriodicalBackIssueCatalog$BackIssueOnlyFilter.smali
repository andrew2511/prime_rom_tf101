.class Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;
.super Ljava/lang/Object;
.source "PeriodicalBackIssueCatalog.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BackIssueOnlyFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;


# direct methods
.method private constructor <init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;)V
    .locals 0
    .parameter

    .prologue
    .line 325
    iput-object p1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;->this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 325
    invoke-direct {p0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;-><init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;)V

    return-void
.end method


# virtual methods
.method public shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 330
    iget-object v0, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$BackIssueOnlyFilter;->this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;

    invoke-virtual {v0, p1}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;->isPeriodicalBackIssue(Lcom/amazon/kcp/library/models/ICatalogItem;)Z

    move-result v0

    return v0
.end method
