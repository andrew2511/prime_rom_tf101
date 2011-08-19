.class Lcom/asus/reader/VibeActivity$10;
.super Ljava/lang/Object;
.source "VibeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/VibeActivity;->loadVibeContent(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;

.field final synthetic val$position:I

.field final synthetic val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;


# direct methods
.method constructor <init>(Lcom/asus/reader/VibeActivity;Lcom/asus/reader/vibe2/SubcategoryContents;I)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 1578
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$10;->this$0:Lcom/asus/reader/VibeActivity;

    iput-object p2, p0, Lcom/asus/reader/VibeActivity$10;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    iput p3, p0, Lcom/asus/reader/VibeActivity$10;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 1580
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1581
    .local v2, timeToken:J
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    .line 1582
    const/4 v0, 0x0

    .line 1583
    .local v0, content:Lcom/asus/reader/vibe2/Content;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    const/4 v4, 0x5

    if-ge v1, v4, :cond_0

    .line 1584
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$10;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v4, v5}, Lcom/asus/reader/vibe2/VibeAgent;->getContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v0

    .line 1585
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Content;->hasAttr()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1589
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    .line 1601
    :cond_1
    :goto_1
    return-void

    .line 1583
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1592
    :cond_3
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$10;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$10;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4df

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1594
    if-eqz v0, :cond_1

    .line 1595
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$10;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v0, v4}, Lcom/asus/reader/vibe2/Content;->clone(Lcom/asus/reader/vibe2/SubcategoryContents;)V

    .line 1596
    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Content;->queryPaymentURL()V

    .line 1597
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/asus/reader/vibe2/VibeAgent;->setTempContent(Lcom/asus/reader/vibe2/Content;)V

    .line 1598
    iget-object v4, p0, Lcom/asus/reader/VibeActivity$10;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/asus/reader/VibeActivity$10;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v5, v5, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x4f7

    iget v7, p0, Lcom/asus/reader/VibeActivity$10;->val$position:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1
.end method
