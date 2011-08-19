.class Lcom/asus/reader/book/BookViewActivity$TtsHelper;
.super Ljava/lang/Object;
.source "BookViewActivity.java"

# interfaces
.implements Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;
.implements Lcom/asus/reader/book/TextToSpeechAgent$TtsHelper;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/BookViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TtsHelper"
.end annotation


# instance fields
.field private pageRenderer:Lcom/asus/reader/book/PageRenderer;

.field final synthetic this$0:Lcom/asus/reader/book/BookViewActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/BookViewActivity;Lcom/asus/reader/book/PageRenderer;)V
    .locals 0
    .parameter
    .parameter "pageRenderer"

    .prologue
    .line 3079
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3080
    iput-object p2, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->pageRenderer:Lcom/asus/reader/book/PageRenderer;

    .line 3081
    return-void
.end method


# virtual methods
.method public flip()Z
    .locals 2

    .prologue
    .line 3085
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->pageRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, p0}, Lcom/asus/reader/book/PageRenderer;->registerListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V

    .line 3087
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$8100(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3088
    const-string v0, "BookViewActivity"

    const-string v1, "Finish reading the last page"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->pageRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, p0}, Lcom/asus/reader/book/PageRenderer;->unRegisterListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V

    .line 3090
    const/4 v0, 0x0

    .line 3093
    :goto_0
    return v0

    .line 3092
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$500(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 3093
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDocumentChange()V
    .locals 0

    .prologue
    .line 3107
    return-void
.end method

.method public onSetPageNumber(I)V
    .locals 4
    .parameter "pageNum"

    .prologue
    .line 3101
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x4

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3102
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->pageRenderer:Lcom/asus/reader/book/PageRenderer;

    invoke-virtual {v0, p0}, Lcom/asus/reader/book/PageRenderer;->unRegisterListener(Lcom/asus/reader/book/PageRenderer$OnRendererChangeListener;)V

    .line 3103
    return-void
.end method

.method public setTtsIcon(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 3097
    iget-object v0, p0, Lcom/asus/reader/book/BookViewActivity$TtsHelper;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v0}, Lcom/asus/reader/book/BookViewActivity;->access$400(Lcom/asus/reader/book/BookViewActivity;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3098
    return-void
.end method
