.class Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$6;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "EventPageResponseConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;-><init>(Lcom/google/android/youtube/core/converter/XmlParser;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;


# direct methods
.method constructor <init>(Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;)V
    .locals 0
    .parameter

    .prologue
    .line 31
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$6;->this$0:Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;

    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 2
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
    .line 39
    const-class v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->poll(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Event$Builder;->build()Lcom/google/android/youtube/core/model/Event;

    move-result-object v0

    .line 40
    const-class v1, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/youtube/core/model/Page$Builder;

    .line 41
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 42
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
    .line 34
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Event$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 35
    return-void
.end method
