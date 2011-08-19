.class Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;
.super Ljava/lang/Object;
.source "MultipleChoiceListPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/layar/ui/prefs/MultipleChoiceListPreference;->createListView()Landroid/view/View;
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
.field final synthetic this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

.field private final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Lcom/layar/ui/prefs/MultipleChoiceListPreference;Landroid/widget/ListView;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    iput-object p2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->val$listView:Landroid/widget/ListView;

    .line 373
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "v"
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
    const/4 v3, 0x0

    .line 375
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    aget-boolean v2, v2, p3

    if-eqz v2, :cond_1

    move v1, v3

    .line 376
    .local v1, isChecked:Z
    :goto_0
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v1, v2, p3

    .line 378
    if-nez p3, :cond_3

    .line 379
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    array-length v2, v2

    if-lt v0, v2, :cond_2

    .line 389
    .end local v0           #i:I
    :cond_0
    :goto_2
    return-void

    .line 375
    .end local v1           #isChecked:Z
    :cond_1
    const/4 v2, 0x1

    move v1, v2

    goto :goto_0

    .line 380
    .restart local v0       #i:I
    .restart local v1       #isChecked:Z
    :cond_2
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v1, v2, v0

    .line 381
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 379
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 384
    .end local v0           #i:I
    :cond_3
    if-nez v1, :cond_0

    .line 385
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->this$0:Lcom/layar/ui/prefs/MultipleChoiceListPreference;

    invoke-static {v2}, Lcom/layar/ui/prefs/MultipleChoiceListPreference;->access$0(Lcom/layar/ui/prefs/MultipleChoiceListPreference;)[Z

    move-result-object v2

    aput-boolean v3, v2, v3

    .line 386
    iget-object v2, p0, Lcom/layar/ui/prefs/MultipleChoiceListPreference$2;->val$listView:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2
.end method
