.class Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$3;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "VastAdResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter$3;->this$0:Lcom/google/android/youtube/core/converter/http/VastAdResponseConverter;

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
    .line 54
    const-class v0, Lcom/google/android/youtube/core/model/VastAd$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/VastAd$Builder;

    .line 55
    const-string v0, "event"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    if-nez v0, :cond_1

    .line 57
    const-string v0, "Badly formed tracking event - ignoring"

    invoke-static {v0}, Lcom/google/android/youtube/core/L;->w(Ljava/lang/String;)V

    .line 72
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->uriEncode(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 61
    const-string v2, "firstQuartile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 62
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->firstQuartilePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    goto :goto_0

    .line 63
    :cond_2
    const-string v2, "midpoint"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 64
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->midpointPingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    goto :goto_0

    .line 65
    :cond_3
    const-string v2, "thirdQuartile"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 66
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->thirdQuartilePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    goto :goto_0

    .line 67
    :cond_4
    const-string v2, "complete"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 68
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->completePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    goto :goto_0

    .line 69
    :cond_5
    const-string v2, "close"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {p0, v1}, Lcom/google/android/youtube/core/model/VastAd$Builder;->closePingUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/VastAd$Builder;

    goto :goto_0
.end method
