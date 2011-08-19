.class Lcom/amazon/kcp/reader/NotesActivity$4;
.super Ljava/lang/Object;
.source "NotesActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NotesActivity;->populateContextMenu(Landroid/view/ContextMenu;Lcom/amazon/kcp/reader/NotesActivity$Note;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NotesActivity;

.field final synthetic val$annotation:Lcom/amazon/kcp/reader/NotesActivity$Note;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NotesActivity;Lcom/amazon/kcp/reader/NotesActivity$Note;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 206
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->val$annotation:Lcom/amazon/kcp/reader/NotesActivity$Note;

    iput p3, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 210
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GoToMenuContextMenu"

    const-string v2, "DeleteAnnotation"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesActivity;->access$000(Lcom/amazon/kcp/reader/NotesActivity;)Lcom/amazon/kcp/reader/models/IBookDocument;

    move-result-object v0

    invoke-interface {v0}, Lcom/amazon/kcp/reader/models/IBookDocument;->getAnnotationsManager()Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->val$annotation:Lcom/amazon/kcp/reader/NotesActivity$Note;

    iget-object v1, v1, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotation:Lcom/amazon/kcp/reader/models/IAnnotation;

    invoke-interface {v0, v1}, Lcom/amazon/kcp/reader/models/IBookAnnotationsManager;->deleteAnnotation(Lcom/amazon/kcp/reader/models/IAnnotation;)Z

    .line 216
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesActivity;->access$200(Lcom/amazon/kcp/reader/NotesActivity;)Landroid/widget/ListView;

    move-result-object v0

    new-instance v1, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;

    iget-object v2, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    iget-object v3, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    invoke-static {v3}, Lcom/amazon/kcp/reader/NotesActivity;->access$100(Lcom/amazon/kcp/reader/NotesActivity;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/amazon/kcp/reader/NotesActivity$NotesArrayAdapter;-><init>(Lcom/amazon/kcp/reader/NotesActivity;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 219
    iget v0, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->val$position:I

    if-lez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    invoke-static {v0}, Lcom/amazon/kcp/reader/NotesActivity;->access$200(Lcom/amazon/kcp/reader/NotesActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget v1, p0, Lcom/amazon/kcp/reader/NotesActivity$4;->val$position:I

    sub-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 224
    :cond_0
    return v4
.end method
