.class Lcom/asus/vibe2/Frag_TabApi$1;
.super Landroid/os/Handler;
.source "Frag_TabApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Frag_TabApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Frag_TabApi;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Frag_TabApi;)V
    .locals 0
    .parameter

    .prologue
    .line 34
    iput-object p1, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10
    .parameter "msg"

    .prologue
    const/16 v4, -0x67

    const v9, 0x7f040018

    const/16 v8, 0x8

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 38
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    if-nez v2, :cond_1

    .line 85
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 41
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iput-object v7, v2, Lcom/asus/vibe2/Frag_TabApi;->mRunningTask:Lcom/asus/vibe/api/VibeApiTask;

    .line 42
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xc

    if-ne v2, v3, :cond_4

    .line 43
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    .line 44
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    .line 45
    .local v1, subList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Sub;>;"
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/asus/vibe2/Adapter_Sub_Spinner;

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v1}, Lcom/asus/vibe2/Adapter_Sub_Spinner;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 46
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 47
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 48
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget-object v3, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v3, v3, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v6}, Landroid/widget/Spinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/asus/vibe/item/VibeItem_Sub;

    iput-object p0, v2, Lcom/asus/vibe/item/VibeParam;->sub:Lcom/asus/vibe/item/VibeItem_Sub;

    goto :goto_0

    .line 50
    .end local v1           #subList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Sub;>;"
    .restart local p0
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_3

    .line 51
    const-string v2, "ASUS@Vibe"

    const-string v3, "VibeErr: No content available!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    new-instance v3, Lcom/asus/vibe2/Adapter_Sub_Spinner;

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v7}, Lcom/asus/vibe2/Adapter_Sub_Spinner;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 53
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 54
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 55
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 58
    :cond_3
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    invoke-virtual {v3}, Lcom/asus/vibe2/Frag_TabApi;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/asus/vibe2/VibeErr;->handleError(ILandroid/app/Activity;Z)V

    .line 59
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v7}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 60
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 61
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 62
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 65
    :cond_4
    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0xd

    if-ne v2, v3, :cond_0

    .line 66
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_5

    .line 67
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 68
    .local v0, contList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    new-instance v3, Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v5, v5, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v5, v5, Lcom/asus/vibe/item/VibeParam;->tabType:I

    invoke-direct {v3, v4, v5, v0}, Lcom/asus/vibe2/Adapter_Cont_List;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto/16 :goto_0

    .line 69
    .end local v0           #contList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    :cond_5
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v4, :cond_6

    .line 70
    const-string v2, "ASUS@Vibe"

    const-string v3, "VibeErr: No content available!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    new-instance v3, Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v5, v5, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v5, v5, Lcom/asus/vibe/item/VibeParam;->tabType:I

    invoke-direct {v3, v4, v5, v7}, Lcom/asus/vibe2/Adapter_Cont_List;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 72
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 73
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 74
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0

    .line 77
    :cond_6
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mList:Landroid/widget/AbsListView;

    new-instance v3, Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v5, v5, Lcom/asus/vibe2/Frag_TabApi;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v5, v5, Lcom/asus/vibe/item/VibeParam;->tabType:I

    invoke-direct {v3, v4, v5, v7}, Lcom/asus/vibe2/Adapter_Cont_List;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v2, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 78
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    invoke-virtual {v3}, Lcom/asus/vibe2/Frag_TabApi;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3, v6}, Lcom/asus/vibe2/VibeErr;->handleError(ILandroid/app/Activity;Z)V

    .line 79
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v2, :cond_0

    .line 80
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mEmptyText:Landroid/widget/TextView;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(I)V

    .line 81
    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabApi$1;->this$0:Lcom/asus/vibe2/Frag_TabApi;

    iget-object v2, v2, Lcom/asus/vibe2/Frag_TabApi;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v8}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_0
.end method
