.class public Lcom/google/android/googlequicksearchbox/util/Consumers;
.super Ljava/lang/Object;
.source "Consumers.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static consumeAsync(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;Ljava/lang/Object;)V
    .locals 1
    .parameter "handler"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<TA;>;TA;)V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<TA;>;"
    .local p2, value:Ljava/lang/Object;,"TA;"
    if-nez p0, :cond_0

    .line 31
    invoke-interface {p1, p2}, Lcom/google/android/googlequicksearchbox/util/Consumer;->consume(Ljava/lang/Object;)Z

    .line 39
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/Consumers$1;

    invoke-direct {v0, p1, p2}, Lcom/google/android/googlequicksearchbox/util/Consumers$1;-><init>(Lcom/google/android/googlequicksearchbox/util/Consumer;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static createAsyncConsumer(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)Lcom/google/android/googlequicksearchbox/util/Consumer;
    .locals 1
    .parameter "handler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/Handler;",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<TA;>;)",
            "Lcom/google/android/googlequicksearchbox/util/Consumer",
            "<TA;>;"
        }
    .end annotation

    .prologue
    .line 43
    .local p1, consumer:Lcom/google/android/googlequicksearchbox/util/Consumer;,"Lcom/google/android/googlequicksearchbox/util/Consumer<TA;>;"
    new-instance v0, Lcom/google/android/googlequicksearchbox/util/Consumers$2;

    invoke-direct {v0, p0, p1}, Lcom/google/android/googlequicksearchbox/util/Consumers$2;-><init>(Landroid/os/Handler;Lcom/google/android/googlequicksearchbox/util/Consumer;)V

    return-object v0
.end method
