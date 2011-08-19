.class final Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$3;
.super Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;
.source "CommentRulesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/youtube/core/converter/http/CommentRulesHelper;->addInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Lcom/google/android/youtube/core/converter/XmlParser$BaseRule;-><init>()V

    return-void
.end method


# virtual methods
.method public end(Lcom/google/android/youtube/core/utils/Stack;Lorg/xml/sax/Attributes;Ljava/lang/String;)V
    .locals 1
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
    .line 75
    .local p1, stack:Lcom/google/android/youtube/core/utils/Stack;,"Lcom/google/android/youtube/core/utils/Stack<Ljava/lang/Object;>;"
    const-class v0, Lcom/google/android/youtube/core/model/Comment$Builder;

    invoke-virtual {p1, v0}, Lcom/google/android/youtube/core/utils/Stack;->peek(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/youtube/core/model/Comment$Builder;

    invoke-static {p3}, Lcom/google/android/youtube/core/utils/Util;->toDate(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/model/Comment$Builder;->publishedDate(Ljava/util/Date;)Lcom/google/android/youtube/core/model/Comment$Builder;

    .line 76
    return-void
.end method
