.class Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;
.super Ljava/lang/Object;
.source "GeneratedCompiledTemplates.java"

# interfaces
.implements Lcom/google/android/gm/template/ForEach$ItemVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gm/template/GeneratedCompiledTemplates;->renderLabels(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
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
    .line 17
    iput-object p1, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->this$0:Lcom/google/android/gm/template/GeneratedCompiledTemplates;

    iput-object p2, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

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
    .line 20
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, "<span class=\"gm-label\" style=\"background:"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 21
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, "label"

    const-string v2, "background"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, ";border-color:"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 23
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, "label"

    const-string v2, "borderColor"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, ";color:"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 25
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, "label"

    const-string v2, "color"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 26
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, "\">"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 27
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, "label"

    const-string v2, "name"

    invoke-static {p1, v1, v2}, Lcom/google/android/gm/template/Reference;->evaluate(Lcom/google/android/gm/template/EvalContext;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/google/android/gm/template/GeneratedCompiledTemplates$1;->val$__out:Ljava/lang/Appendable;

    const-string v1, "</span>\n"

    invoke-interface {v0, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 29
    return-void
.end method
