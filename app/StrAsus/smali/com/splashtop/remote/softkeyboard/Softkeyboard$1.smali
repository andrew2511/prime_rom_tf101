.class Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;
.super Ljava/lang/Object;
.source "Softkeyboard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/splashtop/remote/softkeyboard/Softkeyboard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/splashtop/remote/softkeyboard/Softkeyboard;


# direct methods
.method constructor <init>(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)V
    .locals 0
    .parameter

    .prologue
    .line 54
    iput-object p1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;->this$0:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 58
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;->this$0:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->access$000(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 59
    .local v0, m:Landroid/view/inputmethod/InputMethodManager;
    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    .line 60
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;->this$0:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->access$100(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;->this$0:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->access$100(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->getHotkeyView()Landroid/widget/PopupWindow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;->this$0:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->access$100(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    move-result-object v1

    invoke-virtual {v1}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->getHotkeyView()Landroid/widget/PopupWindow;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 67
    :cond_0
    iget-object v1, p0, Lcom/splashtop/remote/softkeyboard/Softkeyboard$1;->this$0:Lcom/splashtop/remote/softkeyboard/Softkeyboard;

    invoke-static {v1}, Lcom/splashtop/remote/softkeyboard/Softkeyboard;->access$100(Lcom/splashtop/remote/softkeyboard/Softkeyboard;)Lcom/splashtop/remote/softkeyboard/HotkeySupport;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/splashtop/remote/softkeyboard/HotkeySupport;->showHotkeyBar(I)V

    .line 70
    :cond_1
    return-void
.end method
