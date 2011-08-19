.class public abstract Lcom/google/android/gm/template/Node;
.super Ljava/lang/Object;
.source "Node.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final renderTo(Ljava/lang/Appendable;Ljava/util/Map;)V
    .locals 3
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
    .line 21
    .local p2, data:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;+Ljava/lang/Object;>;"
    :try_start_0
    new-instance v1, Lcom/google/android/gm/template/EvalContext;

    invoke-direct {v1, p2}, Lcom/google/android/gm/template/EvalContext;-><init>(Ljava/util/Map;)V

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gm/template/Node;->writeValue(Ljava/lang/Appendable;Lcom/google/android/gm/template/EvalContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    return-void

    .line 22
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 23
    .local v0, e:Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Exception during template rendering"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
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
    .line 36
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "writeValue() not implemented"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
