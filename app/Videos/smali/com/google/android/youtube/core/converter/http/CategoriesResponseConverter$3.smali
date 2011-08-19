.class Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$3;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "CategoriesResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;Landroid/content/res/Resources;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 58
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$3;->this$0:Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;

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
    .line 67
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v2, Lcom/google/android/youtube/core/model/Category$Builder;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->poll(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Category$Builder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Category$Builder;->build()Lcom/google/android/youtube/core/model/Category;

    move-result-object v0

    .line 68
    .local v0, category:Lcom/google/android/youtube/core/model/Category;
    const-class v2, Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 69
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/google/android/youtube/core/model/Category;>;"
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 2
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
    .line 61
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/youtube/core/model/Category$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Category$Builder;-><init>()V

    const-string v1, "term"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Category$Builder;->term(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category$Builder;

    move-result-object v0

    const-string v1, "label"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Category$Builder;->label(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category$Builder;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method
