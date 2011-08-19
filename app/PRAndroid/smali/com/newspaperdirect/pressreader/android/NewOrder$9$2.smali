.class Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;
.super Ljava/lang/Object;
.source "NewOrder.java"

# interfaces
.implements Lcom/newspaperdirect/pressreader/android/core/OrderHelper$OnOrderCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/newspaperdirect/pressreader/android/NewOrder$9;->onPostExecute(Lcom/newspaperdirect/pressreader/android/core/MyLibraryItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;


# direct methods
.method constructor <init>(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    iput-object p1, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    .line 451
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOrderComplete(Z)V
    .locals 8
    .parameter "successfully"

    .prologue
    const/4 v7, 0x0

    .line 453
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$11(Lcom/newspaperdirect/pressreader/android/NewOrder;Z)V

    .line 454
    if-eqz p1, :cond_2

    .line 456
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    invoke-direct {v3}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;-><init>()V

    .line 458
    .local v3, ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyyMMdd"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 459
    .local v0, formatter:Ljava/text/SimpleDateFormat;
    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v5

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v5

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v5

    invoke-static {v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v5

    iget-object v5, v5, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-virtual {v0, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 460
    .local v1, mainIssueId:Ljava/lang/String;
    invoke-virtual {v3, v1}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setIssueId(Ljava/lang/String;)V

    .line 461
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setCID(Ljava/lang/String;)V

    .line 462
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-boolean v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->includeSupplements:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->Supplements:Ljava/util/List;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->Supplements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setOrderWithSupplements(Ljava/lang/Boolean;)V

    .line 463
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setOrderDate(Ljava/util/Date;)V

    .line 465
    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;->insert(Lcom/newspaperdirect/pressreader/android/core/RecentItem;)J

    .line 466
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->Supplements:Ljava/util/List;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->Supplements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    .line 467
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v4

    iget-object v4, v4, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->Supplements:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_4

    .line 478
    :cond_1
    const/16 v4, 0xa

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;->trimHitory(I)V

    .line 480
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v4, v5}, Lcom/newspaperdirect/pressreader/android/NewOrder;->setResult(I)V

    .line 481
    iget-object v4, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/newspaperdirect/pressreader/android/NewOrder;->finish()V

    .line 483
    .end local v0           #formatter:Ljava/text/SimpleDateFormat;
    .end local v1           #mainIssueId:Ljava/lang/String;
    .end local v3           #ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    :cond_2
    return-void

    .restart local v0       #formatter:Ljava/text/SimpleDateFormat;
    .restart local v1       #mainIssueId:Ljava/lang/String;
    .restart local v3       #ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    :cond_3
    move v4, v7

    .line 462
    goto :goto_0

    .line 467
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    .line 468
    .local v2, res:Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;
    iget-object v5, v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    iget-object v6, p0, Lcom/newspaperdirect/pressreader/android/NewOrder$9$2;->this$1:Lcom/newspaperdirect/pressreader/android/NewOrder$9;

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/NewOrder$9;->access$2(Lcom/newspaperdirect/pressreader/android/NewOrder$9;)Lcom/newspaperdirect/pressreader/android/NewOrder;

    move-result-object v6

    invoke-static {v6}, Lcom/newspaperdirect/pressreader/android/NewOrder;->access$9(Lcom/newspaperdirect/pressreader/android/NewOrder;)Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;

    move-result-object v6

    iget-object v6, v6, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-virtual {v5, v6}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v5

    if-nez v5, :cond_0

    .line 469
    new-instance v3, Lcom/newspaperdirect/pressreader/android/core/RecentItem;

    .end local v3           #ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    invoke-direct {v3}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;-><init>()V

    .line 470
    .restart local v3       #ri:Lcom/newspaperdirect/pressreader/android/core/RecentItem;
    new-instance v5, Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->selectedDate:Ljava/util/Date;

    invoke-virtual {v0, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setIssueId(Ljava/lang/String;)V

    .line 471
    iget-object v5, v2, Lcom/newspaperdirect/pressreader/android/core/OrderHelper$Result;->cid:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setCID(Ljava/lang/String;)V

    .line 472
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setOrderWithSupplements(Ljava/lang/Boolean;)V

    .line 473
    invoke-virtual {v3, v1}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setParentIssueId(Ljava/lang/String;)V

    .line 474
    new-instance v5, Ljava/util/Date;

    invoke-direct {v5}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v5}, Lcom/newspaperdirect/pressreader/android/core/RecentItem;->setOrderDate(Ljava/util/Date;)V

    .line 475
    invoke-static {v3}, Lcom/newspaperdirect/pressreader/android/core/trx/RecentItemsDbAdapter;->insert(Lcom/newspaperdirect/pressreader/android/core/RecentItem;)J

    goto :goto_1
.end method
