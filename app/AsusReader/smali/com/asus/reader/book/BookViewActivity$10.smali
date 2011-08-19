.class Lcom/asus/reader/book/BookViewActivity$10;
.super Landroid/os/Handler;
.source "BookViewActivity.java"


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
    .line 1514
    iput-object p1, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 1517
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 1545
    :goto_0
    return-void

    .line 1519
    :pswitch_0
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1520
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v3}, Lcom/asus/reader/book/BookViewActivity;->access$600(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/book/BookSurfaceView;

    move-result-object v3

    iget v3, v3, Lcom/asus/reader/book/BookSurfaceView;->mPageNo:I

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/asus/reader/ui/PageSeekBar2;->setProgress(I)V

    .line 1521
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$300(Lcom/asus/reader/book/BookViewActivity;)Lcom/asus/reader/ui/PageSeekBar2;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/asus/reader/ui/PageSeekBar2;->setVisibility(I)V

    .line 1524
    :cond_0
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    iget-object v2, v2, Lcom/asus/reader/book/BookViewActivity;->mPageScanListener:Lcom/asus/reader/book/BookViewActivity$PageScanListener;

    invoke-interface {v2}, Lcom/asus/reader/book/BookViewActivity$PageScanListener;->onScanFinish()V

    goto :goto_0

    .line 1527
    :pswitch_1
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3300(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1530
    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 1531
    .local v1, startPageNo:I
    iget v0, p1, Landroid/os/Message;->arg2:I

    .line 1532
    .local v0, PAGECOUNT:I
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$2300(Lcom/asus/reader/book/BookViewActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1533
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity;->getLeftPageNoView()Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v3, v1, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1534
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity;->getRightPageNoView()Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v3, v1, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1535
    add-int/lit8 v2, v1, 0x4

    if-gt v2, v0, :cond_1

    .line 1536
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity;->getRightPageNoView()Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1541
    :goto_1
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-static {v2}, Lcom/asus/reader/book/BookViewActivity;->access$3300(Lcom/asus/reader/book/BookViewActivity;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 1538
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity;->getRightPageNoView()Landroid/widget/TextView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 1540
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/book/BookViewActivity$10;->this$0:Lcom/asus/reader/book/BookViewActivity;

    invoke-virtual {v2}, Lcom/asus/reader/book/BookViewActivity;->getRightPageNoView()Landroid/widget/TextView;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1517
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
