.class public interface abstract Lcom/amazon/kcp/store/models/ISearchModel;
.super Ljava/lang/Object;
.source "ISearchModel.java"


# static fields
.field public static final SEARCH_PAGE_SIZE:I = 0xa

.field public static final enumBestSellers:I = 0x2

.field public static final enumBrowseANode:I = 0x7

.field public static final enumBrowseSubcategory:I = 0x8

.field public static final enumEditorsPicks:I = 0x5

.field public static final enumModelTypeCount:I = 0x9

.field public static final enumNewNoteworthy:I = 0x4

.field public static final enumRecommendedForYou:I = 0x6

.field public static final enumSearch:I = 0x0

.field public static final enumSimilarities:I = 0x1

.field public static final enumTopSellers:I = 0x3


# virtual methods
.method public abstract getFinishedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getModelType()I
.end method

.method public abstract getPageNumber()I
.end method

.method public abstract getPageSize()I
.end method

.method public abstract getResultList()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.end method

.method public abstract getResultListToAdd()Lcom/amazon/kcp/internal/webservices/WebServiceObjectList;
.end method

.method public abstract getSearchTerm()Ljava/lang/String;
.end method

.method public abstract getTotalBooks()I
.end method

.method public abstract getTotalItems()I
.end method

.method public abstract getTotalPages()I
.end method

.method public abstract getTotalReceived()I
.end method

.method public abstract getUpdateEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getViewTitle()Ljava/lang/String;
.end method

.method public abstract hasResults()Z
.end method

.method public abstract listModified()V
.end method
