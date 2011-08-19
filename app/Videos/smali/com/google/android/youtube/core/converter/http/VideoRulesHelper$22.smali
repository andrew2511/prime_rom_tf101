.class final Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$22;
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


# instance fields
.field final synthetic val$useHqThumbnails:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter

    .prologue
    .line 278
    iput-boolean p1, p0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$22;->val$useHqThumbnails:Z

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 5
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
    .line 281
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v4, Lcom/google/android/youtube/core/model/Video$Builder;

    invoke-virtual {p1, v4}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/youtube/core/model/Video$Builder;

    .line 282
    .local v3, videoBuilder:Lcom/google/android/youtube/core/model/Video$Builder;
    const-string v4, "yt:name"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    .local v1, name:Ljava/lang/String;
    const-string v4, "url"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 284
    .local v2, thumbnailUri:Landroid/net/Uri;
    const-string v4, "poster"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 285
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->posterUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    .line 301
    :cond_0
    :goto_0
    return-void

    .line 289
    :cond_1
    const-string v4, "time"

    invoke-interface {p2, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    move v0, v4

    .line 290
    .local v0, isHiRes:Z
    :goto_1
    iget-boolean v4, p0, Lcom/google/android/youtube/core/converter/http/VideoRulesHelper$22;->val$useHqThumbnails:Z

    if-eqz v4, :cond_4

    .line 292
    if-nez v0, :cond_2

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Video$Builder;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 293
    :cond_2
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0

    .line 289
    .end local v0           #isHiRes:Z
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1

    .line 297
    .restart local v0       #isHiRes:Z
    :cond_4
    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/google/android/youtube/core/model/Video$Builder;->getThumbnailUri()Landroid/net/Uri;

    move-result-object v4

    if-nez v4, :cond_0

    .line 298
    invoke-virtual {v3, v2}, Lcom/google/android/youtube/core/model/Video$Builder;->thumbnailUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Video$Builder;

    goto :goto_0
.end method
