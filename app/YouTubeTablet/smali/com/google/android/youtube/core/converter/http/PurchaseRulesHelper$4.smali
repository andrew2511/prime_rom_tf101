.class final Lcom/google/android/youtube/core/converter/http/PurchaseRulesHelper$4;
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
    .line 145
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 7
    .parameter
    .parameter
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
    .line 148
    const-string v0, "type"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 149
    const-string v1, "yt:duration"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    const-string v2, "currency"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 151
    const-string v3, "price"

    invoke-interface {p2, v3}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 152
    const-string v4, "info"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 153
    const-string v5, "yt:formats"

    invoke-interface {p2, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 154
    const-string v6, "rent"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 164
    :try_start_0
    new-instance v0, Lcom/google/android/youtube/core/model/Money;

    invoke-direct {v0, v3, v2}, Lcom/google/android/youtube/core/model/Money;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    invoke-static {v1}, Lcom/google/android/youtube/core/model/Duration;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Duration;

    move-result-object v1

    .line 166
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    .line 167
    :goto_0
    const-string v3, ","

    invoke-static {v5, v3}, Lcom/google/android/youtube/core/utils/Util;->splitIntegers(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-static {v1, v0, v3, v2}, Lcom/google/android/youtube/core/model/PricingStructure;->createRental(Lcom/google/android/youtube/core/model/Duration;Lcom/google/android/youtube/core/model/Money;Ljava/util/List;Landroid/net/Uri;)Lcom/google/android/youtube/core/model/PricingStructure;

    move-result-object v0

    .line 169
    const-class v1, Lcom/google/android/youtube/core/model/Purchase$Builder;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 170
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->pricePaid(Lcom/google/android/youtube/core/model/PricingStructure;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 177
    :cond_0
    :goto_1
    return-void

    .line 166
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 173
    const-string v1, "Unable to parse  <media:price> tag"

    invoke-static {v1, v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
