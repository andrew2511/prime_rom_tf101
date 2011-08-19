.class public Lcom/layar/ui/popupmenu/PopupButton;
.super Lcom/layar/ui/navigationbar/NavigationBarButton;
.source "PopupButton.java"

# interfaces
.implements Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;
.implements Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

.field private mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

.field private mViewRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .parameter "context"
    .parameter "resImage"
    .parameter "resString"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Lcom/layar/ui/navigationbar/NavigationBarButton;-><init>(Landroid/content/Context;II)V

    .line 24
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mViewRect:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {p0, p0}, Lcom/layar/ui/popupmenu/PopupButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 32
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/layar/ui/popupmenu/PopupButton;->setFocusable(Z)V

    .line 33
    const v0, 0x7f0200ec

    invoke-virtual {p0, v0}, Lcom/layar/ui/popupmenu/PopupButton;->setBackgroundResource(I)V

    .line 34
    return-void
.end method


# virtual methods
.method public getPopupMenuHandler()Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 60
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    if-nez v1, :cond_0

    .line 78
    :goto_0
    return-void

    .line 62
    :cond_0
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    if-eqz v1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v1}, Lcom/layar/ui/popupmenu/PopupMenu;->dismiss()V

    .line 64
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    .line 65
    invoke-virtual {p0, v3}, Lcom/layar/ui/popupmenu/PopupButton;->setSelected(Z)V

    .line 66
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    invoke-interface {v1, p0}, Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;->onHidePopupMenu(Lcom/layar/ui/popupmenu/PopupButton;)V

    goto :goto_0

    .line 69
    :cond_1
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/layar/ui/popupmenu/PopupButton;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 71
    new-instance v0, Lcom/layar/ui/popupmenu/PopupMenu$Menu;

    const/4 v1, -0x1

    const-string v2, "root"

    invoke-direct {v0, v1, v3, v2}, Lcom/layar/ui/popupmenu/PopupMenu$Menu;-><init>(IILjava/lang/String;)V

    .line 72
    .local v0, menuRoot:Lcom/layar/ui/popupmenu/PopupMenu$Menu;
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    invoke-interface {v1, p0, v0}, Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;->preparePopupMenu(Lcom/layar/ui/popupmenu/PopupButton;Lcom/layar/ui/popupmenu/PopupMenu$Menu;)V

    .line 73
    new-instance v1, Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {p0}, Lcom/layar/ui/popupmenu/PopupButton;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/layar/ui/popupmenu/PopupButton;->mViewRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    invoke-direct {v1, v2, v0, v3}, Lcom/layar/ui/popupmenu/PopupMenu;-><init>(Landroid/content/Context;Lcom/layar/ui/popupmenu/PopupMenu$Menu;I)V

    iput-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    .line 74
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v1, p0}, Lcom/layar/ui/popupmenu/PopupMenu;->setClickListener(Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuClickListener;)V

    .line 75
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v1, p0}, Lcom/layar/ui/popupmenu/PopupMenu;->setStateListener(Lcom/layar/ui/popupmenu/PopupMenu$PopupMenuStateListener;)V

    .line 76
    iget-object v1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v1}, Lcom/layar/ui/popupmenu/PopupMenu;->show()V

    .line 77
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/layar/ui/popupmenu/PopupButton;->setSelected(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v0}, Lcom/layar/ui/popupmenu/PopupMenu;->cancel()V

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    .line 50
    :cond_0
    invoke-super {p0}, Lcom/layar/ui/navigationbar/NavigationBarButton;->onDetachedFromWindow()V

    .line 51
    return-void
.end method

.method public onPopupMenuHide()V
    .locals 1

    .prologue
    .line 82
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/layar/ui/popupmenu/PopupButton;->setSelected(Z)V

    .line 83
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    invoke-interface {v0, p0}, Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;->onHidePopupMenu(Lcom/layar/ui/popupmenu/PopupButton;)V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    .line 85
    return-void
.end method

.method public onPopupMenuItem(I)V
    .locals 1
    .parameter "id"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    invoke-interface {v0, p0, p1}, Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;->onPopupMenuClick(Lcom/layar/ui/popupmenu/PopupButton;I)V

    .line 56
    :cond_0
    return-void
.end method

.method public onPopupMenuOutClick(Landroid/view/MotionEvent;)V
    .locals 3
    .parameter "ev"

    .prologue
    .line 89
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/layar/ui/popupmenu/PopupButton;->setSelected(Z)V

    .line 90
    iget-object v2, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    if-eqz v2, :cond_0

    .line 91
    iget-object v2, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    invoke-virtual {v2}, Lcom/layar/ui/popupmenu/PopupMenu;->dismiss()V

    .line 92
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    .line 93
    .local v0, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v1, v2

    .line 94
    .local v1, y:I
    iget-object v2, p0, Lcom/layar/ui/popupmenu/PopupButton;->mViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    if-nez v2, :cond_1

    .line 95
    iget-object v2, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    invoke-interface {v2, p0}, Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;->onHidePopupMenu(Lcom/layar/ui/popupmenu/PopupButton;)V

    .line 96
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/layar/ui/popupmenu/PopupButton;->mMenu:Lcom/layar/ui/popupmenu/PopupMenu;

    .line 98
    :cond_1
    return-void
.end method

.method public setPopupMenuHandler(Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;)V
    .locals 0
    .parameter "handler"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/layar/ui/popupmenu/PopupButton;->mHandler:Lcom/layar/ui/popupmenu/PopupButton$PopupMenuHandler;

    .line 42
    return-void
.end method
