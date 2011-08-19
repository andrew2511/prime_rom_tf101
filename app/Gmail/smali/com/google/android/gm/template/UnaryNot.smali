.class public Lcom/google/android/gm/template/UnaryNot;
.super Lcom/google/android/gm/template/Expression;
.source "UnaryNot.java"


# instance fields
.field private final mExpression:Lcom/google/android/gm/template/Expression;


# direct methods
.method public constructor <init>(Lcom/google/android/gm/template/Expression;)V
    .locals 0
    .parameter "expression"

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/google/android/gm/template/Expression;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/android/gm/template/UnaryNot;->mExpression:Lcom/google/android/gm/template/Expression;

    .line 20
    return-void
.end method


# virtual methods
.method public evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;
    .locals 1
    .parameter "context"

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/android/gm/template/UnaryNot;->mExpression:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v0, p1}, Lcom/google/android/gm/template/Expression;->booleanValue(Lcom/google/android/gm/template/EvalContext;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
