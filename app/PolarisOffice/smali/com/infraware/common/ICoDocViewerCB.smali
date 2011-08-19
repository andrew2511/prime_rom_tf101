.class public Lcom/infraware/common/ICoDocViewerCB;
.super Ljava/lang/Object;
.source "ICoDocViewerCB.java"

# interfaces
.implements Lcom/infraware/evengine/EvListener$ViewerListener;
.implements Lcom/infraware/common/UDM$USER_DEFINE_MESSAGE;
.implements Lcom/infraware/evengine/E$EV_ERROR_CODE;
.implements Lcom/infraware/evengine/E$EV_GUI_EVENT;
.implements Lcom/infraware/evengine/E$EV_SEARCH_TYPE;
.implements Lcom/infraware/evengine/E$EV_PROGRESS_TYPE;
.implements Lcom/infraware/evengine/E$EV_RES_STRING_ID;
.implements Lcom/infraware/evengine/E$EV_UNREDO_ACTION;
.implements Lcom/infraware/evengine/E$EV_NOTIFY_CODE;


# static fields
.field private static final LOG_CAT:Ljava/lang/String; = "ICoDocViewerCB"

.field protected static m_oCoreView:Lcom/infraware/common/UxSurfaceView;


# instance fields
.field private m_bBGLoadingComplete:Z

.field private m_bReplaceMode:Z

.field private m_nCurrentPageIndex:I

.field private m_nReplaceCount:I

.field private m_nTmpPageIndex:I

.field private m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

.field protected m_oThumbnailBitmap:Landroid/graphics/Bitmap;

.field protected m_oViewer:Lcom/infraware/common/UxDocViewerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreView:Lcom/infraware/common/UxSurfaceView;

    .line 15
    return-void
.end method

.method public constructor <init>(Lcom/infraware/common/UxSurfaceView;Landroid/content/Context;)V
    .locals 3
    .parameter "a_oView"
    .parameter "a_oViewer"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    .line 22
    iput-object v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nCurrentPageIndex:I

    .line 24
    iput v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nTmpPageIndex:I

    .line 25
    iput-object v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 26
    iput-boolean v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bBGLoadingComplete:Z

    .line 27
    iput-boolean v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bReplaceMode:Z

    .line 28
    iput v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nReplaceCount:I

    .line 32
    sput-object p1, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreView:Lcom/infraware/common/UxSurfaceView;

    .line 33
    check-cast p2, Lcom/infraware/common/UxDocViewerBase;

    .end local p2
    iput-object p2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    .line 34
    return-void
.end method


# virtual methods
.method public GetBitmap(II)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "w"
    .parameter "h"

    .prologue
    .line 256
    sget-object v0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/common/UxSurfaceView;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public GetThumbnailBitmap(III)Landroid/graphics/Bitmap;
    .locals 1
    .parameter "a_nPageNum"
    .parameter "w"
    .parameter "h"

    .prologue
    .line 242
    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 245
    :goto_0
    return-object v0

    .line 244
    :cond_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oThumbnailBitmap:Landroid/graphics/Bitmap;

    .line 245
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oThumbnailBitmap:Landroid/graphics/Bitmap;

    goto :goto_0
.end method

.method public OnCloseDoc()V
    .locals 2

    .prologue
    .line 71
    const-string v0, "ICoDocViewerCB"

    const-string v1, "OnCloseDoc"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    return-void
.end method

.method public OnDrawBitmap(II)V
    .locals 5
    .parameter "a_nCallId"
    .parameter "a_bShowAutomap"

    .prologue
    const/4 v4, 0x1

    .line 261
    sget-object v0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreView:Lcom/infraware/common/UxSurfaceView;

    iput p1, v0, Lcom/infraware/common/UxSurfaceView;->m_nCallBackID:I

    .line 262
    sparse-switch p1, :sswitch_data_0

    .line 297
    :cond_0
    :goto_0
    sget-object v0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 298
    return-void

    .line 276
    :sswitch_0
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/infraware/common/CoCoreFunctionInterface;->getInstance()Lcom/infraware/common/CoCoreFunctionInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    .line 279
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->getCurrentPageIndex()I

    move-result v0

    iput v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nTmpPageIndex:I

    .line 280
    iget v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nTmpPageIndex:I

    iget v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nCurrentPageIndex:I

    if-eq v0, v1, :cond_2

    .line 282
    iget v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nTmpPageIndex:I

    iput v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nCurrentPageIndex:I

    .line 283
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x106

    const-string v2, "nIndex"

    iget v3, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nCurrentPageIndex:I

    sub-int/2addr v3, v4

    invoke-static {v0, v1, v2, v3}, Lcom/infraware/common/Utils;->sendUserMessage(Landroid/os/Handler;ILjava/lang/String;I)V

    .line 286
    :cond_2
    iget-boolean v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bBGLoadingComplete:Z

    if-nez v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v0}, Lcom/infraware/common/CoCoreFunctionInterface;->isBGLoadingEnd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 290
    iput-boolean v4, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bBGLoadingComplete:Z

    .line 291
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x10f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 262
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0x7 -> :sswitch_0
        0x8 -> :sswitch_0
        0x9 -> :sswitch_0
        0xb -> :sswitch_0
        0x32 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method public OnDrawThumbnailBitmap(I)V
    .locals 3
    .parameter "nPageNum"

    .prologue
    .line 250
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-gtz v0, :cond_1

    .line 252
    :cond_0
    :goto_0
    return-void

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x110

    iget-object v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oThumbnailBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, p1, v2}, Lcom/infraware/common/Utils;->sendThumbnailMessage(Landroid/os/Handler;IILandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public OnGetResID(I)Ljava/lang/String;
    .locals 2
    .parameter "nStrID"

    .prologue
    .line 319
    packed-switch p1, :pswitch_data_0

    .line 327
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0360

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 323
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0361

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 325
    :pswitch_2
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0362

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 319
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public OnLoadComplete()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "ICoDocViewerCB"

    const-string v1, "OnLoadComplete"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/infraware/common/UxDocViewerBase;->m_bLoadComplete:Z

    .line 43
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/infraware/common/UxDocViewerBase;->onLoadComplete(Z)V

    .line 44
    return-void
.end method

.method public OnLoadFail(I)V
    .locals 5
    .parameter "EEV_ERROR_CODE"

    .prologue
    .line 47
    const-string v1, "ICoDocViewerCB"

    const-string v2, "OnLoadFail"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    const v0, 0x7f0a0276

    .line 49
    .local v0, nStrID:I
    packed-switch p1, :pswitch_data_0

    .line 65
    :goto_0
    :pswitch_0
    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 67
    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v2, v2, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v3, -0x104

    const-string v4, "ErrorCode"

    invoke-static {v2, v3, v4, v0}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 69
    :cond_0
    return-void

    .line 56
    :pswitch_1
    const v0, 0x7f0a0276

    .line 57
    goto :goto_0

    .line 59
    :pswitch_2
    const v0, 0x7f0a0277

    .line 60
    goto :goto_0

    .line 62
    :pswitch_3
    const v0, 0x7f0a0278

    goto :goto_0

    .line 49
    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public OnNotify(I)V
    .locals 2
    .parameter "nNotifyCode"

    .prologue
    .line 334
    sparse-switch p1, :sswitch_data_0

    .line 351
    :cond_0
    :goto_0
    return-void

    .line 337
    :sswitch_0
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/infraware/common/UxDocViewerBase;->m_bProcessingError:Z

    goto :goto_0

    .line 341
    :sswitch_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 345
    :sswitch_2
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_nEV_VIEW_MODE:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x207

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 334
    nop

    :sswitch_data_0
    .sparse-switch
        -0x101 -> :sswitch_2
        -0x100 -> :sswitch_1
        -0x15 -> :sswitch_0
    .end sparse-switch
.end method

.method public OnPageMove(III)V
    .locals 2
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nErrorCode"

    .prologue
    .line 76
    sget-object v0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreView:Lcom/infraware/common/UxSurfaceView;

    const/16 v1, 0xb

    iput v1, v0, Lcom/infraware/common/UxSurfaceView;->m_nCallBackID:I

    .line 77
    sget-object v0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 81
    return-void
.end method

.method public OnPrintMode(Ljava/lang/String;)V
    .locals 2
    .parameter "strPrintFile"

    .prologue
    .line 304
    const-string v0, "ICoDocViewerCB"

    const-string v1, "OnPrintMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    return-void
.end method

.method public OnPrintedCount(I)V
    .locals 0
    .parameter "nTotalCount"

    .prologue
    .line 386
    return-void
.end method

.method public OnProgress(II)V
    .locals 2
    .parameter "EV_PROGRESS_TYPE"
    .parameter "nProgressValue"

    .prologue
    .line 85
    const-string v0, "ICoDocViewerCB"

    const-string v1, "OnProgress"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-void
.end method

.method public OnProgressStart(I)V
    .locals 2
    .parameter "EV_PROGRESS_TYPE"

    .prologue
    .line 107
    const-string v0, "ICoDocViewerCB"

    const-string v1, "OnProgressStart"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    packed-switch p1, :pswitch_data_0

    .line 130
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 116
    :pswitch_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 119
    const/4 v0, 0x1

    sput-boolean v0, Lcom/infraware/common/UxDocViewerBase;->g_bProgressFlag:Z

    .line 120
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x111

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 108
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public OnSearchMode(IIII)V
    .locals 7
    .parameter "EEV_SEARCH_TYPE"
    .parameter "nCurrentPage"
    .parameter "nTotalPage"
    .parameter "nReplaceAllCount"

    .prologue
    const/16 v6, -0x105

    const/16 v5, -0x109

    const/16 v4, -0x10b

    const/4 v2, 0x0

    .line 152
    const-string v0, "ICoDocViewerCB"

    const-string v1, "OnSearchMode"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bReplaceMode:Z

    if-eqz v0, :cond_2

    .line 155
    packed-switch p1, :pswitch_data_0

    .line 237
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 158
    :pswitch_1
    iput-boolean v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bReplaceMode:Z

    .line 159
    iget v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nReplaceCount:I

    if-lez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const-string v2, "Count"

    iget v3, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nReplaceCount:I

    invoke-static {v1, v6, v2, v3}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 165
    :pswitch_2
    iput-boolean v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bReplaceMode:Z

    .line 166
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 177
    :cond_2
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 180
    :sswitch_0
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_SEARCH_FAIL"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iput-boolean v2, v0, Lcom/infraware/common/UxDocViewerBase;->m_bReplaceAll:Z

    .line 184
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const-string v2, "Fail"

    const-string v3, ""

    invoke-static {v1, v4, v2, v3}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 188
    :sswitch_1
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_SEARCH_NO"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iput-boolean v2, v0, Lcom/infraware/common/UxDocViewerBase;->m_bReplaceAll:Z

    .line 191
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const-string v2, "Cannot Search"

    const-string v3, ""

    invoke-static {v1, v5, v2, v3}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 197
    :sswitch_2
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_SEARCH_MOVE"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v2, -0x11a

    const-string v3, "Page move occurred"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 204
    :sswitch_3
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_SEARCH_PROGRESS"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-boolean v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_bReplaceAll:Z

    if-nez v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x11d

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 210
    :sswitch_4
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_REPLACEALL_SEARCH"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iput-boolean v2, v0, Lcom/infraware/common/UxDocViewerBase;->m_bReplaceAll:Z

    .line 213
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const-string v2, "Count"

    invoke-static {v1, v6, v2, p4}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 219
    :sswitch_5
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_NOPREV_SEARCH"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :sswitch_6
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_REPLACE_SEARCH"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v1, -0x103

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    .line 227
    :sswitch_7
    const-string v0, "CoDocViewer"

    const-string v1, "eEV_SEARCH_END"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v2, -0x10a

    const-string v3, "Last Word"

    const-string v4, ""

    invoke-static {v1, v2, v3, v4}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;Ljava/lang/String;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 177
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x10 -> :sswitch_7
        0x31 -> :sswitch_4
        0x32 -> :sswitch_5
        0x33 -> :sswitch_6
    .end sparse-switch
.end method

.method public OnTerminate()V
    .locals 5

    .prologue
    .line 133
    const-string v1, "ICoDocViewerCB"

    const-string v2, "OnTerminate"

    invoke-static {v1, v2}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 137
    const v0, 0x7f0a035f

    .line 138
    .local v0, nStrID:I
    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v1, v1, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v2, v2, Lcom/infraware/common/UxDocViewerBase;->m_oHandler:Landroid/os/Handler;

    const/16 v3, -0x104

    const-string v4, "ErrorCode"

    invoke-static {v2, v3, v4, v0}, Lcom/infraware/common/Utils;->createMessage(Landroid/os/Handler;ILjava/lang/String;I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 149
    .end local v0           #nStrID:I
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    iget-object v2, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v2}, Lcom/infraware/common/UxDocViewerBase;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a02f9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 143
    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oCoreInterface:Lcom/infraware/common/CoCoreFunctionInterface;

    invoke-virtual {v1}, Lcom/infraware/common/CoCoreFunctionInterface;->closeEngine()V

    .line 144
    iget-object v1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_oViewer:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v1}, Lcom/infraware/common/UxDocViewerBase;->finish()V

    goto :goto_0
.end method

.method public OnTextToSpeachString(Ljava/lang/String;)V
    .locals 2
    .parameter "strTTS"

    .prologue
    .line 308
    const-string v0, "ICoDocViewerCB"

    const-string v1, "OnTextToSpeachString"

    invoke-static {v0, v1}, Lcom/infraware/common/CoLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public changeCurrentPageIndex(I)V
    .locals 0
    .parameter "a_nIndex"

    .prologue
    .line 380
    iput p1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nCurrentPageIndex:I

    .line 381
    return-void
.end method

.method public setReplaceMode(Z)V
    .locals 1
    .parameter "a_bMode"

    .prologue
    .line 313
    iput-boolean p1, p0, Lcom/infraware/common/ICoDocViewerCB;->m_bReplaceMode:Z

    .line 314
    const/4 v0, 0x0

    iput v0, p0, Lcom/infraware/common/ICoDocViewerCB;->m_nReplaceCount:I

    .line 315
    return-void
.end method
