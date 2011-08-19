.class Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;
.super Ljava/lang/Object;
.source "NavigateHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/yostore/aws/handler/NavigateHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TopBrowseRawList"
.end annotation


# instance fields
.field private fsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AWSBrowseRaw;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/yostore/aws/handler/NavigateHandler;


# direct methods
.method public constructor <init>(Lnet/yostore/aws/handler/NavigateHandler;)V
    .locals 9
    .parameter

    .prologue
    .line 649
    iput-object p1, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->this$0:Lnet/yostore/aws/handler/NavigateHandler;

    .line 561
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 559
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->list:Ljava/util/List;

    .line 560
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->fsList:Ljava/util/List;

    .line 562
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->list:Ljava/util/List;

    .line 563
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->fsList:Ljava/util/List;

    .line 564
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->list:Ljava/util/List;

    new-instance v0, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    .line 565
    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$0(Lnet/yostore/aws/handler/NavigateHandler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060096

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 566
    const v2, 0x7f020016

    .line 567
    const-string v3, "1"

    .line 568
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "system."

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$1(Lnet/yostore/aws/handler/NavigateHandler;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v5

    iget-object v5, v5, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".home.root"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 571
    new-instance v7, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v7}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 572
    .local v7, myCollectionFs:Lnet/yostore/aws/handler/entity/FsInfo;
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "system."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$1(Lnet/yostore/aws/handler/NavigateHandler;)Lnet/yostore/aws/api/ApiConfig;

    move-result-object v1

    iget-object v1, v1, Lnet/yostore/aws/api/ApiConfig;->packageDisplay:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".home.root"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 573
    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$0(Lnet/yostore/aws/handler/NavigateHandler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060096

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 574
    const-string v0, ""

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 575
    const-string v0, "0"

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 576
    const-string v0, "1"

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 577
    const-string v0, "0"

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 578
    const-string v0, "0"

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 579
    const-string v0, "0"

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 580
    const/4 v0, 0x0

    iput-boolean v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 581
    const-string v0, "1"

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 582
    const-string v0, "0"

    iput-object v0, v7, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->fsList:Ljava/util/List;

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->list:Ljava/util/List;

    new-instance v0, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    .line 586
    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$0(Lnet/yostore/aws/handler/NavigateHandler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060097

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 587
    const v2, 0x7f020016

    .line 588
    const-string v3, "1"

    .line 589
    sget-wide v4, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    const-wide/16 v7, 0x0

    cmp-long v4, v4, v7

    if-lez v4, :cond_0

    .end local v7           #myCollectionFs:Lnet/yostore/aws/handler/entity/FsInfo;
    sget-wide v4, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 590
    :goto_0
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 592
    new-instance v8, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v8}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 593
    .local v8, mySyncFs:Lnet/yostore/aws/handler/entity/FsInfo;
    sget-wide v0, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    sget-wide v0, Lcom/ecareme/pixwe/PixWe;->mySyncFolderId:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 594
    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$0(Lnet/yostore/aws/handler/NavigateHandler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060097

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 595
    const-string v0, ""

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 596
    const-string v0, "0"

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 597
    const-string v0, "1"

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 598
    const-string v0, "0"

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 599
    const-string v0, "0"

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 600
    const-string v0, "0"

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 601
    const/4 v0, 0x0

    iput-boolean v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 602
    const-string v0, "1"

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 603
    const-string v0, "0"

    iput-object v0, v8, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 604
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->fsList:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v6, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->list:Ljava/util/List;

    new-instance v0, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;

    .line 607
    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$0(Lnet/yostore/aws/handler/NavigateHandler;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f060098

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 608
    const v2, 0x7f020016

    .line 609
    const-string v3, "1"

    .line 610
    const-string v4, "system.backup.root"

    .line 611
    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lnet/yostore/aws/handler/entity/AWSBrowseRaw;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    new-instance v6, Lnet/yostore/aws/handler/entity/FsInfo;

    invoke-direct {v6}, Lnet/yostore/aws/handler/entity/FsInfo;-><init>()V

    .line 614
    .local v6, myBackFs:Lnet/yostore/aws/handler/entity/FsInfo;
    const-string v0, "system.backup.root"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->id:Ljava/lang/String;

    .line 615
    invoke-static {p1}, Lnet/yostore/aws/handler/NavigateHandler;->access$0(Lnet/yostore/aws/handler/NavigateHandler;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060098

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->display:Ljava/lang/String;

    .line 616
    const-string v0, ""

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->attribute:Ljava/lang/String;

    .line 617
    const-string v0, "0"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->isencrypted:Ljava/lang/String;

    .line 618
    const-string v0, "1"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->isowner:Ljava/lang/String;

    .line 619
    const-string v0, "0"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->isbackup:Ljava/lang/String;

    .line 620
    const-string v0, "0"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->isorigdeleted:Ljava/lang/String;

    .line 621
    const-string v0, "0"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->ispublic:Ljava/lang/String;

    .line 622
    const/4 v0, 0x0

    iput-boolean v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->isStarred:Z

    .line 623
    const-string v0, "1"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->isfolder:Ljava/lang/String;

    .line 624
    const-string v0, "0"

    iput-object v0, v6, Lnet/yostore/aws/handler/entity/FsInfo;->issharing:Ljava/lang/String;

    .line 625
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->fsList:Ljava/util/List;

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 589
    .end local v6           #myBackFs:Lnet/yostore/aws/handler/entity/FsInfo;
    .end local v8           #mySyncFs:Lnet/yostore/aws/handler/entity/FsInfo;
    :cond_0
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getMySyncFolder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 593
    .restart local v8       #mySyncFs:Lnet/yostore/aws/handler/entity/FsInfo;
    :cond_1
    invoke-static {}, Lcom/ecareme/pixwe/PixWe;->getMySyncFolder()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1
.end method


# virtual methods
.method public getFsList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/FsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->fsList:Ljava/util/List;

    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/yostore/aws/handler/entity/AWSBrowseRaw;",
            ">;"
        }
    .end annotation

    .prologue
    .line 651
    iget-object v0, p0, Lnet/yostore/aws/handler/NavigateHandler$TopBrowseRawList;->list:Ljava/util/List;

    return-object v0
.end method
