.class public interface abstract Lcom/amazon/kcp/application/ILocalStorage;
.super Ljava/lang/Object;
.source "ILocalStorage.java"


# virtual methods
.method public abstract clear()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isAvailable()Z
.end method

.method public abstract loadLocalBookState(Lcom/amazon/kcp/library/models/IBookID;)Lcom/amazon/kcp/library/models/LocalBookState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract save(Lcom/amazon/kcp/library/models/LocalBookState;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
