.class public interface abstract Lcom/mobipocket/common/library/historizer/Historizable;
.super Ljava/lang/Object;
.source "Historizable.java"


# virtual methods
.method public abstract restoreState(Ljava/io/InputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/mobipocket/common/library/historizer/RestoreStateException;
        }
    .end annotation
.end method

.method public abstract saveState(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
