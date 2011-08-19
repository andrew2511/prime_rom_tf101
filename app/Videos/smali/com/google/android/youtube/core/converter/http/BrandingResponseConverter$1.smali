.class Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter$1;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "BrandingResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter$1;->this$0:Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 3
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
    .line 54
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    invoke-virtual {p1}, Lcom/google/android/youtube/core/utils/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Branding$Builder;

    .line 55
    .local v0, brandingBuilder:Lcom/google/android/youtube/core/model/Branding$Builder;
    const-string v2, "name"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 56
    .local v1, name:Ljava/lang/String;
    invoke-static {}, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;->access$000()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 57
    const-string v2, "channel.global.title.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->title(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    .line 71
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const-string v2, "channel.global.description.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 60
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->description(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 61
    :cond_2
    const-string v2, "channel.global.keywords.string"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 62
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->keywords(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 63
    :cond_3
    const-string v2, "mobile_watchpage.banner.image.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 64
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 65
    :cond_4
    const-string v2, "mobile_watchpage.banner.image_target.url"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 66
    invoke-static {p3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/model/Branding$Builder;->bannerTargetUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0

    .line 67
    :cond_5
    const-string v2, "watchpage.global.featured_playlist.id"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Branding$Builder;->featuredPlaylistId(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Branding$Builder;

    goto :goto_0
.end method
