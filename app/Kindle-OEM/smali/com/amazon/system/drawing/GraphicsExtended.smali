.class public interface abstract Lcom/amazon/system/drawing/GraphicsExtended;
.super Ljava/lang/Object;
.source "GraphicsExtended.java"

# interfaces
.implements Lcom/amazon/system/drawing/Graphics;


# static fields
.field public static final ALPHA_MASK:I = -0x1000000

.field public static final ALPHA_SHIFT:I = 0x18

.field public static final BLIT_AND:I = 0x2

.field public static final BLIT_OR:I = 0x0

.field public static final BLUE_MASK:I = 0xff

.field public static final BLUE_SHIFT:I = 0x0

.field public static final GREEN_MASK:I = 0xff00

.field public static final GREEN_SHIFT:I = 0x8

.field public static final RED_MASK:I = 0xff0000

.field public static final RED_SHIFT:I = 0x10


# virtual methods
.method public abstract canRenderGlyphs()Z
.end method

.method public abstract clearRect(IIII)V
.end method

.method public abstract colorBlit(Lcom/amazon/system/drawing/Rectangle;II)V
.end method

.method public abstract drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;IIIIII)V
.end method

.method public abstract drawImage(Lcom/amazon/system/drawing/BufferedImageExtended;Lcom/amazon/system/drawing/AffineTransform;)V
.end method

.method public abstract drawLine(IIII)V
.end method

.method public abstract drawRect(IIII)V
.end method

.method public abstract fill(Lcom/amazon/system/drawing/GeneralPath;)V
.end method

.method public abstract fill(Lcom/amazon/system/drawing/Polygon;)V
.end method

.method public abstract fill(Lcom/amazon/system/drawing/Rectangle;)V
.end method

.method public abstract fillRect(IIII)V
.end method

.method public abstract getARGBColor()I
.end method

.method public abstract getTransform()Lcom/amazon/system/drawing/AffineTransform;
.end method

.method public abstract scale(DD)V
.end method

.method public abstract setARGBColor(I)V
.end method

.method public abstract setAntialias()V
.end method

.method public abstract setBackground(I)V
.end method

.method public abstract setTransform(Lcom/amazon/system/drawing/AffineTransform;)V
.end method

.method public abstract translate(DD)V
.end method

.method public abstract translate(II)V
.end method
