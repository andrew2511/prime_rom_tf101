.class public abstract Lcom/google/android/gm/template/Expression;
.super Lcom/google/android/gm/template/Node;
.source "Expression.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/google/android/gm/template/Node;-><init>()V

    return-void
.end method

.method public static isTruthy(Ljava/lang/Object;)Z
    .locals 7
    .parameter "value"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 41
    if-eqz p0, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, p0}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_1

    check-cast p0, Ljava/lang/Number;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    :cond_0
    move v0, v6

    .line 43
    .local v0, isFalsey:Z
    :goto_0
    if-nez v0, :cond_2

    move v1, v6

    :goto_1
    return v1

    .end local v0           #isFalsey:Z
    :cond_1
    move v0, v5

    .line 41
    goto :goto_0

    .restart local v0       #isFalsey:Z
    :cond_2
    move v1, v5

    .line 43
    goto :goto_1
.end method


# virtual methods
.method public final booleanValue(Lcom/google/android/gm/template/EvalContext;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    .line 29
    .local v0, value:Ljava/lang/Object;
    invoke-static {v0}, Lcom/google/android/gm/template/Expression;->isTruthy(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public abstract evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
.end method

.method public writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 2
    .parameter "out"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    invoke-virtual {p0, p2}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    .line 49
    .local v0, value:Ljava/lang/Object;
    if-nez v0, :cond_0

    const-string v1, ""

    :goto_0
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 50
    return-void

    .line 49
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
