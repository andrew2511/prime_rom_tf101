.class Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$2;
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
    .line 72
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter$2;->this$0:Lcom/google/android/youtube/core/converter/http/CategoriesResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 1
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
    .line 75
    const-class v0, Lcom/google/android/youtube/core/model/Category$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Category$Builder;

    const-string v0, "regions"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Category$Builder;->regions(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Category$Builder;

    .line 76
    return-void
.end method
