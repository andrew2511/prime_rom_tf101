.class public Lcom/google/android/youtube/core/converter/http/PurchaseResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "PurchaseResponseConverter.java"


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
    .locals 2
    .parameter "parser"
    .parameter "useHqThumbnails"

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 19
    new-instance v0, Lcom/google/android/youtube/core/converter/Rules$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;-><init>()V

    .line 20
    .local v0, builder:Lcom/google/android/youtube/core/converter/Rules$Builder;
    const-string v1, ""

    invoke-static {v0, v1, p2}, Lcom/google/android/youtube/core/converter/http/PurchaseRulesHelper;->addPurchaseRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V

    .line 21
    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/youtube/core/converter/http/PurchaseResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 22
    return-void
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/PurchaseResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
