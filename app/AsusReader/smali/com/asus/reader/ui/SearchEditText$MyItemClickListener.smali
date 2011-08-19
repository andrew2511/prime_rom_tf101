.class Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;
.super Ljava/lang/Object;
.source "SearchEditText.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/SearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyItemClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/SearchEditText;


# direct methods
.method private constructor <init>(Lcom/asus/reader/ui/SearchEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 239
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/ui/SearchEditText;Lcom/asus/reader/ui/SearchEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 239
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;-><init>(Lcom/asus/reader/ui/SearchEditText;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
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
    .line 241
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v1}, Lcom/asus/reader/ui/SearchEditText;->access$500(Lcom/asus/reader/ui/SearchEditText;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-static {v1}, Lcom/asus/reader/ui/SearchResult;->newSearchResult(Ljava/util/HashMap;)Lcom/asus/reader/ui/SearchResult;

    move-result-object v0

    .line 242
    .local v0, result:Lcom/asus/reader/ui/SearchResult;
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v1}, Lcom/asus/reader/ui/SearchEditText;->access$600(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;

    move-result-object v1

    if-nez v1, :cond_0

    .line 243
    const-string v1, "SearchEditText"

    const-string v2, "Null Navigation Callback"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText$MyItemClickListener;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-static {v1}, Lcom/asus/reader/ui/SearchEditText;->access$600(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;->onNavigateToPage(Lcom/asus/reader/ui/SearchResult;)V

    goto :goto_0
.end method
