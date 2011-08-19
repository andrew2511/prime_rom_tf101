.class Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "ActionMenuView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/menu/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OverflowPopup"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/view/menu/ActionMenuView;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/menu/ActionMenuView;Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V
    .registers 6
    .parameter
    .parameter "context"
    .parameter "menu"
    .parameter "anchorView"
    .parameter "overflowOnly"

    .prologue
    .line 405
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    .line 406
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;Landroid/view/View;Z)V

    .line 407
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 4

    .prologue
    .line 411
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 412
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    #getter for: Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v0}, Lcom/android/internal/view/menu/ActionMenuView;->access$200(Lcom/android/internal/view/menu/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    #getter for: Lcom/android/internal/view/menu/ActionMenuView;->mMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-static {v1}, Lcom/android/internal/view/menu/ActionMenuView;->access$200(Lcom/android/internal/view/menu/ActionMenuView;)Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onCloseMenu(Lcom/android/internal/view/menu/MenuBuilder;Z)V

    .line 413
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuView$OverflowPopup;->this$0:Lcom/android/internal/view/menu/ActionMenuView;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/view/menu/ActionMenuView;->mOverflowPopup:Lcom/android/internal/view/menu/MenuPopupHelper;
    invoke-static {v0, v1}, Lcom/android/internal/view/menu/ActionMenuView;->access$002(Lcom/android/internal/view/menu/ActionMenuView;Lcom/android/internal/view/menu/MenuPopupHelper;)Lcom/android/internal/view/menu/MenuPopupHelper;

    .line 414
    return-void
.end method
