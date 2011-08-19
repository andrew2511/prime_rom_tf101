.class Landroid/widget/SearchView$3;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SearchView;


# direct methods
.method constructor <init>(Landroid/widget/SearchView;)V
    .registers 2
    .parameter

    .prologue
    .line 684
    iput-object p1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .registers 10
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 687
    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v1}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v1

    if-nez v1, :cond_c

    move v1, v4

    .line 725
    :goto_b
    return v1

    .line 698
    :cond_c
    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v1}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v1}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/SearchView$SearchAutoComplete;->getListSelection()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2c

    .line 700
    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #calls: Landroid/widget/SearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v1, p1, p2, p3}, Landroid/widget/SearchView;->access$1100(Landroid/widget/SearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_b

    .line 705
    :cond_2c
    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v1}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v1

    #calls: Landroid/widget/SearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v1}, Landroid/widget/SearchView$SearchAutoComplete;->access$1200(Landroid/widget/SearchView$SearchAutoComplete;)Z

    move-result v1

    if-nez v1, :cond_93

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v1

    if-eqz v1, :cond_93

    .line 706
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v5, :cond_61

    .line 707
    const/16 v1, 0x42

    if-ne p2, v1, :cond_61

    .line 708
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 711
    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    const/4 v2, 0x0

    iget-object v3, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v3}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, v4, v2, v3}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 713
    goto :goto_b

    .line 716
    :cond_61
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_93

    .line 717
    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v1}, Landroid/widget/SearchView;->access$900(Landroid/widget/SearchView;)Landroid/app/SearchableInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 718
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_93

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_93

    .line 719
    iget-object v1, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/SearchView$3;->this$0:Landroid/widget/SearchView;

    #getter for: Landroid/widget/SearchView;->mQueryTextView:Landroid/widget/SearchView$SearchAutoComplete;
    invoke-static {v3}, Landroid/widget/SearchView;->access$1000(Landroid/widget/SearchView;)Landroid/widget/SearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/SearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/widget/SearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p2, v2, v3}, Landroid/widget/SearchView;->access$1300(Landroid/widget/SearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v5

    .line 721
    goto/16 :goto_b

    .end local v0           #actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    :cond_93
    move v1, v4

    .line 725
    goto/16 :goto_b
.end method
