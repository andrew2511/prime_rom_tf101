.class public interface abstract Lcom/amazon/system/drawing/Font;
.super Ljava/lang/Object;
.source "Font.java"


# virtual methods
.method public abstract charsWidth([CII)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method public abstract derive(I)Lcom/amazon/system/drawing/Font;
.end method

.method public abstract derive(ZZZ)Lcom/amazon/system/drawing/Font;
.end method

.method public abstract getAvailableSizes()[I
.end method

.method public abstract getBaselinePosition()I
.end method

.method public abstract getDescent()I
.end method

.method public abstract getFamilyName()Ljava/lang/String;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getSize()I
.end method

.method public abstract getWhitespaceWidth()I
.end method

.method public abstract isBold()Z
.end method

.method public abstract isItalic()Z
.end method

.method public abstract isUnderlined()Z
.end method
