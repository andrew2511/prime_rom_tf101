.class Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$2;
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
    .line 75
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$2;->this$0:Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2
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
    .line 78
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v1, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 79
    .local v0, builder:Lcom/google/android/youtube/core/model/Subscription$Builder;
    invoke-virtual {v0, p3}, Lcom/google/android/youtube/core/model/Subscription$Builder;->query(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Subscription$Builder;

    .line 80
    return-void
.end method
