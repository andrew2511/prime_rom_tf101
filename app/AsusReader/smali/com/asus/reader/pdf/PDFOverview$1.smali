.class Lcom/asus/reader/pdf/PDFOverview$1;
.super Ljava/lang/Object;
.source "PDFOverview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/pdf/PDFOverview;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/pdf/PDFOverview;


# direct methods
.method constructor <init>(Lcom/asus/reader/pdf/PDFOverview;)V
    .locals 0
    .parameter

    .prologue
    .line 39
    iput-object p1, p0, Lcom/asus/reader/pdf/PDFOverview$1;->this$0:Lcom/asus/reader/pdf/PDFOverview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
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
    .line 42
    .local p1, adapter:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFOverview$1;->this$0:Lcom/asus/reader/pdf/PDFOverview;

    invoke-virtual {v2}, Lcom/asus/reader/pdf/PDFOverview;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 43
    .local v1, intent:Landroid/content/Intent;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 44
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "gotopage"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 45
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 46
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFOverview$1;->this$0:Lcom/asus/reader/pdf/PDFOverview;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/asus/reader/pdf/PDFOverview;->setResult(ILandroid/content/Intent;)V

    .line 47
    iget-object v2, p0, Lcom/asus/reader/pdf/PDFOverview$1;->this$0:Lcom/asus/reader/pdf/PDFOverview;

    invoke-virtual {v2}, Lcom/asus/reader/pdf/PDFOverview;->finish()V

    .line 48
    return-void
.end method
