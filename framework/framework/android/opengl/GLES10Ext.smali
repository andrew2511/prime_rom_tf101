.class public Landroid/opengl/GLES10Ext;
.super Ljava/lang/Object;
.source "GLES10Ext.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .prologue
    .line 24
    invoke-static {}, Landroid/opengl/GLES10Ext;->_nativeClassInit()V

    .line 25
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native _nativeClassInit()V
.end method

.method public static native glQueryMatrixxOES(Ljava/nio/IntBuffer;Ljava/nio/IntBuffer;)I
.end method

.method public static native glQueryMatrixxOES([II[II)I
.end method
