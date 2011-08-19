.class public Lcom/asus/reader/BookListActivity$BooksAdapter;
.super Landroid/widget/CursorAdapter;
.source "BookListActivity.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/asus/reader/ui/DropTarget;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/BookListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BooksAdapter"
.end annotation


# instance fields
.field private blockNotify:Z

.field private gridMoveDirection:I

.field private mContext:Landroid/content/Context;

.field private mDX:I

.field private mDY:I

.field private mHeader:Lcom/asus/reader/ui/HeaderView;

.field private mPosition:I

.field final synthetic this$0:Lcom/asus/reader/BookListActivity;


# direct methods
.method public constructor <init>(Lcom/asus/reader/BookListActivity;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "c"

    .prologue
    const/4 v0, 0x0

    .line 1571
    iput-object p1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    .line 1572
    invoke-direct {p0, p2, p3}, Landroid/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 1567
    iput v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mDX:I

    .line 1568
    iput v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mDY:I

    .line 1569
    iput-boolean v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->blockNotify:Z

    .line 1573
    iput-object p2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mContext:Landroid/content/Context;

    .line 1574
    iput v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mPosition:I

    .line 1575
    return-void
.end method

.method private bindBookItem(Lcom/asus/reader/ui/BookItem;Landroid/database/Cursor;I)V
    .locals 6
    .parameter "v"
    .parameter "cursor"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    .line 1696
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1721
    :cond_0
    :goto_0
    return-void

    .line 1698
    :pswitch_0
    invoke-virtual {p1, p2, p3}, Lcom/asus/reader/ui/BookItem;->bindBookDelete(Landroid/database/Cursor;I)V

    .line 1699
    invoke-virtual {p1, v5}, Lcom/asus/reader/ui/BookItem;->setVisibility(I)V

    .line 1700
    const-string v1, "local_order"

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 1701
    .local v0, order:I
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCount()I

    move-result v1

    sub-int/2addr v1, p3

    if-eq v0, v1, :cond_1

    .line 1702
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {p1}, Lcom/asus/reader/ui/BookItem;->getBookId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$2700(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$BooksAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCount()I

    move-result v4

    sub-int/2addr v4, p3

    invoke-static {v1, v2, v3, v4, v5}, Lcom/asus/reader/BookListActivity;->access$2800(Lcom/asus/reader/BookListActivity;JIZ)V

    .line 1704
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-boolean v1, v1, Lcom/asus/reader/BookListActivity;->mDrag:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2900(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    if-gt v1, p3, :cond_2

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3000(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    if-gt p3, v1, :cond_2

    .line 1705
    invoke-virtual {p0, p1, p3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->setTranslateAnimation(Landroid/view/View;I)Landroid/view/View;

    .line 1707
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    if-ne p3, v1, :cond_0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-boolean v1, v1, Lcom/asus/reader/BookListActivity;->mDrag:Z

    if-nez v1, :cond_0

    .line 1708
    invoke-virtual {p0, p1, p3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->setReturnAnimation(Landroid/view/View;I)Landroid/view/View;

    goto :goto_0

    .line 1712
    .end local v0           #order:I
    :pswitch_1
    invoke-virtual {p1, p2, p3}, Lcom/asus/reader/ui/BookItem;->bindBookGrid(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 1717
    :pswitch_2
    invoke-virtual {p1, p2, p3}, Lcom/asus/reader/ui/BookItem;->bindBookList(Landroid/database/Cursor;I)V

    goto :goto_0

    .line 1696
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private getBookEditView(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "convertview"

    .prologue
    const/4 v6, 0x0

    .line 1613
    instance-of v3, p1, Lcom/asus/reader/ui/BookEdit;

    if-eqz v3, :cond_0

    .line 1614
    move-object v0, p1

    check-cast v0, Lcom/asus/reader/ui/BookEdit;

    move-object v1, v0

    .line 1626
    .local v1, bookedit:Lcom/asus/reader/ui/BookEdit;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$2500(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1627
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$2500(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/asus/reader/ui/BookEdit;->bind(Landroid/database/Cursor;I)V

    .line 1628
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/BookEdit;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1635
    :goto_1
    return-object v1

    .line 1616
    .end local v1           #bookedit:Lcom/asus/reader/ui/BookEdit;
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/BookEdit;

    .line 1617
    .restart local v1       #bookedit:Lcom/asus/reader/ui/BookEdit;
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$2400(Lcom/asus/reader/BookListActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1618
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x3c6

    const/16 v5, 0x26e

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/BookEdit;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1621
    :cond_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x320

    const/16 v5, 0x44e

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/BookEdit;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1629
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1630
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1631
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/asus/reader/BookListActivity;->access$2502(Lcom/asus/reader/BookListActivity;I)I

    .line 1632
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity;->finish()V

    goto :goto_1
.end method

.method private getBookInfoView(Landroid/view/View;)Landroid/view/View;
    .locals 7
    .parameter "convertview"

    .prologue
    const/4 v6, 0x0

    .line 1586
    instance-of v3, p1, Lcom/asus/reader/ui/BookInfo;

    if-eqz v3, :cond_0

    .line 1587
    move-object v0, p1

    check-cast v0, Lcom/asus/reader/ui/BookInfo;

    move-object v1, v0

    .line 1599
    .local v1, bookinfo:Lcom/asus/reader/ui/BookInfo;
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$2500(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    invoke-interface {v3, v4}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1600
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$2500(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/asus/reader/ui/BookInfo;->bind(Landroid/database/Cursor;I)V

    .line 1601
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/BookInfo;->setTag(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1608
    :goto_1
    return-object v1

    .line 1589
    .end local v1           #bookinfo:Lcom/asus/reader/ui/BookInfo;
    :cond_0
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v3, v3, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f03000f

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/BookInfo;

    .line 1590
    .restart local v1       #bookinfo:Lcom/asus/reader/ui/BookInfo;
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$2400(Lcom/asus/reader/BookListActivity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1591
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x3c6

    const/16 v5, 0x26e

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/BookInfo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1594
    :cond_1
    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    const/16 v4, 0x320

    const/16 v5, 0x44e

    invoke-direct {v3, v4, v5, v6}, Landroid/widget/AbsListView$LayoutParams;-><init>(III)V

    invoke-virtual {v1, v3}, Lcom/asus/reader/ui/BookInfo;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1602
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 1603
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 1604
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v4, -0x1

    invoke-static {v3, v4}, Lcom/asus/reader/BookListActivity;->access$2502(Lcom/asus/reader/BookListActivity;I)I

    .line 1605
    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-virtual {v3}, Lcom/asus/reader/BookListActivity;->finish()V

    goto :goto_1
.end method

.method private getHeaderView()Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 1639
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    if-nez v0, :cond_0

    .line 1640
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v0, v0, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030022

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/HeaderView;

    iput-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    .line 1641
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 1642
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    iget-object v0, v0, Lcom/asus/reader/ui/HeaderView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 1643
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    iget-object v0, v0, Lcom/asus/reader/ui/HeaderView;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f07003c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1648
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/HeaderView;->setTag(Ljava/lang/Object;)V

    .line 1649
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    return-object v0

    .line 1645
    :cond_1
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    iget-object v0, v0, Lcom/asus/reader/ui/HeaderView;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 1646
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mHeader:Lcom/asus/reader/ui/HeaderView;

    iget-object v0, v0, Lcom/asus/reader/ui/HeaderView;->mHeaderText:Landroid/widget/TextView;

    const v1, 0x7f07003d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 1
    .parameter "v"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 1725
    instance-of v0, p1, Lcom/asus/reader/ui/BookItem;

    if-eqz v0, :cond_0

    .line 1726
    check-cast p1, Lcom/asus/reader/ui/BookItem;

    .end local p1
    iget v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mPosition:I

    invoke-direct {p0, p1, p3, v0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->bindBookItem(Lcom/asus/reader/ui/BookItem;Landroid/database/Cursor;I)V

    .line 1727
    :cond_0
    return-void
.end method

.method public getCount()I
    .locals 3

    .prologue
    .line 1756
    invoke-super {p0}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v0

    .line 1757
    .local v0, count:I
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    .line 1759
    const/4 v1, 0x1

    .line 1769
    :goto_0
    return v1

    .line 1761
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_3

    .line 1762
    :cond_2
    add-int/lit8 v1, v0, 0x1

    goto :goto_0

    .line 1765
    :cond_3
    if-nez v0, :cond_4

    .line 1766
    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    move v1, v0

    .line 1769
    goto :goto_0
.end method

.method public getItem(I)Landroid/database/Cursor;
    .locals 0
    .parameter "position"

    .prologue
    .line 1751
    invoke-super {p0, p1}, Landroid/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/database/Cursor;

    return-object p0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 1562
    invoke-virtual {p0, p1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 1654
    iput p1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mPosition:I

    .line 1656
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    .line 1657
    :cond_0
    iget v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mPosition:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mPosition:I

    .line 1658
    iget v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mPosition:I

    if-gez v2, :cond_1

    .line 1659
    invoke-direct {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getHeaderView()Landroid/view/View;

    move-result-object v2

    .line 1690
    :goto_0
    return-object v2

    .line 1665
    :cond_1
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    .line 1674
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    iget v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mPosition:I

    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1675
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "couldn\'t move cursor to position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1667
    :sswitch_0
    invoke-direct {p0, p2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getBookInfoView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1669
    :sswitch_1
    invoke-direct {p0, p2}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getBookEditView(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    .line 1680
    :cond_2
    instance-of v2, p2, Lcom/asus/reader/ui/BookItem;

    if-eqz v2, :cond_3

    .line 1681
    move-object v0, p2

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    move-object v1, v0

    .line 1682
    .local v1, i:Lcom/asus/reader/ui/BookItem;
    invoke-virtual {v1}, Lcom/asus/reader/ui/BookItem;->resetCover()V

    .line 1687
    :goto_1
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v2, v1

    .line 1690
    goto :goto_0

    .line 1685
    .end local v1           #i:Lcom/asus/reader/ui/BookItem;
    :cond_3
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    invoke-virtual {p0, v2, v3, p3}, Lcom/asus/reader/BookListActivity$BooksAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/asus/reader/ui/BookItem;

    .restart local v1       #i:Lcom/asus/reader/ui/BookItem;
    goto :goto_1

    .line 1665
    :sswitch_data_0
    .sparse-switch
        0x6 -> :sswitch_0
        0xe -> :sswitch_1
    .end sparse-switch
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    const/4 v3, 0x0

    .line 1733
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1744
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "couldn\'t newView at state "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$2600(Lcom/asus/reader/BookListActivity;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1736
    :pswitch_0
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030010

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    .line 1746
    .local v0, v:Lcom/asus/reader/ui/BookItem;
    :goto_0
    return-object v0

    .line 1741
    .end local v0           #v:Lcom/asus/reader/ui/BookItem;
    :pswitch_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-object v1, v1, Lcom/asus/reader/BookListActivity;->mInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030011

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    .line 1742
    .restart local v0       #v:Lcom/asus/reader/ui/BookItem;
    goto :goto_0

    .line 1733
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .prologue
    .line 1580
    iget-boolean v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->blockNotify:Z

    if-nez v0, :cond_0

    .line 1581
    invoke-super {p0}, Landroid/widget/CursorAdapter;->notifyDataSetChanged()V

    .line 1582
    :cond_0
    return-void
.end method

.method public onDrop(II)V
    .locals 4
    .parameter "rawX"
    .parameter "rawY"

    .prologue
    const/4 v3, -0x1

    .line 1773
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/asus/reader/BookListActivity;->mDrag:Z

    .line 1774
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getFirstVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/ui/BookGrid;->getLastVisiblePosition()I

    move-result v1

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1775
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1, v3}, Lcom/asus/reader/BookListActivity;->access$3102(Lcom/asus/reader/BookListActivity;I)I

    .line 1785
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->notifyDataSetChanged()V

    .line 1786
    return-void

    .line 1776
    :cond_1
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$2400(Lcom/asus/reader/BookListActivity;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$3200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/DragController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/asus/reader/ui/DragController;->getSlideState()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1777
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1, v3}, Lcom/asus/reader/BookListActivity;->access$3102(Lcom/asus/reader/BookListActivity;I)I

    goto :goto_0

    .line 1779
    :cond_2
    iget-object v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v1}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v1

    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v2}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v2

    iget-object v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v3}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v3

    invoke-virtual {v3}, Lcom/asus/reader/ui/BookGrid;->getFirstVisiblePosition()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/asus/reader/ui/BookGrid;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1780
    .local v0, view:Landroid/view/View;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 1781
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int v1, p1, v1

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mDX:I

    .line 1782
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int v1, p2, v1

    add-int/lit8 v1, v1, 0x14

    iput v1, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mDY:I

    goto :goto_0
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 1901
    instance-of v2, p1, Lcom/asus/reader/ui/BookItem;

    if-eqz v2, :cond_0

    .line 1902
    move-object v0, p1

    check-cast v0, Lcom/asus/reader/ui/BookItem;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/asus/reader/ui/BookItem;->getPosition()I

    move-result v1

    .line 1903
    .local v1, position:I
    check-cast p1, Lcom/asus/reader/ui/BookItem;

    .end local p1
    invoke-virtual {p1}, Lcom/asus/reader/ui/BookItem;->cancelLoading()V

    .line 1905
    .end local v1           #position:I
    :cond_0
    return-void
.end method

.method public replaceItemBetweenDragAndDrop(II)V
    .locals 16
    .parameter "fromId"
    .parameter "toId"

    .prologue
    .line 1847
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    const/4 v13, 0x1

    iput-boolean v13, v12, Lcom/asus/reader/BookListActivity;->mViewReplaceable:Z

    .line 1848
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    move-object v0, v12

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3102(Lcom/asus/reader/BookListActivity;I)I

    .line 1850
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/asus/reader/BookListActivity;->access$2700(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$BooksAdapter;

    move-result-object v12

    move-object v0, v12

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getItem(I)Landroid/database/Cursor;

    move-result-object v3

    .line 1851
    .local v3, c:Landroid/database/Cursor;
    const-string v12, "_id"

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v3, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1853
    .local v8, id:J
    move/from16 v0, p1

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    .line 1854
    const/4 v12, 0x1

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/BookListActivity$BooksAdapter;->gridMoveDirection:I

    .line 1855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    move-object v0, v12

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$2902(Lcom/asus/reader/BookListActivity;I)I

    .line 1856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    move-object v0, v12

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3002(Lcom/asus/reader/BookListActivity;I)I

    .line 1863
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/asus/reader/BookListActivity;->access$2900(Lcom/asus/reader/BookListActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v13

    invoke-virtual {v13}, Lcom/asus/reader/ui/BookGrid;->getFirstVisiblePosition()I

    move-result v13

    if-ge v12, v13, :cond_0

    .line 1864
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v13

    invoke-virtual {v13}, Lcom/asus/reader/ui/BookGrid;->getFirstVisiblePosition()I

    move-result v13

    invoke-static {v12, v13}, Lcom/asus/reader/BookListActivity;->access$2902(Lcom/asus/reader/BookListActivity;I)I

    .line 1866
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/asus/reader/BookListActivity;->access$3000(Lcom/asus/reader/BookListActivity;)I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v13

    invoke-virtual {v13}, Lcom/asus/reader/ui/BookGrid;->getLastVisiblePosition()I

    move-result v13

    if-le v12, v13, :cond_1

    .line 1867
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v13

    invoke-virtual {v13}, Lcom/asus/reader/ui/BookGrid;->getLastVisiblePosition()I

    move-result v13

    invoke-static {v12, v13}, Lcom/asus/reader/BookListActivity;->access$3002(Lcom/asus/reader/BookListActivity;I)I

    .line 1869
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCount()I

    move-result v12

    sub-int v6, v12, p1

    .line 1870
    .local v6, dbfromId:I
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCount()I

    move-result v12

    sub-int v7, v12, p2

    .line 1873
    .local v7, dbtoId:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    invoke-static {v12}, Lcom/asus/reader/BookListActivity;->access$200(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/BookListActivity$CategoryAdapter;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v13, v0

    invoke-static {v13}, Lcom/asus/reader/BookListActivity;->access$300(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/CategoryListView;

    move-result-object v13

    invoke-virtual {v13}, Lcom/asus/reader/ui/CategoryListView;->getGroupPosition()I

    move-result v13

    invoke-virtual {v12, v13}, Lcom/asus/reader/BookListActivity$CategoryAdapter;->getItem(I)Lcom/asus/reader/BookListActivity$CategoryEntry;

    move-result-object v12

    invoke-virtual {v12}, Lcom/asus/reader/BookListActivity$CategoryEntry;->getId()J

    move-result-wide v4

    .line 1874
    .local v4, cate_id:J
    sget-object v12, Lcom/asus/reader/book/ReaderDatabase;->Book_Shift_URI:Landroid/net/Uri;

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v12

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 1878
    .local v2, BookShift_URI:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v12, v2, v13, v14, v15}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1880
    new-instance v10, Landroid/content/ContentValues;

    const/4 v12, 0x1

    invoke-direct {v10, v12}, Landroid/content/ContentValues;-><init>(I)V

    .line 1884
    .local v10, values:Landroid/content/ContentValues;
    const-string v12, "local_order"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v10, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1885
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "_id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 1886
    .local v11, where:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    invoke-virtual {v12}, Lcom/asus/reader/BookListActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    sget-object v13, Lcom/asus/reader/book/ReaderDatabase;->Book_NoNotify_URI:Landroid/net/Uri;

    const/4 v14, 0x0

    invoke-virtual {v12, v13, v10, v11, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1888
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->setGridDirection()V

    .line 1890
    invoke-virtual/range {p0 .. p0}, Lcom/asus/reader/BookListActivity$BooksAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v12

    invoke-interface {v12}, Landroid/database/Cursor;->requery()Z

    .line 1891
    return-void

    .line 1858
    .end local v2           #BookShift_URI:Landroid/net/Uri;
    .end local v4           #cate_id:J
    .end local v6           #dbfromId:I
    .end local v7           #dbtoId:I
    .end local v10           #values:Landroid/content/ContentValues;
    .end local v11           #where:Ljava/lang/String;
    :cond_2
    const/4 v12, 0x2

    move v0, v12

    move-object/from16 v1, p0

    iput v0, v1, Lcom/asus/reader/BookListActivity$BooksAdapter;->gridMoveDirection:I

    .line 1859
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    move-object v0, v12

    move/from16 v1, p1

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$2902(Lcom/asus/reader/BookListActivity;I)I

    .line 1860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    move-object v12, v0

    move-object v0, v12

    move/from16 v1, p2

    invoke-static {v0, v1}, Lcom/asus/reader/BookListActivity;->access$3002(Lcom/asus/reader/BookListActivity;I)I

    goto/16 :goto_0
.end method

.method public setGridDirection()V
    .locals 2

    .prologue
    .line 1894
    iget v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->gridMoveDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1895
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v0

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->requestFocus(I)Z

    .line 1898
    :goto_0
    return-void

    .line 1897
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v0}, Lcom/asus/reader/BookListActivity;->access$1900(Lcom/asus/reader/BookListActivity;)Lcom/asus/reader/ui/BookGrid;

    move-result-object v0

    const/16 v1, 0x21

    invoke-virtual {v0, v1}, Lcom/asus/reader/ui/BookGrid;->requestFocus(I)Z

    goto :goto_0
.end method

.method public setReturnAnimation(Landroid/view/View;I)Landroid/view/View;
    .locals 5
    .parameter "passView"
    .parameter "position"

    .prologue
    const/4 v4, 0x0

    .line 1789
    move-object v1, p1

    .line 1790
    .local v1, convertView:Landroid/view/View;
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    iget v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mDX:I

    int-to-float v2, v2

    iget v3, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->mDY:I

    int-to-float v3, v3

    invoke-direct {v0, v2, v4, v3, v4}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1791
    .local v0, am:Landroid/view/animation/Animation;
    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1792
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1793
    iget-object v2, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/asus/reader/BookListActivity;->access$3102(Lcom/asus/reader/BookListActivity;I)I

    .line 1794
    return-object v1
.end method

.method public setTranslateAnimation(Landroid/view/View;I)Landroid/view/View;
    .locals 10
    .parameter "passView"
    .parameter "position"

    .prologue
    const/4 v9, -0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 1797
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iget-boolean v4, v4, Lcom/asus/reader/BookListActivity;->mViewReplaceable:Z

    if-nez v4, :cond_0

    .line 1798
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    move-object v4, p1

    .line 1842
    :goto_0
    return-object v4

    .line 1801
    :cond_0
    move-object v1, p1

    .line 1804
    .local v1, convertView:Landroid/view/View;
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    if-ne v4, p2, :cond_1

    .line 1805
    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    move-object v4, v1

    .line 1806
    goto :goto_0

    .line 1808
    :cond_1
    invoke-virtual {v1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 1811
    iget v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->gridMoveDirection:I

    if-ne v4, v6, :cond_4

    .line 1812
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$3300(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    rem-int v4, p2, v4

    if-nez v4, :cond_3

    .line 1813
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$3300(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    sub-int/2addr v4, v6

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v2, v4

    .line 1814
    .local v2, fromXDelta:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    neg-int v4, v4

    int-to-float v3, v4

    .line 1829
    .local v3, fromYDelta:F
    :goto_1
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v0, v2, v8, v3, v8}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 1831
    .local v0, am:Landroid/view/animation/Animation;
    const-wide/16 v4, 0xc8

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 1832
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$3100(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    sub-int v4, p2, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    mul-int/lit8 v4, v4, 0x28

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setStartOffset(J)V

    .line 1833
    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1836
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$3000(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    if-ne v4, p2, :cond_2

    .line 1837
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    iput-boolean v7, v4, Lcom/asus/reader/BookListActivity;->mViewReplaceable:Z

    .line 1838
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4, v9}, Lcom/asus/reader/BookListActivity;->access$2902(Lcom/asus/reader/BookListActivity;I)I

    .line 1839
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4, v9}, Lcom/asus/reader/BookListActivity;->access$3002(Lcom/asus/reader/BookListActivity;I)I

    .line 1840
    const-string v4, "drag"

    const-string v5, "----------------> mViewReplaceable = false "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object v4, v1

    .line 1842
    goto :goto_0

    .line 1816
    .end local v0           #am:Landroid/view/animation/Animation;
    .end local v2           #fromXDelta:F
    .end local v3           #fromYDelta:F
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    neg-int v4, v4

    int-to-float v2, v4

    .line 1817
    .restart local v2       #fromXDelta:F
    const/4 v3, 0x0

    .restart local v3       #fromYDelta:F
    goto :goto_1

    .line 1820
    .end local v2           #fromXDelta:F
    .end local v3           #fromYDelta:F
    :cond_4
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$3300(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    rem-int v4, p2, v4

    iget-object v5, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v5}, Lcom/asus/reader/BookListActivity;->access$3300(Lcom/asus/reader/BookListActivity;)I

    move-result v5

    sub-int/2addr v5, v6

    if-ne v4, v5, :cond_5

    .line 1821
    iget-object v4, p0, Lcom/asus/reader/BookListActivity$BooksAdapter;->this$0:Lcom/asus/reader/BookListActivity;

    invoke-static {v4}, Lcom/asus/reader/BookListActivity;->access$3300(Lcom/asus/reader/BookListActivity;)I

    move-result v4

    sub-int/2addr v4, v6

    neg-int v4, v4

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v5

    mul-int/2addr v4, v5

    int-to-float v2, v4

    .line 1822
    .restart local v2       #fromXDelta:F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    int-to-float v3, v4

    .restart local v3       #fromYDelta:F
    goto :goto_1

    .line 1824
    .end local v2           #fromXDelta:F
    .end local v3           #fromYDelta:F
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v2, v4

    .line 1825
    .restart local v2       #fromXDelta:F
    const/4 v3, 0x0

    .restart local v3       #fromYDelta:F
    goto :goto_1
.end method
