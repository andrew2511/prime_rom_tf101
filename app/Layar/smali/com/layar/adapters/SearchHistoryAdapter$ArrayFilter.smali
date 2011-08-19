.class Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;
.super Landroid/widget/Filter;
.source "SearchHistoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/layar/adapters/SearchHistoryAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArrayFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/layar/adapters/SearchHistoryAdapter;


# direct methods
.method private constructor <init>(Lcom/layar/adapters/SearchHistoryAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 350
    iput-object p1, p0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/layar/adapters/SearchHistoryAdapter;Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 350
    invoke-direct {p0, p1}, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;-><init>(Lcom/layar/adapters/SearchHistoryAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 17
    .parameter "prefix"

    .prologue
    .line 353
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 355
    .local v7, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    move-object v13, v0

    invoke-static {v13}, Lcom/layar/adapters/SearchHistoryAdapter;->access$1(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_0

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    move-object v13, v0

    invoke-static {v13}, Lcom/layar/adapters/SearchHistoryAdapter;->access$2(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 357
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    move-object v14, v0

    new-instance v15, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/layar/adapters/SearchHistoryAdapter;->access$3(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v14, v15}, Lcom/layar/adapters/SearchHistoryAdapter;->access$4(Lcom/layar/adapters/SearchHistoryAdapter;Ljava/util/ArrayList;)V

    .line 356
    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 361
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 362
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    move-object v13, v0

    invoke-static {v13}, Lcom/layar/adapters/SearchHistoryAdapter;->access$2(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/lang/Object;

    move-result-object v13

    monitor-enter v13

    .line 363
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    move-object v14, v0

    invoke-static {v14}, Lcom/layar/adapters/SearchHistoryAdapter;->access$1(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-direct {v4, v14}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 364
    .local v4, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iput-object v4, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 365
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    iput v14, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 362
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 399
    .end local v4           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_0
    return-object v7

    .line 356
    :catchall_0
    move-exception v14

    :try_start_2
    monitor-exit v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v14

    .line 362
    :catchall_1
    move-exception v14

    :try_start_3
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v14

    .line 368
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 370
    .local v6, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    move-object v13, v0

    invoke-static {v13}, Lcom/layar/adapters/SearchHistoryAdapter;->access$1(Lcom/layar/adapters/SearchHistoryAdapter;)Ljava/util/ArrayList;

    move-result-object v10

    .line 371
    .local v10, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 373
    .local v1, count:I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 375
    .local v5, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-lt v2, v1, :cond_3

    .line 395
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 396
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v13

    iput v13, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0

    .line 376
    :cond_3
    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 377
    .local v8, value:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    .line 380
    .local v9, valueText:Ljava/lang/String;
    invoke-virtual {v9, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 381
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 383
    :cond_5
    const-string v13, " "

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 384
    .local v12, words:[Ljava/lang/String;
    array-length v11, v12

    .line 386
    .local v11, wordCount:I
    const/4 v3, 0x0

    .local v3, k:I
    :goto_3
    if-ge v3, v11, :cond_4

    .line 387
    aget-object v13, v12, v3

    invoke-virtual {v13, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 388
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 386
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 406
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 407
    iget-object v1, p0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-static {v1, v0}, Lcom/layar/adapters/SearchHistoryAdapter;->access$5(Lcom/layar/adapters/SearchHistoryAdapter;Ljava/util/ArrayList;)V

    .line 408
    :cond_0
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/SearchHistoryAdapter;->notifyDataSetChanged()V

    .line 413
    :goto_0
    return-void

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/layar/adapters/SearchHistoryAdapter$ArrayFilter;->this$0:Lcom/layar/adapters/SearchHistoryAdapter;

    invoke-virtual {v0}, Lcom/layar/adapters/SearchHistoryAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
