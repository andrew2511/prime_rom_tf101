.class Lcom/amazon/kcp/library/models/CatalogViewCache$1;
.super Ljava/lang/Object;
.source "CatalogViewCache.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/ICatalogView$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/library/models/CatalogViewCache;->getCatalogView(Lcom/amazon/kcp/library/models/CatalogViewCache$CatalogViewType;)Lcom/amazon/kcp/library/models/ICatalogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/CatalogViewCache;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/CatalogViewCache;)V
    .locals 0
    .parameter

    .prologue
    .line 184
    iput-object p1, p0, Lcom/amazon/kcp/library/models/CatalogViewCache$1;->this$0:Lcom/amazon/kcp/library/models/CatalogViewCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldInclude(Lcom/amazon/kcp/library/models/ICatalogItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 189
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getListableBook()Lcom/amazon/kcp/library/models/IListableBook;

    move-result-object v0

    invoke-static {v0}, Lcom/amazon/kcp/library/dictionary/internal/PreferredDictionaries;->isPreferredDictionary(Lcom/amazon/kcp/library/models/IListableBook;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
