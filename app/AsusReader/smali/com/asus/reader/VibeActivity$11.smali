.class Lcom/asus/reader/VibeActivity$11;
.super Ljava/lang/Object;
.source "VibeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/VibeActivity;->loadVibeBooks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;

.field final synthetic val$searchText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/asus/reader/VibeActivity;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    iput-object p2, p0, Lcom/asus/reader/VibeActivity$11;->val$searchText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1619
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1620
    .local v2, timeToken:J
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    .line 1621
    const/4 v0, 0x0

    .line 1622
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 1623
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v4}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/ui/VibeFunctionBar;->checkSetting()V

    .line 1624
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v5}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/asus/reader/ui/VibeFunctionBar;->getMainPosition()I

    move-result v5

    iget-object v6, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v6}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v6

    invoke-virtual {v6}, Lcom/asus/reader/ui/VibeFunctionBar;->getSPPosition()I

    move-result v6

    iget-object v7, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-static {v7}, Lcom/asus/reader/VibeActivity;->access$300(Lcom/asus/reader/VibeActivity;)Lcom/asus/reader/ui/VibeFunctionBar;

    move-result-object v7

    invoke-virtual {v7}, Lcom/asus/reader/ui/VibeFunctionBar;->getLoadingPosition()I

    move-result v7

    iget-object v8, p0, Lcom/asus/reader/VibeActivity$11;->val$searchText:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/asus/reader/vibe2/VibeAgent;->getVibeBooksCursor(IIILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1625
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    .line 1629
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 1630
    if-eqz v0, :cond_1

    .line 1631
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1640
    :cond_1
    :goto_1
    return-void

    .line 1622
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1635
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4df

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1636
    if-eqz v0, :cond_1

    .line 1639
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$11;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4d7

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
