.class public interface abstract Lcom/mobipocket/common/library/reader/IRenderedPageElement;
.super Ljava/lang/Object;
.source "IRenderedPageElement.java"


# static fields
.field public static final ELEMENT_TYPE_IMAGE:I = 0x2

.field public static final ELEMENT_TYPE_TABLE:I = 0x4

.field public static final ELEMENT_TYPE_WORD:I = 0x1


# virtual methods
.method public abstract getBeginId()I
.end method

.method public abstract getCoveringRectangles()Ljava/util/Vector;
.end method

.method public abstract getId()I
.end method

.method public abstract getType()I
.end method
