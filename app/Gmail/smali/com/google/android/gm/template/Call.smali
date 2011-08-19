.class public Lcom/google/android/gm/template/Call;
.super Lcom/google/android/gm/template/Command;
.source "Call.java"


# instance fields
.field private final mName:Ljava/lang/String;

.field private final mReference:Lcom/google/android/gm/template/Expression;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gm/template/Expression;)V
    .locals 0
    .parameter "name"
    .parameter "reference"

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/android/gm/template/Command;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/google/android/gm/template/Call;->mName:Ljava/lang/String;

    .line 25
    iput-object p2, p0, Lcom/google/android/gm/template/Call;->mReference:Lcom/google/android/gm/template/Expression;

    .line 26
    return-void
.end method


# virtual methods
.method public writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    .locals 6
    .parameter "out"
    .parameter "context"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    iget-object v3, p0, Lcom/google/android/gm/template/Call;->mName:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/android/gm/template/Templates;->get(Ljava/lang/String;)Lcom/google/android/gm/template/Template;

    move-result-object v2

    .line 33
    .local v2, template:Lcom/google/android/gm/template/Template;
    if-nez v2, :cond_0

    .line 34
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call template \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Call;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" (not found)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 37
    :cond_0
    move-object v1, p2

    .line 38
    .local v1, evalContext:Lcom/google/android/gm/template/EvalContext;
    iget-object v3, p0, Lcom/google/android/gm/template/Call;->mReference:Lcom/google/android/gm/template/Expression;

    if-eqz v3, :cond_1

    .line 39
    iget-object v3, p0, Lcom/google/android/gm/template/Call;->mReference:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v3, p2}, Lcom/google/android/gm/template/Expression;->evaluate(Lcom/google/android/gm/template/EvalContext;)Ljava/lang/Object;

    move-result-object v0

    .line 40
    .local v0, data:Ljava/lang/Object;
    if-eqz v0, :cond_2

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 41
    new-instance v1, Lcom/google/android/gm/template/EvalContext;

    .end local v1           #evalContext:Lcom/google/android/gm/template/EvalContext;
    check-cast v0, Ljava/util/Map;

    .end local v0           #data:Ljava/lang/Object;
    invoke-direct {v1, v0}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    .line 48
    .restart local v1       #evalContext:Lcom/google/android/gm/template/EvalContext;
    :cond_1
    invoke-virtual {v2, p1, v1}, Lcom/google/android/gm/template/Template;->writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V

    .line 49
    return-void

    .line 43
    .restart local v0       #data:Ljava/lang/Object;
    :cond_2
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call template\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Call;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\", \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/gm/template/Call;->mReference:Lcom/google/android/gm/template/Expression;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\" is not a map"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
