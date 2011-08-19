.class public Lcom/infraware/common/UxGestureDomain;
.super Ljava/lang/Object;
.source "UxGestureDomain.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_EDITMODETYPE;
.implements Lcom/infraware/evengine/E$EV_VIEW_MODE;


# instance fields
.field m_context:Landroid/content/Context;

.field m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

.field m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

.field m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

.field m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

.field m_view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;)V
    .locals 1
    .parameter "a_context"
    .parameter "a_view"
    .parameter "a_oEventListener"

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 15
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 18
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 19
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    .line 23
    iput-object p1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    .line 25
    iput-object p3, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V
    .locals 1
    .parameter "a_context"
    .parameter "a_view"
    .parameter "a_oEventListener"
    .parameter "a_oCaretHandler"
    .parameter "a_oObjectHandler"

    .prologue
    const/4 v0, 0x0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 15
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    .line 16
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    .line 17
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 18
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 19
    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    .line 30
    iput-object p1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    .line 32
    iput-object p3, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    .line 33
    iput-object p5, p0, Lcom/infraware/common/UxGestureDomain;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    .line 34
    iput-object p4, p0, Lcom/infraware/common/UxGestureDomain;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    .line 35
    return-void
.end method


# virtual methods
.method public getDetector(I)Lcom/infraware/common/UxGestureDetector;
    .locals 7
    .parameter "a_nModeType"

    .prologue
    .line 39
    packed-switch p1, :pswitch_data_0

    .line 58
    :pswitch_0
    new-instance v0, Lcom/infraware/common/UxViewerGestureDetector;

    iget-object v1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/infraware/common/UxViewerGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    return-object v0

    .line 42
    :pswitch_1
    new-instance v0, Lcom/infraware/slide/UxSlideGestureDetector;

    iget-object v1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    iget-object v3, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v4, p0, Lcom/infraware/common/UxGestureDomain;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    iget-object v5, p0, Lcom/infraware/common/UxGestureDomain;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    const/4 v6, 0x3

    invoke-direct/range {v0 .. v6}, Lcom/infraware/slide/UxSlideGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;I)V

    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    goto :goto_0

    .line 45
    :pswitch_2
    new-instance v0, Lcom/infraware/slide/UxSlideGestureDetector;

    iget-object v1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    iget-object v3, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v4, p0, Lcom/infraware/common/UxGestureDomain;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    iget-object v5, p0, Lcom/infraware/common/UxGestureDomain;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    const/4 v6, 0x7

    invoke-direct/range {v0 .. v6}, Lcom/infraware/slide/UxSlideGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;I)V

    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    goto :goto_0

    .line 48
    :pswitch_3
    new-instance v0, Lcom/infraware/sheet/UxSheetGestureDetector;

    iget-object v1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    iget-object v3, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v4, p0, Lcom/infraware/common/UxGestureDomain;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    iget-object v5, p0, Lcom/infraware/common/UxGestureDomain;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-direct/range {v0 .. v5}, Lcom/infraware/sheet/UxSheetGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V

    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    goto :goto_0

    .line 51
    :pswitch_4
    new-instance v0, Lcom/infraware/word/UxWordGestureDetector;

    iget-object v1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    iget-object v3, p0, Lcom/infraware/common/UxGestureDomain;->m_oEventListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v4, p0, Lcom/infraware/common/UxGestureDomain;->m_oCaretHandler:Lcom/infraware/common/EvCaretTask;

    iget-object v5, p0, Lcom/infraware/common/UxGestureDomain;->m_oObjectHandler:Lcom/infraware/common/EvObjectProc;

    invoke-direct/range {v0 .. v5}, Lcom/infraware/word/UxWordGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/infraware/common/UiCoreEventListener;Lcom/infraware/common/EvCaretTask;Lcom/infraware/common/EvObjectProc;)V

    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    goto :goto_0

    .line 54
    :pswitch_5
    new-instance v0, Lcom/infraware/sheet/UxSheetViewerGestureDetector;

    iget-object v1, p0, Lcom/infraware/common/UxGestureDomain;->m_context:Landroid/content/Context;

    iget-object v2, p0, Lcom/infraware/common/UxGestureDomain;->m_view:Landroid/view/View;

    invoke-direct {v0, v1, v2}, Lcom/infraware/sheet/UxSheetViewerGestureDetector;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/infraware/common/UxGestureDomain;->m_oGestureDetector:Lcom/infraware/common/UxGestureDetector;

    goto :goto_0

    .line 39
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
