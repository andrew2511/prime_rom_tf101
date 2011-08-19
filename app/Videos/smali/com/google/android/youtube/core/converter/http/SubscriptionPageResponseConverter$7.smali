.class Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$7;
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
    .line 30
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter$7;->this$0:Lcom/google/android/youtube/core/converter/http/SubscriptionPageResponseConverter;

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
    .line 38
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v2, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->poll(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Subscription$Builder;->build()Lcom/google/android/youtube/core/model/Subscription;

    move-result-object v1

    .line 39
    .local v1, subscription:Lcom/google/android/youtube/core/model/Subscription;
    const-class v2, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/model/Page$Builder;

    .line 40
    .local v0, pageBuilder:Lcom/google/android/youtube/core/model/Page$Builder;,"Lcom/google/android/youtube/core/model/Page$Builder<Lcom/google/android/youtube/core/model/Subscription;>;"
    invoke-virtual {v0, v1}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 41
    return-void
.end method

.method public start(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;)V
    .locals 1
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
    .line 33
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/youtube/core/model/Subscription$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Subscription$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
