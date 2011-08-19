.class Lcom/google/android/finsky/layout/FinskyActionBar$2;
.super Ljava/lang/Object;
.source "FinskyActionBar.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/layout/FinskyActionBar;->initSearchView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

.field final synthetic val$spinnerAdapter:Landroid/widget/ArrayAdapter;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/layout/FinskyActionBar;Landroid/widget/ArrayAdapter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/google/android/finsky/layout/FinskyActionBar$2;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    iput-object p2, p0, Lcom/google/android/finsky/layout/FinskyActionBar$2;->val$spinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
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
    .line 621
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar$2;->val$spinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p3}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/finsky/model/ChannelTab;

    .line 622
    .local v0, tab:Lcom/google/android/finsky/model/ChannelTab;
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar$2;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-virtual {v0}, Lcom/google/android/finsky/model/ChannelTab;->getId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/google/android/finsky/layout/FinskyActionBar;->access$202(Lcom/google/android/finsky/layout/FinskyActionBar;I)I

    .line 623
    iget-object v1, p0, Lcom/google/android/finsky/layout/FinskyActionBar$2;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-static {v1}, Lcom/google/android/finsky/layout/FinskyActionBar;->access$100(Lcom/google/android/finsky/layout/FinskyActionBar;)Lcom/google/android/finsky/navigationmanager/NavigationManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/layout/FinskyActionBar$2;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-static {v2}, Lcom/google/android/finsky/layout/FinskyActionBar;->access$300(Lcom/google/android/finsky/layout/FinskyActionBar;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/finsky/layout/FinskyActionBar$2;->this$0:Lcom/google/android/finsky/layout/FinskyActionBar;

    invoke-static {v3}, Lcom/google/android/finsky/layout/FinskyActionBar;->access$200(Lcom/google/android/finsky/layout/FinskyActionBar;)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/google/android/finsky/navigationmanager/NavigationManager;->search(Ljava/lang/String;I)V

    .line 624
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method
