.class public Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;
.super Ljava/lang/Object;
.source "SubscriptionPlan.java"


# instance fields
.field public AdditionalIssuesPrice:Ljava/lang/String;

.field public Alerts:Ljava/lang/String;

.field public ArchivedIssuesPrice:Ljava/lang/String;

.field public AutoDownloads:Ljava/lang/String;

.field public BackIssues:Ljava/lang/String;

.field public Id:Ljava/lang/String;

.field public IssueBalance:Ljava/lang/String;

.field public Name:Ljava/lang/String;

.field public OffineStorageDays:Ljava/lang/String;

.field public Price:Ljava/lang/String;

.field public ReadingMap:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;",
            ">;"
        }
    .end annotation

    .prologue
    .line 27
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .local v4, result:Ljava/util/List;,"Ljava/util/List<Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;>;"
    new-instance v1, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;

    const-string v5, "get-subscriptions-list"

    invoke-direct {v1, v5}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;-><init>(Ljava/lang/String;)V

    .line 29
    .local v1, helper:Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;

    invoke-direct {v3}, Lcom/newspaperdirect/pressreader/android/core/NDWrapper;-><init>()V

    .line 30
    .local v3, plan:Lcom/newspaperdirect/pressreader/android/core/NDWrapper;,"Lcom/newspaperdirect/pressreader/android/core/NDWrapper<Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan;>;"
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->getResponseElement()Landroid/sax/Element;

    move-result-object v5

    const-string v6, "subscription"

    invoke-virtual {v5, v6}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v2

    .line 32
    .local v2, newspaperElm:Landroid/sax/Element;
    new-instance v5, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;

    invoke-direct {v5, v3, v4}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$1;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;Ljava/util/List;)V

    .line 31
    invoke-virtual {v2, v5}, Landroid/sax/Element;->setStartElementListener(Landroid/sax/StartElementListener;)V

    .line 38
    const-string v5, "product-id"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$2;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$2;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 43
    const-string v5, "price"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$3;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$3;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 48
    const-string v5, "additional-issue-price"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$4;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$4;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 53
    const-string v5, "archive-issue-price"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$5;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$5;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 58
    const-string v5, "issue-balance"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$6;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$6;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 63
    const-string v5, "subscription-name"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$7;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$7;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 68
    const-string v5, "offline-storage-days"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$8;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$8;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 73
    const-string v5, "max-monitoring-alerts"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$9;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$9;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 78
    const-string v5, "back-issues"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$10;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$10;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 83
    const-string v5, "max-auto-downloads"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$11;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$11;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 88
    const-string v5, "reading-map-option"

    invoke-virtual {v2, v5}, Landroid/sax/Element;->getChild(Ljava/lang/String;)Landroid/sax/Element;

    move-result-object v5

    new-instance v6, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$12;

    invoke-direct {v6, v3}, Lcom/newspaperdirect/pressreader/android/core/SubscriptionPlan$12;-><init>(Lcom/newspaperdirect/pressreader/android/core/NDWrapper;)V

    invoke-virtual {v5, v6}, Landroid/sax/Element;->setEndTextElementListener(Landroid/sax/EndTextElementListener;)V

    .line 94
    :try_start_0
    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/core/HttpRequestHelper;->sendRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_0
    return-object v4

    .line 95
    :catch_0
    move-exception v0

    .line 96
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
