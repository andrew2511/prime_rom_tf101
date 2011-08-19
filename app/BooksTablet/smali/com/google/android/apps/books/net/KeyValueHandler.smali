.class public interface abstract Lcom/google/android/apps/books/net/KeyValueHandler;
.super Ljava/lang/Object;
.source "KeyValueHandler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract endRow()V
.end method

.method public abstract getContent()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public abstract init()V
.end method

.method public abstract setColumn(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract setColumn(Ljava/lang/String;Ljava/lang/Long;)V
.end method

.method public abstract setColumn(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMetadata(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract startRow()V
.end method
