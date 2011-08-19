.class Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;
.super Landroid/renderscript/RenderScript$RSMessageHandler;
.source "PageTurnView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/apps/books/widget/PageTurnView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PageTurnMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/books/widget/PageTurnView;


# direct methods
.method private constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;)V
    .locals 0
    .parameter

    .prologue
    .line 354
    iput-object p1, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-direct {p0}, Landroid/renderscript/RenderScript$RSMessageHandler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/apps/books/widget/PageTurnView;Lcom/google/android/apps/books/widget/PageTurnView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 354
    invoke-direct {p0, p1}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;-><init>(Lcom/google/android/apps/books/widget/PageTurnView;)V

    return-void
.end method

.method private onUpdatePosition()V
    .locals 10

    .prologue
    const/4 v5, -0x1

    const-wide/high16 v8, 0x3fe0

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v4, "PageTurnView"

    .line 377
    const-string v3, "PageTurnView"

    const/4 v3, 0x2

    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 378
    const-string v3, "PageTurnView"

    const-string v3, "PageTurnMessage.run(): Animation complete"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    :cond_0
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v3

    if-nez v3, :cond_1

    .line 382
    const-string v3, "PageTurnView"

    const-string v3, "onUpdatePosition() with null mRenderScript object"

    invoke-static {v4, v3}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$300(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v3

    float-to-double v3, v3

    cmpl-double v3, v3, v8

    if-lez v3, :cond_4

    move v0, v6

    .line 386
    .local v0, advanceSuccess:Z
    :goto_0
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    if-ne v3, v5, :cond_5

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$300(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v3

    float-to-double v3, v3

    cmpl-double v3, v3, v8

    if-lez v3, :cond_5

    move v2, v6

    .line 387
    .local v2, rewindSuccess:Z
    :goto_1
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v3

    if-ne v3, v5, :cond_6

    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$300(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v3

    float-to-double v3, v3

    cmpg-double v3, v3, v8

    if-gtz v3, :cond_6

    move v1, v6

    .line 390
    .local v1, rewindAborted:Z
    :goto_2
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3, v7}, Lcom/google/android/apps/books/widget/PageTurnView;->access$202(Lcom/google/android/apps/books/widget/PageTurnView;I)I

    .line 396
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$302(Lcom/google/android/apps/books/widget/PageTurnView;F)F

    .line 398
    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    .line 400
    :cond_2
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$400(Lcom/google/android/apps/books/widget/PageTurnView;)V

    .line 404
    :cond_3
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$500(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/render/RenderPosition;

    move-result-object v3

    if-nez v3, :cond_7

    .line 421
    :goto_3
    return-void

    .end local v0           #advanceSuccess:Z
    .end local v1           #rewindAborted:Z
    .end local v2           #rewindSuccess:Z
    :cond_4
    move v0, v7

    .line 385
    goto :goto_0

    .restart local v0       #advanceSuccess:Z
    :cond_5
    move v2, v7

    .line 386
    goto :goto_1

    .restart local v2       #rewindSuccess:Z
    :cond_6
    move v1, v7

    .line 387
    goto :goto_2

    .line 406
    .restart local v1       #rewindAborted:Z
    :cond_7
    if-eqz v0, :cond_9

    .line 407
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v4

    const-string v5, "NextPage"

    invoke-static {v3, v4, v6, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;IZLjava/lang/String;)V

    .line 412
    :cond_8
    :goto_4
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v3}, Lcom/google/android/apps/books/widget/PageTurnView;->access$100(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnRS;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v4

    iget-object v5, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$300(Lcom/google/android/apps/books/widget/PageTurnView;)F

    move-result v5

    iget-object v6, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v6}, Lcom/google/android/apps/books/widget/PageTurnView;->access$200(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v6

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/google/android/apps/books/widget/PageTurnRS;->setTurnState(IFIZ)V

    .line 415
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    new-instance v4, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;

    invoke-direct {v4, p0}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage$1;-><init>(Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;)V

    invoke-virtual {v3, v4}, Lcom/google/android/apps/books/widget/PageTurnView;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    .line 408
    :cond_9
    if-eqz v2, :cond_8

    .line 409
    iget-object v3, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    iget-object v4, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v4}, Lcom/google/android/apps/books/widget/PageTurnView;->access$600(Lcom/google/android/apps/books/widget/PageTurnView;)I

    move-result v4

    const-string v5, "PrevPage"

    invoke-static {v3, v4, v6, v5}, Lcom/google/android/apps/books/widget/PageTurnView;->access$700(Lcom/google/android/apps/books/widget/PageTurnView;IZLjava/lang/String;)V

    goto :goto_4
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 357
    iget v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->mID:I

    sparse-switch v0, :sswitch_data_0

    .line 370
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad Renderscript message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->mID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 362
    :sswitch_0
    invoke-direct {p0}, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->onUpdatePosition()V

    .line 372
    :cond_0
    :goto_0
    :sswitch_1
    return-void

    .line 365
    :sswitch_2
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 366
    iget-object v0, p0, Lcom/google/android/apps/books/widget/PageTurnView$PageTurnMessage;->this$0:Lcom/google/android/apps/books/widget/PageTurnView;

    invoke-static {v0}, Lcom/google/android/apps/books/widget/PageTurnView;->access$000(Lcom/google/android/apps/books/widget/PageTurnView;)Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/apps/books/widget/PageTurnView$ReaderDelegate;->onFadeInComplete()V

    goto :goto_0

    .line 357
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
    .end sparse-switch
.end method
