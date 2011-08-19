.class Lcom/asus/reader/book/BookViewActivity$24;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Lcom/asus/reader/book/BookViewActivity$PageScanListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/book/BookViewActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 2975
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanFinish()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 2990
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/SearchEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2991
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/SearchEditText;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/SearchEditText;->setEnabled(Z)V

    .line 2993
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$7800(Lcom/asus/reader/book/BookViewActivity;Z)V

    .line 2994
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ScanState;->FINISH:Lcom/asus/reader/book/BookViewActivity$ScanState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4202(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$ScanState;)Lcom/asus/reader/book/BookViewActivity$ScanState;

    .line 2995
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7900(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2996
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7900(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2997
    :cond_1
    return-void
.end method

.method public onScanStart()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2977
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/SearchEditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2978
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/SearchEditText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchEditText;->stopSearch()V

    .line 2979
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7700(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/SearchEditText;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/asus/reader/ui/SearchEditText;->setEnabled(Z)V

    .line 2982
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0, v2}, Lcom/asus/reader/book/BookViewActivity;->access$7800(Lcom/asus/reader/book/BookViewActivity;Z)V

    .line 2983
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v0}, Lcom/asus/reader/book/BookViewActivity;->stopTextToSpeech()V

    .line 2984
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    sget-object v1, Lcom/asus/reader/book/BookViewActivity$ScanState;->SCANNING:Lcom/asus/reader/book/BookViewActivity$ScanState;

    invoke-static {v0, v1}, Lcom/asus/reader/book/BookViewActivity;->access$4202(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/BookViewActivity$ScanState;)Lcom/asus/reader/book/BookViewActivity$ScanState;

    .line 2985
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7900(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2986
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$24;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$7900(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/ProgressBar;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2987
    :cond_1
    return-void
.end method
