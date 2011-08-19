.class public Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;
.super Ljava/lang/Object;
.source "CategoriesResponseConverter.java"

# interfaces
.implements Lcom/google/android/youtube/core/converter/ResponseConverter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/youtube/core/converter/ResponseConverter",
        "<",
        "Lorg/apache/http/HttpResponse;",
        "Ljava/util/List",
        "<",
        "Lcom/google/android/youtube/core/model/Category;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final parser:Lcom/google/android/youtube/core/converter/XmlParser;

.field private final resources:Landroid/content/res/Resources;

.field private final rules:Lcom/google/android/youtube/core/converter/Rules;


# direct methods
.method public constructor <init>(Lcom/google/android/youtube/core/converter/XmlParser;Landroid/content/res/Resources;)V
    .locals 3
    .parameter "parser"
    .parameter "resources"

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->resources:Landroid/content/res/Resources;

    .line 46
    const-string v0, "the parser can\'t be null"

    invoke-static {p1, v0}, Lcom/google/android/youtube/core/utils/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/converter/XmlParser;

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->parser:Lcom/google/android/youtube/core/converter/XmlParser;

    .line 47
    new-instance v0, Lcom/google/android/youtube/core/converter/Rules$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;-><init>()V

    const-string v1, "/app:categories"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$4;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$4;-><init>(Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/app:categories/atom:category"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$3;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$3;-><init>(Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/app:categories/atom:category/yt:browsable"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$2;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$2;-><init>(Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    const-string v1, "/app:categories/atom:category/yt:deprecated"

    new-instance v2, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$1;

    invoke-direct {v2, p0}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$1;-><init>(Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;)V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/youtube/core/converter/Rules$Builder;->build()Lcom/google/android/youtube/core/converter/Rules;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    .line 85
    return-void
.end method

.method public static filterResponse(Ljava/util/List;Ljava/lang/String;Landroid/widget/ArrayAdapter;)V
    .locals 5
    .parameter
    .parameter "country"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 112
    .local p0, response:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;"
    .local p2, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/youtube/core/model/Category;>;"
    sget-object v4, Lcom/google/android/youtube/core/async/GDataRequests;->SUPPORTED_REGIONS:Ljava/util/Set;

    invoke-interface {v4, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 113
    .local v2, regionSupported:Z
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Category;

    .line 114
    .local v0, category:Lcom/google/android/youtube/core/model/Category;
    iget-object v3, v0, Lcom/google/android/youtube/core/model/Category;->regions:Ljava/lang/String;

    .line 115
    .local v3, regions:Ljava/lang/String;
    iget-boolean v4, v0, Lcom/google/android/youtube/core/model/Category;->deprecated:Z

    if-nez v4, :cond_0

    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    invoke-virtual {v3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 117
    :cond_1
    invoke-virtual {p2, v0}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 120
    .end local v0           #category:Lcom/google/android/youtube/core/model/Category;
    .end local v3           #regions:Ljava/lang/String;
    :cond_2
    return-void
.end method


# virtual methods
.method public bridge synthetic convertResponse(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 35
    check-cast p1, Lorg/apache/http/HttpResponse;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->convertResponse(Lorg/apache/http/HttpResponse;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public convertResponse(Lorg/apache/http/HttpResponse;)Ljava/util/List;
    .locals 8
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpResponse;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/youtube/core/model/Category;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/youtube/core/converter/ConverterException;
        }
    .end annotation

    .prologue
    .line 90
    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v3

    .line 91
    .local v3, xml:Ljava/io/InputStream;
    iget-object v4, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->parser:Lcom/google/android/youtube/core/converter/XmlParser;

    iget-object v5, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->rules:Lcom/google/android/youtube/core/converter/Rules;

    invoke-virtual {v4, v3, v5}, Lcom/google/android/youtube/core/converter/XmlParser;->parse(Ljava/io/InputStream;Lcom/google/android/youtube/core/converter/Rules;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 93
    .local v0, categories:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;"
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 94
    .local v1, country:Ljava/lang/String;
    new-instance v4, Lcom/google/android/youtube/core/model/Category;

    const-string v5, ""

    iget-object v6, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;->resources:Landroid/content/res/Resources;

    const v7, 0x7f0d0028

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v1, v7}, Lcom/google/android/youtube/core/model/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    new-instance v4, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$5;

    invoke-direct {v4, p0}, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$5;-><init>(Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;)V

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    return-object v0

    .line 102
    .end local v0           #categories:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;"
    .end local v1           #country:Ljava/lang/String;
    .end local v3           #xml:Ljava/io/InputStream;
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 103
    .local v2, e:Ljava/io/IOException;
    new-instance v4, Lcom/google/android/youtube/core/converter/ConverterException;

    invoke-direct {v4, v2}, Lcom/google/android/youtube/core/converter/ConverterException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method
