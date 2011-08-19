.class public interface abstract Lcom/amazon/kcp/reader/models/IDocumentPage;
.super Ljava/lang/Object;
.source "IDocumentPage.java"


# static fields
.field public static final INVALID_ELEMENT_ID:I = -0x1


# virtual methods
.method public abstract createCoveringRectangles(II)Ljava/util/Vector;
.end method

.method public abstract createText(III)Ljava/lang/String;
.end method

.method public abstract getElementAtPoint(III)Lcom/amazon/kcp/reader/models/IPageElement;
.end method

.method public abstract getElementClosestToPoint(III)Lcom/amazon/kcp/reader/models/IPageElement;
.end method

.method public abstract getElements(I)Ljava/util/Vector;
.end method

.method public abstract getFirstElementPositionId()I
.end method

.method public abstract getLastElementPositionId()I
.end method

.method public abstract getNextElementPositionId(I)I
.end method
