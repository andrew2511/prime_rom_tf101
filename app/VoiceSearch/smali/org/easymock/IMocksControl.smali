.class public interface abstract Lorg/easymock/IMocksControl;
.super Ljava/lang/Object;
.source "IMocksControl.java"


# virtual methods
.method public abstract checkOrder(Z)V
.end method

.method public abstract createMock(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract createMock(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract makeThreadSafe(Z)V
.end method

.method public abstract replay()V
.end method

.method public abstract reset()V
.end method

.method public abstract resetToDefault()V
.end method

.method public abstract resetToNice()V
.end method

.method public abstract resetToStrict()V
.end method

.method public abstract verify()V
.end method
