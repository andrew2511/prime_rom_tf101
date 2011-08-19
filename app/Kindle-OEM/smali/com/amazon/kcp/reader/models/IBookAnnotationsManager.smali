.class public interface abstract Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;
.super Ljava/lang/Object;
.source "IBookAnnotationsManager.java"


# static fields
.field public static final EBOOKVIEW_GET_FIRST_WORDS_COUNT:I = 0x14


# virtual methods
.method public abstract addHighlight(Lcom/amazon/kcp/reader/models/IPageElement;Lcom/amazon/kcp/reader/models/IPageElement;)Lcom/amazon/kcp/reader/models/IAnnotation;
.end method

.method public abstract addNote(Lcom/amazon/kcp/reader/models/IPageElement;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
.end method

.method public abstract checkForExistingNote(I)Lcom/amazon/kcp/reader/models/IAnnotation;
.end method

.method public abstract deleteAnnotation(Lcom/amazon/kcp/reader/models/IAnnotation;)Z
.end method

.method public abstract editNote(Lcom/amazon/kcp/reader/models/IAnnotation;Ljava/lang/String;)Lcom/amazon/kcp/reader/models/IAnnotation;
.end method

.method public abstract getAnnotationsList()[Lcom/amazon/kcp/reader/models/IAnnotation;
.end method

.method public abstract getHighlightCoveringArea(II)Lcom/amazon/kcp/reader/models/IAnnotation;
.end method

.method public abstract getIndex(Lcom/amazon/kcp/reader/models/IAnnotation;)I
.end method

.method public abstract getNeedRefreshEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract hasBookmark()Z
.end method

.method public abstract toggleBookmark()V
.end method
