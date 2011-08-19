.class Lcom/asus/reader/ui/SearchEditText$MyHandler;
.super Landroid/os/Handler;
.source "SearchEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/asus/reader/ui/SearchEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/asus/reader/ui/SearchEditText;


# direct methods
.method private constructor <init>(Lcom/asus/reader/ui/SearchEditText;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/asus/reader/ui/SearchEditText;Lcom/asus/reader/ui/SearchEditText$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 329
    invoke-direct {p0, p1}, Lcom/asus/reader/ui/SearchEditText$MyHandler;-><init>(Lcom/asus/reader/ui/SearchEditText;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 332
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v15, v0

    packed-switch v15, :pswitch_data_0

    .line 380
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 334
    .restart local p0
    .restart local p1
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/reader/ui/SearchEditText;->access$1200(Lcom/asus/reader/ui/SearchEditText;)V

    goto :goto_0

    .line 337
    :pswitch_1
    const/4 v8, 0x0

    .line 338
    .local v8, isBlocking:Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/reader/ui/SearchEditText;->access$1300(Lcom/asus/reader/ui/SearchEditText;)Ljava/lang/Object;

    move-result-object v15

    monitor-enter v15

    .line 342
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$800(Lcom/asus/reader/ui/SearchEditText;)Z

    move-result v16

    if-eqz v16, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$900(Lcom/asus/reader/ui/SearchEditText;)I

    move-result v16

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v17, v0

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 343
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Ljava/util/HashMap;

    .line 344
    .local v13, result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$500(Lcom/asus/reader/ui/SearchEditText;)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$500(Lcom/asus/reader/ui/SearchEditText;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1400(Lcom/asus/reader/ui/SearchEditText;)Ljava/util/ArrayList;

    move-result-object v16

    if-eqz v16, :cond_4

    .line 346
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1500(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 347
    .local v11, number:I
    add-int/lit8 v16, v11, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 348
    .local v12, pageNum:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1500(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    aget-object v16, v16, v17

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 349
    .local v14, text:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1500(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x4

    aget-object v16, v16, v17

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 350
    .local v6, before:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1500(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x5

    aget-object v16, v16, v17

    move-object v0, v13

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 351
    .local v5, after:Ljava/lang/String;
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 352
    .local v7, builder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v7, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 353
    invoke-virtual {v7, v14}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 354
    invoke-static {}, Lcom/asus/reader/ui/SearchEditText;->access$1600()Landroid/text/style/StyleSpan;

    move-result-object v16

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v17

    invoke-virtual {v7}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v18

    const/16 v19, 0x11

    move-object v0, v7

    move-object/from16 v1, v16

    move/from16 v2, v17

    move/from16 v3, v18

    move/from16 v4, v19

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 355
    invoke-virtual {v7, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 356
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 357
    .local v9, item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1700(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x0

    aget-object v16, v16, v17

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1700(Lcom/asus/reader/ui/SearchEditText;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    aget-object v16, v16, v17

    move-object v0, v9

    move-object/from16 v1, v16

    move-object v2, v7

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1400(Lcom/asus/reader/ui/SearchEditText;)Ljava/util/ArrayList;

    move-result-object v16

    move-object/from16 v0, v16

    move-object v1, v9

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    .end local v5           #after:Ljava/lang/String;
    .end local v6           #before:Ljava/lang/String;
    .end local v7           #builder:Landroid/text/SpannableStringBuilder;
    .end local v9           #item:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    .end local v11           #number:I
    .end local v12           #pageNum:Ljava/lang/String;
    .end local v14           #text:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1800(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1800(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText$MySimpleAdapter;->notifyDataSetChanged()V

    .line 363
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$1200(Lcom/asus/reader/ui/SearchEditText;)V

    .line 365
    .end local v13           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    monitor-exit v15

    goto/16 :goto_0

    :catchall_0
    move-exception v16

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v16

    .line 361
    .restart local v13       #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local p1
    :cond_4
    const/4 v8, 0x1

    goto :goto_1

    .line 368
    .end local v8           #isBlocking:Z
    .end local v13           #result:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object v15, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/asus/reader/ui/SearchEditText;->access$1900(Lcom/asus/reader/ui/SearchEditText;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 371
    .restart local p0
    :pswitch_3
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v15, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object/from16 v16, v0

    invoke-static/range {v16 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$900(Lcom/asus/reader/ui/SearchEditText;)I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-ne v0, v1, :cond_5

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object v15, v0

    const/16 v16, 0x0

    invoke-static/range {v15 .. v16}, Lcom/asus/reader/ui/SearchEditText;->access$2000(Lcom/asus/reader/ui/SearchEditText;Z)V

    .line 373
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 375
    .local v10, keyword:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/reader/ui/SearchEditText;->access$2100(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;

    move-result-object v15

    if-eqz v15, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/asus/reader/ui/SearchEditText$MyHandler;->this$0:Lcom/asus/reader/ui/SearchEditText;

    move-object v15, v0

    invoke-static {v15}, Lcom/asus/reader/ui/SearchEditText;->access$2100(Lcom/asus/reader/ui/SearchEditText;)Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;

    move-result-object v15

    invoke-interface {v15, v10}, Lcom/asus/reader/ui/SearchEditText$SearchStatusListener;->onStopSearch(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
