.class public interface abstract Lcom/amazon/kcp/library/models/ILibrary;
.super Ljava/lang/Object;
.source "ILibrary.java"

# interfaces
.implements Lcom/amazon/kcp/library/models/IBookList;


# static fields
.field public static final BIT_DOWNLOADING:I = 0x1

.field public static final BIT_LOCAL:I


# virtual methods
.method public abstract addBookFiles(Ljava/lang/String;Ljava/lang/String;Lcom/amazon/system/drawing/Image;[B)Z
.end method

.method public abstract deleteBook(Lcom/amazon/kcp/library/models/ILocalBookItem;)Z
.end method

.method public abstract deleteEncryptedContent()V
.end method

.method public abstract deleteLicensedContent()V
.end method

.method public abstract getAddEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getBackIssueCount()I
.end method

.method public abstract getBook(Ljava/lang/String;)Lcom/amazon/kcp/library/models/ILocalBookItem;
.end method

.method public abstract getBook(Ljava/lang/String;Z)Lcom/amazon/kcp/library/models/ILocalBookItem;
.end method

.method public abstract getBookItemTypeFromIndex(I)I
.end method

.method public abstract getChangeEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getDownloadBookItemFromIndex(I)Lcom/amazon/kcp/library/models/IDownloadBookItem;
.end method

.method public abstract getDownloadDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getInvalidatedEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getLocalBookCount()I
.end method

.method public abstract getLocalBookItemFromIndex(I)Lcom/amazon/kcp/library/models/ILocalBookItem;
.end method

.method public abstract getLocalDeleteEvent()Lcom/amazon/foundation/IIntEventProvider;
.end method

.method public abstract getPreferredDimension()Lcom/amazon/system/drawing/Dimension;
.end method

.method public abstract sortByAuthor()[I
.end method

.method public abstract sortByRecent()[I
.end method

.method public abstract sortByTitle()[I
.end method
