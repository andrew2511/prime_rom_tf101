.class Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;
.super Ljava/lang/Object;
.source "GeneratedCompiledTemplates.java"

# interfaces
.implements Lcom/google/android/gm/template/ForEach$ItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderRecipientDetails(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
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
    .line 108
    iput-object p1, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->this$0:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    iput-object p2, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

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
    .line 111
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n<div class=\"gm-recipient\">\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 112
    const-string v0, "addr"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 113
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "addr"

    const-string v2, "name"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 122
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 123
    const-string v0, "addr"

    const-string v1, "name"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "&lt;<a class=\"gm-email\" href=\"mailto:"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 125
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "addr"

    const-string v2, "email"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 126
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 127
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "addr"

    const-string v2, "email"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</a>&gt;"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n</div>\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 131
    return-void

    .line 116
    :cond_1
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "<a class=\"gm-email\" href=\"mailto:"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 117
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "addr"

    const-string v2, "email"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 118
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 119
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "addr"

    const-string v2, "email"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$2;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</a>"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method
