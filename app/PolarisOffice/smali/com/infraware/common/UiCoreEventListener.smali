.class public Lcom/infraware/common/UiCoreEventListener;
.super Ljava/lang/Object;
.source "UiCoreEventListener.java"


# static fields
.field private static m_oThis:Lcom/infraware/common/UiCoreEventListener;


# instance fields
.field private m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    const/4 v0, 0x0

    sput-object v0, Lcom/infraware/common/UiCoreEventListener;->m_oThis:Lcom/infraware/common/UiCoreEventListener;

    .line 6
    return-void
.end method

.method public constructor <init>(Lcom/infraware/common/UxDocViewerBase;)V
    .locals 1
    .parameter "a_oViewerBase"

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    .line 12
    iput-object p1, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    .line 13
    sput-object p0, Lcom/infraware/common/UiCoreEventListener;->m_oThis:Lcom/infraware/common/UiCoreEventListener;

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/infraware/common/UiCoreEventListener;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Lcom/infraware/common/UiCoreEventListener;->m_oThis:Lcom/infraware/common/UiCoreEventListener;

    return-object v0
.end method


# virtual methods
.method public drawCaret(Z)V
    .locals 1
    .parameter "a_bDrawCaret"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0, p1}, Lcom/infraware/common/UxSurfaceView;->setCaret(Z)V

    .line 33
    iget-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 34
    return-void
.end method

.method public drawObject(Lcom/infraware/common/EvObjectProc;Z)V
    .locals 1
    .parameter "a_oObject"
    .parameter "a_bObjFrame"

    .prologue
    .line 38
    iget-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0, p1}, Lcom/infraware/common/UxSurfaceView;->setObjectHandler(Lcom/infraware/common/EvObjectProc;)V

    .line 39
    iget-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 40
    return-void
.end method

.method public notifyLongPressProc(II)V
    .locals 1
    .parameter "a_nPosX"
    .parameter "a_nPosY"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0, p1, p2}, Lcom/infraware/common/UxDocViewerBase;->onLongPress(II)V

    .line 45
    return-void
.end method

.method public notifyMainViewTouched()V
    .locals 0

    .prologue
    .line 23
    return-void
.end method

.method public notifyOnHyperLink(Ljava/lang/String;)V
    .locals 3
    .parameter "a_szUrl"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 56
    :cond_1
    const-string v1, "://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 57
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 59
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v0, oHyperlinkIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v1, v0}, Lcom/infraware/common/UxDocViewerBase;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public notifySheetEditFocus()V
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    invoke-virtual {v0}, Lcom/infraware/common/UxDocViewerBase;->onSheetEditFocus()V

    .line 49
    return-void
.end method

.method public reDrawrect()V
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/infraware/common/UiCoreEventListener;->m_oViewerBase:Lcom/infraware/common/UxDocViewerBase;

    iget-object v0, v0, Lcom/infraware/common/UxDocViewerBase;->m_oSurfaceView:Lcom/infraware/common/UxSurfaceView;

    invoke-virtual {v0}, Lcom/infraware/common/UxSurfaceView;->drawAllContents()V

    .line 28
    return-void
.end method
