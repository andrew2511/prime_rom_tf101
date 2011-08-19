.class Lcom/google/android/street/GLMatrixWrapper;
.super Ljava/lang/Object;
.source "GLMatrixWrapper.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;


# instance fields
.field private mCurrent:Lcom/google/android/street/MatrixStack;

.field private mMatrixMode:I

.field private final mModelView:Lcom/google/android/street/MatrixStack;

.field private final mProjection:Lcom/google/android/street/MatrixStack;

.field private final mTexture:Lcom/google/android/street/MatrixStack;

.field private final mgl:Ljavax/microedition/khronos/opengles/GL10;

.field private final mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

.field private final mgl11:Ljavax/microedition/khronos/opengles/GL11;

.field private final mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 3
    .parameter "gl"

    .prologue
    const/4 v2, 0x0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v1, v0

    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 47
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    .line 48
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 49
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v1, :cond_2

    check-cast p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    .end local p1
    move-object v1, p1

    :goto_2
    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 50
    new-instance v1, Lcom/google/android/street/MatrixStack;

    invoke-direct {v1}, Lcom/google/android/street/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mModelView:Lcom/google/android/street/MatrixStack;

    .line 51
    new-instance v1, Lcom/google/android/street/MatrixStack;

    invoke-direct {v1}, Lcom/google/android/street/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mProjection:Lcom/google/android/street/MatrixStack;

    .line 52
    new-instance v1, Lcom/google/android/street/MatrixStack;

    invoke-direct {v1}, Lcom/google/android/street/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mTexture:Lcom/google/android/street/MatrixStack;

    .line 53
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mModelView:Lcom/google/android/street/MatrixStack;

    iput-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    .line 54
    const/16 v1, 0x1700

    iput v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mMatrixMode:I

    .line 55
    return-void

    .restart local p1
    :cond_0
    move-object v1, v2

    .line 47
    goto :goto_0

    :cond_1
    move-object v1, v2

    .line 48
    goto :goto_1

    :cond_2
    move-object v1, v2

    .line 49
    goto :goto_2
.end method


# virtual methods
.method public getMatrix([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 1021
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/street/MatrixStack;->getMatrix([FI)V

    .line 1022
    return-void
.end method

.method public glActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 62
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 66
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 70
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .parameter "target"
    .parameter "buffer"

    .prologue
    .line 734
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBindTexture(II)V
    .locals 1
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 73
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 74
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .parameter "sfactor"
    .parameter "dfactor"

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 78
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .parameter "target"
    .parameter "size"
    .parameter "data"
    .parameter "usage"

    .prologue
    .line 738
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBufferSubData(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "target"
    .parameter "offset"
    .parameter "size"
    .parameter "data"

    .prologue
    .line 742
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glClear(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 82
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 85
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 86
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 90
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 93
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 94
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 98
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 102
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 106
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 658
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 659
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 654
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 655
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 667
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 663
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 109
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 110
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 746
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glColor4x(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 114
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 119
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 967
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glColorPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 123
    return-void
.end method

.method public glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 130
    return-void
.end method

.method public glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "imageSize"
    .parameter "data"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 137
    return-void
.end method

.method public glCopyTexImage2D(IIIIIIII)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "border"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 143
    return-void
.end method

.method public glCopyTexSubImage2D(IIIIIIII)V
    .locals 9
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 147
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 149
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 152
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 153
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .parameter "matrixpaletteindex"

    .prologue
    .line 991
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 754
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteBuffers(I[II)V
    .locals 1
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 750
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 161
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 157
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .parameter "func"

    .prologue
    .line 164
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 165
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 169
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 172
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 173
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 176
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 177
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 181
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 185
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .parameter "mode"
    .parameter "first"
    .parameter "count"

    .prologue
    .line 188
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 189
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "offset"

    .prologue
    .line 971
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDrawElements(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "indices"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 193
    return-void
.end method

.method public glDrawTexfOES(FFFFF)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 673
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 674
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 682
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 677
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 678
    return-void
.end method

.method public glDrawTexiOES(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 685
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 686
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 693
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 694
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 690
    return-void
.end method

.method public glDrawTexsOES(SSSSS)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 698
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 699
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 706
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 707
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 702
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 703
    return-void
.end method

.method public glDrawTexxOES(IIIII)V
    .locals 6
    .parameter "x"
    .parameter "y"
    .parameter "z"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 710
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 711
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 718
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 719
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 714
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 715
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 197
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 201
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 205
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 208
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 209
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 212
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 213
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 220
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 221
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 216
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 217
    return-void
.end method

.method public glFogx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 224
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 225
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 232
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 233
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 228
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 229
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 236
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 237
    return-void
.end method

.method public glFrustumf(FFFFFF)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/MatrixStack;->glFrustumf(FFFFFF)V

    .line 242
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 244
    return-void
.end method

.method public glFrustumx(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/MatrixStack;->glFrustumx(IIIIII)V

    .line 249
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 251
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 762
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenBuffers(I[II)V
    .locals 1
    .parameter "n"
    .parameter "buffers"
    .parameter "offset"

    .prologue
    .line 758
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 258
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 259
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 255
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 770
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBooleanv(I[ZI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 766
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 780
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetBufferParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 775
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 788
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    .line 784
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 796
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"
    .parameter "offset"

    .prologue
    .line 792
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetError()I
    .locals 2

    .prologue
    .line 262
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 263
    .local v0, result:I
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 804
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFixedv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 800
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 812
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 808
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 272
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 268
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightfv(II[FI)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 816
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 828
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetLightxv(II[II)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 824
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 837
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialfv(II[FI)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 833
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 846
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetMaterialxv(II[II)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 842
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 975
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 275
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 854
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnviv(II[II)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 850
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 862
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexEnvxv(II[II)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 858
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 871
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 867
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 880
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 876
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 889
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetTexParameterxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 885
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glHint(II)V
    .locals 1
    .parameter "target"
    .parameter "mode"

    .prologue
    .line 280
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 281
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .parameter "buffer"

    .prologue
    .line 893
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .parameter "cap"

    .prologue
    .line 897
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .parameter "texture"

    .prologue
    .line 901
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLightModelf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 284
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 285
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 292
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 293
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 288
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 289
    return-void
.end method

.method public glLightModelx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 297
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 304
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 305
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 300
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 301
    return-void
.end method

.method public glLightf(IIF)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 309
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 316
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 317
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 312
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 313
    return-void
.end method

.method public glLightx(III)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 320
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 321
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 328
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 329
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 324
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 325
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 332
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 333
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 336
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 337
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/street/MatrixStack;->glLoadIdentity()V

    .line 341
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 343
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 352
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    .line 353
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/google/android/street/MatrixStack;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 354
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 355
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 357
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 346
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/street/MatrixStack;->glLoadMatrixf([FI)V

    .line 347
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 349
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 366
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 367
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/google/android/street/MatrixStack;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 368
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 369
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 371
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 360
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/street/MatrixStack;->glLoadMatrixx([II)V

    .line 361
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 363
    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .prologue
    .line 995
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLogicOp(I)V
    .locals 1
    .parameter "opcode"

    .prologue
    .line 374
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 375
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 378
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 379
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 386
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 387
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 382
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 383
    return-void
.end method

.method public glMaterialx(III)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 390
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 391
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 398
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 399
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 394
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 395
    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1005
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glMatrixIndexPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 1000
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glMatrixMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 402
    packed-switch p1, :pswitch_data_0

    .line 413
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown matrix mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 404
    :pswitch_0
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mModelView:Lcom/google/android/street/MatrixStack;

    iput-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    .line 415
    :goto_0
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 416
    iput p1, p0, Lcom/google/android/street/GLMatrixWrapper;->mMatrixMode:I

    .line 418
    return-void

    .line 407
    :pswitch_1
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mTexture:Lcom/google/android/street/MatrixStack;

    iput-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    goto :goto_0

    .line 410
    :pswitch_2
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mProjection:Lcom/google/android/street/MatrixStack;

    iput-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    goto :goto_0

    .line 402
    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public glMultMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 427
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    .line 428
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/google/android/street/MatrixStack;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 429
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 430
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 432
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/street/MatrixStack;->glMultMatrixf([FI)V

    .line 422
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 424
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 441
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 442
    .local v0, position:I
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/google/android/street/MatrixStack;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 443
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 444
    iget-object v1, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 446
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 435
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/street/MatrixStack;->glMultMatrixx([II)V

    .line 436
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 438
    return-void
.end method

.method public glMultiTexCoord4f(IFFFF)V
    .locals 6
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    .line 450
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 451
    return-void
.end method

.method public glMultiTexCoord4x(IIIII)V
    .locals 6
    .parameter "target"
    .parameter "s"
    .parameter "t"
    .parameter "r"
    .parameter "q"

    .prologue
    .line 454
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 455
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 458
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 459
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 462
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 463
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 979
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glNormalPointer(IILjava/nio/Buffer;)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 466
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 467
    return-void
.end method

.method public glOrthof(FFFFFF)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 471
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/MatrixStack;->glOrthof(FFFFFF)V

    .line 472
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 474
    return-void
.end method

.method public glOrthox(IIIIII)V
    .locals 7
    .parameter "left"
    .parameter "right"
    .parameter "bottom"
    .parameter "top"
    .parameter "near"
    .parameter "far"

    .prologue
    .line 478
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/google/android/street/MatrixStack;->glOrthox(IIIIII)V

    .line 479
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 481
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 484
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 485
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 905
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 913
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 909
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 917
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 925
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 921
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 488
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 489
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 929
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSizex(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 492
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 493
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 496
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 497
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 501
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/street/MatrixStack;->glPopMatrix()V

    .line 505
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 507
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    .line 510
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0}, Lcom/google/android/street/MatrixStack;->glPushMatrix()V

    .line 511
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 513
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 1
    .parameter "mantissa"
    .parameter "exponent"

    .prologue
    .line 728
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I

    move-result v0

    return v0
.end method

.method public glQueryMatrixxOES([II[II)I
    .locals 1
    .parameter "mantissa"
    .parameter "mantissaOffset"
    .parameter "exponent"
    .parameter "exponentOffset"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10Ext;->glQueryMatrixxOES([II[II)I

    move-result v0

    return v0
.end method

.method public glReadPixels(IIIIIILjava/nio/Buffer;)V
    .locals 8
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 517
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 518
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/street/MatrixStack;->glRotatef(FFFF)V

    .line 522
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 524
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/google/android/street/MatrixStack;->glRotatex(IIII)V

    .line 528
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 530
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 533
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 534
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 537
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 538
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 541
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/street/MatrixStack;->glScalef(FFF)V

    .line 542
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 544
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 547
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/street/MatrixStack;->glScalex(III)V

    .line 548
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 550
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 553
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 554
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 557
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 558
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .parameter "func"
    .parameter "ref"
    .parameter "mask"

    .prologue
    .line 561
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 562
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 565
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 566
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .parameter "fail"
    .parameter "zfail"
    .parameter "zpass"

    .prologue
    .line 569
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 570
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 983
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexCoordPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 574
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 575
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 578
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 579
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 586
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 587
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 582
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 583
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 933
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 941
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnviv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 937
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexEnvx(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 590
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 591
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 598
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 599
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 594
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 595
    return-void
.end method

.method public glTexImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "internalformat"
    .parameter "width"
    .parameter "height"
    .parameter "border"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 606
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 609
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 610
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 950
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 946
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteri(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 954
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameteriv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 622
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 623
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 618
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 619
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 614
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 963
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexParameterxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 959
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V
    .locals 10
    .parameter "target"
    .parameter "level"
    .parameter "xoffset"
    .parameter "yoffset"
    .parameter "width"
    .parameter "height"
    .parameter "format"
    .parameter "type"
    .parameter "pixels"

    .prologue
    .line 628
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    invoke-interface/range {v0 .. v9}, Ljavax/microedition/khronos/opengles/GL10;->glTexSubImage2D(IIIIIIIILjava/nio/Buffer;)V

    .line 630
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/street/MatrixStack;->glTranslatef(FFF)V

    .line 634
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 636
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 639
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mCurrent:Lcom/google/android/street/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/street/MatrixStack;->glTranslatex(III)V

    .line 640
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 642
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 987
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glVertexPointer(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 646
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 647
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 650
    iget-object v0, p0, Lcom/google/android/street/GLMatrixWrapper;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 651
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1014
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glWeightPointerOES(IIILjava/nio/Buffer;)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 1010
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
