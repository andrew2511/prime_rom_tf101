.class final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$23;
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
    .line 232
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 7
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
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const/16 v6, 0xb

    .line 235
    const-class v4, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v4}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 236
    .local v3, videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    const-string v4, "yt:format"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-static {v4, v5}, Lcom/google/android/youtube/core/utils/Util;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 237
    .local v0, format:I
    const-string v4, "type"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, type:Ljava/lang/String;
    const-string v4, "url"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 239
    .local v2, uri:Landroid/net/Uri;
    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 241
    :pswitch_1
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 246
    :pswitch_2
    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Video$Builder;->getStreamUri240p()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 247
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri240p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 251
    :pswitch_3
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_1

    const-string v4, "video/wvm"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 254
    :cond_1
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri360p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 258
    :pswitch_4
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v6, :cond_0

    .line 260
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri360p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 264
    :pswitch_5
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri720p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 267
    :pswitch_6
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri405p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 270
    :pswitch_7
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->streamUri480p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 273
    :pswitch_8
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->downloadUri720p(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_8
        :pswitch_7
    .end packed-switch
.end method
