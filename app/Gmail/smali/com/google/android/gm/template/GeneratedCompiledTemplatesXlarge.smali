.class Lcom/google/android/gm/template/GeneratedCompiledTemplatesXlarge;
.super Lcom/google/android/gm/template/GeneratedCompiledTemplates;
.source "GeneratedCompiledTemplates.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;-><init>()V

    return-void
.end method


# virtual methods
.method public renderActionStrip(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 482
    :try_start_0
    const-string v1, "\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"gm-action-strip\"><tr>\n<td class=\"gm-reply-action gm-action-button\"></td>\n<td class=\"gm-replyall-action gm-action-button\"></td>\n<td class=\"gm-forward-action gm-action-button\"></td>\n<td class=\"gm-draft-action gm-action-button\"></td>\n<td class=\"gm-star-icon gm-action-button\"></td>\n</tr></table>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 486
    return-void

    .line 483
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 484
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during template rendering"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public renderSuperCollapsed(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 493
    :try_start_0
    const-string v1, "\n<!-- Template for a block of super-collapsed headers. -->\n<div class=\"gm-super-collapsed-block gm-message\" onclick=\"gm.uncollapse(this, "

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 494
    const-string v1, "firstIndex"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 495
    const-string v1, ", "

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 496
    const-string v1, "lastIndex"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 497
    const-string v1, ")\">\n<div class=\"gm-super-collapsed-label\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 498
    const-string v1, "messagesRead"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 499
    const-string v1, "</div>\n<div class=\"gm-super-collapsed-count\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 500
    const-string v1, "count"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 501
    const-string v1, "</div>\n</div>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 505
    return-void

    .line 502
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 503
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during template rendering"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
