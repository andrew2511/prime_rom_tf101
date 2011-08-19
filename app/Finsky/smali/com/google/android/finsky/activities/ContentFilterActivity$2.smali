.class Lcom/google/android/finsky/activities/ContentFilterActivity$2;
.super Ljava/lang/Object;
.source "ContentFilterActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/finsky/activities/ContentFilterActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;


# direct methods
.method constructor <init>(Lcom/google/android/finsky/activities/ContentFilterActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x4

    .line 124
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$100(Lcom/google/android/finsky/activities/ContentFilterActivity;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 125
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$200(Lcom/google/android/finsky/activities/ContentFilterActivity;)I

    move-result p3

    .line 134
    :cond_0
    :goto_0
    add-int/lit8 v0, p3, 0x1

    .local v0, i:I
    :goto_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 135
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$300(Lcom/google/android/finsky/activities/ContentFilterActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 134
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 128
    .end local v0           #i:I
    :cond_1
    if-ne p3, v4, :cond_0

    .line 129
    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    .line 139
    .restart local v0       #i:I
    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-gt v0, p3, :cond_3

    .line 140
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$300(Lcom/google/android/finsky/activities/ContentFilterActivity;)Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 143
    :cond_3
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v1}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$300(Lcom/google/android/finsky/activities/ContentFilterActivity;)Landroid/widget/ListView;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v2}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$300(Lcom/google/android/finsky/activities/ContentFilterActivity;)Landroid/widget/ListView;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->isItemChecked(I)Z

    move-result v2

    invoke-virtual {v1, v4, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 145
    iget-object v1, p0, Lcom/google/android/finsky/activities/ContentFilterActivity$2;->this$0:Lcom/google/android/finsky/activities/ContentFilterActivity;

    invoke-static {v1, p3}, Lcom/google/android/finsky/activities/ContentFilterActivity;->access$202(Lcom/google/android/finsky/activities/ContentFilterActivity;I)I

    .line 146
    return-void
.end method
