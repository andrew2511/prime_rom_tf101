.class Lcom/google/ads/ResizeResponse;
.super Ljava/lang/Object;
.source "ResizeResponse.java"

# interfaces
.implements Lcom/google/ads/AdResponse;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static validateExpandDirection(IIII)Z
    .locals 1
    .parameter "top"
    .parameter "bottom"
    .parameter "left"
    .parameter "right"

    .prologue
    .line 66
    if-gtz p0, :cond_0

    if-gtz p1, :cond_0

    if-gtz p2, :cond_0

    if-lez p3, :cond_1

    :cond_0
    if-ltz p0, :cond_1

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    if-ltz p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public run(Ljava/util/Map;Lcom/google/ads/GoogleAdView;)V
    .locals 19
    .parameter
    .parameter "adView"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/ads/GoogleAdView;",
            ")V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, paramMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v18, "width"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 28
    .local v15, strWidth:Ljava/lang/String;
    const-string v18, "height"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 29
    .local v11, strHeight:Ljava/lang/String;
    const-string v18, "left"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 30
    .local v12, strLeft:Ljava/lang/String;
    const-string v18, "right"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 31
    .local v13, strRight:Ljava/lang/String;
    const-string v18, "top"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 32
    .local v14, strTop:Ljava/lang/String;
    const-string v18, "bottom"

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 38
    .local v10, strBottom:Ljava/lang/String;
    if-eqz v15, :cond_3

    :try_start_0
    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v17, v18

    .line 39
    .local v17, width:I
    :goto_0
    if-eqz v15, :cond_4

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v7, v18

    .line 40
    .local v7, height:I
    :goto_1
    if-eqz v12, :cond_5

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v8, v18

    .line 41
    .local v8, left:I
    :goto_2
    if-eqz v13, :cond_6

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v9, v18

    .line 42
    .local v9, right:I
    :goto_3
    if-eqz v14, :cond_7

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    move/from16 v16, v18

    .line 43
    .local v16, top:I
    :goto_4
    if-eqz v10, :cond_8

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v18

    move/from16 v5, v18

    .line 53
    .local v5, bottom:I
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdWidth()I

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdHeight()I

    move-result v18

    move v0, v7

    move/from16 v1, v18

    if-eq v0, v1, :cond_9

    .line 54
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->isExpanded()Z

    move-result v18

    if-eqz v18, :cond_1

    .line 55
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->closeAdImmediately()V

    .line 57
    :cond_1
    move-object/from16 v0, p2

    move/from16 v1, v17

    move v2, v7

    invoke-virtual {v0, v1, v2}, Lcom/google/ads/GoogleAdView;->resize(II)V

    .line 63
    .end local v5           #bottom:I
    .end local v7           #height:I
    .end local v8           #left:I
    .end local v9           #right:I
    .end local v16           #top:I
    .end local v17           #width:I
    :cond_2
    :goto_6
    return-void

    .line 38
    :cond_3
    :try_start_1
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdWidth()I

    move-result v18

    move/from16 v17, v18

    goto :goto_0

    .line 39
    .restart local v17       #width:I
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->getAdHeight()I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    move/from16 v7, v18

    goto :goto_1

    .line 40
    .restart local v7       #height:I
    :cond_5
    const/16 v18, 0x0

    move/from16 v8, v18

    goto :goto_2

    .line 41
    .restart local v8       #left:I
    :cond_6
    const/16 v18, 0x0

    move/from16 v9, v18

    goto :goto_3

    .line 42
    .restart local v9       #right:I
    :cond_7
    const/16 v18, 0x0

    move/from16 v16, v18

    goto :goto_4

    .line 43
    .restart local v16       #top:I
    :cond_8
    const/16 v18, 0x0

    move/from16 v5, v18

    goto :goto_5

    .line 44
    .end local v7           #height:I
    .end local v8           #left:I
    .end local v9           #right:I
    .end local v16           #top:I
    .end local v17           #width:I
    :catch_0
    move-exception v18

    move-object/from16 v6, v18

    .line 46
    .local v6, e:Ljava/lang/NumberFormatException;
    goto :goto_6

    .line 58
    .end local v6           #e:Ljava/lang/NumberFormatException;
    .restart local v5       #bottom:I
    .restart local v7       #height:I
    .restart local v8       #left:I
    .restart local v9       #right:I
    .restart local v16       #top:I
    .restart local v17       #width:I
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->isExpanded()Z

    move-result v18

    if-eqz v18, :cond_a

    if-nez v8, :cond_a

    if-nez v9, :cond_a

    if-nez v16, :cond_a

    if-nez v5, :cond_a

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->retractAd()V

    goto :goto_6

    .line 60
    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/google/ads/GoogleAdView;->isExpanded()Z

    move-result v18

    if-nez v18, :cond_2

    move/from16 v0, v16

    move v1, v5

    move v2, v8

    move v3, v9

    invoke-static {v0, v1, v2, v3}, Lcom/google/ads/ResizeResponse;->validateExpandDirection(IIII)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 61
    move-object/from16 v0, p2

    move/from16 v1, v16

    move v2, v5

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/ads/GoogleAdView;->expandAd(IIII)V

    goto :goto_6
.end method
