.class Lcom/google/android/talk/fragments/SetStatusFragment$9;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment;->setupPresencePopdown(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

.field final synthetic val$anchor:Landroid/view/View;

.field final synthetic val$custom:Z


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment;ZLandroid/view/View;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 832
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iput-boolean p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->val$custom:Z

    iput-object p3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->val$anchor:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 834
    new-instance v1, Landroid/widget/ListPopupWindow;

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v2}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 835
    .local v1, p:Landroid/widget/ListPopupWindow;
    iget-boolean v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->val$custom:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2300(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    move-object v0, v2

    .line 839
    .local v0, items:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    :goto_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->val$anchor:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 840
    invoke-virtual {v1, v0}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 842
    new-instance v2, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;-><init>(Lcom/google/android/talk/fragments/SetStatusFragment$9;Landroid/widget/ArrayAdapter;Landroid/widget/ListPopupWindow;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 849
    invoke-virtual {v1}, Landroid/widget/ListPopupWindow;->show()V

    .line 850
    return-void

    .line 835
    .end local v0           #items:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;>;"
    :cond_0
    iget-object v2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    invoke-virtual {v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2400(Lcom/google/android/talk/fragments/SetStatusFragment;Landroid/content/Context;)Landroid/widget/ArrayAdapter;

    move-result-object v2

    move-object v0, v2

    goto :goto_0
.end method
