.class public Lcom/google/android/gm/template/GeneratedCompiledTemplates;
.super Ljava/lang/Object;
.source "GeneratedCompiledTemplates.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTemplates(Landroid/content/Context;)Lcom/google/android/gm/template/GeneratedCompiledTemplates;
    .locals 3
    .parameter "context"

    .prologue
    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 6
    .local v0, useTabletUi:Z
    :goto_0
    if-eqz v0, :cond_1

    new-instance v1, Lcom/google/android/gm/template/GeneratedCompiledTemplatesXlarge;

    invoke-direct {v1}, Lcom/google/android/gm/template/GeneratedCompiledTemplatesXlarge;-><init>()V

    :goto_1
    return-object v1

    .line 5
    .end local v0           #useTabletUi:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 6
    .restart local v0       #useTabletUi:Z
    :cond_1
    new-instance v1, Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    invoke-direct {v1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;-><init>()V

    goto :goto_1
.end method


# virtual methods
.method public renderActionStrip(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 213
    :try_start_0
    const-string v1, "\n<table cellpadding=\"0\" cellspacing=\"0\" class=\"gm-action-strip"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 214
    const-string v1, "useReplyDefault"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " gm-action-strip-show-reply"

    :goto_0
    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 216
    const-string v1, "\"><tr>\n<td class=\"gm-star-icon gm-action-button gm-action-button-first\"></td>\n<td class=\"gm-reply-action gm-action-button\">\n<div class=\"gm-action-icon\"></div>\n<div class=\"gm-action-text\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 217
    const-string v1, "replyString"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 218
    const-string v1, "</div>\n</td>\n<td class=\"gm-replyall-action gm-action-button\">\n<div class=\"gm-action-icon\"></div>\n<div class=\"gm-action-text\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 219
    const-string v1, "replyAllString"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 220
    const-string v1, "</div>\n</td>\n<td class=\"gm-forward-action gm-action-button\">\n<div class=\"gm-action-icon\"></div>\n<div class=\"gm-action-text\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 221
    const-string v1, "forwardString"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 222
    const-string v1, "</div>\n</td>\n<td class=\"gm-strip-more gm-action-button\"></td>\n<td class=\"gm-draft-action gm-action-button\">\n<div class=\"gm-action-icon\"></div>\n<div class=\"gm-action-text\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 223
    const-string v1, "resumeDraftString"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 224
    const-string v1, "</div>\n</td>\n</tr></table>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 228
    return-void

    .line 214
    :cond_0
    const-string v1, ""
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 225
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 226
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during template rendering"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public renderConversation(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 4
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 235
    :try_start_0
    const-string v2, "\n<!DOCTYPE html>\n<html>\n<head>\n<meta name=\"viewport\" content=\"target-densitydpi = device-dpi\"/>\n<meta name=\"viewport\" content=\"user-scalable = false\"/>\n<link rel=\"stylesheet\" href=\"file:///android_res/raw/styles.css\">\n</head>\n<body>\n<div class=\"gm-conversation-header\">\n<div id=\"gm_subject\" style=\"zoom:"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 236
    const-string v2, "zoom"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 237
    const-string v2, "\">"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 238
    const-string v2, "subject"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 239
    const-string v2, "</div>\n<div id=\"gm_labels\" class=\"gm-labels "

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 240
    const-string v2, "isImportant"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const-string v2, "gm-not-important"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 243
    :cond_0
    const-string v2, "\" onclick=\"gm.changeLabels()\">\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 244
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderLabels(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 245
    const-string v2, "\n</div>\n</div>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 246
    new-instance v1, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;-><init>(Lcom/google/android/gm/template/GeneratedCompiledTemplates;Ljava/lang/Appendable;)V

    .line 263
    .local v1, message$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    const-string v2, "messages"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "message"

    invoke-static {v2, v3, p2, v1}, Lcom/google/android/gm/template/ForEach;->iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V

    .line 264
    const-string v2, "\n<div id=\"gm_fixed_header\" style=\"visibility:hidden\">\n<div class=\"gm-header\">\n<div class=\"gm-top-header\">\n<div class=\"gm-draft-icon\"></div>\n<div class=\"gm-contact\">\n<div class=\"gm-contact-overlay\"></div>\n</div>\n<div class=\"gm-collapse-highlight\">\n<div class=\"gm-presence-icon\" name=\""

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 265
    const-string v2, "email"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 266
    const-string v2, "_presence\"></div>\n<div class=\"gm-sender-wrapper\">\n<div class=\"gm-sender-name\"></div>\n<div class=\"gm-sender-email\"></div>\n</div>\n</div>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 267
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderActionStrip(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 268
    const-string v2, "\n</div>\n</div>\n</div>\n</body>\n<script type=\"text/javascript\" src=\"file:///android_res/raw/script.js\"></script>\n<script type=\"text/javascript\">\nvar MSG_LOADING = \'"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 269
    const-string v2, "loadingString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 270
    const-string v2, "\';\nvar MSG_HIDE_ELIDED = \'"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 271
    const-string v2, "hideElidedString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 272
    const-string v2, "\';\nvar MSG_SHOW_ELIDED = \'"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 273
    const-string v2, "showElidedString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 274
    const-string v2, "\';\nvar ACCOUNT_URI = \'"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 275
    const-string v2, "baseUri"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 276
    const-string v2, "\';\nvar USE_SNAP_HEADER = "

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 277
    const-string v2, "useSnapHeader"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 278
    const-string v2, ";\ngm.init();\n</script>\n</html>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 282
    return-void

    .line 240
    .end local v1           #message$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    :cond_1
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 279
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 280
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception during template rendering"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public renderConversation(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 230
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gm/template/EvalContext;

    invoke-direct {v0, p2}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderConversation(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 231
    return-void
.end method

.method public renderExpandedBody(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 4
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 304
    :try_start_0
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 305
    const-string v2, "showPrompt"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 306
    const-string v2, "\n<div class=\"gm-show-pictures-wrapper\">\n<div class=\"gm-show-pictures\">\n<p class=\"gm-show-pictures-text\">\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 307
    const-string v2, "button"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 308
    const-string v2, "\n</p>\n<div class=\"gm-show-pictures-icon\">\n</div>\n</div>\n</div>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 310
    :cond_0
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 311
    const-string v2, "attachments"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 312
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 313
    new-instance v0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;-><init>(Lcom/google/android/gm/template/GeneratedCompiledTemplates;Ljava/lang/Appendable;)V

    .line 431
    .local v0, attachment$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    const-string v2, "attachments"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "attachment"

    invoke-static {v2, v3, p2, v0}, Lcom/google/android/gm/template/ForEach;->iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V

    .line 432
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 434
    .end local v0           #attachment$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    :cond_1
    const-string v2, "\n<div class=\"gm-message-content "

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 435
    const-string v2, "showImages"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 436
    const-string v2, "gm-show-images"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 438
    :cond_2
    const-string v2, "\" style=\"zoom:"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 439
    const-string v2, "zoom"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 440
    const-string v2, "\">"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 441
    const-string v2, "messageBody"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 442
    const-string v2, "</div>\n<div style=\"clear:both\"></div>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    return-void

    .line 443
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 444
    .local v1, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception during template rendering"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public renderExpandedBody(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 299
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gm/template/EvalContext;

    invoke-direct {v0, p2}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderExpandedBody(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 300
    return-void
.end method

.method public renderLabels(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 4
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 16
    :try_start_0
    const-string v2, "\n<div class=\"gm-important-indicator\"></div>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 17
    new-instance v1, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;-><init>(Lcom/google/android/gm/template/GeneratedCompiledTemplates;Ljava/lang/Appendable;)V

    .line 31
    .local v1, label$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    const-string v2, "labels"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "label"

    invoke-static {v2, v3, p2, v1}, Lcom/google/android/gm/template/ForEach;->iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V

    .line 32
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 33
    const-string v2, "isEmpty"

    const-string v3, "labels"

    invoke-static {p2, v2, v3}, Lcom/google/android/gm/template/Function;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 34
    const-string v2, "\n<span class=\"gm-label gm-empty-marker\">"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 35
    const-string v2, "addLabelString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 36
    const-string v2, "</span>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 38
    :cond_0
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    return-void

    .line 39
    .end local v1           #label$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 40
    .local v0, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception during template rendering"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public renderLabels(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gm/template/EvalContext;

    invoke-direct {v0, p2}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderLabels(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 12
    return-void
.end method

.method public renderMessage(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 49
    :try_start_0
    const-string v1, "\n<div id=\""

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 50
    const-string v1, "messageId"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 51
    const-string v1, "\" serverId=\""

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 52
    const-string v1, "serverMessageId"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 53
    const-string v1, "\" index=\""

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 54
    const-string v1, "index"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 55
    const-string v1, "\" class=\"gm-message"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 56
    const-string v1, "classNames"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 57
    const-string v1, "\">\n<div class=\"gm-header\">\n<div class=\"gm-top-header\">\n<div class=\"gm-draft-icon\"></div>\n<div class=\"gm-contact\" name=\""

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 58
    const-string v1, "email"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 59
    const-string v1, "_photo\">\n<div class=\"gm-contact-overlay\"></div>\n</div>\n<div class=\"gm-collapse-highlight\">\n<div class=\"gm-presence-icon\" name=\""

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 60
    const-string v1, "email"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 61
    const-string v1, "_presence\"></div>\n<div class=\"gm-sender-wrapper\">\n<div class=\"gm-sender-name\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 62
    const-string v1, "personal"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    const-string v1, "personal"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 68
    :goto_0
    const-string v1, "</div>\n<div class=\"gm-sender-email\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 69
    const-string v1, "personal"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "clickSafeEmail"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 72
    :cond_0
    const-string v1, "</div>\n<div class=\"gm-snippet\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 73
    const-string v1, "snippet"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 74
    const-string v1, "</div>\n</div>\n<div class=\"gm-date-time\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 75
    const-string v1, "dateTimeString"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 76
    const-string v1, "</div>\n<div class=\"gm-attachment-icon\"></div>\n</div>\n<div class=\"gm-collapsed-star gm-star-icon gm-action-button\"></div>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 77
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderActionStrip(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 78
    const-string v1, "\n</div>\n<div class=\"gm-bottom-header\">\n<div class=\"gm-recipients\">\n<div class=\"gm-recipients-summary\">\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 79
    const-string v1, "recipients"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 80
    const-string v1, "\n</div>\n</div>\n<div class=\"gm-date-time\">\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 81
    const-string v1, "dateTimeString"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 82
    const-string v1, "\n</div>\n<div class=\"gm-details-icon\"></div>\n</div>\n</div>\n<div class=\"gm-body\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 83
    const-string v1, "isExpanded"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 84
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderExpandedBody(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 86
    :cond_1
    const-string v1, "</div>\n</div>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 90
    return-void

    .line 66
    :cond_2
    const-string v1, "clickSafeEmail"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 88
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during template rendering"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public renderMessage(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gm/template/EvalContext;

    invoke-direct {v0, p2}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderMessage(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 45
    return-void
.end method

.method public renderRecipientDetails(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 4
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 97
    :try_start_0
    const-string v2, "\n<table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" class=\"gm-recipients-details\">\n<tr valign=\"top\">\n<td class=\"gm-recipient-title\">"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 98
    const-string v2, "dateString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 99
    const-string v2, "</td>\n<td><div>"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 100
    const-string v2, "date"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 101
    const-string v2, " "

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 102
    const-string v2, "time"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 103
    const-string v2, "</div></td>\n</tr>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 104
    const-string v2, "toAddresses"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 105
    const-string v2, "\n<tr valign=\"top\">\n<td class=\"gm-recipient-title gm-recipient-heading\">"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 106
    const-string v2, "toString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 107
    const-string v2, "</td>\n<td class=\"gm-recipient-list\">\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 108
    new-instance v0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;-><init>(Lcom/google/android/gm/template/GeneratedCompiledTemplates;Ljava/lang/Appendable;)V

    .line 133
    .local v0, addr$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    const-string v2, "toAddresses"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "addr"

    invoke-static {v2, v3, p2, v0}, Lcom/google/android/gm/template/ForEach;->iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V

    .line 134
    const-string v2, "\n</td>\n</tr>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 136
    .end local v0           #addr$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    :cond_0
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 137
    const-string v2, "ccAddresses"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 138
    const-string v2, "\n<tr valign=\"top\">\n<td class=\"gm-recipient-title gm-recipient-heading\">"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 139
    const-string v2, "ccString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 140
    const-string v2, "</td>\n<td class=\"gm-recipient-list\">\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 141
    new-instance v0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$3;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates$3;-><init>(Lcom/google/android/gm/template/GeneratedCompiledTemplates;Ljava/lang/Appendable;)V

    .line 166
    .restart local v0       #addr$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    const-string v2, "ccAddresses"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "addr"

    invoke-static {v2, v3, p2, v0}, Lcom/google/android/gm/template/ForEach;->iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V

    .line 167
    const-string v2, "\n</td>\n</tr>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 169
    .end local v0           #addr$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    :cond_1
    const-string v2, "\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 170
    const-string v2, "bccAddresses"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 171
    const-string v2, "\n<tr valign=\"top\">\n<td class=\"gm-recipient-title gm-recipient-heading\">"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 172
    const-string v2, "bccString"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 173
    const-string v2, "</td>\n<td class=\"gm-recipient-list\">\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 174
    new-instance v0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$4;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gm/template/GeneratedCompiledTemplates$4;-><init>(Lcom/google/android/gm/template/GeneratedCompiledTemplates;Ljava/lang/Appendable;)V

    .line 199
    .restart local v0       #addr$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    const-string v2, "bccAddresses"

    invoke-static {p2, v2}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "addr"

    invoke-static {v2, v3, p2, v0}, Lcom/google/android/gm/template/ForEach;->iterateListExpression(Ljava/lang/Object;Ljava/lang/String;Lcom/google/android/gm/template/EvalContext;Lcom/google/android/gm/template/ForEach$ItemVisitor;)V

    .line 200
    const-string v2, "\n</td>\n</tr>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 202
    .end local v0           #addr$visitor:Lcom/google/android/gm/template/ForEach$ItemVisitor;
    :cond_2
    const-string v2, "\n</table>\n"

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    return-void

    .line 203
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 204
    .local v1, ex:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Exception during template rendering"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public renderRecipientDetails(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 92
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gm/template/EvalContext;

    invoke-direct {v0, p2}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderRecipientDetails(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 93
    return-void
.end method

.method public renderRecipientSummary(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 289
    :try_start_0
    const-string v1, "\n<span class=\"gm-recipients-sublist\">\n<span class=\"gm-recipients-sublist-heading\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 290
    const-string v1, "heading"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 291
    const-string v1, "</span>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 292
    const-string v1, "recipients"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 293
    const-string v1, "\n</span>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 297
    return-void

    .line 294
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 295
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during template rendering"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public renderRecipientSummary(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 1
    .parameter "out"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Appendable;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    new-instance v0, Lcom/google/android/gm/template/EvalContext;

    invoke-direct {v0, p2}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderRecipientSummary(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 285
    return-void
.end method

.method public renderSuperCollapsed(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "__out"
    .parameter "__context"

    .prologue
    .line 453
    :try_start_0
    const-string v1, "\n<!-- Template for a block of super-collapsed headers. -->\n<div style=\"position:relative\">\n<div class=\"gm-super-collapsed-block "

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 454
    const-string v1, "count"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/template/Comparison;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    const-string v1, "size1"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 463
    :goto_0
    const-string v1, "\">\n<div class=\"gm-super-collapsed-label\">"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 464
    const-string v1, "messagesRead"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 465
    const-string v1, "</div>\n</div>\n<!-- Invisible click overlay so that the click area may be bigger than the exposed\nrendered area. -->\n<div class=\"gm-super-collapsed-clicker\" onclick=\"gm.uncollapse(this, "

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 466
    const-string v1, "firstIndex"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 467
    const-string v1, ", "

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 468
    const-string v1, "lastIndex"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 469
    const-string v1, ")\"> </div>\n</div>\n"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 473
    return-void

    .line 457
    :cond_0
    const-string v1, "count"

    invoke-static {p2, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/gm/template/Comparison;->isEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    const-string v1, "size2"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 470
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 471
    .local v0, ex:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during template rendering"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 461
    .end local v0           #ex:Ljava/io/IOException;
    :cond_1
    :try_start_1
    const-string v1, "sizen"

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
