.class final Lcom/google/android/youtube/core/converter/http/PurchaseRulesHelper$5;
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
    .line 122
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3
    .parameter
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 125
    const-class v0, Lcom/google/android/youtube/core/model/Purchase$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 126
    const-string v0, "rel"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 127
    const-string v1, "href"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 129
    const-string v2, "self"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->id(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 132
    :cond_1
    const-string v2, "http://gdata.youtube.com/schemas/2007#video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 133
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->MOVIE:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 134
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    goto :goto_0

    .line 135
    :cond_2
    const-string v2, "http://gdata.youtube.com/schemas/2007#playlist"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 136
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->SEASON:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 137
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    goto :goto_0

    .line 138
    :cond_3
    const-string v2, "http://gdata.youtube.com/schemas/2007#show"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    sget-object v0, Lcom/google/android/youtube/core/model/Purchase$ItemType;->SHOW:Lcom/google/android/youtube/core/model/Purchase$ItemType;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemType(Lcom/google/android/youtube/core/model/Purchase$ItemType;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    .line 140
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Purchase$Builder;->itemUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Purchase$Builder;

    goto :goto_0
.end method
