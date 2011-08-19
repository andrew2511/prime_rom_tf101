.class public Lcom/google/android/gm/template/Print;
.super Lcom/google/android/gm/template/Command;
.source "Print.java"


# instance fields
.field private final mExpression:Lcom/google/android/gm/template/Expression;

.field private final mIsAutoEscape:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gm/template/Expression;Z)V
    .locals 0
    .parameter "expression"
    .parameter "isAutoescape"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/android/gm/template/Print;->mExpression:Lcom/google/android/gm/template/Expression;

    .line 15
    iput-boolean p2, p0, Lcom/google/android/gm/template/Print;->mIsAutoEscape:Z

    .line 16
    return-void
.end method

.method public static print(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 1
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    if-eqz p1, :cond_0

    .line 71
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 73
    :cond_0
    return-void
.end method

.method public static printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V
    .locals 5
    .parameter "out"
    .parameter "value"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 43
    .local v3, s:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, len:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 44
    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 45
    .local v0, c:C
    sparse-switch v0, :sswitch_data_0

    .line 62
    invoke-interface {p0, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 43
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 47
    :sswitch_0
    const-string v4, "&lt;"

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 50
    :sswitch_1
    const-string v4, "&gt;"

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 53
    :sswitch_2
    const-string v4, "&amp;"

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 56
    :sswitch_3
    const-string v4, "&quot;"

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 59
    :sswitch_4
    const-string v4, "&#39;"

    invoke-interface {p0, v4}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_1

    .line 67
    .end local v0           #c:C
    .end local v1           #i:I
    .end local v2           #len:I
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void

    .line 45
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_3
        0x26 -> :sswitch_2
        0x27 -> :sswitch_4
        0x3c -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method


# virtual methods
.method public writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 1
    .parameter "out"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    iget-boolean v0, p0, Lcom/google/android/gm/template/Print;->mIsAutoEscape:Z

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, p0, Lcom/google/android/gm/template/Print;->mExpression:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gm/template/Print;->printEscaped(Ljava/lang/Appendable;Ljava/lang/Object;)V

    .line 25
    :goto_0
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/google/android/gm/template/Print;->mExpression:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v0, p2}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/android/gm/template/Print;->print(Ljava/lang/Appendable;Ljava/lang/Object;)V

    goto :goto_0
.end method
