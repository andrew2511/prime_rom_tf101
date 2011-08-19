.class Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$1;
.super Ljava/lang/Object;
.source "PeriodicalGroupFunction.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;
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
.field final synthetic this$0:Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;)V
    .locals 0
    .parameter

    .prologue
    .line 24
    iput-object p1, p0, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$1;->this$0:Lcom/amazon/kcp/library/models/PeriodicalGroupFunction;

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

    .line 28
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v0

    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getBookID()Lcom/amazon/kcp/library/models/IBookID;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    .line 62
    :cond_0
    :goto_0
    return v0

    .line 35
    :cond_1
    invoke-interface {p1}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-interface {p2}, Lcom/amazon/kcp/library/models/ICatalogItem;->getPublicationDate()Ljava/lang/String;

    move-result-object v1

    .line 38
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v3

    .line 55
    :goto_1
    if-nez v0, :cond_0

    .line 60
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

    .line 42
    :cond_2
    invoke-static {v0}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 44
    const/4 v0, 0x1

    goto :goto_1

    .line 46
    :cond_3
    invoke-static {v1}, Lcom/amazon/kcp/util/Utils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 48
    const/4 v0, -0x1

    goto :goto_1

    .line 52
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
    .line 24
    check-cast p1, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p1
    check-cast p2, Lcom/amazon/kcp/library/models/ICatalogItem;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/amazon/kcp/library/models/PeriodicalGroupFunction$1;->compare(Lcom/amazon/kcp/library/models/ICatalogItem;Lcom/amazon/kcp/library/models/ICatalogItem;)I

    move-result v0

    return v0
.end method
