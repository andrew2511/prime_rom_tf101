.class final Lcom/google/android/youtube/core/converter/http/PurchaseRulesHelper$3;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "PurchaseRulesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/PurchaseRulesHelper;->addPurchaseInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter "attrs"
    .parameter "chars"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 182
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v3, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v3}, Lcom/google/android/youtube/core/utils/Stack;->poll(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 183
    .local v0, builder:Lcom/google/android/youtube/core/model/Video$Builder;
    invoke-virtual {v0}, Lcom/google/android/youtube/core/model/Video$Builder;->build()Lcom/google/android/youtube/core/model/Video;

    move-result-object v2

    .line 184
    .local v2, video:Lcom/google/android/youtube/core/model/Video;
    const-class v3, Lcom/google/android/youtube/core/model/Purchase$Builder;

    invoke-virtual {p1, v3}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 185
    .local v1, purchaseBuilder:Lcom/google/android/youtube/core/model/Purchase$Builder;
    invoke-virtual {v1, v2}, Lcom/google/android/youtube/core/model/Purchase$Builder;->purchasedVideo(Lcom/google/android/youtube/core/model/Video;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 186
    return-void
.end method
