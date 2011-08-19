.class Lcom/android/contacts/quickcontact/QuickContactWindow$7;
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

.field final synthetic val$actionList:Ljava/util/List;

.field final synthetic val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

.field final synthetic val$mimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1154
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    iput-object p2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    iput-object p3, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->val$mimeType:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->val$actionList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1158
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->val$actionView:Lcom/android/contacts/quickcontact/CheckableImageView;

    invoke-static {v1, v2}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$500(Lcom/android/contacts/quickcontact/QuickContactWindow;Lcom/android/contacts/quickcontact/CheckableImageView;)V

    .line 1159
    invoke-static {}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1200()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->val$mimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 1160
    .local v0, isVirtual:Z
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1300(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/CheckBox;

    move-result-object v1

    if-eqz v0, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 1162
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1400(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/widget/ListView;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactWindow$7$1;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactWindow$7$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactWindow$7;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1197
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1, v3}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$900(Lcom/android/contacts/quickcontact/QuickContactWindow;Z)V

    .line 1199
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1000(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1200
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1000(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->forceLayout()V

    .line 1201
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactWindow$7;->this$0:Lcom/android/contacts/quickcontact/QuickContactWindow;

    invoke-static {v1}, Lcom/android/contacts/quickcontact/QuickContactWindow;->access$1000(Lcom/android/contacts/quickcontact/QuickContactWindow;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 1203
    :cond_0
    return-void

    :cond_1
    move v2, v3

    .line 1160
    goto :goto_0
.end method
