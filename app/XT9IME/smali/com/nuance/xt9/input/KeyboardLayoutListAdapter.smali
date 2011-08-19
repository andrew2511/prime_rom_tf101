.class public Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;
.super Landroid/widget/BaseAdapter;
.source "KeyboardLayoutListAdapter.java"


# instance fields
.field public mKeyboardLayouts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/nuance/xt9/input/InputMethods$InputMode;)V
    .locals 8
    .parameter "context"
    .parameter "currentInputMode"

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 16
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;->mKeyboardLayouts:Ljava/util/List;

    .line 19
    invoke-virtual {p2}, Lcom/nuance/xt9/input/InputMethods$InputMode;->getCurrentLayout()Lcom/nuance/xt9/input/InputMethods$Layout;

    move-result-object v0

    .line 20
    .local v0, currentLayout:Lcom/nuance/xt9/input/InputMethods$Layout;
    iget-object v4, p2, Lcom/nuance/xt9/input/InputMethods$InputMode;->mLayouts:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nuance/xt9/input/InputMethods$Layout;

    .line 21
    .local v3, layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    invoke-virtual {v3}, Lcom/nuance/xt9/input/InputMethods$Layout;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 23
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const v5, 0x109000f

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckedTextView;

    .line 25
    .local v1, cv:Landroid/widget/CheckedTextView;
    invoke-virtual {v1, v3}, Landroid/widget/CheckedTextView;->setTag(Ljava/lang/Object;)V

    .line 26
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 27
    const/high16 v4, -0x100

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setTextColor(I)V

    .line 28
    iget-object v4, v3, Lcom/nuance/xt9/input/InputMethods$Layout;->mDisplayLayoutName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    invoke-virtual {v0, v3}, Lcom/nuance/xt9/input/InputMethods$Layout;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 30
    iget-object v4, p0, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 33
    .end local v1           #cv:Landroid/widget/CheckedTextView;
    .end local v3           #layout:Lcom/nuance/xt9/input/InputMethods$Layout;
    :cond_1
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 44
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 48
    iget-object v0, p0, Lcom/nuance/xt9/input/KeyboardLayoutListAdapter;->mKeyboardLayouts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/view/View;

    return-object p0
.end method
