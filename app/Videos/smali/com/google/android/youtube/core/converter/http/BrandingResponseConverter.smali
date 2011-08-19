.class public Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;
.super Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;
.source "BrandingResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/youtube/core/converter/http/XmlResponseConverter",
        "<",
        "Lcom/google/android/youtube/core/model/Branding;",
        ">;"
    }
.end annotation


# static fields
.field private static final ASSETS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 27
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "channel.global.title.string"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "channel.global.description.string"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "channel.global.keywords.string"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "mobile_watchpage.banner.image.url"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "mobile_watchpage.banner.image_target.url"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "watchpage.global.featured_playlist.id"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;->ASSETS:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
    .locals 3
    .parameter "parser"

    .prologue
    .line 39
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/converter/http/XmlResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V

    .line 40
    new-instance v0, Lcom/google/android/youtube/core/converter/Rules$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;-><init>()V

    const-string v1, "/entry"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter$2;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter$2;-><init>(Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/entry/yt:option"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter$1;-><init>(Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 73
    return-void
.end method

.method static synthetic access$000()Ljava/util/Set;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;->ASSETS:Ljava/util/Set;

    return-object v0
.end method


# virtual methods
.method protected getRules()Lcom/google/android/youtube/core/converter/Rules;
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/youtube/core/converter/http/BrandingResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    return-object v0
.end method
