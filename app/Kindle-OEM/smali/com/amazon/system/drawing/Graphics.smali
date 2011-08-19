.class public interface abstract Lcom/amazon/system/drawing/Graphics;
.super Ljava/lang/Object;
.source "Graphics.java"


# virtual methods
.method public abstract drawArc(IIIIII)V
.end method

.method public abstract drawBufferedImage(Lcom/amazon/system/drawing/BufferedImage;II)V
.end method

.method public abstract drawImage(Lcom/amazon/system/drawing/Image;II)V
.end method

.method public abstract drawLine(IIII)V
.end method

.method public abstract drawRect(IIII)V
.end method

.method public abstract drawText([CIIIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IndexOutOfBoundsException;
        }
    .end annotation
.end method

.method public abstract fillArc(IIIIII)V
.end method

.method public abstract fillRect(IIII)V
.end method

.method public abstract getColor()I
.end method

.method public abstract getFont()Lcom/amazon/system/drawing/Font;
.end method

.method public abstract invert(IIII)V
.end method

.method public abstract setColor(I)V
.end method

.method public abstract setFont(Lcom/amazon/system/drawing/Font;)V
.end method
