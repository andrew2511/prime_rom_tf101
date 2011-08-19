.class public Lcom/asus/reader/book/BookSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "BookSurfaceView.java"


# instance fields
.field public mCurrentScanPos:I

.field public mFontSize:I

.field public mPageCount:I

.field public mPageNo:I

.field public mScanCount:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 8
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 9
    return-void
.end method

.method public static native addHighlightNative(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public static native bookmarkToPosDoubletNative(Ljava/lang/String;)D
.end method

.method public static native clearSelectionNative()V
.end method

.method public static native getBoundingBoxNative(ILjava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public static native getHighlightInPageNative(IIII)[Ljava/lang/Object;
.end method

.method public static native getHighlightTextNative(I)Ljava/lang/String;
.end method

.method public static native getPageLocationNative(I)Ljava/lang/String;
.end method

.method public static native getPageTextNative(I)Ljava/lang/String;
.end method

.method public static native getPositionTextNative(DDI)[Ljava/lang/Object;
.end method

.method public static native getSelectedTextNative()Ljava/lang/String;
.end method

.method public static native getSentenceLocNative([Ljava/lang/String;I)[Ljava/lang/Object;
.end method

.method public static native removeHighlightNative(I)V
.end method

.method public static native searchStringNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/Object;
.end method

.method public static native setHighlightColorNative(II)V
.end method

.method public static native setNewHighlightNative()[Ljava/lang/Object;
.end method

.method public static native setPreciseSelectionNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native setSelectionHighlightNative(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public static native updateSelectionBoundNative(DDII)V
.end method


# virtual methods
.method public native SaveScanResultsNative(Ljava/lang/String;)V
.end method

.method public native ScanDocumentNative()V
.end method

.method public native cleanupNative(ZI)Z
.end method

.method public native findPageNoByPositionNative(D)I
.end method

.method public native getPageCenterPositionNative(I)D
.end method

.method public native loadDocumentNative(Ljava/lang/String;IIZI)V
.end method

.method public native navigateToPageNative(I)V
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 18
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    .line 19
    return-void
.end method

.method public native setFontSizeNative(DDLjava/lang/String;)V
.end method

.method public native setNightModeNative(Ljava/lang/String;Z)V
.end method

.method public setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 0
    .parameter "renderer"

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 14
    return-void
.end method
