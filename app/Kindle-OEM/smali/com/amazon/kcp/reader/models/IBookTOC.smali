.class public interface abstract Lcom/amazon/kcp/reader/models/IBookTOC;
.super Ljava/lang/Object;
.source "IBookTOC.java"


# virtual methods
.method public abstract doesArticleStartOnPage(I)Z
.end method

.method public abstract getArticleAtPosition(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;
.end method

.method public abstract getArticleOnPage(I)Lcom/amazon/kcp/reader/models/IArticleTOCItem;
.end method

.method public abstract getSectionAtPosition(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;
.end method

.method public abstract getSectionOnPage(I)Lcom/amazon/kcp/reader/models/ISectionTOCItem;
.end method

.method public abstract getTOCArticles()Ljava/util/Vector;
.end method

.method public abstract getTOCSections()Ljava/util/Vector;
.end method

.method public abstract getTitleImage()[B
.end method
