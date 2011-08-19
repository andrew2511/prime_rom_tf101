.class public interface abstract Lcom/github/droidfu/concurrent/BetterAsyncTaskCallable;
.super Ljava/lang/Object;
.source "BetterAsyncTaskCallable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ParameterT:",
        "Ljava/lang/Object;",
        "ProgressT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract call(Lcom/github/droidfu/concurrent/BetterAsyncTask;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/github/droidfu/concurrent/BetterAsyncTask",
            "<TParameterT;TProgressT;TReturnT;>;)TReturnT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
