.class public final Lcom/google/android/youtube/core/converter/http/CommentRulesHelper;
.super Ljava/lang/Object;
.source "CommentRulesHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCommentPageRules(Lcom/google/android/youtube/core/converter/Rules$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 23
    const-string v0, "/feed/entry"

    new-instance v1, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$1;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$1;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 36
    const-string v0, "/feed"

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper;->addInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method public static addCommentRules(Lcom/google/android/youtube/core/converter/Rules$Builder;)V
    .locals 2
    .parameter "builder"

    .prologue
    .line 40
    const-string v0, "/entry"

    new-instance v1, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$2;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$2;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 50
    const-string v0, ""

    invoke-static {p0, v0}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper;->addInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;)V

    .line 51
    return-void
.end method

.method private static addInternalRules(Lcom/google/android/youtube/core/converter/Rules$Builder;Ljava/lang/String;)V
    .locals 3
    .parameter "builder"
    .parameter "prefix"

    .prologue
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/entry/author/name"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$6;

    invoke-direct {v1}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$6;-><init>()V

    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$5;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$5;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/content"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$4;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/entry/published"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$3;

    invoke-direct {v2}, Lcom/google/android/youtube/core/converter/http/CommentRulesHelper$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/google/android/youtube/core/converter/Rules$Builder;->add(Ljava/lang/String;Lcom/google/android/youtube/core/converter/XmlParser$Rule;)Lcom/google/android/youtube/core/converter/Rules$Builder;

    .line 78
    return-void
.end method
