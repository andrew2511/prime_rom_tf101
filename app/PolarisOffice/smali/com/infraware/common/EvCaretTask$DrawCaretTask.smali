.class Lcom/infraware/common/EvCaretTask$DrawCaretTask;
.super Ljava/util/TimerTask;
.source "EvCaretTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/infraware/common/EvCaretTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawCaretTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/infraware/common/EvCaretTask;


# direct methods
.method constructor <init>(Lcom/infraware/common/EvCaretTask;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/infraware/common/EvCaretTask$DrawCaretTask;->this$0:Lcom/infraware/common/EvCaretTask;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 96
    iget-object v1, p0, Lcom/infraware/common/EvCaretTask$DrawCaretTask;->this$0:Lcom/infraware/common/EvCaretTask;

    iget-object v1, v1, Lcom/infraware/common/EvCaretTask;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v1}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    .line 98
    .local v0, caretInfo:Lcom/infraware/evengine/EV$CARET_INFO;
    iget v1, v0, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    if-ne v1, v3, :cond_1

    .line 99
    iget-object v1, p0, Lcom/infraware/common/EvCaretTask$DrawCaretTask;->this$0:Lcom/infraware/common/EvCaretTask;

    iget-object v2, p0, Lcom/infraware/common/EvCaretTask$DrawCaretTask;->this$0:Lcom/infraware/common/EvCaretTask;

    iget-boolean v2, v2, Lcom/infraware/common/EvCaretTask;->mbCursor:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v1, Lcom/infraware/common/EvCaretTask;->mbCursor:Z

    .line 100
    iget v1, v0, Lcom/infraware/evengine/EV$CARET_INFO;->nWidth:I

    if-lez v1, :cond_0

    iget v1, v0, Lcom/infraware/evengine/EV$CARET_INFO;->nHeight:I

    if-gtz v1, :cond_3

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/infraware/common/EvCaretTask$DrawCaretTask;->this$0:Lcom/infraware/common/EvCaretTask;

    invoke-virtual {v1}, Lcom/infraware/common/EvCaretTask;->TimerOff()V

    .line 109
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v2, v3

    .line 99
    goto :goto_0

    .line 107
    :cond_3
    iget-object v1, p0, Lcom/infraware/common/EvCaretTask$DrawCaretTask;->this$0:Lcom/infraware/common/EvCaretTask;

    iget-object v1, v1, Lcom/infraware/common/EvCaretTask;->m_oListener:Lcom/infraware/common/UiCoreEventListener;

    iget-object v2, p0, Lcom/infraware/common/EvCaretTask$DrawCaretTask;->this$0:Lcom/infraware/common/EvCaretTask;

    iget-boolean v2, v2, Lcom/infraware/common/EvCaretTask;->mbCursor:Z

    invoke-virtual {v1, v2}, Lcom/infraware/common/UiCoreEventListener;->drawCaret(Z)V

    goto :goto_1
.end method
