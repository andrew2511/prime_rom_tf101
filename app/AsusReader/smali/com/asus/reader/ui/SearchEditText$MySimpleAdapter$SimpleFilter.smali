.class Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;
.super Landroid/widget/Filter;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SimpleFilter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;


# direct methods
.method private constructor <init>(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 655
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;Lcom/asus/reader/ui/SearchEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 655
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;-><init>(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 20
    .parameter "prefix"

    .prologue
    .line 659
    new-instance v11, Landroid/widget/Filter$FilterResults;

    invoke-direct {v11}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 661
    .local v11, results:Landroid/widget/Filter$FilterResults;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2300(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v17

    if-nez v17, :cond_0

    .line 662
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-object/from16 v17, v0

    new-instance v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2400(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)Ljava/util/List;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static/range {v17 .. v18}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2302(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 665
    :cond_0
    if-eqz p1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v17

    if-nez v17, :cond_2

    .line 666
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2300(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v8

    .line 667
    .local v8, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iput-object v8, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 668
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 705
    .end local v8           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    :goto_0
    return-object v11

    .line 670
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 672
    .local v10, prefixString:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2300(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)Ljava/util/ArrayList;

    move-result-object v13

    .line 673
    .local v13, unfilteredValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 675
    .local v2, count:I
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 677
    .local v9, newValues:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 678
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 679
    .local v3, h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    if-eqz v3, :cond_5

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2500(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)[I

    move-result-object v17

    move-object/from16 v0, v17

    array-length v0, v0

    move v7, v0

    .line 683
    .local v7, len:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_2
    if-ge v5, v7, :cond_5

    .line 684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2600(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;)[Ljava/lang/String;

    move-result-object v17

    aget-object v17, v17, v5

    move-object v0, v3

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 686
    .local v12, str:Ljava/lang/String;
    const-string v17, " "

    move-object v0, v12

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v16

    .line 687
    .local v16, words:[Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v0, v0

    move v15, v0

    .line 689
    .local v15, wordCount:I
    const/4 v6, 0x0

    .local v6, k:I
    :goto_3
    if-ge v6, v15, :cond_3

    .line 690
    aget-object v14, v16, v6

    .line 692
    .local v14, word:Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v10

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 693
    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 683
    .end local v14           #word:Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 689
    .restart local v14       #word:Ljava/lang/String;
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 677
    .end local v5           #j:I
    .end local v6           #k:I
    .end local v7           #len:I
    .end local v12           #str:Ljava/lang/String;
    .end local v14           #word:Ljava/lang/String;
    .end local v15           #wordCount:I
    .end local v16           #words:[Ljava/lang/String;
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 701
    .end local v3           #h:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;*>;"
    :cond_6
    iput-object v9, v11, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 702
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v17

    move/from16 v0, v17

    move-object v1, v11

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    goto/16 :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 711
    iget-object v1, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v0}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->access$2402(Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;Ljava/util/List;)Ljava/util/List;

    .line 712
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 713
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->notifyDataSetChanged()V

    .line 717
    :goto_0
    return-void

    .line 715
    :cond_0
    iget-object v0, p0, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter$SimpleFilter;->this$0:Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    invoke-virtual {v0}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
