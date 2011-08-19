.class public Lcom/layar/core/MatrixTrackingGL;
.super Ljava/lang/Object;
.source "MatrixTrackingGL.java"

# interfaces
.implements Ljavax/microedition/khronos/opengles/GL;
.implements Ljavax/microedition/khronos/opengles/GL10;
.implements Ljavax/microedition/khronos/opengles/GL10Ext;
.implements Ljavax/microedition/khronos/opengles/GL11;
.implements Ljavax/microedition/khronos/opengles/GL11Ext;


# static fields
.field private static final _check:Z


# instance fields
.field mByteBuffer:Ljava/nio/ByteBuffer;

.field mCheckA:[F

.field mCheckB:[F

.field private mCurrent:Lcom/layar/core/MatrixStack;

.field mFloatBuffer:Ljava/nio/FloatBuffer;

.field private mMatrixMode:I

.field private mModelView:Lcom/layar/core/MatrixStack;

.field private mProjection:Lcom/layar/core/MatrixStack;

.field private mTexture:Lcom/layar/core/MatrixStack;

.field private mgl:Ljavax/microedition/khronos/opengles/GL10;

.field private mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

.field private mgl11:Ljavax/microedition/khronos/opengles/GL11;

.field private mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

.field private trackMatrix:Z


# direct methods
.method public constructor <init>(Ljavax/microedition/khronos/opengles/GL;)V
    .locals 2
    .parameter "gl"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    .line 63
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10;

    move-object v1, v0

    iput-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    .line 64
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL10Ext;

    if-eqz v1, :cond_0

    .line 65
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL10Ext;

    move-object v1, v0

    iput-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

    .line 67
    :cond_0
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_1

    .line 68
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    move-object v1, v0

    iput-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    .line 70
    :cond_1
    instance-of v1, p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    if-eqz v1, :cond_2

    .line 71
    check-cast p1, Ljavax/microedition/khronos/opengles/GL11Ext;

    .end local p1
    iput-object p1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    .line 73
    :cond_2
    new-instance v1, Lcom/layar/core/MatrixStack;

    invoke-direct {v1}, Lcom/layar/core/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mModelView:Lcom/layar/core/MatrixStack;

    .line 74
    new-instance v1, Lcom/layar/core/MatrixStack;

    invoke-direct {v1}, Lcom/layar/core/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mProjection:Lcom/layar/core/MatrixStack;

    .line 75
    new-instance v1, Lcom/layar/core/MatrixStack;

    invoke-direct {v1}, Lcom/layar/core/MatrixStack;-><init>()V

    iput-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mTexture:Lcom/layar/core/MatrixStack;

    .line 76
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mModelView:Lcom/layar/core/MatrixStack;

    iput-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    .line 77
    const/16 v1, 0x1700

    iput v1, p0, Lcom/layar/core/MatrixTrackingGL;->mMatrixMode:I

    .line 78
    return-void
.end method

.method private check()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    .line 1064
    iget v3, p0, Lcom/layar/core/MatrixTrackingGL;->mMatrixMode:I

    packed-switch v3, :pswitch_data_0

    .line 1075
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unknown matrix mode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1066
    :pswitch_0
    const v2, 0x898d

    .line 1078
    .local v2, oesMode:I
    :goto_0
    iget-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    if-nez v3, :cond_0

    .line 1079
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckA:[F

    .line 1080
    new-array v3, v6, [F

    iput-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckB:[F

    .line 1081
    const/16 v3, 0x40

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 1082
    iget-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 1083
    iget-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v3

    iput-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mFloatBuffer:Ljava/nio/FloatBuffer;

    .line 1085
    :cond_0
    iget-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    iget-object v4, p0, Lcom/layar/core/MatrixTrackingGL;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 1086
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v6, :cond_1

    .line 1089
    iget-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    iget-object v4, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckA:[F

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/layar/core/MatrixStack;->getMatrix([FI)V

    .line 1091
    const/4 v0, 0x0

    .line 1092
    .local v0, fail:Z
    const/4 v1, 0x0

    :goto_2
    if-lt v1, v6, :cond_2

    .line 1099
    if-eqz v0, :cond_4

    .line 1100
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Matrix math difference."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1069
    .end local v0           #fail:Z
    .end local v1           #i:I
    .end local v2           #oesMode:I
    :pswitch_1
    const v2, 0x898e

    .line 1070
    .restart local v2       #oesMode:I
    goto :goto_0

    .line 1072
    .end local v2           #oesMode:I
    :pswitch_2
    const v2, 0x898f

    .line 1073
    .restart local v2       #oesMode:I
    goto :goto_0

    .line 1087
    .restart local v1       #i:I
    :cond_1
    iget-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckB:[F

    iget-object v4, p0, Lcom/layar/core/MatrixTrackingGL;->mFloatBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v4, v1}, Ljava/nio/FloatBuffer;->get(I)F

    move-result v4

    aput v4, v3, v1

    .line 1086
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1093
    .restart local v0       #fail:Z
    :cond_2
    iget-object v3, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckA:[F

    aget v3, v3, v1

    iget-object v4, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckB:[F

    aget v4, v4, v1

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 1094
    const-string v3, "GLMatWrap"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "i:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckA:[F

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1095
    const-string v5, " a:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/layar/core/MatrixTrackingGL;->mCheckB:[F

    aget v5, v5, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1094
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v0, 0x1

    .line 1092
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1102
    :cond_4
    return-void

    .line 1064
    nop

    :pswitch_data_0
    .packed-switch 0x1700
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public getMatrix([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 1051
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/layar/core/MatrixStack;->getMatrix([FI)V

    .line 1052
    return-void
.end method

.method public getMatrixMode()I
    .locals 1

    .prologue
    .line 1059
    iget v0, p0, Lcom/layar/core/MatrixTrackingGL;->mMatrixMode:I

    return v0
.end method

.method public glActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 92
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glActiveTexture(I)V

    .line 93
    return-void
.end method

.method public glAlphaFunc(IF)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 96
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFunc(IF)V

    .line 97
    return-void
.end method

.method public glAlphaFuncx(II)V
    .locals 1
    .parameter "func"
    .parameter "ref"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glAlphaFuncx(II)V

    .line 101
    return-void
.end method

.method public glBindBuffer(II)V
    .locals 1
    .parameter "target"
    .parameter "buffer"

    .prologue
    .line 772
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glBindTexture(II)V
    .locals 1
    .parameter "target"
    .parameter "texture"

    .prologue
    .line 104
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    .line 105
    return-void
.end method

.method public glBlendFunc(II)V
    .locals 1
    .parameter "sfactor"
    .parameter "dfactor"

    .prologue
    .line 108
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    .line 109
    return-void
.end method

.method public glBufferData(IILjava/nio/Buffer;I)V
    .locals 1
    .parameter "target"
    .parameter "size"
    .parameter "data"
    .parameter "usage"

    .prologue
    .line 776
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
    .line 780
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glClear(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 112
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClear(I)V

    .line 113
    return-void
.end method

.method public glClearColor(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColor(FFFF)V

    .line 117
    return-void
.end method

.method public glClearColorx(IIII)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 120
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glClearColorx(IIII)V

    .line 121
    return-void
.end method

.method public glClearDepthf(F)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthf(F)V

    .line 125
    return-void
.end method

.method public glClearDepthx(I)V
    .locals 1
    .parameter "depth"

    .prologue
    .line 128
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearDepthx(I)V

    .line 129
    return-void
.end method

.method public glClearStencil(I)V
    .locals 1
    .parameter "s"

    .prologue
    .line 132
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClearStencil(I)V

    .line 133
    return-void
.end method

.method public glClientActiveTexture(I)V
    .locals 1
    .parameter "texture"

    .prologue
    .line 136
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glClientActiveTexture(I)V

    .line 137
    return-void
.end method

.method public glClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 696
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(ILjava/nio/FloatBuffer;)V

    .line 697
    return-void
.end method

.method public glClipPlanef(I[FI)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 692
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanef(I[FI)V

    .line 693
    return-void
.end method

.method public glClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "plane"
    .parameter "equation"

    .prologue
    .line 704
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(ILjava/nio/IntBuffer;)V

    .line 705
    return-void
.end method

.method public glClipPlanex(I[II)V
    .locals 1
    .parameter "plane"
    .parameter "equation"
    .parameter "offset"

    .prologue
    .line 700
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glClipPlanex(I[II)V

    .line 701
    return-void
.end method

.method public glColor4f(FFFF)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 140
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4f(FFFF)V

    .line 141
    return-void
.end method

.method public glColor4ub(BBBB)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 784
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
    .line 144
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    .line 145
    return-void
.end method

.method public glColorMask(ZZZZ)V
    .locals 1
    .parameter "red"
    .parameter "green"
    .parameter "blue"
    .parameter "alpha"

    .prologue
    .line 149
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorMask(ZZZZ)V

    .line 150
    return-void
.end method

.method public glColorPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 996
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
    .line 153
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    .line 154
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
    .line 159
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCompressedTexImage2D(IIIIIIILjava/nio/Buffer;)V

    .line 161
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
    .line 166
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

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

    .line 168
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
    .line 172
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexImage2D(IIIIIIII)V

    .line 174
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
    .line 178
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glCopyTexSubImage2D(IIIIIIII)V

    .line 180
    return-void
.end method

.method public glCullFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 183
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glCullFace(I)V

    .line 184
    return-void
.end method

.method public glCurrentPaletteMatrixOES(I)V
    .locals 1
    .parameter "matrixpaletteindex"

    .prologue
    .line 1020
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 792
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
    .line 788
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glDeleteTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 191
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(ILjava/nio/IntBuffer;)V

    .line 192
    return-void
.end method

.method public glDeleteTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 187
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    .line 188
    return-void
.end method

.method public glDepthFunc(I)V
    .locals 1
    .parameter "func"

    .prologue
    .line 195
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthFunc(I)V

    .line 196
    return-void
.end method

.method public glDepthMask(Z)V
    .locals 1
    .parameter "flag"

    .prologue
    .line 199
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDepthMask(Z)V

    .line 200
    return-void
.end method

.method public glDepthRangef(FF)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 203
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangef(FF)V

    .line 204
    return-void
.end method

.method public glDepthRangex(II)V
    .locals 1
    .parameter "near"
    .parameter "far"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glDepthRangex(II)V

    .line 208
    return-void
.end method

.method public glDisable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    .line 211
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    .line 212
    return-void
.end method

.method public glDisableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 215
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    .line 216
    return-void
.end method

.method public glDrawArrays(III)V
    .locals 1
    .parameter "mode"
    .parameter "first"
    .parameter "count"

    .prologue
    .line 219
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    .line 220
    return-void
.end method

.method public glDrawElements(IIII)V
    .locals 1
    .parameter "mode"
    .parameter "count"
    .parameter "type"
    .parameter "offset"

    .prologue
    .line 1000
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
    .line 223
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    .line 224
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
    .line 711
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfOES(FFFFF)V

    .line 712
    return-void
.end method

.method public glDrawTexfvOES(Ljava/nio/FloatBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 719
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES(Ljava/nio/FloatBuffer;)V

    .line 720
    return-void
.end method

.method public glDrawTexfvOES([FI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 715
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexfvOES([FI)V

    .line 716
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
    .line 723
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexiOES(IIIII)V

    .line 724
    return-void
.end method

.method public glDrawTexivOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 731
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES(Ljava/nio/IntBuffer;)V

    .line 732
    return-void
.end method

.method public glDrawTexivOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 727
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexivOES([II)V

    .line 728
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
    .line 736
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsOES(SSSSS)V

    .line 737
    return-void
.end method

.method public glDrawTexsvOES(Ljava/nio/ShortBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 744
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES(Ljava/nio/ShortBuffer;)V

    .line 745
    return-void
.end method

.method public glDrawTexsvOES([SI)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 740
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexsvOES([SI)V

    .line 741
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
    .line 748
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxOES(IIIII)V

    .line 749
    return-void
.end method

.method public glDrawTexxvOES(Ljava/nio/IntBuffer;)V
    .locals 1
    .parameter "coords"

    .prologue
    .line 756
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES(Ljava/nio/IntBuffer;)V

    .line 757
    return-void
.end method

.method public glDrawTexxvOES([II)V
    .locals 1
    .parameter "coords"
    .parameter "offset"

    .prologue
    .line 752
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11Ext:Ljavax/microedition/khronos/opengles/GL11Ext;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL11Ext;->glDrawTexxvOES([II)V

    .line 753
    return-void
.end method

.method public glEnable(I)V
    .locals 1
    .parameter "cap"

    .prologue
    .line 227
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    .line 228
    return-void
.end method

.method public glEnableClientState(I)V
    .locals 1
    .parameter "array"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    .line 232
    return-void
.end method

.method public glFinish()V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    .line 236
    return-void
.end method

.method public glFlush()V
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glFlush()V

    .line 240
    return-void
.end method

.method public glFogf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 243
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogf(IF)V

    .line 244
    return-void
.end method

.method public glFogfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 251
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(ILjava/nio/FloatBuffer;)V

    .line 252
    return-void
.end method

.method public glFogfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 247
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogfv(I[FI)V

    .line 248
    return-void
.end method

.method public glFogx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogx(II)V

    .line 256
    return-void
.end method

.method public glFogxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(ILjava/nio/IntBuffer;)V

    .line 264
    return-void
.end method

.method public glFogxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 259
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glFogxv(I[II)V

    .line 260
    return-void
.end method

.method public glFrontFace(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 267
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glFrontFace(I)V

    .line 268
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
    .line 272
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/layar/core/MatrixStack;->glFrustumf(FFFFFF)V

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumf(FFFFFF)V

    .line 275
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
    .line 279
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/layar/core/MatrixStack;->glFrustumx(IIIIII)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glFrustumx(IIIIII)V

    .line 282
    return-void
.end method

.method public glGenBuffers(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "buffers"

    .prologue
    .line 800
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
    .line 796
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGenTextures(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "n"
    .parameter "textures"

    .prologue
    .line 289
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(ILjava/nio/IntBuffer;)V

    .line 290
    return-void
.end method

.method public glGenTextures(I[II)V
    .locals 1
    .parameter "n"
    .parameter "textures"
    .parameter "offset"

    .prologue
    .line 285
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    .line 286
    return-void
.end method

.method public glGetBooleanv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 808
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
    .line 804
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
    .line 816
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
    .line 812
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanef(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 824
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
    .line 820
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetClipPlanex(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "eqn"

    .prologue
    .line 832
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
    .line 828
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetError()I
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v0

    .line 294
    .local v0, result:I
    return v0
.end method

.method public glGetFixedv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 840
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
    .line 836
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetFloatv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 848
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
    .line 844
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetIntegerv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 302
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(ILjava/nio/IntBuffer;)V

    .line 303
    return-void
.end method

.method public glGetIntegerv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 298
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glGetIntegerv(I[II)V

    .line 299
    return-void
.end method

.method public glGetLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 856
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
    .line 852
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
    .line 864
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
    .line 860
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
    .line 872
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
    .line 868
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
    .line 880
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
    .line 876
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetPointerv(I[Ljava/nio/Buffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 1004
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glGetString(I)Ljava/lang/String;
    .locals 2
    .parameter "name"

    .prologue
    .line 306
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glGetString(I)Ljava/lang/String;

    move-result-object v0

    .line 307
    .local v0, result:Ljava/lang/String;
    return-object v0
.end method

.method public glGetTexEnviv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "env"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 888
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
    .line 884
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
    .line 896
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
    .line 892
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
    .line 904
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
    .line 900
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
    .line 912
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
    .line 908
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
    .line 920
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
    .line 916
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glHint(II)V
    .locals 1
    .parameter "target"
    .parameter "mode"

    .prologue
    .line 311
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glHint(II)V

    .line 312
    return-void
.end method

.method public glIsBuffer(I)Z
    .locals 1
    .parameter "buffer"

    .prologue
    .line 924
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsEnabled(I)Z
    .locals 1
    .parameter "cap"

    .prologue
    .line 928
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glIsTexture(I)Z
    .locals 1
    .parameter "texture"

    .prologue
    .line 932
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLightModelf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 315
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelf(IF)V

    .line 316
    return-void
.end method

.method public glLightModelfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 323
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(ILjava/nio/FloatBuffer;)V

    .line 324
    return-void
.end method

.method public glLightModelfv(I[FI)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelfv(I[FI)V

    .line 320
    return-void
.end method

.method public glLightModelx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 327
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelx(II)V

    .line 328
    return-void
.end method

.method public glLightModelxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 335
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(ILjava/nio/IntBuffer;)V

    .line 336
    return-void
.end method

.method public glLightModelxv(I[II)V
    .locals 1
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 331
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightModelxv(I[II)V

    .line 332
    return-void
.end method

.method public glLightf(IIF)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 339
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightf(IIF)V

    .line 340
    return-void
.end method

.method public glLightfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(IILjava/nio/FloatBuffer;)V

    .line 348
    return-void
.end method

.method public glLightfv(II[FI)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightfv(II[FI)V

    .line 344
    return-void
.end method

.method public glLightx(III)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 351
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightx(III)V

    .line 352
    return-void
.end method

.method public glLightxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 359
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(IILjava/nio/IntBuffer;)V

    .line 360
    return-void
.end method

.method public glLightxv(II[II)V
    .locals 1
    .parameter "light"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 355
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glLightxv(II[II)V

    .line 356
    return-void
.end method

.method public glLineWidth(F)V
    .locals 1
    .parameter "width"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    .line 364
    return-void
.end method

.method public glLineWidthx(I)V
    .locals 1
    .parameter "width"

    .prologue
    .line 367
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidthx(I)V

    .line 368
    return-void
.end method

.method public glLoadIdentity()V
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0}, Lcom/layar/core/MatrixStack;->glLoadIdentity()V

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    .line 374
    return-void
.end method

.method public glLoadMatrixf(Ljava/nio/FloatBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 383
    iget-boolean v1, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v1, :cond_0

    .line 384
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    .line 385
    .local v0, position:I
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/layar/core/MatrixStack;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 386
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 388
    .end local v0           #position:I
    :cond_0
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf(Ljava/nio/FloatBuffer;)V

    .line 390
    return-void
.end method

.method public glLoadMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 377
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/layar/core/MatrixStack;->glLoadMatrixf([FI)V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixf([FI)V

    .line 380
    return-void
.end method

.method public glLoadMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 399
    iget-boolean v1, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v1, :cond_0

    .line 400
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 401
    .local v0, position:I
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/layar/core/MatrixStack;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 402
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 404
    .end local v0           #position:I
    :cond_0
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx(Ljava/nio/IntBuffer;)V

    .line 406
    return-void
.end method

.method public glLoadMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 393
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/layar/core/MatrixStack;->glLoadMatrixx([II)V

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glLoadMatrixx([II)V

    .line 396
    return-void
.end method

.method public glLoadPaletteFromModelViewMatrixOES()V
    .locals 1

    .prologue
    .line 1024
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glLogicOp(I)V
    .locals 1
    .parameter "opcode"

    .prologue
    .line 409
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glLogicOp(I)V

    .line 410
    return-void
.end method

.method public glMaterialf(IIF)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 413
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialf(IIF)V

    .line 414
    return-void
.end method

.method public glMaterialfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 421
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(IILjava/nio/FloatBuffer;)V

    .line 422
    return-void
.end method

.method public glMaterialfv(II[FI)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 417
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialfv(II[FI)V

    .line 418
    return-void
.end method

.method public glMaterialx(III)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 425
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialx(III)V

    .line 426
    return-void
.end method

.method public glMaterialxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 433
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(IILjava/nio/IntBuffer;)V

    .line 434
    return-void
.end method

.method public glMaterialxv(II[II)V
    .locals 1
    .parameter "face"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 429
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glMaterialxv(II[II)V

    .line 430
    return-void
.end method

.method public glMatrixIndexPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1034
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
    .line 1029
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glMatrixMode(I)V
    .locals 3
    .parameter "mode"

    .prologue
    .line 437
    packed-switch p1, :pswitch_data_0

    .line 448
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown matrix mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 439
    :pswitch_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mModelView:Lcom/layar/core/MatrixStack;

    iput-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    .line 450
    :goto_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMatrixMode(I)V

    .line 451
    iput p1, p0, Lcom/layar/core/MatrixTrackingGL;->mMatrixMode:I

    .line 453
    return-void

    .line 442
    :pswitch_1
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mTexture:Lcom/layar/core/MatrixStack;

    iput-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    goto :goto_0

    .line 445
    :pswitch_2
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mProjection:Lcom/layar/core/MatrixStack;

    iput-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    goto :goto_0

    .line 437
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
    .line 462
    iget-boolean v1, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v1, :cond_0

    .line 463
    invoke-virtual {p1}, Ljava/nio/FloatBuffer;->position()I

    move-result v0

    .line 464
    .local v0, position:I
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/layar/core/MatrixStack;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 465
    invoke-virtual {p1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 467
    .end local v0           #position:I
    :cond_0
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf(Ljava/nio/FloatBuffer;)V

    .line 469
    return-void
.end method

.method public glMultMatrixf([FI)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 456
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/layar/core/MatrixStack;->glMultMatrixf([FI)V

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixf([FI)V

    .line 459
    return-void
.end method

.method public glMultMatrixx(Ljava/nio/IntBuffer;)V
    .locals 2
    .parameter "m"

    .prologue
    .line 478
    iget-boolean v1, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v1, :cond_0

    .line 479
    invoke-virtual {p1}, Ljava/nio/IntBuffer;->position()I

    move-result v0

    .line 480
    .local v0, position:I
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v1, p1}, Lcom/layar/core/MatrixStack;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 481
    invoke-virtual {p1, v0}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    .line 483
    .end local v0           #position:I
    :cond_0
    iget-object v1, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v1, p1}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx(Ljava/nio/IntBuffer;)V

    .line 485
    return-void
.end method

.method public glMultMatrixx([II)V
    .locals 1
    .parameter "m"
    .parameter "offset"

    .prologue
    .line 472
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2}, Lcom/layar/core/MatrixStack;->glMultMatrixx([II)V

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glMultMatrixx([II)V

    .line 475
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
    .line 489
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4f(IFFFF)V

    .line 490
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
    .line 493
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Ljavax/microedition/khronos/opengles/GL10;->glMultiTexCoord4x(IIIII)V

    .line 494
    return-void
.end method

.method public glNormal3f(FFF)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3f(FFF)V

    .line 498
    return-void
.end method

.method public glNormal3x(III)V
    .locals 1
    .parameter "nx"
    .parameter "ny"
    .parameter "nz"

    .prologue
    .line 501
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormal3x(III)V

    .line 502
    return-void
.end method

.method public glNormalPointer(III)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1008
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
    .line 505
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glNormalPointer(IILjava/nio/Buffer;)V

    .line 506
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
    .line 510
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/layar/core/MatrixStack;->glOrthof(FFFFFF)V

    .line 511
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthof(FFFFFF)V

    .line 513
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
    .line 517
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/layar/core/MatrixStack;->glOrthox(IIIIII)V

    .line 518
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Ljavax/microedition/khronos/opengles/GL10;->glOrthox(IIIIII)V

    .line 520
    return-void
.end method

.method public glPixelStorei(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPixelStorei(II)V

    .line 524
    return-void
.end method

.method public glPointParameterf(IF)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 936
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterfv(ILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 944
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
    .line 940
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterx(II)V
    .locals 1
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 948
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointParameterxv(ILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 956
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
    .line 952
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 527
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSize(F)V

    .line 528
    return-void
.end method

.method public glPointSizePointerOES(IILjava/nio/Buffer;)V
    .locals 1
    .parameter "type"
    .parameter "stride"
    .parameter "pointer"

    .prologue
    .line 960
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public glPointSizex(I)V
    .locals 1
    .parameter "size"

    .prologue
    .line 531
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glPointSizex(I)V

    .line 532
    return-void
.end method

.method public glPolygonOffset(FF)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 535
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffset(FF)V

    .line 536
    return-void
.end method

.method public glPolygonOffsetx(II)V
    .locals 1
    .parameter "factor"
    .parameter "units"

    .prologue
    .line 539
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glPolygonOffsetx(II)V

    .line 540
    return-void
.end method

.method public glPopMatrix()V
    .locals 1

    .prologue
    .line 543
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0}, Lcom/layar/core/MatrixStack;->glPopMatrix()V

    .line 544
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    .line 546
    return-void
.end method

.method public glPushMatrix()V
    .locals 1

    .prologue
    .line 549
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0}, Lcom/layar/core/MatrixStack;->glPushMatrix()V

    .line 550
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    .line 552
    return-void
.end method

.method public glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
    .locals 1
    .parameter "mantissa"
    .parameter "exponent"

    .prologue
    .line 766
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

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
    .line 761
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl10Ext:Ljavax/microedition/khronos/opengles/GL10Ext;

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
    .line 556
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 557
    return-void
.end method

.method public glRotatef(FFFF)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 560
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/layar/core/MatrixStack;->glRotatef(FFFF)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    .line 563
    return-void
.end method

.method public glRotatex(IIII)V
    .locals 1
    .parameter "angle"
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 566
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/layar/core/MatrixStack;->glRotatex(IIII)V

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glRotatex(IIII)V

    .line 569
    return-void
.end method

.method public glSampleCoverage(FZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 572
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoverage(FZ)V

    .line 573
    return-void
.end method

.method public glSampleCoveragex(IZ)V
    .locals 1
    .parameter "value"
    .parameter "invert"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2}, Ljavax/microedition/khronos/opengles/GL10;->glSampleCoveragex(IZ)V

    .line 577
    return-void
.end method

.method public glScalef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/layar/core/MatrixStack;->glScalef(FFF)V

    .line 581
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    .line 583
    return-void
.end method

.method public glScalex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 586
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/layar/core/MatrixStack;->glScalex(III)V

    .line 587
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glScalex(III)V

    .line 589
    return-void
.end method

.method public glScissor(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 592
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glScissor(IIII)V

    .line 593
    return-void
.end method

.method public glShadeModel(I)V
    .locals 1
    .parameter "mode"

    .prologue
    .line 596
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glShadeModel(I)V

    .line 597
    return-void
.end method

.method public glStencilFunc(III)V
    .locals 1
    .parameter "func"
    .parameter "ref"
    .parameter "mask"

    .prologue
    .line 600
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    .line 601
    return-void
.end method

.method public glStencilMask(I)V
    .locals 1
    .parameter "mask"

    .prologue
    .line 604
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    .line 605
    return-void
.end method

.method public glStencilOp(III)V
    .locals 1
    .parameter "fail"
    .parameter "zfail"
    .parameter "zpass"

    .prologue
    .line 608
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    .line 609
    return-void
.end method

.method public glTexCoordPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1012
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
    .line 613
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    .line 614
    return-void
.end method

.method public glTexEnvf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 617
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    .line 618
    return-void
.end method

.method public glTexEnvfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 625
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(IILjava/nio/FloatBuffer;)V

    .line 626
    return-void
.end method

.method public glTexEnvfv(II[FI)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 621
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvfv(II[FI)V

    .line 622
    return-void
.end method

.method public glTexEnvi(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 964
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
    .line 972
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
    .line 968
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
    .line 629
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    .line 630
    return-void
.end method

.method public glTexEnvxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 637
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(IILjava/nio/IntBuffer;)V

    .line 638
    return-void
.end method

.method public glTexEnvxv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 633
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvxv(II[II)V

    .line 634
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
    .line 643
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

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

    .line 645
    return-void
.end method

.method public glTexParameterf(IIF)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 648
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    .line 649
    return-void
.end method

.method public glTexParameterfv(IILjava/nio/FloatBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 980
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
    .line 976
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
    .line 984
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
    .line 660
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(IILjava/nio/IntBuffer;)V

    .line 661
    return-void
.end method

.method public glTexParameteriv(II[II)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"
    .parameter "offset"

    .prologue
    .line 656
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl11:Ljavax/microedition/khronos/opengles/GL11;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL11;->glTexParameteriv(II[II)V

    .line 657
    return-void
.end method

.method public glTexParameterx(III)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "param"

    .prologue
    .line 652
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterx(III)V

    .line 653
    return-void
.end method

.method public glTexParameterxv(IILjava/nio/IntBuffer;)V
    .locals 1
    .parameter "target"
    .parameter "pname"
    .parameter "params"

    .prologue
    .line 992
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
    .line 988
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
    .line 666
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

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

    .line 668
    return-void
.end method

.method public glTranslatef(FFF)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 671
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/layar/core/MatrixStack;->glTranslatef(FFF)V

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    .line 674
    return-void
.end method

.method public glTranslatex(III)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "z"

    .prologue
    .line 677
    iget-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mCurrent:Lcom/layar/core/MatrixStack;

    invoke-virtual {v0, p1, p2, p3}, Lcom/layar/core/MatrixStack;->glTranslatex(III)V

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatex(III)V

    .line 680
    return-void
.end method

.method public glVertexPointer(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1016
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
    .line 684
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    .line 685
    return-void
.end method

.method public glViewport(IIII)V
    .locals 1
    .parameter "x"
    .parameter "y"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 688
    iget-object v0, p0, Lcom/layar/core/MatrixTrackingGL;->mgl:Ljavax/microedition/khronos/opengles/GL10;

    invoke-interface {v0, p1, p2, p3, p4}, Ljavax/microedition/khronos/opengles/GL10;->glViewport(IIII)V

    .line 689
    return-void
.end method

.method public glWeightPointerOES(IIII)V
    .locals 1
    .parameter "size"
    .parameter "type"
    .parameter "stride"
    .parameter "offset"

    .prologue
    .line 1043
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
    .line 1039
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public startTracking()V
    .locals 1

    .prologue
    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    .line 82
    return-void
.end method

.method public stopTracking()V
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/layar/core/MatrixTrackingGL;->trackMatrix:Z

    .line 86
    return-void
.end method
