.class final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$24;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "VideoRulesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/VideoRulesHelper;->addVideoInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 13
    .parameter
    .parameter "attrs"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/youtube/core/utils/Stack",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/xml/sax/Attributes;",
            ")V"
        }
    .end annotation

    .prologue
    .line 542
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-string v12, "type"

    invoke-interface {p2, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 543
    .local v10, type:Ljava/lang/String;
    const-string v12, "yt:duration"

    invoke-interface {p2, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 544
    .local v2, duration:Ljava/lang/String;
    const-string v12, "currency"

    invoke-interface {p2, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 545
    .local v1, currency:Ljava/lang/String;
    const-string v12, "price"

    invoke-interface {p2, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 546
    .local v0, amount:Ljava/lang/String;
    const-string v12, "info"

    invoke-interface {p2, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 547
    .local v5, info:Ljava/lang/String;
    const-string v12, "yt:formats"

    invoke-interface {p2, v12}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 548
    .local v4, formats:Ljava/lang/String;
    const-string v12, "rent"

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 554
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 559
    :try_start_0
    new-instance v7, Lcom/google/android/youtube/core/model/Money;

    invoke-direct {v7, v0, v1}, Lcom/google/android/youtube/core/model/Money;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    .local v7, price:Lcom/google/android/youtube/core/model/Money;
    invoke-static {v2}, Lcom/google/android/youtube/core/model/Duration;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Duration;

    move-result-object v9

    .line 561
    .local v9, rentalDuration:Lcom/google/android/youtube/core/model/Duration;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_1

    const/4 v12, 0x0

    move-object v6, v12

    .line 562
    .local v6, infoUri:Landroid/net/Uri;
    :goto_0
    const-string v12, ","

    invoke-static {v4, v12}, Lcom/google/android/youtube/core/utils/Util;->splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v12

    invoke-static {v9, v7, v12, v6}, Lcom/google/android/youtube/core/model/PricingStructure;->createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v8

    .line 564
    .local v8, pricing:Lcom/google/android/youtube/core/model/PricingStructure;
    const-class v12, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v12}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 565
    .local v11, videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    invoke-virtual {v11, v8}, Lcom/google/android/youtube/core/model/Video$Builder;->addPricing(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 572
    .end local v6           #infoUri:Landroid/net/Uri;
    .end local v7           #price:Lcom/google/android/youtube/core/model/Money;
    .end local v8           #pricing:Lcom/google/android/youtube/core/model/PricingStructure;
    .end local v9           #rentalDuration:Lcom/google/android/youtube/core/model/Duration;
    .end local v11           #videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    :cond_0
    :goto_1
    return-void

    .line 561
    .restart local v7       #price:Lcom/google/android/youtube/core/model/Money;
    .restart local v9       #rentalDuration:Lcom/google/android/youtube/core/model/Duration;
    :cond_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    move-object v6, v12

    goto :goto_0

    .line 566
    .end local v7           #price:Lcom/google/android/youtube/core/model/Money;
    .end local v9           #rentalDuration:Lcom/google/android/youtube/core/model/Duration;
    :catch_0
    move-exception v12

    move-object v3, v12

    .line 568
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v12, "Unable to parse <media:price> tag"

    invoke-static {v12, v3}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
