.class Lcom/android/internal/policy/impl/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow;->onSubMenuSelected(Lcom/android/internal/view/menu/SubMenuBuilder;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindow;

.field final synthetic val$subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/view/menu/SubMenuBuilder;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 882
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->val$subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 884
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    new-instance v2, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/PhoneWindow;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->val$subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;-><init>(Lcom/android/internal/policy/impl/PhoneWindow;Landroid/content/Context;Lcom/android/internal/view/menu/SubMenuBuilder;)V

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionButtonPopup:Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow;->access$002(Lcom/android/internal/policy/impl/PhoneWindow;Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;)Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;

    .line 885
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mActionButtonPopup:Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->access$000(Lcom/android/internal/policy/impl/PhoneWindow;)Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow$ActionButtonSubmenu;->show()V

    .line 886
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    .line 887
    .local v0, cb:Landroid/view/Window$Callback;
    if-eqz v0, :cond_34

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PhoneWindow;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_34

    .line 888
    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$1;->val$subMenu:Lcom/android/internal/view/menu/SubMenuBuilder;

    invoke-interface {v0, v1, v2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    .line 890
    :cond_34
    return-void
.end method
