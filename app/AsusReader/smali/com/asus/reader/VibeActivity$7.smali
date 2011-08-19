.class Lcom/asus/reader/VibeActivity$7;
.super Ljava/lang/Object;
.source "VibeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/VibeActivity;->loadRecentActivities()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;


# direct methods
.method constructor <init>(Lcom/asus/reader/VibeActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 1488
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$7;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1491
    .local v2, timeToken:J
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    .line 1492
    const/4 v0, 0x0

    .line 1493
    .local v0, c:Landroid/database/Cursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 1494
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/VibeAgent;->loadRecentActivities()Landroid/database/Cursor;

    move-result-object v0

    .line 1495
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    .line 1498
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 1499
    if-eqz v0, :cond_1

    .line 1500
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1509
    :cond_1
    :goto_1
    return-void

    .line 1493
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1504
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$7;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$7;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4df

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1505
    if-eqz v0, :cond_1

    .line 1508
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$7;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$7;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4d7

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
