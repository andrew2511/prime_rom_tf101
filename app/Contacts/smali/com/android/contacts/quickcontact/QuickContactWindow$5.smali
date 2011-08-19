.class Lcom/android/contacts/quickcontact/QuickContactWindow$5;
.super Ljava/lang/Object;
.source "QuickContactWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/contacts/quickcontact/QuickContactWindow;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

.field final synthetic val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1011
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1015
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-static {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$500(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V

    .line 1016
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$600(Lcom/android/contacts/quickcontact/QuickContactWindow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    new-array v0, v1, [Lcom/android/contacts/quickcontact/Action;

    .line 1017
    .local v0, actions:[Lcom/android/contacts/quickcontact/Action;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$600(Lcom/android/contacts/quickcontact/QuickContactWindow;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1019
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$800(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/quickcontact/QuickContactWindow$5$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow$5;[Lcom/android/contacts/quickcontact/Action;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1064
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$900(Lcom/android/contacts/quickcontact/QuickContactWindow;Z)V

    .line 1066
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1000(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1067
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1000(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 1068
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$5;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1000(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1070
    :cond_0
    return-void
.end method
