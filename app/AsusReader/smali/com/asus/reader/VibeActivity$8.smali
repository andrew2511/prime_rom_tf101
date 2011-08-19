.class Lcom/asus/reader/VibeActivity$8;
.super Ljava/lang/Object;
.source "VibeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/VibeActivity;->updateVibeBooks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;

.field final synthetic val$goDown:Z


# direct methods
.method constructor <init>(Lcom/asus/reader/VibeActivity;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1521
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    iput-boolean p2, p0, Lcom/asus/reader/VibeActivity$8;->val$goDown:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    .line 1523
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 1524
    .local v8, timeToken:J
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    .line 1525
    const/4 v6, 0x0

    .line 1526
    .local v6, c:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    const/4 v0, 0x5

    if-ge v7, v0, :cond_0

    .line 1527
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v1}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/ui/VibeFunctionBar;->getMainPosition()I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v2}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/ui/VibeFunctionBar;->getSPPosition()I

    move-result v2

    iget-object v3, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v3}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/ui/VibeFunctionBar;->getSubPosition()I

    move-result v3

    iget-object v4, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v4}, Lcom/asus/reader/VibeActivity;->access$2300(Lcom/asus/reader/VibeActivity;)Ljava/lang/String;

    move-result-object v4

    iget-boolean v5, p0, Lcom/asus/reader/VibeActivity$8;->val$goDown:Z

    invoke-virtual/range {v0 .. v5}, Lcom/asus/reader/vibe2/VibeAgent;->updateVibeBooksCursor(IIILjava/lang/String;Z)Landroid/database/Cursor;

    move-result-object v6

    .line 1528
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-nez v0, :cond_0

    if-eqz v6, :cond_2

    .line 1531
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v0

    cmp-long v0, v8, v0

    if-eqz v0, :cond_3

    .line 1532
    if-eqz v6, :cond_1

    .line 1533
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1545
    :cond_1
    :goto_1
    return-void

    .line 1526
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 1537
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v0, v0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v1, v1, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4df

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1538
    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1541
    iget-boolean v0, p0, Lcom/asus/reader/VibeActivity$8;->val$goDown:Z

    if-eqz v0, :cond_4

    .line 1542
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v0, v0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v1, v1, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4ff

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1544
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v0, v0, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/asus/reader/VibeActivity$8;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v1, v1, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x4fe

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
