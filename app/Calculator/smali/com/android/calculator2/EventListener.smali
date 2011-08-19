.class Lcom/android/calculator2/EventListener;
.super Ljava/lang/Object;
.source "EventListener.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field mHandler:Lcom/android/calculator2/Logic;

.field mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 37
    .local v0, id:I
    sparse-switch v0, :sswitch_data_0

    .line 51
    instance-of v2, p1, Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 52
    check-cast p1, Landroid/widget/Button;

    .end local p1
    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, text:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_0

    .line 55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x28

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2, v1}, Lcom/android/calculator2/Logic;->insert(Ljava/lang/String;)V

    .line 58
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2}, Lcom/android/calculator2/PanelSwitcher;->getCurrentIndex()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 60
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    invoke-virtual {v2}, Lcom/android/calculator2/PanelSwitcher;->moveRight()V

    .line 64
    .end local v1           #text:Ljava/lang/String;
    :cond_1
    :goto_0
    return-void

    .line 39
    .restart local p1
    :sswitch_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onDelete()V

    goto :goto_0

    .line 43
    :sswitch_1
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onClear()V

    goto :goto_0

    .line 47
    :sswitch_2
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_0

    .line 37
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f090003 -> :sswitch_1
        0x7f090004 -> :sswitch_0
        0x7f090017 -> :sswitch_2
    .end sparse-switch
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "view"
    .parameter "keyCode"
    .parameter "keyEvent"

    .prologue
    const/16 v3, 0x15

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 78
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 80
    .local v0, action:I
    if-eq p2, v3, :cond_0

    const/16 v2, 0x16

    if-ne p2, v2, :cond_2

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    if-ne p2, v3, :cond_1

    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Lcom/android/calculator2/Logic;->eatHorizontalMove(Z)Z

    move-result v1

    .local v1, eat:Z
    move v2, v1

    .line 130
    .end local v1           #eat:Z
    :goto_1
    return v2

    :cond_1
    move v3, v5

    .line 82
    goto :goto_0

    .line 87
    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    if-nez p2, :cond_3

    move v2, v4

    .line 88
    goto :goto_1

    .line 93
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    const/16 v3, 0x3d

    if-ne v2, v3, :cond_5

    .line 94
    if-ne v0, v4, :cond_4

    .line 95
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    :cond_4
    move v2, v4

    .line 97
    goto :goto_1

    .line 100
    :cond_5
    const/16 v2, 0x17

    if-eq p2, v2, :cond_6

    const/16 v2, 0x13

    if-eq p2, v2, :cond_6

    const/16 v2, 0x14

    if-eq p2, v2, :cond_6

    const/16 v2, 0x42

    if-eq p2, v2, :cond_6

    move v2, v5

    .line 104
    goto :goto_1

    .line 114
    :cond_6
    if-ne v0, v4, :cond_7

    .line 115
    sparse-switch p2, :sswitch_data_0

    :cond_7
    :goto_2
    move v2, v4

    .line 130
    goto :goto_1

    .line 118
    :sswitch_0
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onEnter()V

    goto :goto_2

    .line 122
    :sswitch_1
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onUp()V

    goto :goto_2

    .line 126
    :sswitch_2
    iget-object v2, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v2}, Lcom/android/calculator2/Logic;->onDown()V

    goto :goto_2

    .line 115
    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .parameter "view"

    .prologue
    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 69
    .local v0, id:I
    const v1, 0x7f090004

    if-ne v0, v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    invoke-virtual {v1}, Lcom/android/calculator2/Logic;->onClear()V

    .line 71
    const/4 v1, 0x1

    .line 73
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method setHandler(Lcom/android/calculator2/Logic;Lcom/android/calculator2/PanelSwitcher;)V
    .locals 0
    .parameter "handler"
    .parameter "panelSwitcher"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/android/calculator2/EventListener;->mHandler:Lcom/android/calculator2/Logic;

    .line 31
    iput-object p2, p0, Lcom/android/calculator2/EventListener;->mPanelSwitcher:Lcom/android/calculator2/PanelSwitcher;

    .line 32
    return-void
.end method
