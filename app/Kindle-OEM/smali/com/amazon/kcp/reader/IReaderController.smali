.class public interface abstract Lcom/amazon/kcp/reader/IReaderController;
.super Ljava/lang/Object;
.source "IReaderController.java"

# interfaces
.implements Lcom/amazon/kcp/application/ISubAppController;


# static fields
.field public static final KEY_LAST_BOOK_IS_SAMPLE:Ljava/lang/String; = "LAST_BOOK_IS_SAMPLE"

.field public static final KEY_LAST_BOOK_READ:Ljava/lang/String; = "LAST_BOOK_READ"

.field public static final KEY_LAST_BOOK_READ_ID:Ljava/lang/String; = "LAST_BOOK_READ_ID"

.field public static final LAST_BOOK_IS_FULL_BOOK:Ljava/lang/String; = "FULL_BOOK"

.field public static final LAST_BOOK_IS_SAMPLE:Ljava/lang/String; = "SAMPLE"


# virtual methods
.method public abstract closeCurrentBook()V
.end method

.method public abstract getCurrentBook()Lcom/amazon/kcp/reader/models/IBookDocument;
.end method

.method public abstract showReaderPage(Lcom/amazon/kcp/reader/models/IBookDocument;)Lcom/amazon/kcp/reader/pages/IReaderPage;
.end method

.method public abstract syncBookUpdates()V
.end method
