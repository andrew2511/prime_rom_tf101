.class Lcom/asus/reader/book/ReaderDatabase$BookContentObserver;
.super Landroid/database/ContentObserver;
.source "ReaderDatabase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/book/ReaderDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/book/ReaderDatabase;


# direct methods
.method public constructor <init>(Lcom/asus/reader/book/ReaderDatabase;)V
    .locals 2
    .parameter

    .prologue
    .line 1808
    iput-object p1, p0, Lcom/asus/reader/book/ReaderDatabase$BookContentObserver;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    .line 1809
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 1810
    const-string v0, "ReaderDatabase"

    const-string v1, "======================initail the contentobserver========================="

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1811
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    .prologue
    .line 1815
    const/4 v0, 0x1

    return v0
.end method

.method public onChange(Z)V
    .locals 6
    .parameter "selfChange"

    .prologue
    .line 1821
    const-string v2, "ReaderDatabase"

    const-string v3, "===============================Data on Change in Book table on change==============================="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1825
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1827
    .local v0, now:J
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->access$200()J

    move-result-wide v2

    sub-long v2, v0, v2

    const-wide/16 v4, 0x9c4

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 1828
    invoke-static {v0, v1}, Lcom/asus/reader/book/ReaderDatabase;->access$202(J)J

    .line 1829
    const-string v2, "ReaderDatabase"

    const-string v3, "send empty message delay time = 5000"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v2, p0, Lcom/asus/reader/book/ReaderDatabase$BookContentObserver;->this$0:Lcom/asus/reader/book/ReaderDatabase;

    invoke-static {v2}, Lcom/asus/reader/book/ReaderDatabase;->access$300(Lcom/asus/reader/book/ReaderDatabase;)Lcom/asus/reader/book/ReaderDatabase$DbHandler;

    move-result-object v2

    const/16 v3, 0x66

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Lcom/asus/reader/book/ReaderDatabase$DbHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1834
    :goto_0
    return-void

    .line 1833
    :cond_0
    const-string v2, "ReaderDatabase"

    const-string v3, "No send message!!! because the timestamp is < 2500"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
