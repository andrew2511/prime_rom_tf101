.class Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter$1;
.super Ljava/lang/Object;
.source "TOCView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 273
    .local v0, pageNumber:I
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;)Lcom/newspaperdirect/pressreader/android/TOCView;

    move-result-object v1

    const/4 v2, -0x1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.newspaperdirect.pressreader.android.PageNumber"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/newspaperdirect/pressreader/android/TOCView;->setResult(ILandroid/content/Intent;)V

    .line 274
    iget-object v1, p0, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter$1;->this$1:Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;

    invoke-static {v1}, Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;->access$1(Lcom/newspaperdirect/pressreader/android/TOCView$PagesViewAdapter;)Lcom/newspaperdirect/pressreader/android/TOCView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/newspaperdirect/pressreader/android/TOCView;->finish()V

    .line 275
    return-void
.end method
