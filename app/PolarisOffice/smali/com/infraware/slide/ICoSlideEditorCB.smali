.class public Lcom/infraware/slide/ICoSlideEditorCB;
.super Lcom/infraware/common/ICoDocEditorCB;
.source "ICoSlideEditorCB.java"

# interfaces
.implements Lcom/infraware/evengine/EvListener$PptEditorListener;


# instance fields
.field private final LOG_CAT:Ljava/lang/String;

.field m_oBitmapThumbnail:Landroid/graphics/Bitmap;

.field m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;Lcom/infraware/common/CoCoreFunctionInterface;)V
    .locals 1
    .parameter "a_context"
    .parameter "a_oObj"
    .parameter "a_oClipoardHelper"
    .parameter "a_oCoreInterface"

    .prologue
    const/4 v0, 0x0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/infraware/common/ICoDocEditorCB;-><init>(Landroid/content/Context;Lcom/infraware/common/EvObjectProc;Lcom/infraware/common/helpers/EvClipboardHelper;)V

    .line 27
    iput-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    .line 28
    iput-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    .line 29
    iput-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 30
    const-string v0, "ICoSlideEditorCB"

    iput-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->LOG_CAT:Ljava/lang/String;

    .line 35
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/slide/UxSlideToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    .line 36
    iput-object p4, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 37
    return-void
.end method


# virtual methods
.method public OnIMEInsertMode()V
    .locals 2

    .prologue
    .line 66
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnIMEInsertMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->updateToolbar()V

    .line 68
    return-void
.end method

.method public OnInsertTableMode(I)V
    .locals 3
    .parameter "EEV_TABLE_RESULT"

    .prologue
    const/16 v2, -0x400

    .line 50
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnInsertTableMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->updateToolbar()V

    .line 52
    packed-switch p1, :pswitch_data_0

    .line 63
    :goto_0
    :pswitch_0
    return-void

    .line 57
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 60
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 52
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public OnObjectPoints(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V
    .locals 2
    .parameter "param"

    .prologue
    .line 42
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnObjectPoints"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocEditorBase;->getToolBarUpdater()Lcom/infraware/common/UxToolBarUpdater;

    move-result-object v0

    check-cast v0, Lcom/infraware/slide/UxSlideToolBarUpdater;

    iput-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    .line 44
    :cond_0
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    if-nez v0, :cond_1

    .line 47
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-super {p0, p1}, Lcom/infraware/common/ICoDocEditorCB;->OnObjectPoints(Lcom/infraware/evengine/EV$EDITOR_OBJECT_POINTARRAY;)V

    .line 46
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oToolbarUpdater:Lcom/infraware/slide/UxSlideToolBarUpdater;

    invoke-virtual {v0}, Lcom/infraware/slide/UxSlideToolBarUpdater;->updateToolbar()V

    goto :goto_0
.end method

.method public OnPptDrawSlidesBitmap(I)V
    .locals 3
    .parameter "nPageNum"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x110

    iget-object v2, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1, v2}, Lcom/infraware/common/Utils;->sendThumbnailMessage(Landroid/os/Handler;IILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public OnPptGetSlidenoteBitmap(II)Landroid/graphics/Bitmap;
    .locals 2
    .parameter "w"
    .parameter "h"

    .prologue
    .line 144
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptGetSlidenoteBitmap"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnPptGetSlidesBitmap(IIIILjava/lang/String;)Landroid/graphics/Bitmap;
    .locals 3
    .parameter "bBitmapImage"
    .parameter "nPageNum"
    .parameter "w"
    .parameter "h"
    .parameter "strSlideTitle"

    .prologue
    .line 87
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptGetSlidesBitmap"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    if-eqz p3, :cond_0

    if-nez p4, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    .line 90
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    .line 91
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oEditor:Lcom/infraware/common/UxDocEditorBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocEditorBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x110

    iget-object v2, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p2, v2}, Lcom/infraware/common/Utils;->sendThumbnailMessage(Landroid/os/Handler;IILandroid/graphics/Bitmap;)V

    .line 92
    iget-object v0, p0, Lcom/infraware/slide/ICoSlideEditorCB;->m_oBitmapThumbnail:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public OnPptOnDrawSlidenote(I)V
    .locals 2
    .parameter "pageNum"

    .prologue
    .line 149
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptOnDrawSlidenote"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public OnPptSlideDelete()V
    .locals 2

    .prologue
    .line 83
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptSlideDelete"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method public OnPptSlideMoveNext()V
    .locals 2

    .prologue
    .line 80
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptSlideMoveNext"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public OnPptSlideMovePrev()V
    .locals 2

    .prologue
    .line 77
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptSlideMovePrev"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method

.method public OnPptSlideexInsert()V
    .locals 2

    .prologue
    .line 74
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptSlideexInsert"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    return-void
.end method

.method public OnPptSlidenoteStart()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "ICoSlideEditorCB"

    const-string v1, "OnPptSlidenoteStart"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method
