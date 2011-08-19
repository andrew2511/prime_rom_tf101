.class Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$2;
.super Ljava/lang/Object;
.source "PeriodicalBackIssueCatalog.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/amazon/kcp/library/models/ICatalogItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;)V
    .locals 0
    .parameter

    .prologue
    .line 69
    iput-object p1, p0, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$2;->this$0:Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 73
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 107
    :cond_0
    :goto_0
    return v0

    .line 80
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 100
    :goto_1
    if-nez v0, :cond_0

    .line 105
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 87
    :cond_2
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 89
    const/4 v0, 0x1

    goto :goto_1

    .line 91
    :cond_3
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 93
    const/4 v0, -0x1

    goto :goto_1

    .line 97
    :cond_4
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/PeriodicalBackIssueCatalog$2;->compare(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I

    move-result v0

    return v0
.end method
