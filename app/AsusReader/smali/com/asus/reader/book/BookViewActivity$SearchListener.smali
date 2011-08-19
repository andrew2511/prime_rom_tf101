.class final Lcom/asus/reader/book/BookViewActivity$SearchListener;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Lcom/asus/reader/ui/SearchEditText$NavigatePageCallback;
.implements Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SearchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method private constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 3056
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$SearchListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 3056
    invoke-direct {p0, p1}, Lcom/asus/reader/book/BookViewActivity$SearchListener;-><init>(Lcom/asus/reader/book/BookViewActivity;)V

    return-void
.end method


# virtual methods
.method public onNavigateToPage(Lcom/asus/reader/ui/SearchResult;)V
    .locals 3
    .parameter "result"

    .prologue
    .line 3058
    iget-object v1, p0, Lcom/asus/reader/book/BookViewActivity$SearchListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v1}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 3059
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3060
    return-void
.end method

.method public onStartSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "keyword"

    .prologue
    .line 3063
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search starts with the keyword:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3065
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$SearchListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$8000(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3066
    return-void
.end method

.method public onStopSearch(Ljava/lang/String;)V
    .locals 3
    .parameter "keyword"

    .prologue
    .line 3069
    sget-boolean v0, Lcom/asus/reader/book/BookViewActivity;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "BookViewActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Search Stop with the keyword:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3071
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$SearchListener;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$8000(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3072
    return-void
.end method
