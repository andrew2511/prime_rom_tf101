.class Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;
.super Ljava/lang/Object;
.source "ActiveTabsPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

.field final synthetic val$closePosition:I

.field final synthetic val$tabCount:I


# direct methods
.method constructor <init>(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;II)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 187
    iput-object p1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iput p2, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$closePosition:I

    iput p3, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$tabCount:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 189
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v0}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/UiController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v1, v1, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v1}, Lcom/android/browser/ActiveTabsPage;->access$100(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/TabControl;

    move-result-object v1

    iget v2, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$closePosition:I

    invoke-virtual {v1, v2}, Lcom/android/browser/TabControl;->getTab(I)Lcom/android/browser/Tab;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->closeTab(Lcom/android/browser/Tab;)V

    .line 191
    iget v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->val$tabCount:I

    if-ne v0, v3, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v0}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/UiController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/browser/UiController;->openTabToHomePage()Lcom/android/browser/Tab;

    .line 193
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    iget-object v0, v0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->this$0:Lcom/android/browser/ActiveTabsPage;

    invoke-static {v0}, Lcom/android/browser/ActiveTabsPage;->access$200(Lcom/android/browser/ActiveTabsPage;)Lcom/android/browser/UiController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/browser/UiController;->removeActiveTabsPage(Z)V

    .line 198
    :goto_0
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-static {v0, v3}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->access$402(Lcom/android/browser/ActiveTabsPage$TabsListAdapter;Z)Z

    .line 196
    iget-object v0, p0, Lcom/android/browser/ActiveTabsPage$TabsListAdapter$1;->this$1:Lcom/android/browser/ActiveTabsPage$TabsListAdapter;

    invoke-virtual {v0}, Lcom/android/browser/ActiveTabsPage$TabsListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method
