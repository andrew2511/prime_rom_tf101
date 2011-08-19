.class Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$5;
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
    .line 54
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$5;->this$0:Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 1
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
            ")V"
        }
    .end annotation

    .prologue
    .line 57
    const-class v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 58
    const-string v0, "src"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->uri(Landroid/net/Uri;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 59
    return-void
.end method
