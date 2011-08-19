.class final Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$1;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "CommentRulesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/CommentRulesHelper;->addCommentPageRules(Lcom/google/android/youtube/core/converter/Rules$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
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
    .line 31
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v2, Lcom/google/android/youtube/core/model/Comment$Builder;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->poll(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Comment$Builder;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/model/Comment$Builder;->build()Lcom/google/android/youtube/core/model/Comment;

    move-result-object v0

    .line 32
    .local v0, comment:Lcom/google/android/youtube/core/model/Comment;
    const-class v2, Lcom/google/android/youtube/core/model/Page$Builder;

    invoke-virtual {p1, v2}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/Page$Builder;

    .line 33
    .local v1, pageBuilder:Lcom/google/android/youtube/core/model/Page$Builder;
    invoke-virtual {v1, v0}, Lcom/google/android/youtube/core/model/Page$Builder;->addEntry(Ljava/lang/Object;)Lcom/google/android/youtube/core/model/Page$Builder;

    .line 34
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
    .line 26
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/youtube/core/model/Comment$Builder;

    invoke-direct {v0}, Lcom/google/android/youtube/core/model/Comment$Builder;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->offer(Ljava/lang/Object;)Z

    .line 27
    return-void
.end method
