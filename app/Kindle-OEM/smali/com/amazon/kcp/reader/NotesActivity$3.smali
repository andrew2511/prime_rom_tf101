.class Lcom/amazon/kcp/reader/NotesActivity$3;
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


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NotesActivity;Lcom/amazon/kcp/reader/NotesActivity$Note;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 190
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity$3;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    iput-object p2, p0, Lcom/amazon/kcp/reader/NotesActivity$3;->val$annotation:Lcom/amazon/kcp/reader/NotesActivity$Note;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter

    .prologue
    .line 194
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GoToMenuContextMenu"

    const-string v2, "EditAnnotation"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    const-string v1, "editNoteAtIndex"

    iget-object v2, p0, Lcom/amazon/kcp/reader/NotesActivity$3;->val$annotation:Lcom/amazon/kcp/reader/NotesActivity$Note;

    iget v2, v2, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotationIndex:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    iget-object v1, p0, Lcom/amazon/kcp/reader/NotesActivity$3;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/amazon/kcp/reader/NotesActivity;->setResult(ILandroid/content/Intent;)V

    .line 198
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity$3;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/NotesActivity;->finish()V

    .line 199
    const/4 v0, 0x1

    return v0
.end method
