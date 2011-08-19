.class Lcom/newspaperdirect/pressreader/android/TOCView$1;
.super Ljava/lang/Object;
.source "TOCView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/TOCView;->onCreate(Landroid/os/Bundle;)V
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
.field final synthetic this$0:Lcom/newspaperdirect/pressreader/android/TOCView;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$1;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    .line 102
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
    .line 104
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$1;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.newspaperdirect.pressreader.android.PageNumber"

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/newspaperdirect/pressreader/android/core/layout/Page;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/core/layout/Page;->getNumber()I

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/newspaperdirect/pressreader/android/TOCView;->setResult(ILandroid/content/Intent;)V

    .line 105
    iget-object v0, p0, Lcom/newspaperdirect/pressreader/android/TOCView$1;->this$0:Lcom/newspaperdirect/pressreader/android/TOCView;

    invoke-virtual {v0}, Lcom/newspaperdirect/pressreader/android/TOCView;->finish()V

    .line 106
    return-void
.end method
