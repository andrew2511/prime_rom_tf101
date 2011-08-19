.class public interface abstract Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$BookBehavior;
.super Ljava/lang/Object;
.source "BookBackgroundWorker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BookBehavior"
.end annotation


# static fields
.field public static final ACTIVE_AREA_EXTERNAL_LINK:I = 0x4

.field public static final ACTIVE_AREA_INTERNAL_LINK:I = 0x1

.field public static final ACTIVE_AREA_NONE:I = 0x0

.field public static final ACTIVE_AREA_SHOW_BUY:I = 0x3

.field public static final ACTIVE_AREA_SHOW_DETAILS:I = 0x2


# virtual methods
.method public abstract executeActiveArea(Ljava/lang/Object;Lcom/amazon/foundation/internal/ICancelRequester;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract getCurrentPosition()I
.end method

.method public abstract getFontSize()I
.end method

.method public abstract getPositionFromLocation(I)I
.end method

.method public abstract getState(Lcom/amazon/foundation/internal/ICancelRequester;)Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract goBack(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract gotoPosition(IZLcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract gotoStartReadingPosition(ZLcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract gotoTOC(ZLcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract isBackAvailable()Z
.end method

.method public abstract nextLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract nextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract preRenderNextPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract preRenderPreviousPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract prevLine(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract prevPage(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract recycleState(Lcom/amazon/kcp/reader/models/internal/BookBackgroundWorker$State;)V
.end method

.method public abstract refresh(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract render(Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract search(Ljava/lang/String;Lcom/amazon/kcp/reader/models/IBookDocument$SearchResultCallback;Lcom/amazon/foundation/IStatusTracker;Lcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setColors(Lcom/amazon/system/drawing/Color;Lcom/amazon/system/drawing/Color;Lcom/amazon/foundation/internal/ICancelRequester;)Z
.end method

.method public abstract setFontSize(ILcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setLineSpacing(ILcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract setSize(IILcom/amazon/foundation/internal/ICancelRequester;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
