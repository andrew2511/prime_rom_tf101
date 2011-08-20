.class Landroid/webkit/SelectActionModeCallback;
.super Ljava/lang/Object;
.source "SelectActionModeCallback.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private mWebView:Landroid/webkit/WebView;


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method finish()V
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_9

    .line 40
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 42
    :cond_9
    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 9
    .parameter "mode"
    .parameter "item"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_62

    move v3, v4

    .line 94
    :goto_a
    return v3

    .line 64
    :sswitch_b
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->copySelection()Z

    .line 65
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    :goto_13
    move v3, v5

    .line 94
    goto :goto_a

    .line 69
    :sswitch_15
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v2

    .line 70
    .local v2, selection:Ljava/lang/String;
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/provider/Browser;->sendString(Landroid/content/Context;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    goto :goto_13

    .line 75
    .end local v2           #selection:Ljava/lang/String;
    :sswitch_28
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->selectAll()V

    goto :goto_13

    .line 79
    :sswitch_2e
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v1

    .line 80
    .local v1, sel:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 81
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3, v1, v4}, Landroid/webkit/WebView;->showFindDialog(Ljava/lang/String;Z)Z

    goto :goto_13

    .line 84
    .end local v1           #sel:Ljava/lang/String;
    :sswitch_3d
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 85
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 86
    .local v0, i:Landroid/content/Intent;
    const-string v3, "new_search"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 87
    const-string/jumbo v3, "query"

    iget-object v4, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v4}, Landroid/webkit/WebView;->getSelection()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    iget-object v3, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v3}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_13

    .line 62
    :sswitch_data_62
    .sparse-switch
        0x1020021 -> :sswitch_b
        0x10202e7 -> :sswitch_28
        0x10202e8 -> :sswitch_15
        0x10202e9 -> :sswitch_2e
        0x10202ea -> :sswitch_3d
    .end sparse-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 5
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x114

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 50
    const v0, 0x1040335

    invoke-virtual {p1, v0}, Landroid/view/ActionMode;->setTitle(I)V

    .line 51
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mActionMode:Landroid/view/ActionMode;

    .line 52
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 3
    .parameter "mode"

    .prologue
    .line 99
    iget-object v0, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->selectionDone()V

    .line 100
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4
    .parameter "mode"
    .parameter "menu"

    .prologue
    .line 57
    const/4 v0, 0x1

    return v0
.end method

.method setWebView(Landroid/webkit/WebView;)V
    .registers 2
    .parameter "webView"

    .prologue
    .line 33
    iput-object p1, p0, Landroid/webkit/SelectActionModeCallback;->mWebView:Landroid/webkit/WebView;

    .line 34
    return-void
.end method
