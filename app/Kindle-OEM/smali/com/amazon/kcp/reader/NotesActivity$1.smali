.class Lcom/amazon/kcp/reader/NotesActivity$1;
.super Ljava/lang/Object;
.source "NotesActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazon/kcp/reader/NotesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazon/kcp/reader/NotesActivity;


# direct methods
.method constructor <init>(Lcom/amazon/kcp/reader/NotesActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 87
    iput-object p1, p0, Lcom/amazon/kcp/reader/NotesActivity$1;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
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
    .line 91
    invoke-static {}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->getInstance()Lcom/amazon/kcp/application/metrics/internal/MetricsManager;

    move-result-object v0

    const-string v1, "GoToMenu"

    const-string v2, "NotesMarks"

    invoke-virtual {v0, v1, v2}, Lcom/amazon/kcp/application/metrics/internal/MetricsManager;->reportMetric(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazon/kcp/reader/NotesActivity$Note;

    .line 93
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 94
    const-string v2, "selectedAnnotationIndex"

    iget v0, v0, Lcom/amazon/kcp/reader/NotesActivity$Note;->annotationIndex:I

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity$1;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v1}, Lcom/amazon/kcp/reader/NotesActivity;->setResult(ILandroid/content/Intent;)V

    .line 96
    iget-object v0, p0, Lcom/amazon/kcp/reader/NotesActivity$1;->this$0:Lcom/amazon/kcp/reader/NotesActivity;

    invoke-virtual {v0}, Lcom/amazon/kcp/reader/NotesActivity;->finish()V

    .line 97
    return-void
.end method
