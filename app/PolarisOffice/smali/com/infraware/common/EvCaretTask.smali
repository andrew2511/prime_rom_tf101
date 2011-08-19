.class public Lcom/infraware/common/EvCaretTask;
.super Ljava/lang/Object;
.source "EvCaretTask.java"

# interfaces
.implements Lcom/infraware/evengine/E$EV_EDIT_CURSOR_MODE;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/infraware/common/EvCaretTask$DrawCaretTask;
    }
.end annotation


# instance fields
.field LOG_CAT:Ljava/lang/String;

.field protected mCaretTimer:Ljava/util/Timer;

.field protected mPaint:Landroid/graphics/Paint;

.field protected m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

.field protected m_oListener:Lcom/infraware/common/UiCoreEventListener;

.field protected mbCursor:Z


# direct methods
.method constructor <init>(Lcom/infraware/common/UiCoreEventListener;)V
    .locals 2
    .parameter "callbackListener"

    .prologue
    const/4 v1, 0x0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string v0, "CaretTask"

    iput-object v0, p0, Lcom/infraware/common/EvCaretTask;->LOG_CAT:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/infraware/common/EvCaretTask;->mbCursor:Z

    .line 15
    iput-object v1, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    .line 16
    iput-object v1, p0, Lcom/infraware/common/EvCaretTask;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 17
    iput-object v1, p0, Lcom/infraware/common/EvCaretTask;->m_oListener:Lcom/infraware/common/UiCoreEventListener;

    .line 20
    iput-object p1, p0, Lcom/infraware/common/EvCaretTask;->m_oListener:Lcom/infraware/common/UiCoreEventListener;

    .line 25
    invoke-static {}, Lcom/infraware/evengine/ICoEngineInterface;->getInterface()Lcom/infraware/evengine/ICoEngineInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/infraware/common/EvCaretTask;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    .line 26
    iget-object v0, p0, Lcom/infraware/common/EvCaretTask;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/common/EvCaretTask;->CaretOnOff(Lcom/infraware/evengine/EV$CARET_INFO;)Z

    .line 27
    return-void
.end method


# virtual methods
.method CaretOnOff(Lcom/infraware/evengine/EV$CARET_INFO;)Z
    .locals 2
    .parameter "caretInfo"

    .prologue
    const/4 v1, 0x1

    .line 54
    iget-object v0, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 55
    iget v0, p1, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    if-ne v0, v1, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/infraware/common/EvCaretTask;->TimerOn()V

    move v0, v1

    .line 67
    :goto_0
    return v0

    .line 61
    :cond_0
    iget v0, p1, Lcom/infraware/evengine/EV$CARET_INFO;->bCaret:I

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 62
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p0}, Lcom/infraware/common/EvCaretTask;->TimerOff()V

    .line 67
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected TimerOff()V
    .locals 3

    .prologue
    .line 40
    iget-object v0, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    monitor-enter v0

    .line 44
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/infraware/common/EvCaretTask;->mbCursor:Z

    .line 45
    iget-object v1, p0, Lcom/infraware/common/EvCaretTask;->m_oListener:Lcom/infraware/common/UiCoreEventListener;

    iget-boolean v2, p0, Lcom/infraware/common/EvCaretTask;->mbCursor:Z

    invoke-virtual {v1, v2}, Lcom/infraware/common/UiCoreEventListener;->drawCaret(Z)V

    .line 47
    iget-object v1, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 48
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    .line 42
    monitor-exit v0

    .line 51
    :cond_0
    return-void

    .line 42
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected TimerOn()V
    .locals 7

    .prologue
    .line 31
    iget-object v0, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    .line 33
    :cond_0
    iget-object v6, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    monitor-enter v6

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/infraware/common/EvCaretTask;->mCaretTimer:Ljava/util/Timer;

    new-instance v1, Lcom/infraware/common/EvCaretTask$DrawCaretTask;

    invoke-direct {v1, p0}, Lcom/infraware/common/EvCaretTask$DrawCaretTask;-><init>(Lcom/infraware/common/EvCaretTask;)V

    const-wide/16 v2, 0x258

    const-wide/16 v4, 0x258

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 33
    monitor-exit v6

    .line 37
    return-void

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setTimerOff()V
    .locals 0

    .prologue
    .line 114
    invoke-virtual {p0}, Lcom/infraware/common/EvCaretTask;->TimerOff()V

    .line 115
    return-void
.end method

.method public updateCaret()Z
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/infraware/common/EvCaretTask;->m_oEngineInterface:Lcom/infraware/evengine/ICoEngineInterface;

    invoke-virtual {v0}, Lcom/infraware/evengine/ICoEngineInterface;->IGetCaretInfo_Editor()Lcom/infraware/evengine/EV$CARET_INFO;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/infraware/common/EvCaretTask;->CaretOnOff(Lcom/infraware/evengine/EV$CARET_INFO;)Z

    move-result v0

    return v0
.end method
