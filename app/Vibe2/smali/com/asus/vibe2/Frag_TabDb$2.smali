.class Lcom/asus/vibe2/Frag_TabDb$2;
.super Landroid/os/Handler;
.source "Frag_TabDb.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/vibe2/Frag_TabDb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/vibe2/Frag_TabDb;


# direct methods
.method constructor <init>(Lcom/asus/vibe2/Frag_TabDb;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v3, 0x0

    .line 43
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    invoke-static {v1}, Lcom/asus/vibe2/Frag_TabDb;->access$100(Lcom/asus/vibe2/Frag_TabDb;)Lcom/asus/vibe/api/VibeApiTask;

    move-result-object v1

    if-nez v1, :cond_1

    .line 62
    :cond_0
    :goto_0
    return-void

    .line 46
    :cond_1
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    invoke-static {v1, v3}, Lcom/asus/vibe2/Frag_TabDb;->access$102(Lcom/asus/vibe2/Frag_TabDb;Lcom/asus/vibe/api/VibeApiTask;)Lcom/asus/vibe/api/VibeApiTask;

    .line 47
    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 48
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-nez v1, :cond_2

    .line 49
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 50
    .local v0, contList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    iget-object v1, v1, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    new-instance v2, Lcom/asus/vibe2/Adapter_Cont_List;

    invoke-static {}, Lcom/asus/vibe2/Vibe;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    iget-object v4, v4, Lcom/asus/vibe2/Frag_TabDb;->mParam:Lcom/asus/vibe/item/VibeParam;

    iget v4, v4, Lcom/asus/vibe/item/VibeParam;->tabType:I

    invoke-direct {v2, v3, v4, v0}, Lcom/asus/vibe2/Adapter_Cont_List;-><init>(Landroid/content/Context;ILjava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 51
    .end local v0           #contList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/asus/vibe/item/VibeItem_Cont;>;"
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    const/16 v2, -0x67

    if-ne v1, v2, :cond_3

    .line 52
    const-string v1, "ASUS@Vibe"

    const-string v2, "VibeErr: No content available!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    iget-object v1, v1, Lcom/asus/vibe2/Frag_TabDb;->mList:Landroid/widget/AbsListView;

    invoke-virtual {v1, v3}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 54
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    iget-object v1, v1, Lcom/asus/vibe2/Frag_TabDb;->mEmptyText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    iget-object v1, v1, Lcom/asus/vibe2/Frag_TabDb;->mProgress:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    .line 55
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    iget-object v1, v1, Lcom/asus/vibe2/Frag_TabDb;->mEmptyText:Landroid/widget/TextView;

    const v2, 0x7f040018

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 56
    iget-object v1, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    iget-object v1, v1, Lcom/asus/vibe2/Frag_TabDb;->mProgress:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    .line 59
    :cond_3
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/asus/vibe2/Frag_TabDb$2;->this$0:Lcom/asus/vibe2/Frag_TabDb;

    invoke-virtual {v2}, Lcom/asus/vibe2/Frag_TabDb;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/asus/vibe2/VibeErr;->handleError(ILandroid/app/Activity;Z)V

    goto :goto_0
.end method
