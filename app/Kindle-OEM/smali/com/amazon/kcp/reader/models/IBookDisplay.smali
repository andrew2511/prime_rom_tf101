.class public interface abstract Lcom/amazon/kcp/reader/models/IBookDisplay;
.super Ljava/lang/Object;
.source "IBookDisplay.java"


# static fields
.field public static final BOOKMARK_SIGN_MARGIN:I = 0xf

.field public static final BOOKMARK_SIGN_SIDE:I = 0x14

.field public static final REL_NEXT_PAGE:I = 0x2

.field public static final REL_NO_SHIFT:I = 0x0

.field public static final REL_PREV_PAGE:I = -0x2


# virtual methods
.method public abstract getColorMode()Lcom/amazon/kcp/reader/models/ColorMode;
.end method

.method public abstract getCurrentDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
.end method

.method public abstract getFontSize()I
.end method

.method public abstract getForceRefreshEvent()Lcom/amazon/foundation/IEventProvider;
.end method

.method public abstract getImageFromImageId(I)[B
.end method

.method public abstract getLineSpacing()I
.end method

.method public abstract getNextDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
.end method

.method public abstract getPreviousDocumentPage()Lcom/amazon/kcp/reader/models/IDocumentPage;
.end method

.method public abstract render(Lcom/amazon/system/drawing/GraphicsExtended;I)V
.end method

.method public abstract setColorMode(Lcom/amazon/kcp/reader/models/ColorMode;)V
.end method

.method public abstract setColumnNumber(I)V
.end method

.method public abstract setFontSize(I)V
.end method

.method public abstract setGutterWidth(I)V
.end method

.method public abstract setLineSpacing(I)V
.end method

.method public abstract setSize(II)V
.end method
