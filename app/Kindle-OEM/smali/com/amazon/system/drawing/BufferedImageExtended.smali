.class public interface abstract Lcom/amazon/system/drawing/BufferedImageExtended;
.super Ljava/lang/Object;
.source "BufferedImageExtended.java"


# static fields
.field public static final TYPE_3BYTE_BGR:I = 0x5

.field public static final TYPE_4BYTE_ABGR:I = 0x6

.field public static final TYPE_4BYTE_ABGR_PRE:I = 0x7

.field public static final TYPE_BYTE_BINARY:I = 0xc

.field public static final TYPE_BYTE_GRAY:I = 0xa

.field public static final TYPE_BYTE_INDEXED:I = 0xd

.field public static final TYPE_CUSTOM:I = 0x0

.field public static final TYPE_INT_ARGB:I = 0x2

.field public static final TYPE_INT_ARGB_PRE:I = 0x3

.field public static final TYPE_INT_BGR:I = 0x4

.field public static final TYPE_INT_RGB:I = 0x1

.field public static final TYPE_USHORT_555_RGB:I = 0x9

.field public static final TYPE_USHORT_565_RGB:I = 0x8

.field public static final TYPE_USHORT_GRAY:I = 0xb


# virtual methods
.method public abstract createAffineTransform()Lcom/amazon/system/drawing/AffineTransform;
.end method

.method public abstract createGraphics()Lcom/amazon/system/drawing/GraphicsExtended;
.end method

.method public abstract dispose()V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getRaster()Lcom/amazon/system/drawing/WritableRaster;
.end method

.method public abstract getType()I
.end method

.method public abstract getWidth()I
.end method
