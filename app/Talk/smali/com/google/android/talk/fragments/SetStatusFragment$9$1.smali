.class Lcom/google/android/talk/fragments/SetStatusFragment$9$1;
.super Ljava/lang/Object;
.source "SetStatusFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/talk/fragments/SetStatusFragment$9;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/talk/fragments/SetStatusFragment$9;

.field final synthetic val$items:Landroid/widget/ArrayAdapter;

.field final synthetic val$p:Landroid/widget/ListPopupWindow;


# direct methods
.method constructor <init>(Lcom/google/android/talk/fragments/SetStatusFragment$9;Landroid/widget/ArrayAdapter;Landroid/widget/ListPopupWindow;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 842
    iput-object p1, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$9;

    iput-object p2, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->val$items:Landroid/widget/ArrayAdapter;

    iput-object p3, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->val$p:Landroid/widget/ListPopupWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 845
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->this$1:Lcom/google/android/talk/fragments/SetStatusFragment$9;

    iget-object v1, v0, Lcom/google/android/talk/fragments/SetStatusFragment$9;->this$0:Lcom/google/android/talk/fragments/SetStatusFragment;

    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->val$items:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;

    invoke-static {v1, v0}, Lcom/google/android/talk/fragments/SetStatusFragment;->access$2500(Lcom/google/android/talk/fragments/SetStatusFragment;Lcom/google/android/talk/fragments/SetStatusFragment$StatusItem;)V

    .line 846
    iget-object v0, p0, Lcom/google/android/talk/fragments/SetStatusFragment$9$1;->val$p:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 847
    return-void
.end method
