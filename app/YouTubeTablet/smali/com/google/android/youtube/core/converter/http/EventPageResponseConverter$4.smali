.class Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$4;
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
    .line 50
    iput-object p1, p0, Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter$4;->this$0:Lcom/google/android/youtube/core/converter/http/EventPageResponseConverter;

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
    .line 53
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-string v1, "http://gdata.youtube.com/schemas/2007/userevents.cat"

    const-string v2, "scheme"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "term"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/utils/Util;->toUpperInvariant(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/youtube/core/model/Event$Action;->valueOf(Ljava/lang/String;)Lcom/google/android/youtube/core/model/Event$Action;

    move-result-object v0

    .line 55
    .local v0, action:Lcom/google/android/youtube/core/model/Event$Action;
    const-class v1, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p1, v1}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Event$Builder;

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Event$Builder;->action(Lcom/google/android/youtube/core/model/Event$Action;)Lcom/google/android/youtube/core/model/Event$Builder;

    .line 57
    .end local v0           #action:Lcom/google/android/youtube/core/model/Event$Action;
    :cond_0
    return-void
.end method
