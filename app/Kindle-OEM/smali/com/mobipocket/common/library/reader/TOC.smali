.class public interface abstract Lcom/mobipocket/common/library/reader/TOC;
.super Ljava/lang/Object;
.source "TOC.java"


# virtual methods
.method public abstract getFirstChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFirstTocSection()Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getFirstTocTarget()Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLastChild(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getNext(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getNextSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getParent(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPrevious(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getPreviousSibling(Lcom/mobipocket/common/library/reader/TOCItem;)Lcom/mobipocket/common/library/reader/TOCItem;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isLeaf(Lcom/mobipocket/common/library/reader/TOCItem;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
