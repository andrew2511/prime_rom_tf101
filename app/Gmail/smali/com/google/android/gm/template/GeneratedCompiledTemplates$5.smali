.class Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;
.super Ljava/lang/Object;
.source "GeneratedCompiledTemplates.java"

# interfaces
.implements Lcom/google/android/gm/template/ForEach$ItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderConversation(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
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
    .line 246
    iput-object p1, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->this$0:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    iput-object p2, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(Lcom/google/android/gm/template/EvalContext;)V
    .locals 4
    .parameter "__context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 250
    const-string v0, "message"

    const-string v1, "isSuperCollapsed"

    invoke-static {p1, v0, v1}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 252
    iget-object v1, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->this$0:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    iget-object v2, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    new-instance v3, Lcom/google/android/gm/template/EvalContext;

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v0}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderSuperCollapsed(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 253
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 260
    :goto_0
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 261
    return-void

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 257
    iget-object v1, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->this$0:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    iget-object v2, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    new-instance v3, Lcom/google/android/gm/template/EvalContext;

    const-string v0, "message"

    invoke-static {p1, v0}, Lcom/google/android/gm/template/Variable;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {v3, v0}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderMessage(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 258
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$5;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_0
.end method
