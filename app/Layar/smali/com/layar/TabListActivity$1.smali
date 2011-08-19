.class Lcom/layar/TabListActivity$1;
.super Ljava/lang/Object;
.source "TabListActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/TabListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/TabListActivity;


# direct methods
.method constructor <init>(Lcom/layar/TabListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/TabListActivity$1;->this$0:Lcom/layar/TabListActivity;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
    .parameter "position"
    .parameter "flags"
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
    .line 46
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/layar/TabListActivity$1;->this$0:Lcom/layar/TabListActivity;

    invoke-static {v2}, Lcom/layar/TabListActivity;->access$0(Lcom/layar/TabListActivity;)Lcom/layar/TabListActivity$TabListAdapter;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/layar/TabListActivity$TabListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/layar/TabListActivity$TabListItem;

    .line 47
    .local v1, item:Lcom/layar/TabListActivity$TabListItem;
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/layar/TabListActivity$1;->this$0:Lcom/layar/TabListActivity;

    iget-object v3, v1, Lcom/layar/TabListActivity$TabListItem;->intentClass:Ljava/lang/Class;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    .local v0, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/layar/TabListActivity$1;->this$0:Lcom/layar/TabListActivity;

    iget-object v2, v2, Lcom/layar/TabListActivity;->helper:Lcom/layar/ActivityHelper;

    invoke-virtual {v2, v0}, Lcom/layar/ActivityHelper;->startActivity(Landroid/content/Intent;)V

    .line 49
    return-void
.end method
