.class Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;
.super Lcom/android/internal/view/menu/MenuPopupHelper;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ActionButtonSubmenu"
.end annotation


# instance fields
.field private mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .registers 10
    .parameter
    .parameter "context"
    .parameter "subMenu"

    .prologue
    .line 3134
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    .line 3135
    invoke-direct {p0, p2, p3}, Lcom/android/internal/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/android/internal/view/menu/MenuBuilder;)V

    .line 3136
    iput-object p3, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    .line 3138
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getRootMenu()Lcom/android/internal/view/menu/MenuBuilder;

    move-result-object v3

    .line 3139
    .local v3, parentMenu:Lcom/android/internal/view/menu/MenuBuilder;
    invoke-virtual {p3}, Lcom/android/internal/view/menu/SubMenuBuilder;->getItem()Landroid/view/MenuItem;

    move-result-object v2

    check-cast v2, Lcom/android/internal/view/menu/MenuItemImpl;

    .line 3140
    .local v2, item:Lcom/android/internal/view/menu/MenuItemImpl;
    invoke-virtual {v2}, Lcom/android/internal/view/menu/MenuItemImpl;->isActionButton()Z

    move-result v4

    if-nez v4, :cond_29

    .line 3142
    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/view/menu/MenuBuilder;->getMenuView(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/menu/ActionMenuView;

    .line 3145
    .local v0, amv:Lcom/android/internal/view/menu/ActionMenuView;
    invoke-virtual {v0}, Lcom/android/internal/view/menu/ActionMenuView;->getOverflowButton()Landroid/view/View;

    move-result-object v1

    .line 3146
    .local v1, anchor:Landroid/view/View;
    if-nez v1, :cond_26

    .line 3147
    move-object v1, v0

    .line 3149
    :cond_26
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->setAnchorView(Landroid/view/View;)V

    .line 3151
    .end local v0           #amv:Lcom/android/internal/view/menu/ActionMenuView;
    .end local v1           #anchor:Landroid/view/View;
    :cond_29
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .registers 3

    .prologue
    .line 3155
    invoke-super {p0}, Lcom/android/internal/view/menu/MenuPopupHelper;->onDismiss()V

    .line 3156
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/SubMenuBuilder;->getCallback()Lcom/android/internal/view/menu/MenuBuilder$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$Callback;->onCloseSubMenu(Lcom/android/internal/view/menu/SubMenuBuilder;)V

    .line 3157
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    const/4 v1, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionButtonPopup:Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$002(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;)Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;

    .line 3158
    return-void
.end method

.method public run()V
    .registers 4

    .prologue
    .line 3162
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->tryShow()Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 3163
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 3164
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_1d

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 3165
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->mSubMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 3168
    .end local v0           #cb:Landroid/view/Window$Callback;
    :cond_1d
    return-void
.end method
