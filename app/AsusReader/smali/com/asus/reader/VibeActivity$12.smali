.class Lcom/asus/reader/VibeActivity$12;
.super Ljava/lang/Object;
.source "VibeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/VibeActivity;->loadVibeCategory(Ljava/lang/String;Ljava/lang/String;)V
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
    .line 1648
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$12;->this$0:Lcom/asus/reader/VibeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1650
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1652
    .local v2, timeToken:J
    const-string v0, "cannot connect to server"

    .line 1653
    .local v0, error:Ljava/lang/String;
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    .line 1655
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 1656
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/vibe2/VibeAgent;->loadCategoryList()Ljava/lang/String;

    move-result-object v0

    .line 1657
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    if-nez v0, :cond_1

    .line 1660
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    .line 1669
    :goto_1
    return-void

    .line 1655
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1663
    :cond_2
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$12;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$12;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4df

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1664
    if-nez v0, :cond_3

    .line 1665
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$12;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$12;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4e6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 1667
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$12;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$12;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4f0

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
