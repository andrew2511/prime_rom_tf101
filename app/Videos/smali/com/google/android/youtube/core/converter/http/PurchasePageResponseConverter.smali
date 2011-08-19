.class public Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "PurchasePageResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/converter/http/XmlResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Page",
        "<",
        "Lcom/google/android/youtube/core/model/Purchase;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;Z)V
    .locals 3
    .parameter "parser"
    .parameter "useHqThumbnails"

    .prologue
    const-string v2, "/feed"

    .line 23
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 24
    const-string v1, "/feed"

    invoke-static {v2}, Lcom/google/android/youtube/core/converter/RulesHelper;->createBuilderWithPageRules(Ljava/lang/String;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    .line 25
    .local v0, builder:Lcom/google/android/youtube/core/converter/Rules$Builder;
    const-string v1, "/feed"

    invoke-static {v0, v2, p2}, Lcom/google/android/youtube/core/converter/http/PurchaseRulesHelper;->addPurchasePageRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V

    .line 26
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 27
    return-void
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/PurchasePageResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
