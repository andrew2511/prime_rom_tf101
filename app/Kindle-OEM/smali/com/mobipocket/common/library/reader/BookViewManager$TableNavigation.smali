.class public Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;
.super Ljava/lang/Object;
.source "BookViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mobipocket/common/library/reader/BookViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TableNavigation"
.end annotation


# static fields
.field public static final LEFT:I = 0x2

.field public static final RIGHT:I


# instance fields
.field private pCurrentMaxWidth:I

.field private pEnabled:Z

.field private pLeftMoveEnabled:Z

.field private pRightMoveEnabled:Z

.field private pViewPortForTableX:I

.field final synthetic this$0:Lcom/mobipocket/common/library/reader/BookViewManager;


# direct methods
.method private constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 5398
    iput-object p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5392
    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    .line 5393
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pLeftMoveEnabled:Z

    .line 5394
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pRightMoveEnabled:Z

    .line 5395
    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    .line 5396
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pEnabled:Z

    .line 5398
    return-void
.end method

.method synthetic constructor <init>(Lcom/mobipocket/common/library/reader/BookViewManager;Lcom/mobipocket/common/library/reader/BookViewManager$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 5382
    invoke-direct {p0, p1}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;-><init>(Lcom/mobipocket/common/library/reader/BookViewManager;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5382
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->reset()V

    return-void
.end method

.method static synthetic access$4700(Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5382
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->computeLeftRightMovePossible()V

    return-void
.end method

.method private computeLeftRightMovePossible()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 5407
    iget-boolean v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pEnabled:Z

    if-nez v7, :cond_0

    .line 5449
    :goto_0
    return-void

    .line 5410
    :cond_0
    iget-object v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v7, v7, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v5, v7, Lcom/mobipocket/common/library/reader/DisplayableFrame;->layoutedPage:Lcom/mobipocket/common/library/reader/LayoutedFrame;

    .line 5411
    .local v5, page:Lcom/mobipocket/common/library/reader/LayoutedFrame;
    iput-boolean v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pRightMoveEnabled:Z

    .line 5412
    iput-boolean v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pLeftMoveEnabled:Z

    .line 5413
    iput v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    .line 5414
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    iget-object v7, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-ge v4, v7, :cond_5

    .line 5417
    iget-object v7, v5, Lcom/mobipocket/common/library/reader/LayoutedFrame;->pageObjects:Ljava/util/Vector;

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mobipocket/common/library/reader/FlowElement;

    .line 5418
    .local v1, elt:Lcom/mobipocket/common/library/reader/FlowElement;
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isBreakElement()Z

    move-result v7

    if-nez v7, :cond_3

    .line 5419
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v7

    if-eqz v7, :cond_3

    .line 5420
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getY()I

    move-result v3

    .line 5421
    .local v3, eltYmin:I
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getHeight()I

    move-result v7

    add-int v2, v3, v7

    .line 5423
    .local v2, eltYmax:I
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->getMaxY()I

    move-result v7

    if-gt v3, v7, :cond_3

    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->getMinY()I

    move-result v7

    if-lt v2, v7, :cond_3

    .line 5425
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->isTableElement()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 5426
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/TableElement;->getTableWidth()I

    move-result v6

    .line 5428
    .local v6, width:I
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveRight()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 5429
    iput-boolean v9, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pRightMoveEnabled:Z

    .line 5431
    :cond_1
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/TableElement;->canMoveLeft()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 5432
    iput-boolean v9, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pLeftMoveEnabled:Z

    .line 5433
    move-object v0, v1

    check-cast v0, Lcom/mobipocket/common/library/reader/TableElement;

    move-object v7, v0

    invoke-virtual {v7}, Lcom/mobipocket/common/library/reader/TableElement;->getLocalDrawOffsetX()I

    move-result v7

    neg-int v7, v7

    iput v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    .line 5439
    :cond_2
    :goto_2
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    if-le v7, v8, :cond_3

    .line 5440
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getX()I

    move-result v7

    add-int/2addr v7, v6

    iget-object v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v8}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v8

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    .line 5414
    .end local v2           #eltYmax:I
    .end local v3           #eltYmin:I
    .end local v6           #width:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    .line 5437
    .restart local v2       #eltYmax:I
    .restart local v3       #eltYmin:I
    :cond_4
    invoke-virtual {v1}, Lcom/mobipocket/common/library/reader/FlowElement;->getWidth()I

    move-result v6

    .restart local v6       #width:I
    goto :goto_2

    .line 5446
    .end local v1           #elt:Lcom/mobipocket/common/library/reader/FlowElement;
    .end local v2           #eltYmax:I
    .end local v3           #eltYmin:I
    .end local v6           #width:I
    :cond_5
    iget v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    iget v8, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    add-int/2addr v7, v8

    iput v7, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    goto/16 :goto_0
.end method

.method private final getMaxY()I
    .locals 2

    .prologue
    .line 5469
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1400(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v1}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private final getMinY()I
    .locals 1

    .prologue
    .line 5474
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v0}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1600(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v0

    return v0
.end method

.method private internalMove(I)V
    .locals 5
    .parameter "direction"

    .prologue
    const/4 v4, 0x0

    .line 5483
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1300(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v2

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager;->access$1500(Lcom/mobipocket/common/library/reader/BookViewManager;)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    div-int/lit8 v0, v2, 0x2

    .line 5485
    .local v0, deltaX:I
    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    .line 5490
    .local v1, width:I
    packed-switch p1, :pswitch_data_0

    .line 5500
    :goto_0
    :pswitch_0
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    iget-object v3, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v3, v3, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-static {v3}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$6200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;)I

    move-result v3

    sub-int v3, v1, v3

    if-le v2, v3, :cond_0

    .line 5501
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$6200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;)I

    move-result v2

    sub-int v2, v1, v2

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    .line 5504
    :cond_0
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    if-gez v2, :cond_1

    .line 5505
    iput v4, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    .line 5509
    :cond_1
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->setViewPortForTable()V

    .line 5510
    if-nez p1, :cond_3

    .line 5511
    invoke-virtual {p0, v4}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->canMove(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5512
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$6300(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    .line 5521
    :goto_1
    return-void

    .line 5492
    :pswitch_1
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    goto :goto_0

    .line 5495
    :pswitch_2
    iget v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    goto :goto_0

    .line 5515
    :cond_2
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    goto :goto_1

    .line 5519
    :cond_3
    iget-object v2, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v2, v2, Lcom/mobipocket/common/library/reader/BookViewManager;->objectSelection:Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;

    invoke-static {v2}, Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;->access$4800(Lcom/mobipocket/common/library/reader/BookViewManager$ObjectSelection;)V

    goto :goto_1

    .line 5490
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 5461
    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pCurrentMaxWidth:I

    .line 5462
    iput v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    .line 5463
    iput-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pLeftMoveEnabled:Z

    .line 5464
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->tableViewPort:Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;

    invoke-virtual {v0}, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->reset()V

    .line 5465
    return-void
.end method

.method private setViewPortForTable()V
    .locals 2

    .prologue
    .line 5453
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/DisplayableFrame;->tableViewPort:Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;

    iget v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pViewPortForTableX:I

    invoke-virtual {v0, v1}, Lcom/mobipocket/common/library/reader/DisplayableFrame$TableViewPort;->setViewPortForTable(I)Lcom/mobipocket/common/library/reader/TableElement;

    .line 5454
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->currentPageAnnotations:[Lcom/mobipocket/common/library/reader/AnnotationItem;

    .line 5455
    iget-object v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v0, v0, Lcom/mobipocket/common/library/reader/BookViewManager;->layout:Lcom/mobipocket/common/library/reader/BookViewManager$Layout;

    iget-object v1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->this$0:Lcom/mobipocket/common/library/reader/BookViewManager;

    iget-object v1, v1, Lcom/mobipocket/common/library/reader/BookViewManager;->pCurrentDisplayedPage:Lcom/mobipocket/common/library/reader/DisplayableFrame;

    invoke-static {v0, v1}, Lcom/mobipocket/common/library/reader/BookViewManager$Layout;->access$2200(Lcom/mobipocket/common/library/reader/BookViewManager$Layout;Lcom/mobipocket/common/library/reader/DisplayableFrame;)V

    .line 5456
    invoke-direct {p0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->computeLeftRightMovePossible()V

    .line 5457
    return-void
.end method


# virtual methods
.method public canMove(I)Z
    .locals 1
    .parameter "direction"

    .prologue
    .line 5531
    packed-switch p1, :pswitch_data_0

    .line 5539
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5533
    :pswitch_1
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pLeftMoveEnabled:Z

    goto :goto_0

    .line 5536
    :pswitch_2
    iget-boolean v0, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pRightMoveEnabled:Z

    goto :goto_0

    .line 5531
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public move(I)V
    .locals 1
    .parameter "direction"

    .prologue
    .line 5548
    packed-switch p1, :pswitch_data_0

    .line 5556
    :goto_0
    :pswitch_0
    return-void

    .line 5550
    :pswitch_1
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->internalMove(I)V

    goto :goto_0

    .line 5553
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->internalMove(I)V

    goto :goto_0

    .line 5548
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setEnabled(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 5572
    iput-boolean p1, p0, Lcom/mobipocket/common/library/reader/BookViewManager$TableNavigation;->pEnabled:Z

    .line 5573
    return-void
.end method
