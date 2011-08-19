.class Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;
.super Ljava/lang/Object;
.source "GeneratedCompiledTemplates.java"

# interfaces
.implements Lcom/google/android/gm/template/ForEach$ItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderExpandedBody(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

.field final synthetic val$__out:Ljava/lang/Appendable;


# direct methods
.method constructor <init>(Lcom/google/android/gm/template/GeneratedCompiledTemplates;Ljava/lang/Appendable;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 313
    iput-object p1, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->this$0:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    iput-object p2, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/android/gm/template/EvalContext;)V
    .locals 3
    .parameter "__context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n<div class=\"gm-attachments\">\n<div class=\"gm-attachment-preview\">\n<img class=\"gm-attachment-preview-image\" src=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 317
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "uri"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 318
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\" onerror=\"this.src=\'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 319
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "defaultUri"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 320
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\';\">\n<div class=\"gm-attachment-progressbar-frame\">\n<div class=\"gm-attachment-progressbar\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 321
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 322
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 323
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 324
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_progress\"></div>\n</div>\n</div>\n<div class=\"gm-attachment-buttons\">\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 325
    const-string v0, "attachment"

    const-string v1, "canInstall"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n<button class=\"gm-attachment-button\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 327
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 328
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 329
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 330
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_install\"\nonclick=\"gm.conversation.viewOrDownload(\'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 331
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', \'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 333
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', 4)\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 335
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "installString"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</button>\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 404
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n<button class=\"gm-attachment-button gm-attachment-hidden\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 405
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 406
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 407
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 408
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_cancel\"\nonclick=\"gm.conversation.viewOrDownload(\'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 409
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 410
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', \'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 411
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 412
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', 5)\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 413
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "cancelString"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</button>\n</div>\n<div class=\"gm-attachment-info\">\n<div class=\"gm-attachment-name\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 415
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "name"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 416
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</div>\n<div class=\"gm-attachment-status\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 417
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 418
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 419
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 420
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_status\" >"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 421
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "size"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</div>\n<div class=\"gm-attachment-type\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 423
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "type"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 424
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</div>\n<div class=\"gm-attachment-status-progress\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 425
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 426
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 427
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 428
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_status_progress\"></div>\n</div>\n</div>\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 429
    return-void

    .line 339
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 340
    const-string v0, "attachment"

    const-string v1, "canPreview"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 341
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n<button class=\"gm-attachment-button\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 342
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 344
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 345
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_preview\"\nonclick=\"gm.conversation.viewOrDownload(\'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 346
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 347
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', \'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 348
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 349
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', 0)\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 350
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "previewString"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 351
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</button>\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 369
    :goto_1
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 370
    const-string v0, "attachment"

    const-string v1, "canView"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n<button class=\"gm-attachment-button\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 372
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 373
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 374
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 375
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_view\"\nonclick=\"gm.conversation.viewOrDownload(\'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 376
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 377
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', \'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 378
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 379
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', 1)\">\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 380
    const-string v0, "attachment"

    const-string v1, "canPlay"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 381
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 382
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "playString"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 383
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 390
    :goto_2
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n</button>\n<button class=\"gm-attachment-button\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 391
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 393
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 394
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_save\"\nonclick=\"gm.conversation.viewOrDownload(\'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 395
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 396
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', \'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 397
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 398
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', 2)\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 399
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "saveString"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 400
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</button>\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 402
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_0

    .line 353
    :cond_2
    const-string v0, "attachment"

    const-string v1, "canView"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_1

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n<button class=\"gm-attachment-button\" id=\""

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 358
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 359
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 360
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 361
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "_info\"\nonclick=\"gm.conversation.viewOrDownload(\'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 362
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "serverMessageId"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 363
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', \'"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 364
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "attachment"

    const-string v2, "partId"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 365
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\', 3)\"\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 366
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "infoString"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 367
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</button>\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_1

    .line 386
    :cond_4
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 387
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "viewString"

    invoke-static {p1, v1}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 388
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$6;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto/16 :goto_2
.end method
