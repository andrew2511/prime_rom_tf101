.class Lcom/asus/reader/VibeActivity$9;
.super Ljava/lang/Object;
.source "VibeActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/asus/reader/VibeActivity;->loadVibeContentandAction()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/VibeActivity;

.field final synthetic val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;


# direct methods
.method constructor <init>(Lcom/asus/reader/VibeActivity;Lcom/asus/reader/vibe2/SubcategoryContents;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1552
    iput-object p1, p0, Lcom/asus/reader/VibeActivity$9;->this$0:Lcom/asus/reader/VibeActivity;

    iput-object p2, p0, Lcom/asus/reader/VibeActivity$9;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1554
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1555
    .local v1, timeToken:J
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/asus/reader/book/ReaderDatabase;->setTimeToken(J)V

    .line 1556
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/VibeActivity$9;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v3, v4}, Lcom/asus/reader/vibe2/VibeAgent;->getContent(Lcom/asus/reader/vibe2/SubcategoryContents;)Lcom/asus/reader/vibe2/Content;

    move-result-object v0

    .line 1557
    .local v0, content:Lcom/asus/reader/vibe2/Content;
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/book/ReaderDatabase;->getTimeToken()J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-nez v3, :cond_1

    .line 1558
    if-eqz v0, :cond_0

    .line 1559
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$9;->val$subcontent:Lcom/asus/reader/vibe2/SubcategoryContents;

    invoke-virtual {v0, v3}, Lcom/asus/reader/vibe2/Content;->clone(Lcom/asus/reader/vibe2/SubcategoryContents;)V

    .line 1560
    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Content;->queryPaymentURL()V

    .line 1561
    invoke-static {}, Lcom/asus/reader/vibe2/VibeAgent;->getInstance()Lcom/asus/reader/vibe2/VibeAgent;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/asus/reader/vibe2/VibeAgent;->setTempContent(Lcom/asus/reader/vibe2/Content;)V

    .line 1562
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$9;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v3, v3, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/reader/VibeActivity$9;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4fa

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1564
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/VibeActivity$9;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v3, v3, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/asus/reader/VibeActivity$9;->this$0:Lcom/asus/reader/VibeActivity;

    iget-object v4, v4, Lcom/asus/reader/VibeActivity;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x4df

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1566
    :cond_1
    return-void
.end method
