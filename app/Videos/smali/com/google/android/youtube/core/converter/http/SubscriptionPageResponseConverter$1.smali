.class Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$1;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "SubscriptionPageResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 82
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$1;->this$0:Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 4
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
    .line 85
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-string v2, "rel"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "edit"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const-string v2, "href"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 87
    .local v1, editUri:Landroid/net/Uri;
    const-class v2, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 88
    .local v0, builder:Lcom/google/android/youtube/core/model/Subscription$Builder;
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Subscription$Builder;->editUri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 90
    .end local v0           #builder:Lcom/google/android/youtube/core/model/Subscription$Builder;
    .end local v1           #editUri:Landroid/net/Uri;
    :cond_0
    return-void
.end method
