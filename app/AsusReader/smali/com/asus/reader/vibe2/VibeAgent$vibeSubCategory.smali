.class public Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;
.super Ljava/lang/Object;
.source "VibeAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/vibe2/VibeAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "vibeSubCategory"
.end annotation


# instance fields
.field public mMainid:Ljava/lang/String;

.field public mSPName:Ljava/lang/String;

.field private mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

.field public mSubid:Ljava/lang/String;

.field public mSubidFromCursor:Ljava/lang/String;

.field private mTotalCount:I

.field final synthetic this$0:Lcom/asus/reader/vibe2/VibeAgent;


# direct methods
.method public constructor <init>(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/vibe2/Subcategory;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter "subcategory"
    .parameter "spname"

    .prologue
    .line 696
    iput-object p1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 690
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubid:Ljava/lang/String;

    .line 691
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mMainid:Ljava/lang/String;

    .line 692
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSPName:Ljava/lang/String;

    .line 693
    const/4 v0, 0x0

    iput v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I

    .line 694
    const-string v0, ""

    iput-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubidFromCursor:Ljava/lang/String;

    .line 697
    iput-object p2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

    .line 698
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Subcategory;->getSubcategoryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubid:Ljava/lang/String;

    .line 699
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Subcategory;->getMainCategoryId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mMainid:Ljava/lang/String;

    .line 700
    iput-object p3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSPName:Ljava/lang/String;

    .line 701
    return-void
.end method

.method private updateTotalCount()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 760
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/util/LinkedCursor;->getCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 761
    :cond_0
    iput v5, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I

    .line 775
    :goto_0
    return-void

    .line 765
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/util/LinkedCursor;->isBeforeFirst()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 766
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/asus/reader/util/LinkedCursor;->moveToFirst()Z

    .line 768
    :cond_2
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v3}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v3

    const-string v4, "_totalcount"

    invoke-virtual {v3, v4}, Lcom/asus/reader/util/LinkedCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/util/LinkedCursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, totalcount:Ljava/lang/String;
    iget-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v2}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v2

    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v3}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v3

    const-string v4, "_subcategoryid"

    invoke-virtual {v3, v4}, Lcom/asus/reader/util/LinkedCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/asus/reader/util/LinkedCursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubidFromCursor:Ljava/lang/String;

    .line 770
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 771
    .end local v1           #totalcount:Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 772
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 773
    iput v5, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I

    goto :goto_0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 707
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

    invoke-virtual {v0}, Lcom/asus/reader/vibe2/Subcategory;->getSubcategoryName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubCategory()Lcom/asus/reader/vibe2/Subcategory;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

    return-object v0
.end method

.method public getTotalCount()I
    .locals 1

    .prologue
    .line 711
    iget v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I

    return v0
.end method

.method public getVibeBooksCursor(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 14
    .parameter "searchText"

    .prologue
    .line 735
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/util/LinkedCursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/util/LinkedCursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    .line 736
    const/4 v9, 0x0

    .line 737
    .local v9, mainId:Ljava/lang/String;
    const/4 v11, 0x0

    .line 738
    .local v11, spname:Ljava/lang/String;
    const/4 v12, 0x0

    .line 739
    .local v12, subId:Ljava/lang/String;
    const/4 v10, 0x0

    .line 741
    .local v10, search:Ljava/lang/String;
    :try_start_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v1}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v1

    const-string v2, "_maincategoryid"

    invoke-virtual {v1, v2}, Lcom/asus/reader/util/LinkedCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/util/LinkedCursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 742
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v1}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v1

    const-string v2, "_spname"

    invoke-virtual {v1, v2}, Lcom/asus/reader/util/LinkedCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/util/LinkedCursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 743
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v1}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v1

    const-string v2, "_subcategoryid"

    invoke-virtual {v1, v2}, Lcom/asus/reader/util/LinkedCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/util/LinkedCursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 744
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v1}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v1

    const-string v2, "_search"

    invoke-virtual {v1, v2}, Lcom/asus/reader/util/LinkedCursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/asus/reader/util/LinkedCursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    .line 748
    :goto_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mMainid:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubidFromCursor:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 749
    invoke-direct {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->updateTotalCount()V

    .line 750
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    .line 756
    .end local v9           #mainId:Ljava/lang/String;
    .end local v10           #search:Ljava/lang/String;
    .end local v11           #spname:Ljava/lang/String;
    .end local v12           #subId:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 745
    .restart local v9       #mainId:Ljava/lang/String;
    .restart local v10       #search:Ljava/lang/String;
    .restart local v11       #spname:Ljava/lang/String;
    .restart local v12       #subId:Ljava/lang/String;
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 746
    .local v8, e:Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 753
    .end local v8           #e:Ljava/lang/Exception;
    .end local v9           #mainId:Ljava/lang/String;
    .end local v10           #search:Ljava/lang/String;
    .end local v11           #spname:Ljava/lang/String;
    .end local v12           #subId:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/asus/reader/book/ReaderDatabase;->getInstance()Lcom/asus/reader/book/ReaderDatabase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/book/ReaderDatabase;->clearCoverCache()V

    .line 754
    iget-object v13, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$400(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/VibeAPI;

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$000(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v3}, Lcom/asus/reader/vibe2/VibeAgent;->access$300(Lcom/asus/reader/vibe2/VibeAgent;)I

    move-result v3

    const-string v5, ""

    const-string v6, ""

    const/4 v7, 0x0

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/asus/reader/vibe2/VibeAPI;->callLoadPickedSubcategory(Lcom/asus/reader/vibe2/ApplicationInfo;Lcom/asus/reader/vibe2/Subcategory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asus/reader/util/LinkedCursor;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    invoke-static {v13, v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$202(Lcom/asus/reader/vibe2/VibeAgent;Lcom/asus/reader/util/LinkedCursor;)Lcom/asus/reader/util/LinkedCursor;

    .line 755
    invoke-direct {p0}, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->updateTotalCount()V

    .line 756
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    goto :goto_1
.end method

.method public updateVibeBooksCursor(Ljava/lang/String;Z)Landroid/database/Cursor;
    .locals 8
    .parameter "searchText"
    .parameter "goDown"

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x1

    .line 715
    const/4 v2, 0x0

    .line 716
    .local v2, startPosition:I
    const/4 v3, 0x0

    .line 717
    .local v3, endPosition:I
    if-eqz p2, :cond_3

    .line 718
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/util/LinkedCursor;->getEndId()I

    move-result v0

    add-int/lit8 v2, v0, 0x1

    .line 719
    iget v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I

    if-le v2, v0, :cond_0

    move-object v0, v7

    .line 730
    :goto_0
    return-object v0

    .line 721
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$300(Lcom/asus/reader/vibe2/VibeAgent;)I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr v0, v4

    iget v1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I

    if-le v0, v1, :cond_2

    iget v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mTotalCount:I

    move v3, v0

    .line 728
    :goto_1
    if-lt v2, v4, :cond_1

    if-ge v3, v2, :cond_6

    :cond_1
    move-object v0, v7

    .line 729
    goto :goto_0

    .line 721
    :cond_2
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$300(Lcom/asus/reader/vibe2/VibeAgent;)I

    move-result v0

    add-int/2addr v0, v2

    sub-int/2addr v0, v4

    move v3, v0

    goto :goto_1

    .line 723
    :cond_3
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$200(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/asus/reader/util/LinkedCursor;->getStartId()I

    move-result v0

    sub-int v3, v0, v4

    .line 724
    if-ge v3, v4, :cond_4

    move-object v0, v7

    .line 725
    goto :goto_0

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$300(Lcom/asus/reader/vibe2/VibeAgent;)I

    move-result v0

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    if-ge v0, v4, :cond_5

    move v2, v4

    :goto_2
    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$300(Lcom/asus/reader/vibe2/VibeAgent;)I

    move-result v0

    sub-int v0, v3, v0

    add-int/lit8 v0, v0, 0x1

    move v2, v0

    goto :goto_2

    .line 730
    :cond_6
    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$400(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/VibeAPI;

    iget-object v0, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->this$0:Lcom/asus/reader/vibe2/VibeAgent;

    invoke-static {v0}, Lcom/asus/reader/vibe2/VibeAgent;->access$000(Lcom/asus/reader/vibe2/VibeAgent;)Lcom/asus/reader/vibe2/ApplicationInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/asus/reader/vibe2/VibeAgent$vibeSubCategory;->mSubcategory:Lcom/asus/reader/vibe2/Subcategory;

    const-string v5, ""

    const-string v6, ""

    move-object v4, p1

    invoke-static/range {v0 .. v7}, Lcom/asus/reader/vibe2/VibeAPI;->callLoadPickedSubcategory(Lcom/asus/reader/vibe2/ApplicationInfo;Lcom/asus/reader/vibe2/Subcategory;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/asus/reader/util/LinkedCursor;)Lcom/asus/reader/util/LinkedCursor;

    move-result-object v0

    goto :goto_0
.end method
