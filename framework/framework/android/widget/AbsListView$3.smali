.class Landroid/widget/AbsListView$3;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/AbsListView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;Landroid/view/inputmethod/InputConnection;Z)V
    .registers 4
    .parameter
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4984
    iput-object p1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public performEditorAction(I)Z
    .registers 6
    .parameter "editorAction"

    .prologue
    const/4 v3, 0x0

    .line 4996
    const/4 v1, 0x6

    if-ne p1, v1, :cond_1f

    .line 4997
    iget-object v1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 5000
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1d

    .line 5001
    iget-object v1, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 5003
    :cond_1d
    const/4 v1, 0x1

    .line 5005
    .end local v0           #imm:Landroid/view/inputmethod/InputMethodManager;
    :goto_1e
    return v1

    :cond_1f
    move v1, v3

    goto :goto_1e
.end method

.method public reportFullscreenMode(Z)Z
    .registers 3
    .parameter "enabled"

    .prologue
    .line 4989
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->reportFullscreenMode(Z)Z

    move-result v0

    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 3
    .parameter "event"

    .prologue
    .line 5013
    iget-object v0, p0, Landroid/widget/AbsListView$3;->this$0:Landroid/widget/AbsListView;

    #getter for: Landroid/widget/AbsListView;->mDefInputConnection:Landroid/view/inputmethod/InputConnection;
    invoke-static {v0}, Landroid/widget/AbsListView;->access$3500(Landroid/widget/AbsListView;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
